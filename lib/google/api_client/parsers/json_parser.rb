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


require 'multi_json'
require 'google/api_client/parser'


module Google
  class APIClient
    ##
    # Provides a module which all other parsers should include.
    module JSONParser
      extend Parser
      content_type 'application/json'

      module Matcher
        def conditions
          @conditions ||= []
        end

        def matches_kind(kind)
          self.matches_field_value(:kind, kind)
        end

        def matches_fields(fields)
          self.conditions << [:fields, fields]
        end

        def matches_field_value(field, value)
          self.conditions << [:field_value, field, value]
        end
      end

      def self.parsers
        @parsers ||= []
      end

      ##
      # This method ensures that all parsers auto-register themselves.
      def self.included(parser)
        self.parsers << parser
        parser.extend(Matcher)
      end

      def initialize(data)
        @data = data.kind_of?(Hash) ? data : MultiJson.decode(data)
      end

      def [](key)
        return self.json[key]
      end

      def json
        if @data
          data = @data
        elsif self.respond_to?(:data)
          data = self.data
        else
          raise TypeError, "Parser did not provide access to raw data."
        end
        return data
      end

      ##
      # Matches a parser to the data.
      def self.match(data)
        for parser in self.parsers
          conditions_met = true
          for condition in (parser.conditions.sort_by { |c| c.size }).reverse
            condition_type, *params = condition
            case condition_type
            when :fields
              for field in params
                if !data.has_key?(field)
                  conditions_met = false
                  break
                end
              end
            when :field_values
              field, value = params
              if data[field] != value
                conditions_met = false
                break
              end
            else
              raise ArgumentError, "Unknown condition type: #{condition_type}"
            end
            break if !conditions_met
          end
          if conditions_met
            return parser
          end
        end
        return nil
      end

      def self.parse(json)
        data = json.kind_of?(Hash) ? json : MultiJson.decode(json)
        parser = self.match(data)
        if parser
          return parser.new(data)
        else
          return data
        end
      end
    end
  end
end
