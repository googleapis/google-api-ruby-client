# Copyright 2012 Google Inc.
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

require 'addressable/uri'
require 'uuidtools'

module Google
  class APIClient

    # Helper class to contain a response to an individual batched call.
    class BatchedCallResponse
      attr_reader :call_id
      attr_accessor :status, :headers, :body

      def initialize(call_id, status = nil, headers = nil, body = nil)
        @call_id, @status, @headers, @body = call_id, status, headers, body
      end
    end

    ##
    # Wraps multiple API calls into a single over-the-wire HTTP request.
    class BatchRequest

      BATCH_BOUNDARY = "-----------RubyApiBatchRequest".freeze

      attr_accessor :options
      attr_reader :calls, :callbacks

      ##
      # Creates a new batch request.
      #
      # @param [Hash] options
      #   Set of options for this request, the only important one being
      #   :connection, which specifies an HTTP connection to use.
      # @param [Proc] block
      #   Callback for every call's response. Won't be called if a call defined
      #   a callback of its own.
      #
      # @return [Google::APIClient::BatchRequest] The constructed object.
      def initialize(options = {}, &block)
        # Request options, ignoring method and parameters.
        @options = options
        # Batched calls to be made, indexed by call ID.
        @calls = {}
        # Callbacks per batched call, indexed by call ID.
        @callbacks = {}
        # Order for the call IDs, since Ruby 1.8 hashes are unordered.
        @order = []
        # Global callback to be used for every call. If a specific callback
        # has been defined for a request, this won't be called.
        @global_callback = block if block_given?
        # The last auto generated ID.
        @last_auto_id = 0
        # Base ID for the batch request.
        @base_id = nil
      end

      ##
      # Add a new call to the batch request.
      # Each call must have its own call ID; if not provided, one will
      # automatically be generated, avoiding collisions. If duplicate call IDs
      # are provided, an error will be thrown.
      #
      # @param [Hash, Google::APIClient::Reference] call: the call to be added.
      # @param [String] call_id: the ID to be used for this call. Must be unique
      # @param [Proc] block: callback for this call's response.
      #
      # @return [Google::APIClient::BatchRequest] The BatchRequest, for chaining
      def add(call, call_id = nil, &block)
        unless call.kind_of?(Google::APIClient::Reference)
          call = Google::APIClient::Reference.new(call)
        end
        if call_id.nil?
          call_id = new_id
        end
        if @calls.include?(call_id)
          raise BatchError,
              'A call with this ID already exists: %s' % call_id
        end
        @calls[call_id] = call
        @order << call_id
        if block_given?
          @callbacks[call_id] = block
        elsif @global_callback
          @callbacks[call_id] = @global_callback
        end
        return self
      end

      ##
      # Convert this batch request into an HTTP request.
      #
      # @return [Array<String, String, Hash, String>]
      #   An array consisting of, in order: HTTP method, request path, request
      #   headers and request body.
      def to_http_request
        return ['POST', request_uri, request_headers, request_body]
      end

      ##
      # Processes the HTTP response to the batch request, issuing callbacks.
      #
      # @param [Faraday::Response] response: the HTTP response.
      def process_response(response)
        content_type = find_header('Content-Type', response.headers)
        boundary = /.*boundary=(.+)/.match(content_type)[1]
        parts = response.body.split(/--#{Regexp.escape(boundary)}/)
        parts = parts[1...-1]
        parts.each do |part|
          call_response = deserialize_call_response(part)
          callback = @callbacks[call_response.call_id]
          call = @calls[call_response.call_id]
          result = Google::APIClient::Result.new(call, nil, call_response)
          callback.call(result) if callback
        end
      end

      private

      ##
      # Helper method to find a header from its name, regardless of case.
      #
      # @param [String] name: The name of the header to find.
      # @param [Hash] headers: The hash of headers and their values.
      #
      # @return [String] The value of the desired header.
      def find_header(name, headers)
        _, header = headers.detect do |h, v|
          h.downcase == name.downcase
        end
        return header
      end

      ##
      # Create a new call ID. Uses an auto-incrementing, conflict-avoiding ID.
      #
      # @return [String] the new, unique ID.
      def new_id
        @last_auto_id += 1
        while @calls.include?(@last_auto_id)
          @last_auto_id += 1
        end
        return @last_auto_id.to_s
      end

      ##
      # Convert an id to a Content-ID header value.
      #
      # @param [String] call_id: identifier of individual call.
      #
      # @return [String]
      #   A Content-ID header with the call_id encoded into it. A UUID is
      #   prepended to the value because Content-ID headers are supposed to be
      #   universally unique.
      def id_to_header(call_id)
        if @base_id.nil?
          # TODO(sgomes): Use SecureRandom.uuid, drop UUIDTools when we drop 1.8
          @base_id = UUIDTools::UUID.random_create.to_s
        end

        return '<%s+%s>' % [@base_id, Addressable::URI.encode(call_id)]
      end

      ##
      # Convert a Content-ID header value to an id. Presumes the Content-ID
      # header conforms to the format that id_to_header() returns.
      #
      # @param [String] header: Content-ID header value.
      #
      # @return [String] The extracted ID value.
      def header_to_id(header)
        if !header.start_with?('<') || !header.end_with?('>') ||
            !header.include?('+')
          raise BatchError, 'Invalid value for Content-ID: "%s"' % header
        end

        base, call_id = header[1...-1].split('+')
        return Addressable::URI.unencode(call_id)
      end

      ##
      # Convert a single batched call into a string.
      #
      # @param [Google::APIClient::Reference] call: the call to serialize.
      #
      # @return [String] The request as a string in application/http format.
      def serialize_call(call)
        http_request = call.to_request
        method = http_request.method.to_s.upcase
        path = http_request.path.to_s
        status_line = method + " " + path + " HTTP/1.1"
        serialized_call = status_line
        if http_request.headers
          http_request.headers.each do |header, value|
            serialized_call << "\r\n%s: %s" % [header, value]
          end
        end
        if http_request.body
          serialized_call << "\r\n\r\n"
          serialized_call << http_request.body
        end
        return serialized_call
      end

      ##
      # Auxiliary method to split the headers from the body in an HTTP response.
      #
      # @param [String] response: the response to parse.
      #
      # @return [Array<Hash>, String] The headers and the body, separately.
      def split_headers_and_body(response)
        headers = {}
        payload = response.lstrip
        while payload
          line, payload = payload.split("\n", 2)
          line.sub!(/\s+\z/, '')
          break if line.empty?
          match = /\A([^:]+):\s*/.match(line)
          if match
            headers[match[1]] = match.post_match
          else
            raise BatchError, 'Invalid header line in response: %s' % line
          end
        end
        return headers, payload
      end

      ##
      # Convert a single batched response into a BatchedCallResponse object.
      #
      # @param [Google::APIClient::Reference] response:
      #   the request to deserialize.
      #
      # @return [BatchedCallResponse] The parsed and converted response.
      def deserialize_call_response(call_response)
        outer_headers, outer_body = split_headers_and_body(call_response)
        status_line, payload = outer_body.split("\n", 2)
        protocol, status, reason = status_line.split(' ', 3)

        headers, body = split_headers_and_body(payload)
        content_id = find_header('Content-ID', outer_headers)
        call_id = header_to_id(content_id)
        return BatchedCallResponse.new(call_id, status.to_i, headers, body)
      end

      ##
      # Return the request headers for the BatchRequest's HTTP request.
      #
      # @return [Hash] The HTTP headers.
      def request_headers
        return {
          'Content-Type' => 'multipart/mixed; boundary=%s' % BATCH_BOUNDARY
        }
      end

      ##
      # Return the request path for the BatchRequest's HTTP request.
      #
      # @return [String] The request path.
      def request_uri
        if @calls.nil? || @calls.empty?
          raise BatchError, 'Cannot make an empty batch request'
        end
        # All APIs have the same batch path, so just get the first one.
        return @calls.first[1].api_method.api.batch_path
      end

      ##
      # Return the request body for the BatchRequest's HTTP request.
      #
      # @return [String] The request body.
      def request_body
        body = ""
        @order.each do |call_id|
          body << "--" + BATCH_BOUNDARY + "\r\n"
          body << "Content-Type: application/http\r\n"
          body << "Content-ID: %s\r\n\r\n" % id_to_header(call_id)
          body << serialize_call(@calls[call_id]) + "\r\n\r\n"
        end
        body << "--" + BATCH_BOUNDARY + "--"
        return body
      end
    end
  end
end