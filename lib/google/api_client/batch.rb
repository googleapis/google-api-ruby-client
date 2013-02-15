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
require 'google/api_client/reference'
require 'uuidtools'

module Google
  class APIClient

    ##
    # Helper class to contain a response to an individual batched call.
    #
    # @api private
    class BatchedCallResponse
      # @return [String] UUID of the call
      attr_reader :call_id
      # @return [Fixnum] HTTP status code
      attr_accessor :status
      # @return [Hash] HTTP response headers
      attr_accessor :headers
      # @return [String] HTTP response body
      attr_accessor :body

      ##
      # Initialize the call response
      # 
      # @param [String] call_id
      #   UUID of the original call
      # @param [Fixnum] status
      #   HTTP status
      # @param [Hash] headers
      #   HTTP response headers
      # @param [#read, #to_str] body
      #   Response body
      def initialize(call_id, status = nil, headers = nil, body = nil)
        @call_id, @status, @headers, @body = call_id, status, headers, body
      end
    end
    
    # Wraps multiple API calls into a single over-the-wire HTTP request.
    #
    # @example
    #
    #     client = Google::APIClient.new
    #     urlshortener = client.discovered_api('urlshortener')
    #     batch = Google::APIClient::BatchRequest.new do |result|
    #        puts result.data
    #     end
    # 
    #     batch.add(:api_method => urlshortener.url.insert, :body_object => { 'longUrl' => 'http://example.com/foo' })
    #     batch.add(:api_method => urlshortener.url.insert, :body_object => { 'longUrl' => 'http://example.com/bar' })
    #
    #     client.execute(batch)
    #
    class BatchRequest < Request
      BATCH_BOUNDARY = "-----------RubyApiBatchRequest".freeze

      # @api private
      # @return [Array<(String,Google::APIClient::Request,Proc)] List of API calls in the batch
      attr_reader :calls

      ##
      # Creates a new batch request.
      #
      # @param [Hash] options
      #   Set of options for this request.
      # @param [Proc] block
      #   Callback for every call's response. Won't be called if a call defined
      #   a callback of its own.
      #
      # @return [Google::APIClient::BatchRequest] 
      #   The constructed object.
      #
      # @yield [Google::APIClient::Result]
      #   block to be called when result ready
      def initialize(options = {}, &block)
        @calls = []
        @global_callback = block if block_given?
        @last_auto_id = 0
        
        # TODO(sgomes): Use SecureRandom.uuid, drop UUIDTools when we drop 1.8
        @base_id = UUIDTools::UUID.random_create.to_s

        options[:uri] ||= 'https://www.googleapis.com/batch'
        options[:http_method] ||= 'POST'

        super options
      end

      ##
      # Add a new call to the batch request.
      # Each call must have its own call ID; if not provided, one will
      # automatically be generated, avoiding collisions. If duplicate call IDs
      # are provided, an error will be thrown.
      #
      # @param [Hash, Google::APIClient::Request] call 
      #   the call to be added.
      # @param [String] call_id
      #   the ID to be used for this call. Must be unique
      # @param [Proc] block
      #   callback for this call's response.
      #
      # @return [Google::APIClient::BatchRequest]
      #   the BatchRequest, for chaining
      #
      # @yield [Google::APIClient::Result]
      #   block to be called when result ready
      def add(call, call_id = nil, &block)
        unless call.kind_of?(Google::APIClient::Reference)
          call = Google::APIClient::Reference.new(call)
        end
        call_id ||= new_id
        if @calls.assoc(call_id)
          raise BatchError,
              'A call with this ID already exists: %s' % call_id
        end
        callback = block_given? ? block : @global_callback
        @calls << [call_id, call, callback]        
        return self
      end

      ##
      # Processes the HTTP response to the batch request, issuing callbacks.
      #
      # @api private
      #
      # @param [Faraday::Response] response
      #   the HTTP response.
      def process_http_response(response)
        content_type = find_header('Content-Type', response.headers)
        boundary = /.*boundary=(.+)/.match(content_type)[1]
        parts = response.body.split(/--#{Regexp.escape(boundary)}/)
        parts = parts[1...-1]
        parts.each do |part|
          call_response = deserialize_call_response(part)
          _, call, callback = @calls.assoc(call_response.call_id)
          result = Google::APIClient::Result.new(call, call_response)
          callback.call(result) if callback
        end
        Google::APIClient::Result.new(self, response)
      end

      ##
      # Return the request body for the BatchRequest's HTTP request.
      #
      # @api private
      #
      # @return [String]
      #   the request body.
      def to_http_request
        if @calls.nil? || @calls.empty?
          raise BatchError, 'Cannot make an empty batch request'
        end
        parts = @calls.map {|(call_id, call, callback)| serialize_call(call_id, call)}
        build_multipart(parts, 'multipart/mixed', BATCH_BOUNDARY)
        super
      end
      
      
      protected

      ##
      # Helper method to find a header from its name, regardless of case.
      #
      # @api private
      #
      # @param [String] name
      #   the name of the header to find.
      # @param [Hash] headers
      #   the hash of headers and their values.
      #
      # @return [String] 
      #   the value of the desired header.
      def find_header(name, headers)
        _, header = headers.detect do |h, v|
          h.downcase == name.downcase
        end
        return header
      end

      ##
      # Create a new call ID. Uses an auto-incrementing, conflict-avoiding ID.
      #
      # @api private
      #
      # @return [String] 
      #  the new, unique ID.
      def new_id
        @last_auto_id += 1
        while @calls.assoc(@last_auto_id)
          @last_auto_id += 1
        end
        return @last_auto_id.to_s
      end

      ##
      # Convert a Content-ID header value to an id. Presumes the Content-ID
      # header conforms to the format that id_to_header() returns.
      #
      # @api private
      #
      # @param [String] header
      #   Content-ID header value.
      #
      # @return [String] 
      #   The extracted ID value.
      def header_to_id(header)
        if !header.start_with?('<') || !header.end_with?('>') ||
            !header.include?('+')
          raise BatchError, 'Invalid value for Content-ID: "%s"' % header
        end

        base, call_id = header[1...-1].split('+')
        return Addressable::URI.unencode(call_id)
      end

      ##
      # Auxiliary method to split the headers from the body in an HTTP response.
      #
      # @api private
      #
      # @param [String] response
      #   the response to parse.
      #
      # @return [Array<Hash>, String] 
      #   the headers and the body, separately.
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
      # @api private
      #
      # @param [String] call_response
      #   the request to deserialize.
      #
      # @return [Google::APIClient::BatchedCallResponse] 
      #   the parsed and converted response.
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
      # Serialize a single batched call for assembling the multipart message
      #
      # @api private
      #
      # @param [Google::APIClient::Request] call
      #   the call to serialize.
      #
      # @return [Faraday::UploadIO] 
      #   the serialized request
      def serialize_call(call_id, call)
        method, uri, headers, body = call.to_http_request
        request = "#{method.to_s.upcase} #{Addressable::URI.parse(uri).request_uri} HTTP/1.1"
        headers.each do |header, value|
          request << "\r\n%s: %s" % [header, value]
        end
        if body
          # TODO - CompositeIO if body is a stream 
          request << "\r\n\r\n"
          if body.respond_to?(:read)
            request << body.read
          else
            request << body.to_s
          end
        end
        Faraday::UploadIO.new(StringIO.new(request), 'application/http', 'ruby-api-request', 'Content-ID' => id_to_header(call_id))
      end
      
      ##
      # Convert an id to a Content-ID header value.
      #
      # @api private
      #
      # @param [String] call_id
      #   identifier of individual call.
      #
      # @return [String]
      #   A Content-ID header with the call_id encoded into it. A UUID is
      #   prepended to the value because Content-ID headers are supposed to be
      #   universally unique.
      def id_to_header(call_id)
        return '<%s+%s>' % [@base_id, Addressable::URI.encode(call_id)]
      end
      
    end
  end
end