# Copyright 2010 Google Inc.
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


require 'json'
require 'addressable/uri'
require 'addressable/template'

require 'google/inflection'
require 'google/api_client/errors'

module Google
  class APIClient
    class Schema
      def initialize(api, api_name, api_version, discovery_document)
        # This constructor is super-long, but hard to break up due to the
        # unavoidable dependence on closures and execution context.
        @api = api
        @discovery_document = discovery_document
        api_name_string =
          Google::INFLECTOR.camelize(api_name)
        api_version_string =
          Google::INFLECTOR.camelize(api_version).gsub('.', '_')
        @schema_name = @discovery_document['id']
        if Google::APIClient::Schema.const_defined?(api_name_string)
          @api_name = Google::APIClient::Schema.const_get(api_name_string)
        else
          @api_name = Google::APIClient::Schema.const_set(
            api_name_string, Class.new
          )
        end
        if @api_name.const_defined?(api_version_string)
          @api_version = @api_name.const_get(api_version_string)
        else
          @api_version = @api_name.const_set(api_version_string, Class.new)
        end
        if @api_version.const_defined?(@schema_name)
          @schema_class = @api_version.const_get(@schema_name)
        else
          @schema_class = @api_version.const_set(
            @schema_name,
            Class.new(APIObject) do |klass|
              discovery_document['properties'].each do |(k, v)|
                property_name = Google::INFLECTOR.underscore(k)
                define_method(property_name + '_property') do
                  v
                end
                case v['type']
                when 'string'
                  define_method(property_name) do
                    self[k] || v['default']
                  end
                  define_method(property_name + '=') do |value|
                    if value.respond_to?(:to_str)
                      self[k] = value.to_str
                    elsif value.kind_of?(Symbol)
                      self[k] = value.to_s
                    else
                      raise TypeError,
                        "Expected String or Symbol, got #{value.class}."
                    end
                  end
                else
                  # TODO(bobaman):
                  # Implement the remainder of the types.

                  # Don't know what this is, default to anything goes.
                  define_method(property_name) do
                    self[k] || v['default']
                  end
                  define_method(property_name + '=') do |value|
                    self[k] = value
                  end
                end
              end
            end
          )
        end
      end

      def schema_name
        return @schema_name
      end

      def schema_class
        return @schema_class
      end

      ##
      # Returns a <code>String</code> representation of the resource's state.
      #
      # @return [String] The resource's state, as a <code>String</code>.
      def inspect
        sprintf(
          "#<%s:%#0x CLASS:%s>",
          self.class.to_s, self.object_id, self.schema_class.name
        )
      end
    end

    class APIObject
      def initialize(data)
        @data = data
      end

      def [](key)
        return @data[key]
      end

      def []=(key, value)
        return @data[key] = value
      end
    end
  end
end
