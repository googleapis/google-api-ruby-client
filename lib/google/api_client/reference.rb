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

require 'stringio'
require 'json'
require 'addressable/uri'
require 'google/api_client/discovery'

module Google
  class APIClient
    class Reference
      def initialize(options={})
        # We only need this to do lookups on method ID String values
        # It's optional, but method ID lookups will fail if the client is
        # omitted.
        @client = options[:client]
        @version = options[:version] || 'v1'

        self.api_method = options[:api_method]
        self.parameters = options[:parameters] || {}
        self.headers = options[:headers] || []
        if options[:body]
          self.body = options[:body]
        elsif options[:merged_body]
          self.merged_body = options[:merged_body]
        elsif options[:body_object]
          if options[:body_object].respond_to?(:to_json)
            serialized_body = options[:body_object].to_json
          elsif options[:body_object].respond_to?(:to_hash)
            serialized_body = JSON.generate(options[:body_object].to_hash)
          else
            raise TypeError,
              'Could not convert body object to JSON.' +
              'Must respond to :to_json or :to_hash.'
          end
          self.merged_body = serialized_body
        else
          self.merged_body = ''
        end
        unless self.api_method
          self.http_method = options[:http_method] || 'GET'
          self.uri = options[:uri]
        end
      end

      def api_method
        return @api_method
      end

      def api_method=(new_api_method)
        if new_api_method.kind_of?(Google::APIClient::Method) ||
            new_api_method == nil
          @api_method = new_api_method
        elsif new_api_method.respond_to?(:to_str) ||
            new_api_method.kind_of?(Symbol)
          unless @client
            raise ArgumentError,
              "API method lookup impossible without client instance."
          end
          new_api_method = new_api_method.to_s
          # This method of guessing the API is unreliable. This will fail for
          # APIs where the first segment of the RPC name does not match the
          # service name. However, this is a fallback mechanism anyway.
          # Developers should be passing in a reference to the method, rather
          # than passing in a string or symbol. This should raise an error
          # in the case of a mismatch.
          api = new_api_method[/^([^.]+)\./, 1]
          @api_method = @client.discovered_method(
            new_api_method, api, @version
          )
          if @api_method
            # Ditch the client reference, we won't need it again.
            @client = nil
          else
            raise ArgumentError, "API method could not be found."
          end
        else
          raise TypeError,
            "Expected Google::APIClient::Method, got #{new_api_method.class}."
        end
      end

      def parameters
        return @parameters
      end

      def parameters=(new_parameters)
        # No type-checking needed, the Method class handles this.
        @parameters = new_parameters
      end

      def body
        return @body
      end

      def body=(new_body)
        if new_body.respond_to?(:each)
          @body = new_body
        else
          raise TypeError, "Expected body to respond to :each."
        end
      end

      def merged_body
        return (self.body.inject(StringIO.new) do |accu, chunk|
          accu.write(chunk)
          accu
        end).string
      end

      def merged_body=(new_merged_body)
        if new_merged_body.respond_to?(:string)
          new_merged_body = new_merged_body.string
        elsif new_merged_body.respond_to?(:to_str)
          new_merged_body = new_merged_body.to_str
        else
          raise TypeError,
            "Expected String or StringIO, got #{new_merged_body.class}."
        end
        self.body = [new_merged_body]
      end

      def headers
        return @headers ||= []
      end

      def headers=(new_headers)
        if new_headers.kind_of?(Array) || new_headers.kind_of?(Hash)
          @headers = new_headers
        else
          raise TypeError, "Expected Hash or Array, got #{new_headers.class}."
        end
      end

      def http_method
        return @http_method ||= self.api_method.http_method
      end

      def http_method=(new_http_method)
        if new_http_method.kind_of?(Symbol)
          @http_method = new_http_method.to_s.upcase
        elsif new_http_method.respond_to?(:to_str)
          @http_method = new_http_method.to_str.upcase
        else
          raise TypeError,
            "Expected String or Symbol, got #{new_http_method.class}."
        end
      end

      def uri
        return @uri ||= self.api_method.generate_uri(self.parameters)
      end

      def uri=(new_uri)
        @uri = Addressable::URI.parse(new_uri)
      end

      def to_request
        if self.api_method
          return self.api_method.generate_request(
            self.parameters, self.merged_body, self.headers
          )
        else
          return [self.http_method, self.uri, self.headers, self.body]
        end
      end

      def to_hash
        options = {}
        if self.api_method
          options[:api_method] = self.api_method
          options[:parameters] = self.parameters
        else
          options[:http_method] = self.http_method
          options[:uri] = self.uri
        end
        options[:headers] = self.headers
        options[:body] = self.body
        return options
      end
    end
  end
end
