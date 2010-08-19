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

require 'net/http'
require 'net/https'
require 'addressable/uri'

module Google #:nodoc:
  class APIClient #:nodoc:

    ##
    # Provides a consistent interface by which to make HTTP requests using the
    # Net::HTTP class.
    class HTTPTransport
      ALLOWED_SCHEMES = ["http", "https"]
      METHOD_MAPPING = {
        # RFC 2616
        :options => Net::HTTP::Options,
        :get => Net::HTTP::Get,
        :head => Net::HTTP::Head,
        :post => Net::HTTP::Post,
        :put => Net::HTTP::Put,
        :delete => Net::HTTP::Delete,
        :trace => Net::HTTP::Trace,
        # Other standards supported by Net::HTTP
        :copy => Net::HTTP::Copy,
        :lock => Net::HTTP::Lock,
        :mkcol => Net::HTTP::Mkcol,
        :move => Net::HTTP::Move,
        :propfind => Net::HTTP::Propfind,
        :proppatch => Net::HTTP::Proppatch,
        :unlock => Net::HTTP::Unlock
      }

      ##
      #
      def initialize(options={})
        # A mapping from authorities to Net::HTTP objects.
        @connection_pool = options[:connection_pool] || {}
        if options[:cert_store]
          @cert_store = options[:cert_store]
        else
          @cert_store = OpenSSL::X509::Store.new
          @cert_store.set_default_paths
        end
      end
      
      attr_reader :connection_pool
      attr_reader :cert_store

      def build_request(method, uri, options={})
        # No type-checking here, but OK because we check against a whitelist
        method = method.to_s.downcase.to_sym
        uri = Addressable::URI.parse(uri).normalize
        if !METHOD_MAPPING.keys.include?(method)
          raise ArgumentError, "Unsupported HTTP method: #{method}"
        end
        headers = {
          "Accept" => "application/json;q=1.0, */*;q=0.5"
        }.merge(options[:headers] || {})

        # TODO(bobaman) More stuff here to handle optional parameters like
        # form data.

        body = options[:body] || ""
        if body != ""
          entity_body_defaults = {
            "Content-Length" => body.size.to_s,
            "Content-Type" => "application/json"
          }
          headers = entity_body_defaults.merge(headers)
        end
        return [method.to_s.upcase, uri.to_s, headers, [body]]
      end

      def send_request(request)
        retried = false
        begin
          method, uri, headers, body_wrapper = request
          body = ""
          body_wrapper.each do |chunk|
            body += chunk
          end

          uri = Addressable::URI.parse(uri).normalize
          connection = self.connect_to(uri)

          # Translate to Net::HTTP request
          request_class = METHOD_MAPPING[method.to_s.downcase.to_sym]
          if !request_class
            raise ArgumentError,
              "Unsupported HTTP method: #{method.to_s.downcase.to_sym}"
          end          
          net_http_request = request_class.new(uri.request_uri)
          for key, value in headers
            net_http_request[key] = value
          end
          net_http_request.body = body
          response = connection.request(net_http_request)

          response_headers = {}
          # We want the canonical header name.
          # Note that Net::HTTP is lossy in that it downcases header names and
          # then capitalizes them afterwards.
          # This results in less-than-ideal behavior for headers like 'ETag'.
          # Not much we can do about it.
          response.canonical_each do |header, value|
            response_headers[header] = value
          end
          # We use the Rack spec to trivially abstract the response format
          return [response.code.to_i, response_headers, [response.body]]
        rescue Errno::EPIPE, IOError, EOFError => e
          # If there's a problem with the connection, finish and restart
          if !retried && connection.started?
            retried = true
            connection.finish
            connection.start
            retry
          else
            raise e
          end
        end
      end

      ##
      # Builds a connection to the authority given in the URI using the
      # appropriate protocol.
      #
      # @param [Addressable::URI, #to_str] uri The URI to connect to.
      def connect_to(uri)
        uri = Addressable::URI.parse(uri).normalize
        if !ALLOWED_SCHEMES.include?(uri.scheme)
          raise ArgumentError, "Unsupported protocol: #{uri.scheme}"
        end
        connection = @connection_pool[uri.site]
        unless connection
          connection = Net::HTTP.new(uri.host, uri.inferred_port)
        end
        retried = false
        begin
          if uri.scheme == 'https' && !connection.started?
            connection.use_ssl = true
            if connection.respond_to?(:enable_post_connection_check=)
              # Deals with a security vulnerability
              connection.enable_post_connection_check = true
            end
            connection.verify_mode = OpenSSL::SSL::VERIFY_PEER
            connection.cert_store = @cert_store
          end
          unless connection.started?
            # Since we allow a connection pool to be passed in, we don't
            # actually know this connection has been started yet.
            connection.start
          end
        rescue Errno::EPIPE, IOError, EOFError => e
          # If there's a problem with the connection, finish and restart
          if !retried && connection.started?
            retried = true
            connection.finish
            connection.start
            retry
          else
            raise e
          end
        end
        # Keep a reference to the connection around
        @connection_pool[uri.site] = connection
        return connection
      end
      protected :connect_to
    end
  end
end
