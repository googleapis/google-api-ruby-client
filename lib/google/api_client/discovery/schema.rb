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


require 'time'
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
          schema = self
          @schema_class = @api_version.const_set(
            @schema_name,
            Class.new(APIObject) do |klass|
              discovery_document['properties'].each do |(k, v)|
                property_name = Google::INFLECTOR.underscore(k)
                define_method(:schema) { schema }
                define_method(property_name + '_property') do
                  v
                end
                case v['type']
                when 'string'
                  define_string_property(property_name, k, v)
                when 'boolean'
                  define_boolean_property(property_name, k, v)
                when 'number'
                  define_number_property(property_name, k, v)
                when 'object'
                  define_object_property(property_name, k, v)
                else
                  # Either type 'any' or we don't know what this is,
                  # default to anything goes.
                  define_any_property(property_name, k, v)
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
      def self.define_string_property(property_name, key, schema)
        define_method(property_name) do
          self[key] ||= schema['default']
          if schema['format'] == 'byte' && self[key] != nil
            Base64.decode64(self[key])
          elsif schema['format'] == 'date-time' && self[key] != nil
            Time.parse(self[key])
          elsif schema['format'] =~ /^u?int(32|64)$/ && self[key] != nil
            self[key].to_i
          else
            self[key]
          end
        end
        define_method(property_name + '=') do |value|
          if schema['format'] == 'byte'
            self[key] = Base64.encode64(value)
          elsif schema['format'] == 'date-time'
            if value.respond_to?(:to_str)
              value = Time.parse(value.to_str)
            elsif !value.respond_to?(:xmlschema)
              raise TypeError,
                "Could not obtain RFC 3339 timestamp from #{value.class}."
            end
            self[key] = value.xmlschema
          elsif schema['format'] =~ /^u?int(32|64)$/
            self[key] = value.to_s
          elsif value.respond_to?(:to_str)
            self[key] = value.to_str
          elsif value.kind_of?(Symbol)
            self[key] = value.to_s
          else
            raise TypeError,
              "Expected String or Symbol, got #{value.class}."
          end
        end
      end

      def self.define_boolean_property(property_name, key, schema)
        define_method(property_name) do
          self[key] ||= schema['default']
          case self[key].to_s.downcase
          when 'true', 'yes', 'y', 'on', '1'
            true
          when 'false', 'no', 'n', 'off', '0'
            false
          when 'nil', 'null'
            nil
          else
            raise TypeError,
              "Expected boolean, got #{self[key].class}."
          end
        end
        define_method(property_name + '=') do |value|
          case value.to_s.downcase
          when 'true', 'yes', 'y', 'on', '1'
            self[key] = true
          when 'false', 'no', 'n', 'off', '0'
            self[key] = false
          when 'nil', 'null'
            self[key] = nil
          else
            raise TypeError, "Expected boolean, got #{value.class}."
          end
        end
      end

      def self.define_number_property(property_name, key, schema)
        define_method(property_name) do
          self[key] ||= schema['default']
          if self[key] != nil && !self[key].respond_to?(:to_f)
            raise TypeError,
              "Expected Float, got #{self[key].class}."
          elsif self[key] != nil && self[key].respond_to?(:to_f)
            self[key].to_f
          else
            self[key]
          end
        end
        define_method(property_name + '=') do |value|
          if value == nil
            self[key] = value
          else
            case schema['format']
            when 'double', 'float'
              if value.respond_to?(:to_f)
                self[key] = value.to_f
              else
                raise TypeError,
                  "Expected String or Symbol, got #{value.class}."
              end
            else
              raise TypeError,
                "Unexpected type format for number: #{schema['format']}."
            end
          end
        end
      end

      def self.define_object_property(property_name, key, schema)
        # TODO(bobaman):
        # Do we treat this differently from any?
        self.define_any_property(property_name, key, schema)
      end

      def self.define_any_property(property_name, key, schema)
        define_method(property_name) do
          self[k] || v['default']
        end
        define_method(property_name + '=') do |value|
          self[k] = value
        end
      end

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
