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

module Google #:nodoc:
  class APIClient #:nodoc:
      ##
      # Factory for HTTP backed client requests.
    class HTTPTransport

      ##
      # The default transport configuration values.  These may be overridden
      # simply by passing in the same key to the constructor.
      DEFAULTS = {
        :parser => :json_parser
      }

      ##
      # The default implementations of various parsers.  These may be overriden
      # simply by passing the same key to the constructor.
      PARSERS = {
        :json_parser => JSONParser.new
      }

      ##
      # Creates a new HTTP request factory.
      #
      # @param [Hash] options
      # @return [Google::APIClient::Discovery] The HTTP request factory.
      def initialize(options={})
        @options = DEFAULTS.clone
        @options.merge!(options)

        # first check if user passed a parser then fallback on appropriate default
        @parser = @options[@options[:parser]] || PARSERS[@options[:parser]]
        unless @parser
          raise ArgumentError,
            'Invalid :parser configuration.'
        end
      end

      ##
      # Returns configuration of the transport.
      #
      # @return [Hash] The configuration options.
      def options
        return @options
      end

      ##
      # Returns the parser used by the transport.
      #
      # @return The handle to the parser.
      def parser
       return @parser
      end
    end
  end
end
