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
require 'yaml'
require 'multi_json'
require 'active_support/inflector'
require 'google/apis/core/logging'
require 'google/apis/generator/template'
require 'google/apis/generator/model'
require 'google/apis/generator/helpers'
require 'addressable/uri'

module Google
  module Apis
    # @private
    class Generator
      # Modifies an API description to support ruby code generation. Primarily does:
      # - Ensure all names follow appopriate ruby conventions
      # - Maps types to ruby types, classes, and resolves $refs
      # - Attempts to simplify names where possible to make APIs more sensible
      class Annotator
        include NameHelpers
        include Google::Apis::Core::Logging

        # Don't expose these in the API directly
        PARAMETER_BLACKLIST = %w(alt oauth_token prettyPrint)

        # Prepare the API for the templates.
        # @param [Google::Apis::DiscoveryV1::RestDescription] description
        #  API Description
        def self.process(description)
          Annotator.new(description).annotate_api
        end

        # @param [Google::Apis::DiscoveryV1::RestDescription] description
        #  API Description
        def initialize(description)
          @rest_description = description
          @registered_types = []
          @deferred_types = []
          @strip_prefixes = []
          @all_methods = {}
        end

        def annotate_api
          @strip_prefixes << @rest_description.name
          if @rest_description.auth
            @rest_description.auth.oauth2.scopes.each do |key, value|
              value.constant = constantize_scope(key)
            end
          end
          @rest_description.parameters.reject! { |k, _v| PARAMETER_BLACKLIST.include?(k) }
          annotate_parameters(@rest_description.parameters)
          annotate_resource(@rest_description.name, @rest_description)
          @rest_description.schemas.each do |k, v|
            annotate_type(k, v, @rest_description)
          end unless @rest_description.schemas.nil?
          simplify_class_names(@strip_prefixes, @rest_description.version)
          resolve_type_references
          resolve_variants
        end

        def annotate_type(name, type, parent)
          type.name = name
          type.generated_name = normalize_property_name(name)
          if type.type == 'object'
            type.generated_class_name = ActiveSupport::Inflector.camelize(name)
            @registered_types << type
          end
          type.parent = parent
          @deferred_types << type if type._ref
          type.properties.each do |k, v|
            annotate_type(k, v, type)
          end unless type.properties.nil?
          if type.additional_properties
            type.type = 'hash'
            annotate_type(ActiveSupport::Inflector.singularize(name), type.additional_properties, parent)
          end
          annotate_type(ActiveSupport::Inflector.singularize(name), type.items, parent) if type.items
        end

        def annotate_resource(name, resource)
          @strip_prefixes << name
          resource.methods_prop.each do |_k, v|
            annotate_method(v)
          end unless resource.methods_prop.nil?

          resource.resources.each do |k, v|
            annotate_resource(k, v)
          end unless resource.resources.nil?
        end

        def annotate_method(method)
          method.generated_name = infer_method_name(method)
          check_duplicate_method(method)
          annotate_parameters(method.parameters)
        end

        def annotate_parameters(parameters)
          parameters.each do |key, value|
            value.name = key
            value.generated_name = normalize_param_name(key)
            @deferred_types << value if value._ref
          end unless parameters.nil?
        end

        def resolve_type_references
          @deferred_types.each do |type|
            if type._ref
              ref = @rest_description.schemas[type._ref]
              ivars = ref.instance_variables - [:@name, :@generated_name]
              (ivars).each do |var|
                type.instance_variable_set(var, ref.instance_variable_get(var))
              end
            end
          end
        end

        def resolve_variants
          @deferred_types.each do |type|
            if type.variant
              type.variant.map.each do |v|
                ref = @rest_description.schemas[v._ref]
                ref.base_ref = type
                ref.discriminant = type.variant.discriminant
                ref.discriminant_value = v.type_value
              end
            end
          end
        end

        def check_duplicate_method(m)
          logger.error("Duplicate method #{name} generated") if @all_methods.include?(m.generated_name)
          @all_methods[m.generated_name] = m
        end

        # Determine the ruby method name to generate for a given method in discovery.
        # @param [Hash] discovery
        #  Fragment of the discovery doc describing the method
        def infer_method_name(method)
          infer_method_name_for_rpc(method) || infer_method_name_from_id(method)
        end

        # For RPC style methods, pick a name based off the request objects.
        # @param [Hash] discovery
        #  Fragment of the discovery doc describing the method
        def infer_method_name_for_rpc(method)
          return nil if method.request.nil?
          verb = ActiveSupport::Inflector.underscore(method.id.split('.').last)
          match = method.request._ref.match(/(.*)(?i:request)/)
          return nil if match.nil?
          name = ActiveSupport::Inflector.underscore(match[1])
          return nil unless name == verb || name.start_with?(verb + '_')
          name
        end

        # For REST style methods, build a method name from the verb/resource(s) in the method
        # id. IDs are in the form <api>.<resource>.<verb>
        # @param [Hash] discovery
        #  Fragment of the discovery doc describing the method
        def infer_method_name_from_id(method)
          parts = method.id.split('.')
          parts.shift
          verb = parts.pop
          return ActiveSupport::Inflector.underscore(verb) if parts.empty? # ActiveSupport::Inflector.underscore(verb) != verb || parts.empty?
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

          apply_name = lambda do |_, (name, type)|
            if name != type.generated_class_name
              logger.info do
                sprintf('Simplified class name from \'%s\' to \'%s\'', type.generated_class_name, name)
              end
              type.generated_class_name = name
            end
          end

          process_type = lambda do |regexp, alt_names, type|
            alt_name = type.generated_class_name.gsub(regexp, '')
            key = type.parent.qualified_name + '::' + alt_name
            if alt_name.empty? || alt_names.key?(key)
              alt_name = type.generated_class_name
              key = type.parent.qualified_name + '::' + alt_name
              fail 'Duplicate' if alt_names.key?(key) # Abort if duplicate
            end
            alt_names[key] = [alt_name, type]
            alt_names
          end.curry

          suffixes.each do |suffix|
            begin
              f = process_type[/(?i:#{Regexp.quote(suffix)})$/]
              alt_names = @registered_types.inject({}, &f)
              alt_names.each(&apply_name)
            rescue
              logger.debug { sprintf('Unable to remove suffix %s due to potential duplicate name', suffix) }
            end
          end
          prefixes.each do |prefix|
            begin
              f = process_type[/^(?i:#{Regexp.quote(prefix)})(?=[A-Z]+)/]
              alt_names = @registered_types.inject({}, &f)
              alt_names.each(&apply_name)
            rescue
              logger.debug { sprintf('Unable to remove prefix %s due to potential duplicate name', prefix) }
            end
          end
        end
      end
    end
  end
end
