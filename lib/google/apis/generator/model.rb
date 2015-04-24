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

require 'active_support/inflector'

module Google
  module Apis
    # @private
    class Generator
      # Top-level API definition
      class Api
        # @return [String]
        attr_accessor :name
        # @return [String]
        attr_accessor :title
        # @return [String]
        attr_accessor :description
        # @return [String]
        attr_accessor :documentation_url
        # @return [String]
        attr_accessor :version
        # @return [String]
        attr_accessor :revision
        # @return [String]
        attr_accessor :module_name
        # @return [String]
        attr_accessor :qualified_name
        # @return [String]
        attr_accessor :service_name
        # @return [String]
        attr_accessor :root_url
        # @return [String]
        attr_accessor :base_path
        # @return [String]
        attr_accessor :api_methods
        # @return [Hash<String,Google::Apis::Generator::Parameter>]
        attr_accessor :parameters
        # @return [Array<Google::Apis::Generator::Resource>]
        attr_accessor :resources
        # @return [Array<Google::Apis::Generator::SchemaClass>]
        attr_accessor :classes
        # @return [Array<Google::Apis::Generator::Scope]
        attr_accessor :scopes
        # @return [Boolean]
        attr_accessor :data_wrap
        def initialize
          self.parameters = {}
          self.api_methods = []
          self.resources = []
          self.scopes = []
        end

        # Get list of global parameters that are valid at the service level (excludes fields)
        #
        # @return [Array<Google::Apis::Generator::Parameter>]
        def service_params
          parameters.values.reject { |param| param.name == 'fields' }
        end

        # Get list of global parameters that are valid at the method level (excludes key)
        #
        # @return [Array<Google::Apis::Generator::Parameter>]
        def method_params
          parameters.values.reject { |param| param.name == 'key' }
        end

        def qualified_name(_suffix = nil)
          @qualified_name
        end
      end

      # An API scope - Used to define constants in the service
      class Scope
        # @return [String]
        attr_accessor :description
        # @return [String]
        attr_accessor :scope_string
        # @return [String]
        attr_accessor :constant
      end

      # An API method
      class RestMethod
        # @return [String]
        attr_accessor :name
        # @return [String]
        attr_accessor :description
        # @return [String]
        attr_accessor :path
        # @return [Hash<String,Google::Apis::Generator::Parameter>]
        attr_accessor :parameters
        # @return [Array<String>]
        attr_accessor :parameter_order
        # @return [Boolean]
        attr_accessor :upload
        alias_method :upload?, :upload
        # @return [Boolean]
        attr_accessor :download
        alias_method :download?, :download

        # @return [symbol]
        attr_accessor :http_method
        # @return [Google::Apis::Generator::Parameter]
        attr_accessor :request_body
        # @return [Google::Apis::Generator::SchemaClass]
        attr_accessor :response_type

        def initialize
          self.parameters = {}
          self.parameter_order = []
        end

        # Return parameters in the order they should be in the method signature
        #
        # @return [Array<Google::Apis::Generator::Parameter>]
        def ordered_params
          params = []
          params.push request_body unless request_body.nil?
          params.push(*path_params)
          params.push(*query_params)

          params
        end

        # Return parameters that are part of the URL path
        #
        # @return [Array<Google::Apis::Generator::Parameter>]
        def path_params
          parameter_order.map { |name| parameters[name] }.select { |param| param.location == 'path' }
        end

        # Return parameters that are part of the query string
        #
        # @return [Array<Google::Apis::Generator::Parameter>]
        def query_params
          parameters.values.select { |param| param.location == 'query' }
        end
      end

      # A method parameter
      class Parameter
        # @return [String]
        attr_accessor :name
        # @return [String]
        attr_accessor :original_name
        # @return [String]
        attr_accessor :description
        # @return [Google::Apis::Generator::Type]
        attr_accessor :type
        # @return [String]
        attr_accessor :default
        # @return [String]
        attr_accessor :location
        # @return [Boolean]
        attr_accessor :repeated
        alias_method :repeated?, :repeated

        # @!attribute [r] signature
        # @return [String]
        def signature
          if location == 'query'
            "#{name}: nil"
          else
            name
          end
        end

        def name
          @name || (ActiveSupport::Inflector.underscore(ActiveSupport::Inflector.demodulize(type.name)) + '_obj')
        end
      end

      # A property of a schema item
      class Property
        # @return [String]
        attr_accessor :name
        # @return [String]
        attr_accessor :original_name
        # @return [String]
        attr_accessor :description
        # @return [Google::Apis::Generator::Type]
        attr_accessor :type
      end

      # A collection of methods (typically) operating on a schema item
      class Resource
        # @return [String]
        attr_accessor :name
        # @return [Array<Google::Apis::Generator::RestMethod>]
        attr_accessor :api_methods
        # @return [Array<Google::Apis::Generator::Resource>]
        attr_accessor :resources
        # @return [Array<Google::Apis::Generator::Resource>]
        attr_accessor :parents
        def initialize
          @api_methods = []
          @resources = []
          @parents = []
        end
      end

      # A custom type
      class SchemaClass
        # @return [String]
        attr_accessor :name
        # @return [String]
        attr_accessor :class_name
        # @return [String]
        attr_accessor :description
        # @return [Hash<String, Google::Apis::Generator::Property>]
        attr_accessor :properties
        # @return [Array<Google::Apis::Generator::SchemaClass>]
        attr_accessor :classes
        # @return [Google::Apis::Generator::SchemaClass]
        attr_accessor :base_class
        # @return [String]
        attr_accessor :discriminant
        # @return [Hash<String, Google::Apis::Generator::Type]
        attr_accessor :variants
        # @return [#qualified_name]
        attr_accessor :parent_module

        def initialize
          @properties = {}
          @classes = []
          @variants = {}
        end

        def qualified_name(suffix = nil)
          sprintf('%s::%s%s', parent_module.qualified_name(suffix), class_name, suffix)
        end

      end

      # A type reference - either a ruby type or custom type from the API description
      class Type
        # @return [String]
        attr_accessor :type
        # @return [String]
        attr_accessor :format
        # @return [String]
        attr_accessor :ref
        # @return [Google::Apis::Generator::Type]
        attr_accessor :key_type
        # @return [Google::Apis::Generator::Type]
        attr_accessor :item_type
        # @return [Google::Apis::Generator::SchemaType]
        attr_accessor :schema_type

        def initialize(type, format: nil, ref: nil, key_type: nil, item_type: nil, schema_type: nil)
          self.type = type
          self.format = format
          self.ref = ref
          self.item_type = item_type
          self.key_type = key_type
          self.schema_type = schema_type
        end

        # Updates this type base on another, primarily for resolving referrenced types
        #
        # @param [Google::Apis::Generator::Type] other
        #  Type to copy
        # @return [void]
        def update!(other)
          # NOTE: Preserve ref status
          self.type = other.type
          self.format = other.format
          self.key_type = other.key_type
          self.item_type = other.item_type
          self.schema_type = other.schema_type
        end

        # @!attribute [r] array?
        # @return [Boolean] True if this is a collection type
        def array?
          type == 'array'
        end

        # @!attribute [r] hash?
        # @return [Boolean] True if this is a Hash type
        def hash?
          type == 'hash'
        end

        # @!attribute [r] basic?
        # @return [Boolean] True if this is a built-in type
        def basic?
          !(ref || schema_type)
        end

        # @!attribute [r] boolean?
        # @return [Boolean] True if this is a boolean type
        def boolean?
          type == 'boolean'
        end

        # @!attribute [r] name
        # @return [String]
        def name
          to_s
        end

        def representation_class
          schema_type.qualified_name('Representation')
        end

        def to_s
          if type == 'string'
            return 'DateTime' if format == 'date-time'
            return 'Date' if format == 'date'
            # TODO: return 'Array<Fixnum>' if format == 'byte'
            'String'
          elsif type == 'hash'
            return sprintf('Hash<%s,%s>', key_type, item_type)
          elsif type == 'array'
            return sprintf('Array<%s>', item_type)
          elsif type == 'boolean'
            return 'Boolean'
          elsif type == 'number'
            return 'Float'
          elsif type == 'integer'
            return 'Fixnum'
          elsif type == 'any'
            return 'Object'
          elsif schema_type
            return schema_type.qualified_name
          end
        end
      end
    end
  end
end
