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
require 'multi_json'
require 'compat/multi_json'
require 'base64'
require 'autoparse'
require 'addressable/uri'
require 'addressable/template'

require 'google/inflection'
require 'google/api_client/errors'


module Google
  class APIClient
    ##
    # @api private
    module Schema
      def self.parse(api, schema_data)
        # This method is super-long, but hard to break up due to the
        # unavoidable dependence on closures and execution context.
        schema_name = schema_data['id']

        # Due to an oversight, schema IDs may not be URI references.
        # TODO(bobaman): Remove this code once this has been resolved.
        schema_uri = (
          api.document_base +
          (schema_name[0..0] != '#' ? '#' + schema_name : schema_name)
        )
        # puts schema_uri

        # Due to an oversight, schema IDs may not be URI references.
        # TODO(bobaman): Remove this whole lambda once this has been resolved.
        reformat_references = lambda do |data|
          # This code is not particularly efficient due to recursive traversal
          # and excess object creation, but this hopefully shouldn't be an
          # issue since it should only be called only once per schema per
          # process.
          if data.kind_of?(Hash) &&
              data['$ref'] && !data['$ref'].kind_of?(Hash)
            if data['$ref'].respond_to?(:to_str)
              reference = data['$ref'].to_str
            else
              raise TypeError, "Expected String, got #{data['$ref'].class}"
            end
            reference = '#' + reference if reference[0..0] != '#'
            data.merge({
              '$ref' => reference
            })
          elsif data.kind_of?(Hash)
            data.inject({}) do |accu, (key, value)|
              if value.kind_of?(Hash)
                accu[key] = reformat_references.call(value)
              else
                accu[key] = value
              end
              accu
            end
          else
            data
          end
        end
        schema_data = reformat_references.call(schema_data)
        # puts schema_data.inspect

        if schema_name
          api_name_string =
            Google::INFLECTOR.camelize(api.name)
          api_version_string =
            Google::INFLECTOR.camelize(api.version).gsub('.', '_')
          # This is for compatibility with Ruby 1.8.7.
          # TODO(bobaman) Remove this when we eventually stop supporting 1.8.7.
          args = []
          args << false if Class.method(:const_defined?).arity != 1
          if Google::APIClient::Schema.const_defined?(api_name_string, *args)
            api_name = Google::APIClient::Schema.const_get(
              api_name_string, *args
            )
          else
            api_name = Google::APIClient::Schema.const_set(
              api_name_string, Module.new
            )
          end
          if api_name.const_defined?(api_version_string, *args)
            api_version = api_name.const_get(api_version_string, *args)
          else
            api_version = api_name.const_set(api_version_string, Module.new)
          end
          if api_version.const_defined?(schema_name, *args)
            schema_class = api_version.const_get(schema_name, *args)
          end
        end

        # It's possible the schema has already been defined. If so, don't
        # redefine it. This means that reloading a schema which has already
        # been loaded into memory is not possible.
        unless schema_class
          schema_class = AutoParse.generate(schema_data, :uri => schema_uri)
          if schema_name
            api_version.const_set(schema_name, schema_class)
          end
        end
        return schema_class
      end
    end
  end
end
