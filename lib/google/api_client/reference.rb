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
require 'faraday/utils'
require 'multi_json'
require 'compat/multi_json'
require 'addressable/uri'
require 'stringio'
require 'google/api_client/discovery'

module Google
  class APIClient

    class Request
      MULTIPART_BOUNDARY = "-----------RubyApiMultipartPost".freeze
      
      attr_reader :parameters, :headers
      attr_accessor :api_client, :connection, :api_method, :version ,:media, :authorization, :authenticated, :body
      
      def initialize(options={})
        @parameters = Hash[options[:parameters] || {}]
        @headers = Faraday::Utils::Headers.new
        self.api_client = options[:api_client]
        self.headers.merge!(options[:headers]) unless options[:headers].nil?
        self.api_method = options[:api_method]
        self.version = options[:version]
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

      def upload_type
        return self.parameters['uploadType'] || self.parameters['upload_type']
      end

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

      def uri
        return @uri ||= self.api_method.generate_uri(self.parameters)
      end

      def uri=(new_uri)
        @uri = Addressable::URI.parse(new_uri)
        @parameters.update(@uri.query_values) unless @uri.query_values.nil?
      end

      def send(connection)
        response = connection.app.call(self.to_env(connection))        
        self.process_http_response(response)
      end
      
      def to_http_request
        if self.api_client
          self.headers['User-Agent'] ||= '' + self.api_client.user_agent unless self.api_client.user_agent.nil?
          self.parameters['key'] ||= self.api_client.key unless self.api_client.key.nil?
          self.parameters['userIp'] ||= self.api_client.user_ip unless self.api_client.user_ip.nil?
          self.api_method = self.api_client.resolve_method(self.api_method, self.version) unless self.api_method.nil?
        end
        request = ( 
          if self.uri
            unless self.parameters.empty?
              self.uri.query = Addressable::URI.form_encode(self.parameters)
            end
            [self.http_method, self.uri.to_s, self.headers, self.body]
          else
            self.api_method.generate_request(self.parameters, self.body, self.headers)
          end)
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
        options[:media] = self.media
        unless self.authorization.nil?
          options[:authorization] = self.authorization
        end
        return options
      end
      
      def to_env(connection)
        method, uri, headers, body = self.to_http_request
        http_request = connection.build_request(method) do |req|
          req.url(uri)
          req.headers.update(headers)
          req.body = body
        end

        if self.authorization.respond_to?(:generate_authenticated_request)
          http_request = self.authorization.generate_authenticated_request(
            :request => http_request,
            :connection => connection
          )
        end

        request_env = http_request.to_env(connection)
      end
      
      def process_http_response(response)
        Result.new(self, response)
      end
      
      protected
      
      def initialize_media_upload(options)
        self.media = options[:media]
        case self.upload_type
        when "media"
          if options[:body] || options[:body_object] 
            raise ArgumentError, "Can not specify body & body object for simple uploads"
          end
          self.headers['Content-Type'] ||= self.media.content_type
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
      
      def build_multipart(parts, mime_type = 'multipart/related', boundary = MULTIPART_BOUNDARY) 
        env = {
          :request_headers => {'Content-Type' => "#{mime_type};boundary=#{boundary}"},
          :request => { :boundary => boundary }
        }
        multipart = Faraday::Request::Multipart.new
        self.body = multipart.create_multipart(env, parts.map {|part| [nil, part]})
        self.headers.update(env[:request_headers])
      end
      
      def serialize_body(body)
        return body.to_json if body.respond_to?(:to_json)
        return MultiJson.dump(options[:body_object].to_hash) if body.respond_to?(:to_hash)
        raise TypeError, 'Could not convert body object to JSON.' +
                         'Must respond to :to_json or :to_hash.'
      end

    end
  
    class Reference < Request
    end
  end
end
