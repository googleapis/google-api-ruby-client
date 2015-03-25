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

require 'faraday'
require 'faraday/request/multipart'
require 'compat/multi_json'
require 'addressable/uri'
require 'stringio'
require 'google/api_client/discovery'
require 'google/api_client/logging'

module Google
  class APIClient

    ##
    # Represents an API request.
    class Request
      include Google::APIClient::Logging

      MULTIPART_BOUNDARY = "-----------RubyApiMultipartPost".freeze

      # @return [Hash] Request parameters
      attr_reader :parameters
      # @return [Hash] Additional HTTP headers
      attr_reader :headers
      # @return [Google::APIClient::Method] API method to invoke
      attr_reader :api_method
      # @return [Google::APIClient::UploadIO] File to upload
      attr_accessor :media
      # @return [#generated_authenticated_request] User credentials
      attr_accessor :authorization
      # @return [TrueClass,FalseClass] True if request should include credentials
      attr_accessor :authenticated
      # @return [#read, #to_str] Request body
      attr_accessor :body

      ##
      # Build a request
      #
      # @param [Hash] options
      # @option options [Hash, Array] :parameters
      #   Request parameters for the API method.
      # @option options [Google::APIClient::Method] :api_method
      #   API method to invoke. Either :api_method or :uri must be specified
      # @option options [TrueClass, FalseClass] :authenticated
      #   True if request should include credentials. Implicitly true if
      #   unspecified and :authorization present
      # @option options [#generate_signed_request] :authorization
      #   OAuth credentials
      # @option options [Google::APIClient::UploadIO] :media
      #   File to upload, if media upload request
      # @option options [#to_json, #to_hash] :body_object
      #   Main body of the API request. Typically hash or object that can
      #   be serialized to JSON
      # @option options [#read, #to_str] :body
      #   Raw body to send in POST/PUT requests
      # @option options [String, Addressable::URI] :uri
      #   URI to request. Either :api_method or :uri must be specified
      # @option options [String, Symbol] :http_method
      #   HTTP method when requesting a URI
      def initialize(options={})
        @parameters = Faraday::Utils::ParamsHash.new
        @headers = Faraday::Utils::Headers.new

        self.parameters.merge!(options[:parameters]) unless options[:parameters].nil?
        self.headers.merge!(options[:headers]) unless options[:headers].nil?
        self.api_method = options[:api_method]
        self.authenticated = options[:authenticated]
        self.authorization = options[:authorization]

        # These parameters are handled differently because they're not
        # parameters to the API method, but rather to the API system.
        self.parameters['key'] ||= options[:key] if options[:key]
        self.parameters['userIp'] ||= options[:user_ip] if options[:user_ip]

        if options[:media]
          self.initialize_media_upload(options)
        elsif options[:body]
          self.body = options[:body]
        elsif options[:body_object]
          self.headers['Content-Type'] ||= 'application/json'
          self.body = serialize_body(options[:body_object])
        else
          self.body = ''
        end

        unless self.api_method
          self.http_method = options[:http_method] || 'GET'
          self.uri = options[:uri]
        end
      end

      # @!attribute [r] upload_type
      # @return [String] protocol used for upload
      def upload_type
        return self.parameters['uploadType'] || self.parameters['upload_type']
      end

      # @!attribute http_method
      # @return [Symbol] HTTP method if invoking a URI
      def http_method
        return @http_method ||= self.api_method.http_method.to_s.downcase.to_sym
      end

      def http_method=(new_http_method)
        if new_http_method.kind_of?(Symbol)
          @http_method = new_http_method.to_s.downcase.to_sym
        elsif new_http_method.respond_to?(:to_str)
          @http_method = new_http_method.to_s.downcase.to_sym
        else
          raise TypeError,
            "Expected String or Symbol, got #{new_http_method.class}."
        end
      end

      def api_method=(new_api_method)
        if new_api_method.nil? || new_api_method.kind_of?(Google::APIClient::Method)
          @api_method = new_api_method
        else
          raise TypeError,
            "Expected Google::APIClient::Method, got #{new_api_method.class}."
        end
      end

      # @!attribute uri
      # @return [Addressable::URI] URI to send request
      def uri
        return @uri ||= self.api_method.generate_uri(self.parameters)
      end

      def uri=(new_uri)
        @uri = Addressable::URI.parse(new_uri)
        @parameters.update(@uri.query_values) unless @uri.query_values.nil?
      end


      # Transmits the request with the given connection
      #
      # @api private
      #
      # @param [Faraday::Connection] connection
      #   the connection to transmit with
      # @param [TrueValue,FalseValue] is_retry
      #   True if request has been previous sent
      #
      # @return [Google::APIClient::Result]
      #   result of API request
      def send(connection, is_retry = false)
        self.body.rewind if is_retry && self.body.respond_to?(:rewind)
        env = self.to_env(connection)
        logger.debug  { "#{self.class} Sending API request #{env[:method]} #{env[:url].to_s} #{env[:request_headers]}" }
        http_response = connection.app.call(env)
        result = self.process_http_response(http_response)

        logger.debug { "#{self.class} Result: #{result.status} #{result.headers}" }

        # Resumamble slightly different than other upload protocols in that it requires at least
        # 2 requests.
        if result.status == 200 && self.upload_type == 'resumable' && self.media
          upload = result.resumable_upload
          unless upload.complete?
            logger.debug { "#{self.class} Sending upload body" }
            result = upload.send(connection)
          end
        end
        return result
      end

      # Convert to an HTTP request. Returns components in order of method, URI,
      # request headers, and body
      #
      # @api private
      #
      # @return [Array<(Symbol, Addressable::URI, Hash, [#read,#to_str])>]
      def to_http_request
        request = (
          if self.api_method
            self.api_method.generate_request(self.parameters, self.body, self.headers)
          elsif self.uri
            unless self.parameters.empty?
              self.uri.query = Addressable::URI.form_encode(self.parameters)
            end
            [self.http_method, self.uri.to_s, self.headers, self.body]
          end)
        return request
      end

      ##
      # Hashified verison of the API request
      #
      # @return [Hash]
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
        options[:media] = self.media
        unless self.authorization.nil?
          options[:authorization] = self.authorization
        end
        return options
      end

      ##
      # Prepares the request for execution, building a hash of parts
      # suitable for sending to Faraday::Connection.
      #
      # @api private
      #
      # @param [Faraday::Connection] connection
      #   Connection for building the request
      #
      # @return [Hash]
      #   Encoded request
      def to_env(connection)
        method, uri, headers, body = self.to_http_request
        http_request = connection.build_request(method) do |req|
          req.url(uri.to_s)
          req.headers.update(headers)
          req.body = body
        end

        if self.authorization.respond_to?(:generate_authenticated_request)
          http_request = self.authorization.generate_authenticated_request(
            :request => http_request,
            :connection => connection
          )
        end

        http_request.to_env(connection)
      end

      ##
      # Convert HTTP response to an API Result
      #
      # @api private
      #
      # @param [Faraday::Response] response
      #   HTTP response
      #
      # @return [Google::APIClient::Result]
      #   Processed API response
      def process_http_response(response)
        Result.new(self, response)
      end

      protected

      ##
      # Adjust headers & body for media uploads
      #
      # @api private
      #
      # @param [Hash] options
      # @option options [Hash, Array] :parameters
      #   Request parameters for the API method.
      # @option options [Google::APIClient::UploadIO] :media
      #   File to upload, if media upload request
      # @option options [#to_json, #to_hash] :body_object
      #   Main body of the API request. Typically hash or object that can
      #   be serialized to JSON
      # @option options [#read, #to_str] :body
      #   Raw body to send in POST/PUT requests
      def initialize_media_upload(options)
        self.media = options[:media]
        case self.upload_type
        when "media"
          if options[:body] || options[:body_object]
            raise ArgumentError, "Can not specify body & body object for simple uploads"
          end
          self.headers['Content-Type'] ||= self.media.content_type
          self.headers['Content-Length'] ||= self.media.length.to_s
          self.body = self.media
        when "multipart"
          unless options[:body_object]
            raise ArgumentError, "Multipart requested but no body object"
          end
          metadata = StringIO.new(serialize_body(options[:body_object]))
          build_multipart([Faraday::UploadIO.new(metadata, 'application/json', 'file.json'), self.media])
        when "resumable"
          file_length = self.media.length
          self.headers['X-Upload-Content-Type'] = self.media.content_type
          self.headers['X-Upload-Content-Length'] = file_length.to_s
          if options[:body_object]
            self.headers['Content-Type'] ||= 'application/json'
            self.body = serialize_body(options[:body_object])
          else
            self.body = ''
          end
        end
      end

      ##
      # Assemble a multipart message from a set of parts
      #
      # @api private
      #
      # @param [Array<[#read,#to_str]>] parts
      #   Array of parts to encode.
      # @param [String] mime_type
      #   MIME type of the message
      # @param [String] boundary
      #   Boundary for separating each part of the message
      def build_multipart(parts, mime_type = 'multipart/related', boundary = MULTIPART_BOUNDARY)
        env = Faraday::Env.new
        env.request = Faraday::RequestOptions.new
        env.request.boundary = boundary
        env.request_headers = {'Content-Type' => "#{mime_type};boundary=#{boundary}"}
        multipart = Faraday::Request::Multipart.new
        self.body = multipart.create_multipart(env, parts.map {|part| [nil, part]})
        self.headers.update(env[:request_headers])
      end

      ##
      # Serialize body object to JSON
      #
      # @api private
      #
      # @param [#to_json,#to_hash] body
      #   object to serialize
      #
      # @return [String]
      #   JSON
      def serialize_body(body)
        return body.to_json if body.respond_to?(:to_json)
        return MultiJson.dump(body.to_hash) if body.respond_to?(:to_hash)
        raise TypeError, 'Could not convert body object to JSON.' +
                         'Must respond to :to_json or :to_hash.'
      end

    end
  end
end
