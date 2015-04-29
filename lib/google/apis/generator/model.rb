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
require 'google/apis/discovery_v1'

# Extend the discovery API classes with additional data needed to make
# code generation produce better results
module Google
  module Apis
    module DiscoveryV1
      class JsonSchema
        attr_accessor :name
        attr_accessor :generated_name
        attr_accessor :generated_class_name
        attr_accessor :base_ref
        attr_accessor :parent
        attr_accessor :discriminant
        attr_accessor :discriminant_value

        def properties
          @properties ||= {}
        end

        def qualified_name
          parent.qualified_name + '::' + generated_class_name
        end

        def generated_type
          if type == 'string'
            return 'DateTime' if format == 'date-time'
            return 'Date' if format == 'date'
            'String'
          elsif type == 'array'
            return sprintf('Array<%s>', items.generated_type)
          elsif type == 'hash'
            return sprintf('Hash<String,%s>', additional_properties.generated_type)
          elsif type == 'boolean'
            return 'Boolean'
          elsif type == 'number'
            return 'Float'
          elsif type == 'integer'
            return 'Fixnum'
          elsif type == 'any'
            return 'Object'
          elsif type == 'object'
            return qualified_name
          end
        end
      end

      class RestMethod
        attr_accessor :generated_name
        def path_parameters
          return [] if parameter_order.nil? || parameters.nil?
          parameter_order.map { |name| parameters[name] }.select { |param| param.location == 'path' }
        end

        def query_parameters
          return [] if parameters.nil?
          parameters.values.select { |param| param.location == 'query' }
        end

        class Request
          def generated_name
            ActiveSupport::Inflector.underscore(self._ref) + '_object'
          end
        end
      end

      class RestResource
        def all_methods
          m = []
          m << self.methods_prop.values unless self.methods_prop.nil?
          m << self.resources.map { |_k, r| r.all_methods } unless self.resources.nil?
          m.flatten
        end
      end

      class RestDescription

        def version
          ActiveSupport::Inflector.camelize(@version.gsub(/\W/, '-')).gsub(/-/, '_')
        end

        def name
          ActiveSupport::Inflector.camelize(@name)
        end

        def module_name
          self.name + self.version
        end

        def qualified_name
          sprintf('Google::Apis::%s', self.module_name)
        end

        def service_name
          class_name = (self.canonical_name || self.name).gsub(/\W/, '')
          ActiveSupport::Inflector.camelize(sprintf('%sService', class_name))
        end

        def all_methods
          m = []
          m << self.methods_prop.values unless self.methods_prop.nil?
          m << self.resources.map { |_k, r| r.all_methods } unless self.resources.nil?
          m.flatten
        end

        class Auth
          class Oauth2
            class Scope
              attr_accessor :constant
            end
          end
        end
      end
    end
  end
end
