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


gem 'faraday', '~> 0.8.1'
require 'faraday'
require 'faraday/utils'
require 'multi_json'
require 'stringio'

require 'google/api_client/version'
require 'google/api_client/errors'
require 'google/api_client/environment'
require 'google/api_client/discovery'
require 'google/api_client/reference'
require 'google/api_client/result'
require 'google/api_client/media'
require 'google/api_client/service_account'
require 'google/api_client/batch'

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
    # @option options [String] :application_name
    #   The name of the application using the client.
    # @option options [String] :application_version
    #   The version number of the application using the client.
    # @option options [String] :user_agent
    #   ("{app_name} google-api-ruby-client/{version} {os_name}/{os_version}")
    #   The user agent used by the client.  Most developers will want to
    #   leave this value alone and use the `:application_name` option instead.
    # @option options [String] :host ("www.googleapis.com")
    #   The API hostname used by the client. This rarely needs to be changed.
    # @option options [String] :port (443)
    #   The port number used by the client. This rarely needs to be changed.
    # @option options [String] :discovery_path ("/discovery/v1")
    #   The discovery base path. This rarely needs to be changed.
    def initialize(options={})
      # Normalize key to String to allow indifferent access.
      options = options.inject({}) do |accu, (key, value)|
        accu[key.to_s] = value
        accu
      end
      # Almost all API usage will have a host of 'www.googleapis.com'.
      self.host = options["host"] || 'www.googleapis.com'
      self.port = options["port"] || 443
      self.discovery_path = options["discovery_path"] || '/discovery/v1'

      # Most developers will want to leave this value alone and use the
      # application_name option.
      application_string = (
        options["application_name"] ? (
          "#{options["application_name"]}/" +
          "#{options["application_version"] || '0.0.0'}"
        ) : ""
      )
      self.user_agent = options["user_agent"] || (
        "#{application_string} " +
        "google-api-ruby-client/#{VERSION::STRING} " +
         ENV::OS_VERSION
      ).strip
      # The writer method understands a few Symbols and will generate useful
      # default authentication mechanisms.
      self.authorization =
        options.key?("authorization") ? options["authorization"] : :oauth_2
      self.key = options["key"]
      self.user_ip = options["user_ip"]
      @discovery_uris = {}
      @discovery_documents = {}
      @discovered_apis = {}
      return self
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
        gem 'signet', '~> 0.4.0'
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
        gem 'signet', '~> 0.4.0'
        require 'signet/oauth_1/client'
        # NOTE: Do not rely on this default value, as it may change
        new_authorization = Signet::OAuth1::Client.new(
          :client_credential_key => nil,
          :client_credential_secret => nil,
          :two_legged => true
        )
      when :oauth_2
        gem 'signet', '~> 0.4.0'
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
    # The application's API key issued by the API console.
    #
    # @return [String] The API key.
    attr_accessor :key

    ##
    # The IP address of the user this request is being performed on behalf of.
    #
    # @return [String] The user's IP address.
    attr_accessor :user_ip

    ##
    # The user agent used by the client.
    #
    # @return [String]
    #   The user agent string used in the User-Agent header.
    attr_accessor :user_agent

    ##
    # The API hostname used by the client.
    #
    # @return [String]
    #   The API hostname. Should almost always be 'www.googleapis.com'.
    attr_accessor :host

    ##
    # The port number used by the client.
    #
    # @return [String]
    #   The port number. Should almost always be 443.
    attr_accessor :port

    ##
    # The base path used by the client for discovery.
    #
    # @return [String]
    #   The base path. Should almost always be '/discovery/v1'.
    attr_accessor :discovery_path

    ##
    # Resolves a URI template against the client's configured base.
    #
    # @param [String, Addressable::URI, Addressable::Template] template
    #   The template to resolve.
    # @param [Hash] mapping The mapping that corresponds to the template.
    # @return [Addressable::URI] The expanded URI.
    def resolve_uri(template, mapping={})
      @base_uri ||= Addressable::URI.new(
        :scheme => 'https',
        :host => self.host,
        :port => self.port
      ).normalize
      template = if template.kind_of?(Addressable::Template)
        template.pattern
      elsif template.respond_to?(:to_str)
        template.to_str
      else
        raise TypeError,
          "Expected String, Addressable::URI, or Addressable::Template, " +
          "got #{template.class}."
      end
      return Addressable::Template.new(@base_uri + template).expand(mapping)
    end

    ##
    # Returns the URI for the directory document.
    #
    # @return [Addressable::URI] The URI of the directory document.
    def directory_uri
      return resolve_uri(self.discovery_path + '/apis')
    end

    ##
    # Manually registers a URI as a discovery document for a specific version
    # of an API.
    #
    # @param [String, Symbol] api The API name.
    # @param [String] version The desired version of the API.
    # @param [Addressable::URI] uri The URI of the discovery document.
    def register_discovery_uri(api, version, uri)
      api = api.to_s
      version = version || 'v1'
      @discovery_uris["#{api}:#{version}"] = uri
    end

    ##
    # Returns the URI for the discovery document.
    #
    # @param [String, Symbol] api The API name.
    # @param [String] version The desired version of the API.
    # @return [Addressable::URI] The URI of the discovery document.
    def discovery_uri(api, version=nil)
      api = api.to_s
      version = version || 'v1'
      return @discovery_uris["#{api}:#{version}"] ||= (
        resolve_uri(
          self.discovery_path + '/apis/{api}/{version}/rest',
          'api' => api,
          'version' => version
        )
      )
    end

    ##
    # Manually registers a pre-loaded discovery document for a specific version
    # of an API.
    #
    # @param [String, Symbol] api The API name.
    # @param [String] version The desired version of the API.
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
        MultiJson.load(discovery_document)
    end

    ##
    # Returns the parsed directory document.
    #
    # @return [Hash] The parsed JSON from the directory document.
    def directory_document
      return @directory_document ||= (begin
        request = self.generate_request(
          :http_method => :get,
          :uri => self.directory_uri,
          :authenticated => false
        )
        response = self.transmit(:request => request)
        if response.status >= 200 && response.status < 300
          MultiJson.load(response.body)
        elsif response.status >= 400
          case response.status
          when 400...500
            exception_type = ClientError
          when 500...600
            exception_type = ServerError
          else
            exception_type = TransmissionError
          end
          url = request.to_env(Faraday.default_connection)[:url]
          raise exception_type,
            "Could not retrieve directory document at: #{url}"
        end
      end)
    end

    ##
    # Returns the parsed discovery document.
    #
    # @param [String, Symbol] api The API name.
    # @param [String] version The desired version of the API.
    # @return [Hash] The parsed JSON from the discovery document.
    def discovery_document(api, version=nil)
      api = api.to_s
      version = version || 'v1'
      return @discovery_documents["#{api}:#{version}"] ||= (begin
        request = self.generate_request(
          :http_method => :get,
          :uri => self.discovery_uri(api, version),
          :authenticated => false
        )
        response = self.transmit(:request => request)
        if response.status >= 200 && response.status < 300
          MultiJson.load(response.body)
        elsif response.status >= 400
          case response.status
          when 400...500
            exception_type = ClientError
          when 500...600
            exception_type = ServerError
          else
            exception_type = TransmissionError
          end
          url = request.to_env(Faraday.default_connection)[:url]
          raise exception_type,
            "Could not retrieve discovery document at: #{url}"
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
            Google::APIClient::API.new(
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
    # @param [String, Symbol] api The API name.
    # @param [String] version The desired version of the API.
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
          Google::APIClient::API.new(
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
    # @param [String, Symbol] rpc_name The API the method is within.
    # @param [String] version The desired version of the API.
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
      return self.discovered_apis.detect do |a|
        a.name == api && a.preferred == true
      end
    end

    ##
    # Verifies an ID token against a server certificate. Used to ensure that
    # an ID token supplied by an untrusted client-side mechanism is valid.
    # Raises an error if the token is invalid or missing.
    def verify_id_token!
      gem 'jwt', '~> 0.1.4'
      require 'jwt'
      require 'openssl'
      @certificates ||= {}
      if !self.authorization.respond_to?(:id_token)
        raise ArgumentError, (
          "Current authorization mechanism does not support ID tokens: " +
          "#{self.authorization.class.to_s}"
        )
      elsif !self.authorization.id_token
        raise ArgumentError, (
          "Could not verify ID token, ID token missing. " +
          "Scopes were: #{self.authorization.scope.inspect}"
        )
      else
        check_cached_certs = lambda do
          valid = false
          for key, cert in @certificates
            begin
              self.authorization.decoded_id_token(cert.public_key)
              valid = true
            rescue JWT::DecodeError, Signet::UnsafeOperationError
              # Expected exception. Ignore, ID token has not been validated.
            end
          end
          valid
        end
        if check_cached_certs.call()
          return true
        end
        request = self.generate_request(
          :http_method => :get,
          :uri => 'https://www.googleapis.com/oauth2/v1/certs',
          :authenticated => false
        )
        response = self.transmit(:request => request)
        if response.status >= 200 && response.status < 300
          @certificates.merge!(
            Hash[MultiJson.load(response.body).map do |key, cert|
              [key, OpenSSL::X509::Certificate.new(cert)]
            end]
          )
        elsif response.status >= 400
          case response.status
          when 400...500
            exception_type = ClientError
          when 500...600
            exception_type = ServerError
          else
            exception_type = TransmissionError
          end
          url = request.to_env(Faraday.default_connection)[:url]
          raise exception_type,
            "Could not retrieve certificates from: #{url}"
        end
        if check_cached_certs.call()
          return true
        else
          raise InvalidIDTokenError,
            "Could not verify ID token against any available certificate."
        end
      end
      return nil
    end

    ##
    # Generates a request.
    #
    # @option options [Google::APIClient::Method, String] :api_method
    #   The method object or the RPC name of the method being executed.
    # @option options [Hash, Array] :parameters
    #   The parameters to send to the method.
    # @option options [Hash, Array] :headers The HTTP headers for the request.
    # @option options [String] :body The body of the request.
    # @option options [String] :version ("v1")
    #   The service version. Only used if `api_method` is a `String`.
    # @option options [#generate_authenticated_request] :authorization
    #   The authorization mechanism for the response. Used only if
    #   `:authenticated` is `true`.
    # @option options [TrueClass, FalseClass] :authenticated (true)
    #   `true` if the request must be signed or somehow
    #   authenticated, `false` otherwise.
    #
    # @return [Faraday::Request] The generated request.
    #
    # @example
    #   request = client.generate_request(
    #     :api_method => 'plus.activities.list',
    #     :parameters =>
    #       {'collection' => 'public', 'userId' => 'me'}
    #   )
    def generate_request(options={})
      # Note: The merge method on a Hash object will coerce an API Reference
      # object into a Hash and merge with the default options.

      options={
        :version => 'v1',
        :authorization => self.authorization,
        :key => self.key,
        :user_ip => self.user_ip,
        :connection => Faraday.default_connection
      }.merge(options)

      # The Reference object is going to need this to do method ID lookups.
      options[:client] = self
      # The default value for the :authenticated option depends on whether an
      # authorization mechanism has been set.
      if options[:authorization]
        options = {:authenticated => true}.merge(options)
      else
        options = {:authenticated => false}.merge(options)
      end
      reference = Google::APIClient::Reference.new(options)
      request = reference.to_request
      if options[:authenticated]
        request = options[:authorization].generate_authenticated_request(
          :request => request,
          :connection => options[:connection]
        )
      end
      return request
    end

    ##
    # Signs a request using the current authorization mechanism.
    #
    # @param [Hash] options a customizable set of options
    #
    # @return [Faraday::Request] The signed or otherwise authenticated request.
    # @deprecated No longer used internally
    def generate_authenticated_request(options={})
      return authorization.generate_authenticated_request(options)
    end

    ##
    # Transmits the request using the current HTTP adapter.
    #
    # @option options [Array, Faraday::Request] :request
    #   The HTTP request to transmit.
    # @option options [String, Symbol] :method
    #   The method for the HTTP request.
    # @option options [String, Addressable::URI] :uri
    #   The URI for the HTTP request.
    # @option options [Array, Hash] :headers
    #   The headers for the HTTP request.
    # @option options [String] :body
    #   The body for the HTTP request.
    # @option options [Faraday::Connection] :connection
    #   The HTTP connection to use.
    #
    # @return [Faraday::Response] The response from the server.
    def transmit(options={})
      options[:connection] ||= Faraday.default_connection
      if options[:request]
        if options[:request].kind_of?(Array)
          method, uri, headers, body = options[:request]
        elsif options[:request].kind_of?(Faraday::Request)
          unless options[:connection]
            raise ArgumentError,
              "Faraday::Request used, requires a connection to be provided."
          end
          method = options[:request].method.to_s.downcase.to_sym
          uri = options[:connection].build_url(
            options[:request].path, options[:request].params
          )
          headers = options[:request].headers || {}
          body = options[:request].body || ''
        end
      else
        method = options[:method] || :get
        uri = options[:uri]
        headers = options[:headers] || []
        body = options[:body] || ''
      end
      headers = headers.to_a if headers.kind_of?(Hash)
      request_components = {
        :method => method,
        :uri => uri,
        :headers => headers,
        :body => body
      }
      # Verify that we have all pieces required to transmit an HTTP request
      request_components.each do |(key, value)|
        unless value
          raise ArgumentError, "Missing :#{key} parameter."
        end
      end

      if self.user_agent != nil
        # If there's no User-Agent header, set one.
        unless headers.kind_of?(Enumerable)
          # We need to use some Enumerable methods, relying on the presence of
          # the #each method.
          class << headers
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

      request = options[:connection].build_request(
        method.to_s.downcase.to_sym
      ) do |req|
        req.url(Addressable::URI.parse(uri).normalize.to_s)
        req.headers = Faraday::Utils::Headers.new(headers)
        req.body = body
      end
      request_env = request.to_env(options[:connection])
      response = options[:connection].app.call(request_env)
      return response
    end

    ##
    # Executes a request, wrapping it in a Result object.
    #
    # @param [Google::APIClient::BatchRequest, Hash, Array] params
    #   Either a Google::APIClient::BatchRequest, a Hash, or an Array.
    #
    #   If a Google::APIClient::BatchRequest, no other parameters are expected.
    #
    #   If a Hash, the below parameters are handled. If an Array, the
    #   parameters are assumed to be in the below order:
    #
    #   - (Google::APIClient::Method, String) api_method:
    #     The method object or the RPC name of the method being executed.
    #   - (Hash, Array) parameters:
    #     The parameters to send to the method.
    #   - (String) body: The body of the request.
    #   - (Hash, Array) headers: The HTTP headers for the request.
    #   - (Hash) options: A set of options for the request, of which:
    #     - (String) :version (default: "v1") -
    #       The service version. Only used if `api_method` is a `String`.
    #     - (#generate_authenticated_request) :authorization (default: true) -
    #       The authorization mechanism for the response. Used only if
    #       `:authenticated` is `true`.
    #     - (TrueClass, FalseClass) :authenticated (default: true) -
    #       `true` if the request must be signed or somehow
    #       authenticated, `false` otherwise.
    #
    # @return [Google::APIClient::Result] The result from the API, nil if batch.
    #
    # @example
    #   result = client.execute(batch_request)
    #
    # @example
    #   result = client.execute(
    #     :api_method => 'plus.activities.list',
    #     :parameters => {'collection' => 'public', 'userId' => 'me'}
    #   )
    #
    # @see Google::APIClient#generate_request
    def execute(*params)
      if params.last.kind_of?(Google::APIClient::BatchRequest) &&
          params.size == 1
        batch = params.pop
        options = batch.options
        options[:connection] ||= Faraday.default_connection
        http_request = batch.to_http_request
        request = nil

        if @authorization
          method, uri, headers, body = http_request
          method = method.to_s.downcase.to_sym

          faraday_request = options[:connection].build_request(
            method.to_s.downcase.to_sym
          ) do |req|
            req.url(Addressable::URI.parse(uri).normalize.to_s)
            req.headers = Faraday::Utils::Headers.new(headers)
            req.body = body
          end

          request = {
            :request => self.generate_authenticated_request(
              :request => faraday_request,
              :connection => options[:connection]
            ),
            :connection => options[:connection]
          }
        else
          request = {
            :request => http_request,
            :connection => options[:connection]
          }
        end

        response = self.transmit(request)
        batch.process_response(response)
        return nil
      else
        # This block of code allows us to accept multiple parameter passing
        # styles, and maintaining some backwards compatibility.
        #
        # Note: I'm extremely tempted to deprecate this style of execute call.
        if params.last.respond_to?(:to_hash) && params.size == 1
          options = params.pop
        else
          options = {}
        end

        options[:api_method] = params.shift if params.size > 0
        options[:parameters] = params.shift if params.size > 0
        options[:body] = params.shift if params.size > 0
        options[:headers] = params.shift if params.size > 0
        options[:client] = self
        options[:connection] ||= Faraday.default_connection
        reference = Google::APIClient::Reference.new(options)
        request = self.generate_request(reference)
        response = self.transmit(
          :request => request,
          :connection => options[:connection]
        )
        return Google::APIClient::Result.new(reference, request, response)
      end
    end

    ##
    # Same as Google::APIClient#execute, but raises an exception if there was
    # an error.
    #
    # @see Google::APIClient#execute
    def execute!(*params)
      result = self.execute(*params)
      if result.error?
        error_message = result.error_message
        case result.response.status
          when 400...500
            exception_type = ClientError
            error_message ||= "A client error has occurred."
          when 500...600
            exception_type = ServerError
            error_message ||= "A server error has occurred."
          else
            exception_type = TransmissionError
            error_message ||= "A transmission error has occurred."
        end
        raise exception_type, error_message
      end
      return result
    end
  end
end

require 'google/api_client/version'
