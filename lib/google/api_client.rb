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
require 'stringio'

require 'google/api_client/errors'
require 'google/api_client/environment'
require 'google/api_client/discovery'

module Google
  # TODO(bobaman): Document all this stuff.


  ##
  # This class manages APIs communication.
  class APIClient
    ##
    # Creates a new Google API client.
    #
    # @param [Hash] options The configuration parameters for the client.
    # @option options [Symbol, #generate_authenticated_request] :authorization
    #   (:oauth_1)
    #   The authorization mechanism used by the client.  The following
    #   mechanisms are supported out-of-the-box:
    #   <ul>
    #     <li><code>:two_legged_oauth_1</code></li>
    #     <li><code>:oauth_1</code></li>
    #     <li><code>:oauth_2</code></li>
    #   </ul>
    # @option options [String] :host ("www.googleapis.com")
    #   The API hostname used by the client.  This rarely needs to be changed.
    # @option options [String] :application_name
    #   The name and version of the application using the client. This should
    #   be given in the form `"{name}/{version}"`.
    # @option options [String] :user_agent
    #   ("{app_name} google-api-ruby-client/{version} {os_name}/{os_version}")
    #   The user agent used by the client.  Most developers will want to
    #   leave this value alone and use the `:application_name` option instead.
    def initialize(options={})
      # Normalize key to String to allow indifferent access.
      options = options.inject({}) do |accu, (key, value)|
        accu[key.to_s] = value
        accu
      end
      # Almost all API usage will have a host of 'www.googleapis.com'.
      self.host = options["host"] || 'www.googleapis.com'
      # Most developers will want to leave this value alone and use the
      # application_name option.
      self.user_agent = options["user_agent"] || (
        (options["application_name"] || '')
        'google-api-ruby-client/' + VERSION::STRING +
        ' ' + ENV::OS_VERSION
      ).strip
      # This is mostly a default for the sake of convenience.
      # Unlike most other options, this one may be nil, so we check for
      # the presence of the key rather than checking the value.
      if options.has_key?("parser")
        self.parser = options["parser"]
      else
        require 'google/api_client/parsers/json_parser'
        # NOTE: Do not rely on this default value, as it may change
        self.parser = Google::APIClient::JSONParser
      end
      # The writer method understands a few Symbols and will generate useful
      # default authentication mechanisms.
      self.authorization = options["authorization"] || :oauth_2
      # The HTTP adapter controls all of the HTTP traffic the client generates.
      # By default, Net::HTTP is used, but adding support for other clients
      # is trivial.
      if options["http_adapter"]
        self.http_adapter = options["http_adapter"]
      else
        require 'httpadapter/adapters/net_http'
        # NOTE: Do not rely on this default value, as it may change
        self.http_adapter = HTTPAdapter::NetHTTPAdapter.new
      end
      @discovery_uris = {}
      @discovery_documents = {}
      @discovered_apis = {}
      return self
    end


    ##
    # Returns the parser used by the client.
    #
    # @return [#serialize, #parse]
    #   The parser used by the client.  Any object that implements both a
    #   <code>#serialize</code> and a <code>#parse</code> method may be used.
    #   If <code>nil</code>, no parsing will be done.
    attr_reader :parser

    ##
    # Sets the parser used by the client.
    #
    # @param [#serialize, #parse] new_parser
    #   The parser used by the client.  Any object that implements both a
    #   <code>#serialize</code> and a <code>#parse</code> method may be used.
    #   If <code>nil</code>, no parsing will be done.
    def parser=(new_parser)
      if new_parser &&
          !new_parser.respond_to?(:serialize) &&
          !new_parser.respond_to?(:parse)
        raise TypeError,
          'Expected parser object to respond to #serialize and #parse.'
      end
      @parser = new_parser
    end

    ##
    # Returns the authorization mechanism used by the client.
    #
    # @return [#generate_authenticated_request] The authorization mechanism.
    attr_reader :authorization

    ##
    # Sets the authorization mechanism used by the client.
    #
    # @param [#generate_authenticated_request] new_authorization
    #   The new authorization mechanism.
    def authorization=(new_authorization)
      case new_authorization
      when :oauth_1, :oauth
        require 'signet/oauth_1/client'
        # NOTE: Do not rely on this default value, as it may change
        new_authorization = Signet::OAuth1::Client.new(
          :temporary_credential_uri =>
            'https://www.google.com/accounts/OAuthGetRequestToken',
          :authorization_uri =>
            'https://www.google.com/accounts/OAuthAuthorizeToken',
          :token_credential_uri =>
            'https://www.google.com/accounts/OAuthGetAccessToken',
          :client_credential_key => 'anonymous',
          :client_credential_secret => 'anonymous'
        )
      when :two_legged_oauth_1, :two_legged_oauth
        require 'signet/oauth_1/client'
        # NOTE: Do not rely on this default value, as it may change
        new_authorization = Signet::OAuth1::Client.new(
          :client_credential_key => nil,
          :client_credential_secret => nil,
          :two_legged => true
        )
      when :oauth_2
        require 'signet/oauth_2/client'
        # NOTE: Do not rely on this default value, as it may change
        new_authorization = Signet::OAuth2::Client.new(
          :authorization_uri =>
            'https://accounts.google.com/o/oauth2/auth',
          :token_credential_uri =>
            'https://accounts.google.com/o/oauth2/token'
        )
      when nil
        # No authorization mechanism
      else
        if !new_authorization.respond_to?(:generate_authenticated_request)
          raise TypeError,
            'Expected authorization mechanism to respond to ' +
            '#generate_authenticated_request.'
        end
      end
      @authorization = new_authorization
      return @authorization
    end

    ##
    # Returns the HTTP adapter used by the client.
    #
    # @return [HTTPAdapter]
    #   The HTTP adapter object.  The object must include the
    #   HTTPAdapter module and conform to its interface.
    attr_reader :http_adapter

    ##
    # Returns the HTTP adapter used by the client.
    #
    # @return [HTTPAdapter]
    #   The HTTP adapter object.  The object must include the
    #   HTTPAdapter module and conform to its interface.
    def http_adapter=(new_http_adapter)
      if new_http_adapter.kind_of?(HTTPAdapter)
        @http_adapter = new_http_adapter
      else
        raise TypeError, "Expected HTTPAdapter, got #{new_http_adapter.class}."
      end
    end

    ##
    # The API hostname used by the client.
    #
    # @return [String]
    #   The API hostname.  Should almost always be 'www.googleapis.com'.
    attr_accessor :host

    ##
    # The user agent used by the client.
    #
    # @return [String]
    #   The user agent string used in the User-Agent header.
    attr_accessor :user_agent

    ##
    # Returns the URI for the directory document.
    #
    # @return [Addressable::URI] The URI of the directory document.
    def directory_uri
      template = Addressable::Template.new(
        "https://{host}/discovery/v0.3/directory"
      )
      return template.expand({
        "host" => self.host
      })
    end

    ##
    # Manually registers a URI as a discovery document for a specific version
    # of an API.
    #
    # @param [String, Symbol] api The service name.
    # @param [String] version The desired version of the service.
    # @param [Addressable::URI] uri The URI of the discovery document.
    def register_discovery_uri(api, version, uri)
      api = api.to_s
      version = version || 'v1'
      @discovery_uris["#{api}:#{version}"] = uri
    end

    ##
    # Returns the URI for the discovery document.
    #
    # @param [String, Symbol] api The service name.
    # @param [String] version The desired version of the service.
    # @return [Addressable::URI] The URI of the discovery document.
    def discovery_uri(api, version=nil)
      api = api.to_s
      version = version || 'v1'
      return @discovery_uris["#{api}:#{version}"] ||= (begin
        template = Addressable::Template.new(
          "https://{host}/discovery/v0.3/describe/" +
          "{api}/{version}"
        )
        template.expand({
          "host" => self.host,
          "api" => api,
          "version" => version
        })
      end)
    end

    ##
    # Manually registers a pre-loaded discovery document for a specific version
    # of an API.
    #
    # @param [String, Symbol] api The service name.
    # @param [String] version The desired version of the service.
    # @param [String, StringIO] discovery_document
    #   The contents of the discovery document.
    def register_discovery_document(api, version, discovery_document)
      api = api.to_s
      version = version || 'v1'
      if discovery_document.kind_of?(StringIO)
        discovery_document.rewind
        discovery_document = discovery_document.string
      elsif discovery_document.respond_to?(:to_str)
        discovery_document = discovery_document.to_str
      else
        raise TypeError,
          "Expected String or StringIO, got #{discovery_document.class}."
      end
      @discovery_documents["#{api}:#{version}"] =
        JSON.parse(discovery_document)
    end

    ##
    # Returns the parsed directory document.
    #
    # @return [Hash] The parsed JSON from the directory document.
    def directory_document
      return @directory_document ||= (begin
        request_uri = self.directory_uri
        request = ['GET', request_uri, [], []]
        response = self.transmit_request(request)
        status, headers, body = response
        if status == 200 # TODO(bobaman) Better status code handling?
          merged_body = StringIO.new
          body.each do |chunk|
            merged_body.write(chunk)
          end
          merged_body.rewind
          JSON.parse(merged_body.string)
        else
          raise TransmissionError,
            "Could not retrieve discovery document at: #{request_uri}"
        end
      end)
    end

    ##
    # Returns the parsed discovery document.
    #
    # @param [String, Symbol] api The service name.
    # @param [String] version The desired version of the service.
    # @return [Hash] The parsed JSON from the discovery document.
    def discovery_document(api, version=nil)
      api = api.to_s
      version = version || 'v1'
      return @discovery_documents["#{api}:#{version}"] ||= (begin
        request_uri = self.discovery_uri(api, version)
        request = ['GET', request_uri, [], []]
        response = self.transmit_request(request)
        status, headers, body = response
        if status == 200 # TODO(bobaman) Better status code handling?
          merged_body = StringIO.new
          body.each do |chunk|
            merged_body.write(chunk)
          end
          merged_body.rewind
          JSON.parse(merged_body.string)
        else
          raise TransmissionError,
            "Could not retrieve discovery document at: #{request_uri}"
        end
      end)
    end

    ##
    # Returns all APIs published in the directory document.
    #
    # @return [Array] The list of available APIs.
    def discovered_apis
      @directory_apis ||= (begin
        document_base = self.directory_uri
        if self.directory_document && self.directory_document['items']
          self.directory_document['items'].map do |discovery_document|
            ::Google::APIClient::API.new(
              document_base,
              discovery_document
            )
          end
        else
          []
        end
      end)
    end

    ##
    # Returns the service object for a given service name and service version.
    #
    # @param [String, Symbol] api The service name.
    # @param [String] version The desired version of the service.
    #
    # @return [Google::APIClient::API] The service object.
    def discovered_api(api, version=nil)
      if !api.kind_of?(String) && !api.kind_of?(Symbol)
        raise TypeError,
          "Expected String or Symbol, got #{api.class}."
      end
      api = api.to_s
      version = version || 'v1'
      return @discovered_apis["#{api}:#{version}"] ||= begin
        document_base = self.discovery_uri(api, version)
        discovery_document = self.discovery_document(api, version)
        if document_base && discovery_document
          ::Google::APIClient::API.new(
            document_base,
            discovery_document
          )
        else
          nil
        end
      end
    end

    ##
    # Returns the method object for a given RPC name and service version.
    #
    # @param [String, Symbol] rpc_name The RPC name of the desired method.
    # @param [String] version The desired version of the service.
    #
    # @return [Google::APIClient::Method] The method object.
    def discovered_method(rpc_name, api, version=nil)
      if !rpc_name.kind_of?(String) && !rpc_name.kind_of?(Symbol)
        raise TypeError,
          "Expected String or Symbol, got #{rpc_name.class}."
      end
      rpc_name = rpc_name.to_s
      api = api.to_s
      version = version || 'v1'
      service = self.discovered_api(api, version)
      if service.to_h[rpc_name]
        return service.to_h[rpc_name]
      else
        return nil
      end
    end

    ##
    # Returns the service object with the highest version number.
    #
    # @note <em>Warning</em>: This method should be used with great care.
    # As APIs are updated, minor differences between versions may cause
    # incompatibilities. Requesting a specific version will avoid this issue.
    #
    # @param [String, Symbol] api The name of the service.
    #
    # @return [Google::APIClient::API] The service object.
    def preferred_version(api)
      if !api.kind_of?(String) && !api.kind_of?(Symbol)
        raise TypeError,
          "Expected String or Symbol, got #{api.class}."
      end
      api = api.to_s
      # TODO(bobaman): Update to use directory API.
      return self.discovered_apis.detect do |a|
        a.name == api && a.preferred == true
      end
    end

    ##
    # Generates a request.
    #
    # @param [Google::APIClient::Method, String] api_method
    #   The method object or the RPC name of the method being executed.
    # @param [Hash, Array] parameters
    #   The parameters to send to the method.
    # @param [String] body The body of the request.
    # @param [Hash, Array] headers The HTTP headers for the request.
    # @param [Hash] options
    #   The configuration parameters for the request.
    #   - <code>:version</code> — 
    #     The service version.  Only used if <code>api_method</code> is a
    #     <code>String</code>.  Defaults to <code>'v1'</code>.
    #   - <code>:parser</code> — 
    #     The parser for the response.
    #   - <code>:authorization</code> — 
    #     The authorization mechanism for the response.  Used only if
    #     <code>:authenticated</code> is <code>true</code>.
    #   - <code>:authenticated</code> — 
    #     <code>true</code> if the request must be signed or otherwise
    #     authenticated, <code>false</code>
    #     otherwise.  Defaults to <code>true</code> if an authorization
    #     mechanism has been set, <code>false</code> otherwise.
    #
    # @return [Array] The generated request.
    #
    # @example
    #   request = client.generate_request(
    #     'chili.activities.list',
    #     {'scope' => '@self', 'userId' => '@me', 'alt' => 'json'}
    #   )
    #   method, uri, headers, body = request
    def generate_request(
        api_method, parameters={}, body='', headers=[], options={})
      options={
        :parser => self.parser,
        :version => 'v1',
        :authorization => self.authorization
      }.merge(options)
      # The default value for the :authenticated option depends on whether an
      # authorization mechanism has been set.
      if options[:authorization]
        options = {:authenticated => true}.merge(options)
      else
        options = {:authenticated => false}.merge(options)
      end
      if api_method.kind_of?(String) || api_method.kind_of?(Symbol)
        api_method = api_method.to_s
        # This method of guessing the API is unreliable. This will fail for
        # APIs where the first segment of the RPC name does not match the
        # service name. However, this is a fallback mechanism anyway.
        # Developers should be passing in a reference to the method, rather
        # than passing in a string or symbol. This should raise an error
        # in the case of a mismatch.
        api = api_method[/^([^.]+)\./, 1]
        api_method = self.discovered_method(
          api_method, api, options[:version]
        )
      elsif !api_method.kind_of?(::Google::APIClient::Method)
        raise TypeError,
          "Expected String, Symbol, or Google::APIClient::Method, " +
          "got #{api_method.class}."
      end
      unless api_method
        raise ArgumentError, "API method could not be found."
      end
      request = api_method.generate_request(parameters, body, headers)
      if options[:authenticated]
        request = self.generate_authenticated_request(:request => request)
      end
      return request
    end

    ##
    # Generates a request and transmits it.
    #
    # @param [Google::APIClient::Method, String] api_method
    #   The method object or the RPC name of the method being executed.
    # @param [Hash, Array] parameters
    #   The parameters to send to the method.
    # @param [String] body The body of the request.
    # @param [Hash, Array] headers The HTTP headers for the request.
    # @param [Hash] options
    #   The configuration parameters for the request.
    #   - <code>:version</code> — 
    #     The service version.  Only used if <code>api_method</code> is a
    #     <code>String</code>.  Defaults to <code>'v1'</code>.
    #   - <code>:adapter</code> — 
    #     The HTTP adapter.
    #   - <code>:parser</code> — 
    #     The parser for the response.
    #   - <code>:authorization</code> — 
    #     The authorization mechanism for the response.  Used only if
    #     <code>:authenticated</code> is <code>true</code>.
    #   - <code>:authenticated</code> — 
    #     <code>true</code> if the request must be signed or otherwise
    #     authenticated, <code>false</code>
    #     otherwise.  Defaults to <code>true</code>.
    #
    # @return [Array] The response from the API.
    #
    # @example
    #   response = client.execute(
    #     'chili.activities.list',
    #     {'scope' => '@self', 'userId' => '@me', 'alt' => 'json'}
    #   )
    #   status, headers, body = response
    def execute(api_method, parameters={}, body='', headers=[], options={})
      request = self.generate_request(
        api_method, parameters, body, headers, options
      )
      return self.transmit_request(
        request,
        options[:adapter] || self.http_adapter
      )
    end

    ##
    # Transmits the request using the current HTTP adapter.
    #
    # @param [Array] request The request to transmit.
    # @param [#transmit] adapter The HTTP adapter.
    #
    # @return [Array] The response from the server.
    def transmit_request(request, adapter=self.http_adapter)
      if self.user_agent != nil
        # If there's no User-Agent header, set one.
        method, uri, headers, body = request
        unless headers.kind_of?(Enumerable)
          # We need to use some Enumerable methods, relying on the presence of
          # the #each method.
          class <<headers
            include Enumerable
          end
        end
        if self.user_agent.kind_of?(String)
          unless headers.any? { |k, v| k.downcase == 'User-Agent'.downcase }
            headers = headers.to_a.insert(0, ['User-Agent', self.user_agent])
          end
        elsif self.user_agent != nil
          raise TypeError,
            "Expected User-Agent to be String, got #{self.user_agent.class}"
        end
      end
      adapter.transmit([method, uri, headers, body])
    end

    ##
    # Signs a request using the current authorization mechanism.
    #
    # @param [Hash] options The options to pass through.
    #
    # @return [Array] The signed or otherwise authenticated request.
    def generate_authenticated_request(options={})
      return authorization.generate_authenticated_request(options)
    end
  end
end

require 'google/api_client/version'
