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

require 'httpadapter'
require 'json'

require 'google/api_client/discovery/service'

module Google #:nodoc:
  ##
  # This class manages communication with a single API.
  class APIClient

    def initialize(options={})
      @options = {
        # TODO: What configuration options need to go here?
      }.merge(options)
    end

    ##
    # Returns the parser used by the client.
    def parser
      unless @options[:parser]
        require 'google/api_client/parser/json_parser'
        # NOTE: Do not rely on this default value, as it may change
        @options[:parser] = JSONParser.new
      end
      return @options[:parser]
    end

    ##
    # Returns the authorization mechanism used by the client.
    def authorization
      unless @options[:authorization]
        require 'signet/oauth_1/client'
        # NOTE: Do not rely on this default value, as it may change
        @options[:authorization] = Signet::OAuth1::Client.new(
          :temporary_credential_uri =>
            'https://www.google.com/accounts/OAuthGetRequestToken',
          :authorization_uri =>
            'https://www.google.com/accounts/OAuthAuthorizeToken',
          :token_credential_uri =>
            'https://www.google.com/accounts/OAuthGetAccessToken',
          :client_credential_key => 'anonymous',
          :client_credential_secret => 'anonymous'
        )
      end
      return @options[:authorization]
    end

    ##
    # Returns the HTTP adapter used by the client.
    def http_adapter
      return @options[:http_adapter] ||= (begin
        require 'httpadapter/adapters/net_http'
        @options[:http_adapter] = HTTPAdapter::NetHTTPRequestAdapter
      end)
    end

    def discovery_uri
      return @options[:discovery_uri] ||= (begin
        if @options[:service]
          service_id = @options[:service]
          service_version = @options[:service_version] || '1.0'
          "http://www.googleapis.com/discovery/0.1/describe" +
          "?api=#{service_id}&apiVersion=#{service_version}"
        else
          raise ArgumentError,
            'Missing required configuration value, :discovery_uri.'
        end
      end)
    end

    def discovery_document
      return @discovery_document ||= (begin
        request = ['GET', self.discovery_uri, [], []]
        response = self.transmit_request(request)
        status, headers, body = response
        if status == 200
          merged_body = StringIO.new
          body.each do |chunk|
            merged_body.write(chunk)
          end
          merged_body.rewind
          JSON.parse(merged_body.string)
        else
          raise TransmissionError,
            "Could not retrieve discovery document at: #{self.discovery_uri}"
        end
      end)
    end

    def discovered_services
      return @discovered_services ||= (begin
        service_names = self.discovery_document['data'].keys()
        services = []
        for service_name in service_names
          versions = self.discovery_document['data'][service_name]
          for version_name in versions.keys()
            service_description =
              self.discovery_document['data'][service_name][version_name]
            service_version = "%.1f" % version_name.gsub(/^v/, '').to_f
            services << ::Google::APIClient::Service.new(
              service_name,
              service_version,
              service_description
            )
          end
        end
        services
      end)
    end

    def discovered_service(service_name, service_version='1.0')
      for service in self.discovered_services
        if service.name == service_name &&
            service.version.to_s == service_version.to_s
          return service
        end
      end
      return nil
    end

    def discovered_method(rpc_name, service_version='1.0')
      for service in self.discovered_services
        # This looks kinda weird, but is not a real problem because there's
        # almost always only one service, and this is memoized anyhow.
        if service.version.to_s == service_version.to_s
          return service.to_h[rpc_name] if service.to_h[rpc_name]
        end
      end
      return nil
    end

    def generate_request(
        api_method, parameters={}, body='', headers=[], options={})
      options={
        :signed => true,
        :service_version => '1.0'
      }.merge(options)
      if api_method.kind_of?(String)
        api_method = self.discovered_method(
          api_method, options[:service_version]
        )
      elsif !api_method.kind_of?(::Google::APIClient::Service)
        raise TypeError,
          "Expected String or Google::APIClient::Service, " +
          "got #{api_method.class}."
      end
      request = api_method.generate_request(parameters, body, headers)
      if options[:signed]
        request = self.sign_request(request)
      end
      return request
    end

    def execute(api_method, parameters={}, body='', headers=[], options={})
      request = self.generate_request(
        api_method, parameters, body, headers, options
      )
      return self.transmit_request(request)
    end

    def transmit_request(request)
      ::HTTPAdapter.transmit(request, self.http_adapter)
    end

    def sign_request(request)
      if self.authorization.respond_to?(:generate_authenticated_request)
        return self.authorization.generate_authenticated_request(
          :request => request
        )
      else
        raise TypeError,
          'Expected authorization mechanism to respond to ' +
          '#generate_authenticated_request.'
      end
    end
  end
end

require 'google/api_client/version'
