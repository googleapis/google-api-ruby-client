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
require 'base64'
require 'addressable/uri'
require 'addressable/template'

require 'google/inflection'
require 'google/api_client/errors'

module Google
  class APIClient
    module Schema
      def self.parse(api, schema_data)
        # This method is super-long, but hard to break up due to the
        # unavoidable dependence on closures and execution context.
        schema_name = schema_data['id']

        if schema_name
          api_name_string =
            Google::INFLECTOR.camelize(api.name)
          api_version_string =
            Google::INFLECTOR.camelize(api.version).gsub('.', '_')
          if Google::APIClient::Schema.const_defined?(api_name_string)
            api_name = Google::APIClient::Schema.const_get(api_name_string)
          else
            api_name = Google::APIClient::Schema.const_set(
              api_name_string, Module.new
            )
          end
          if api_name.const_defined?(api_version_string)
            api_version = api_name.const_get(api_version_string)
          else
            api_version = api_name.const_set(api_version_string, Module.new)
          end
          if api_version.const_defined?(schema_name)
            schema_class = api_version.const_get(schema_name)
          end
        end

        # It's possible the schema has already been defined. If so, don't
        # redefine it. This means that reloading a schema which has already
        # been loaded into memory is not possible.
        unless schema_class
          schema = self
          schema_class = Class.new(APIObject) do |klass|
            properties = []
            define_method('schema') do
              schema_data
            end
            (schema_data['properties'] || []).each do |(k, v)|
              property_name = Google::INFLECTOR.underscore(k)
              properties << property_name.to_sym
              define_method(:schema) { schema }
              define_method(property_name + '_schema') do
                v
              end
              define_method(property_name + '_description') do
                v['description']
              end
              case v['type']
              when 'string'
                define_string_property(api, property_name, k, v)
              when 'boolean'
                define_boolean_property(api, property_name, k, v)
              when 'number'
                define_number_property(api, property_name, k, v)
              when 'array'
                define_array_property(api, property_name, k, v)
              when 'object'
                define_object_property(api, property_name, k, v)
              else
                # Either type 'any' or we don't know what this is,
                # default to anything goes.
                define_any_property(api, property_name, k, v)
              end
            end

            define_method('properties') do
              properties
            end
          end
          if schema_name
            api_version.const_set(schema_name, schema_class)
          end
        end
        return schema_class
      end
    end

    class APIObject
      def self.define_string_property(api, property_name, key, schema_data)
        define_method(property_name) do
          self[key] ||= schema_data['default']
          if schema_data['format'] == 'byte' && self[key] != nil
            Base64.decode64(self[key])
          elsif schema_data['format'] == 'date-time' && self[key] != nil
            Time.parse(self[key])
          elsif schema_data['format'] =~ /^u?int(32|64)$/ && self[key] != nil
            self[key].to_i
          else
            self[key]
          end
        end
        define_method(property_name + '=') do |value|
          if schema_data['format'] == 'byte'
            self[key] = Base64.encode64(value)
          elsif schema_data['format'] == 'date-time'
            if value.respond_to?(:to_str)
              value = Time.parse(value.to_str)
            elsif !value.respond_to?(:xmlschema)
              raise TypeError,
                "Could not obtain RFC 3339 timestamp from #{value.class}."
            end
            self[key] = value.xmlschema
          elsif schema_data['format'] =~ /^u?int(32|64)$/
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

      def self.define_boolean_property(api, property_name, key, schema_data)
        define_method(property_name) do
          self[key] ||= schema_data['default']
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

      def self.define_number_property(api, property_name, key, schema_data)
        define_method(property_name) do
          self[key] ||= schema_data['default']
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
            case schema_data['format']
            when 'double', 'float'
              if value.respond_to?(:to_f)
                self[key] = value.to_f
              else
                raise TypeError,
                  "Expected String or Symbol, got #{value.class}."
              end
            else
              raise TypeError,
                "Unexpected type format for number: #{schema_data['format']}."
            end
          end
        end
      end

      def self.define_array_property(api, property_name, key, schema_data)
        define_method(property_name) do
          # The default value of an empty Array obviates a mutator method.
          self[key] ||= []
          array = if self[key] != nil && !self[key].respond_to?(:to_ary)
            raise TypeError,
              "Expected Array, got #{self[key].class}."
          else
            self[key].to_ary
          end
          if schema_data['items'] && schema_data['items']['$ref']
            schema_name = schema_data['items']['$ref']
            if api.schemas[schema_name]
              schema_class = api.schemas[schema_name]
              array.map! do |item|
                schema_class.new(item)
              end
            else
              raise ArgumentError,
                "Could not find schema '#{schema_name}' in API '#{api.id}'."
            end
          end
          array
        end
      end

      def self.define_object_property(api, property_name, key, schema_data)
        # TODO finish this up...
        schema = Schema.parse(api, schema_data)
        define_method(property_name) do
          self[key] ||= schema_data['default']
          schema.new(self[key])
        end
      end

      def self.define_any_property(api, property_name, key, schema_data)
        define_method(property_name) do
          self[key] ||= schema_data['default']
        end
        define_method(property_name + '=') do |value|
          self[key] = value
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

      def to_hash
        return @data
      end

      def to_json
        return JSON.generate(@data)
      end
    end
  end
end
