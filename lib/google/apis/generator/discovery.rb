# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'logger'
require 'erb'
require 'multi_json'
require 'active_support/inflector'
require 'google/apis/core/logging'
require 'google/apis/generator/model'
require 'google/apis/generator/template'
require 'addressable/uri'

module Google
  module Apis
    # @private
    class Generator
      # Methods for validating & normalizing symbols
      module NameHelpers
        KEYWORDS = %w(__ENCODING__ def in self __LINE__ defined? module super __FILE__ do next then BEGIN
                      else nil true END elsif not undef alias end or unless and ensure redo until begin
                      false rescue when break for retry while case if return yield class)
        PLURAL_METHODS = %w(list search)

        # Check to see if the method name should be plauralized
        # @return [Boolean]
        def pluralize_method?(method_name)
          PLURAL_METHODS.include?(method_name)
        end

        # Check to see if the method is either a keyword or built-in method on object
        # @return [Boolean]
        def reserved?(name)
          keyword?(name) || object_method?(name)
        end

        # Check to see if the name is a ruby keyword
        # @return [Boolean]
        def keyword?(name)
          KEYWORDS.include?(name)
        end

        # Check to see if the method already exists on ruby objects
        # @return [Boolean]
        def object_method?(name)
          Object.new.respond_to?(name)
        end

        # Make the version string safe for use in a module name
        # @param [String] version
        # @return [String]
        def normalize_version(version)
          ActiveSupport::Inflector.camelize(version.gsub(/\W/, '-')).gsub(/-/, '_')
        end


        # Convert a parameter name to ruby conventions
        # @param [String] name
        # @return [String] updated param name
        def normalize_param_name(name)
          name = ActiveSupport::Inflector.underscore(name.gsub(/\W/, '_'))
          if reserved?(name)
            logger.warn { sprintf('Found reserved keyword \'%1$s\'', name) }
            name += '_'
            logger.warn { sprintf('Changed to \'%1$s\'', name) }
          end
          name
        end

        # Convert a property name to ruby conventions
        # @param [String] name
        # @return [String]
        def normalize_property_name(name)
          name = ActiveSupport::Inflector.underscore(name.gsub(/\W/, '_'))
          if object_method?(name)
            logger.warn { sprintf('Found reserved property \'%1$s\'', name) }
            name += '_prop'
            logger.warn { sprintf('Changed to \'%1$s\'', name) }
          end
          name
        end

        # Converts a scope string into a ruby constant
        # @param [String] url
        #   Url to convert
        # @return [String]
        def constantize_scope(url)
          scope = Addressable::URI.parse(url).path[1..-1].upcase.gsub(/\W/, '_')
          scope = 'AUTH_SCOPE' if scope.nil? || scope.empty?
          scope
        end
      end

      # Processes a discovery doc for generating ruby classes
      class Discovery
        include NameHelpers
        include Google::Apis::Core::Logging

        PARAMETER_BLACKLIST = %w(alt oauth_token prettyPrint)

        # @param [String] json
        #  Discovery doc contents
        def initialize(json)
          @discovery = MultiJson.load(json)
          @registered_types = {}
          @deferred_types = []
          @strip_prefixes = []
          @all_methods = []
        end

        # Process the discovery doc, returning model classes suitable for template processing
        #
        # @return [Google::Apis::Generator::Api]
        def parse
          @api = parse_api

          logger.info { sprintf('Generating service \'%s\'', @api.service_name) }

          @api.scopes = parse_scopes(@discovery)

          params = @discovery['parameters'] || {}
          params.each do |name, discovery_fragment|
            if PARAMETER_BLACKLIST.index(name).nil?
              @api.parameters[name] = parse_parameter(name, discovery_fragment)
            end
          end

          api_methods = @discovery['methods'] || {}
          api_methods.each do |name, discovery_fragment|
            name = infer_method_name(discovery_fragment)
            @api.api_methods.push parse_method(name, discovery_fragment)
          end

          resources = @discovery['resources'] || {}
          resources.each do |name, discovery_fragment|
            @api.resources.push parse_resource(name, discovery_fragment)
          end

          schemas = @discovery['schemas'] || {}
          schemas.each do |name, discovery_fragment|
            name = ActiveSupport::Inflector.camelize(name)
            type = parse_type(discovery_fragment, name)
            @registered_types[name] = type
          end

          @api.classes = @registered_types.values.map { |type| type.schema_type || (type.item_type && type.item_type.schema_type) }
            .compact
            .partition(&:discriminant) # Ensure variant base classes defined first
            .flatten

          resolve_type_references
          resolve_variant_base_classes

          simplify_class_names(@api.name.downcase, nil)
          simplify_class_names(nil, @api.version)
          simplify_class_names(@strip_prefixes, nil)

          @api
        end

        def resolve_variant_base_classes
          @deferred_types.each do |type|
            if type.schema_type && type.schema_type.discriminant
              type.schema_type.variants.each do |_, variant|
                variant.schema_type.base_class = type.schema_type
              end
            end
          end
        end

        def resolve_type_references
          @deferred_types.each do |type|
            if type.ref
              ref = @registered_types[type.ref]
              type.update!(ref)
            end
          end
        end

        private

        # Process the top-level API information
        #
        # @return [Google::Apis::Generator::Api]
        def parse_api
          api = Api.new
          api.title = @discovery['title']
          api.name = ActiveSupport::Inflector.camelize(@discovery['name'])
          api.description = @discovery['description']
          api.documentation_url = @discovery['documentationLink']
          api.version = normalize_version(@discovery['version'])
          api.revision = @discovery['revision']
          api.module_name = api.name + api.version
          api.qualified_name = sprintf('Google::Apis::%s', api.module_name)
          api.root_url = @discovery['rootUrl']
          api.base_path = @discovery['servicePath']
          class_name = (@discovery['canonicalName'] || @discovery['name']).gsub(/\W/, '')
          api.service_name = ActiveSupport::Inflector.camelize(sprintf('%sService', class_name))
          api.data_wrap = (@discovery['features'] || []).include?('dataWrapper')
          api
        end

        # Parse scopes defined for the API
        # @param [Hash] discovery
        #  The discovery doc
        # @return [Array<Google::Apis::Generator::Scope]
        #  List of scopes
        def parse_scopes(discovery)
          return [] if discovery['auth'].nil?
          scopes = discovery['auth']['oauth2']['scopes']
          scopes.map do |url, value|
            scope = Scope.new
            scope.description = value['description']
            scope.scope_string = url
            scope.constant = constantize_scope(url)
            scope
          end
        end

        # Process a method definition
        #
        # @param [String] name
        #  Method name from discovery
        # @param [Hash] discovery
        #  The discovery fragment representing the method
        # @return [Google::Apis;:Generator::RestMethod]
        def parse_method(name, discovery)
          m = RestMethod.new
          m.name = ActiveSupport::Inflector.underscore(name)

          alt_name = infer_method_name_for_rpc(discovery)
          m.name = alt_name unless alt_name.nil?

          logger.info { sprintf('Generating method %s', m.name) }

          m.path = discovery['path']
          m.description = discovery['description'] || ''
          m.http_method = discovery['httpMethod'].downcase
          m.upload = !discovery['supportsMediaUpload'].nil?
          m.download = !discovery['supportsMediaDownload'].nil?

          params = discovery['parameters'] || {}
          params.each do |parameter_name, discovery_fragment|
            param = parse_parameter(parameter_name, discovery_fragment)
            m.parameters[param.name] = param
          end

          params = discovery['parameterOrder'] || []
          params.each do |parameter_name|
            key = normalize_param_name(parameter_name)
            m.parameter_order << key
            if m.parameters[key].nil?
              # Work around broken discovery docs that reference undeclared parameters
              location = m.path.index("{#{parameter_name}}") ? 'path' : 'query'
              # noinspection RubyStringKeysInHashInspection
              param = parse_parameter(parameter_name, 'type' => 'string', 'location' => location)
              m.parameters[param.name] = param
            end
          end

          if discovery['request']
            name = ActiveSupport::Inflector.underscore(discovery['request']['$ref'])
            name = "#{name}_object" if m.parameters[name] # De-dupe
            param = Parameter.new
            param.name = normalize_param_name(name)
            param.location = 'body'
            param.type = parse_type(discovery['request'])
            m.request_body = param
          end

          m.response_type = parse_type(discovery['response']) unless discovery['response'].nil?
          m
        end

        # Determine the ruby method name to generate for a given method in discovery.
        # @param [Hash] discovery
        #  Fragment of the discovery doc describing the method
        def infer_method_name(discovery)
          name = infer_method_name_for_rpc(discovery) || infer_method_name_from_id(discovery)
          check_duplicate_name(name)
          name
        end

        def check_duplicate_name(name)
          logger.error("Duplicate method #{name} generated") if @all_methods.include?(name)
          @all_methods << name
        end

        # For RPC style methods, pick a name based off the request objects.
        # @param [Hash] discovery
        #  Fragment of the discovery doc describing the method
        def infer_method_name_for_rpc(discovery)
          verb = ActiveSupport::Inflector.underscore(discovery['id'].split('.').last)
          return nil if discovery['request'].nil?
          req_name = discovery['request']['$ref']
          match = req_name.match(/(.*)(?i:request)/)
          return nil if match.nil?
          name = ActiveSupport::Inflector.underscore(match[1])
          return nil unless name == verb || name.start_with?(verb+'_')
          name
        end

        # For REST style methods, build a method name from the verb/resource(s) in the method
        # id. IDs are in the form <api>.<resource>.<verb>
        # @param [Hash] discovery
        #  Fragment of the discovery doc describing the method
        def infer_method_name_from_id(discovery)
          parts = discovery['id'].split('.')
          parts.shift
          verb = parts.pop
          return ActiveSupport::Inflector.underscore(verb) if parts.empty? # ActiveSupport::Inflector.underscore(verb) != verb || parts.empty?
          method_name = verb
          resource_name = parts.pop
          method_name = verb + '_'
          method_name += parts.map { |p| ActiveSupport::Inflector.singularize(p) }.join('_') + '_' unless parts.empty?
          if pluralize_method?(verb)
            method_name += ActiveSupport::Inflector.pluralize(resource_name)
          else
            method_name += ActiveSupport::Inflector.singularize(resource_name)
          end
          ActiveSupport::Inflector.underscore(method_name)
        end

        # Process a resource (collection of methods)
        #
        # @param [String] name
        #  Method name from discovery
        # @param [Hash] discovery
        #  The discovery fragment representing the resource
        # @param [Google::Apis::Generator::Resource] parent
        #  Parent resource if nested
        # @return [Google::Apis;:Generator::Resource]
        def parse_resource(name, discovery, parent = nil)
          resource = Resource.new
          resource.name = name

          @strip_prefixes << name.downcase

          unless parent.nil?
            resource.parents = parent.parents.dup
            resource.parents << parent
          end

          resource_methods = discovery['methods'] || {}
          resource_methods.each do |method, discovery_fragment|
            method_name = infer_method_name(discovery_fragment)
            resource.api_methods.push parse_method(method_name, discovery_fragment)
          end

          resources = discovery['resources'] || {}
          resources.each do |resource_name, discovery_fragment|
            resource.resources.push parse_resource(resource_name, discovery_fragment, resource)
          end
          resource
        end

        # Parse a custom type definition
        #
        # @param [String] name
        #  Class name from discovery
        # @param [Hash] discovery
        #  Fragment of the discovery doc representing the type
        # @param [Google:Apis::Generator::SchemaClass] parent_class
        #  Parent type, if anonymous nested class
        # @return [Google:Apis::Generator::SchemaClass]
        def parse_schema_class(name, discovery, parent_class = nil)
          type = SchemaClass.new
          type.name = name
          type.class_name = ActiveSupport::Inflector.camelize(name)
          type.description = discovery['description'] || ''
          if parent_class
            # Anonymous type
            type.parent_module = parent_class
            parent_class.classes << type
          else
            type.parent_module = @api
          end
          logger.info { sprintf('Generating class \'%s\'', type.qualified_name) }

          (discovery['properties'] || {}).each do |property_name, discovery_fragment|
            type.properties[property_name] = parse_property(type, property_name, discovery_fragment)
          end
          type
        end

        # Parse a method parameter
        #
        # @param [String] name
        #  Parameter name from discovery
        # @param [Hash] discovery
        #  Fragment of the discovery doc representing the type
        # @return [Google:Apis::Generator::Parameter]
        def parse_parameter(name, discovery)
          param = Parameter.new
          param.original_name = name
          param.name = normalize_param_name(name)
          param.type = parse_type(discovery)
          param.description = discovery['description']
          param.location = discovery['location']
          param.repeated = discovery['repeated']
          param
        end

        # Parse a method parameter (query params and/or URL template params)
        #
        # @param [Google::Apis::Generator::SchemaType] parent_class
        #  Parent class this property belongs to
        # @param [String] property_name
        #  Property name from discovery
        # @param [Hash] discovery
        #  Fragment of the discovery doc representing the type
        # @return [Google:Apis::Generator::Parameter]
        def parse_property(parent_class, property_name, discovery)
          property = Property.new
          property.name = normalize_property_name(property_name)
          property.original_name = property_name
          property.description = discovery['description'] || ''
          logger.info do
            sprintf('Generating \'%s\' property \'%s\' for JSON property \'%s\'', parent_class.name, property.name, property.original_name)
          end
          property.type = parse_type(discovery, property_name, parent_class)
          property
        end

        # Parse a parameter or property type. Types may be basic types, a reference to a schema class,
        # or an anonymous/nested class.
        #
        # @param [Hash] discovery
        #  Fragment of the discovery doc representing the type
        # @param [String] container_name
        #  Name of the containing parameter/property
        # @param [Google::Apis::Generator::SchemaType] parent_class
        #  Parent class to create nested classes under
        # @return [Google:Apis::Generator::Type]
        def parse_type(discovery, container_name = '', parent_class = nil)
          if discovery['type'] == 'object'
            if discovery['additionalProperties']
              logger.warn do
                sprintf('Unsupported type found. Can not mix additionalProperties with named properties\n%s', discovery)
              end if discovery['properties']
              item_type = parse_type(discovery['additionalProperties'], ActiveSupport::Inflector.singularize(container_name), parent_class)
              return Type.new('hash', key_type: Type.new('string'), item_type: item_type)
            else
              type_name = ActiveSupport::Inflector.camelize(discovery['type_value'] || container_name)
              schema_type = parse_schema_class(type_name, discovery, parent_class)
              if discovery['variant']
                schema_type.discriminant = discovery['variant']['discriminant']
                discovery['variant']['map'].each do |variant|
                  variant_type = parse_type(variant, container_name, parent_class)
                  schema_type.variants[variant['type_value']] = variant_type
                end
              end
              type = Type.new('object', schema_type: schema_type)
              @deferred_types << type
              return type
            end
          elsif discovery['type'] == 'array'
            items = discovery['items']
            item_type = parse_type(items, ActiveSupport::Inflector.singularize(container_name), parent_class)
            return Type.new('array', item_type: item_type)
          elsif discovery['$ref']
            type = Type.new('object', ref: discovery['$ref'])
            @deferred_types << type
            return type
          else
            Type.new(discovery['type'], format: discovery['format'])
          end
        end

        # Attempts to simplify schema class names by removing rendudant prefixes and suffixes. Only changes the
        # names if the results produce unique class names.
        #
        # @param [String, Array<String>] prefixes
        #  Prefixes to remove.
        # @param [String, Array<String>] suffixes
        #  Suffixes to remove.
        # @return [void]
        def simplify_class_names(prefixes, suffixes)
          prefixes = Array(prefixes)
          suffixes = Array(suffixes)
          alt_names = {}
          @registered_types.each do |_, type|
            next if type.schema_type.nil?
            schema_class = type.schema_type
            suffixes.each do |suffix|
              alt_name = schema_class.class_name.gsub(/(?i:#{Regexp.quote(suffix)})$/, '')
              alt_name = schema_class.class_name if alt_name.empty? || alt_names.key?(alt_name)
              return if alt_names.key?(alt_name) # Abort if duplicate
              alt_names[alt_name] = schema_class
            end
            prefixes.each do |prefix|
              alt_name = schema_class.class_name.gsub(/^(?i:#{Regexp.quote(prefix)})(?=[A-Z]+)/, '')
              alt_name = schema_class.class_name if alt_name.empty? || alt_names.key?(alt_name)
              return if alt_names.key?(alt_name) # Abort if duplicate
              alt_names[alt_name] = schema_class
            end
          end

          # Update the names
          alt_names.each do |alt_name, schema_type|
            if alt_name != schema_type.class_name
              logger.info do
                sprintf('Simplified class name from \'%s\' to \'%s\'', schema_type.class_name, alt_name)
              end
              schema_type.class_name = alt_name
            end
          end
        end
      end
    end
  end
end
