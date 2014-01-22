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
require 'multi_json'
require 'compat/multi_json'
require 'stringio'
require 'retriable'

require 'google/api_client/version'
require 'google/api_client/logging'
require 'google/api_client/errors'
require 'google/api_client/environment'
require 'google/api_client/discovery'
require 'google/api_client/request'
require 'google/api_client/reference'
require 'google/api_client/result'
require 'google/api_client/media'
require 'google/api_client/service_account'
require 'google/api_client/batch'
require 'google/api_client/gzip'
require 'google/api_client/client_secrets'
require 'google/api_client/railtie' if defined?(Rails::Railtie)

module Google

  ##
  # This class manages APIs communication.
  class APIClient
    include Google::APIClient::Logging
    
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
    # @option options [Boolean] :auto_refresh_token (true)
    #   The setting that controls whether or not the api client attempts to
    #   refresh authorization when a 401 is hit in #execute. If the token does 
    #   not support it, this option is ignored.
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
    # @option options [String] :ca_file
    #   Optional set of root certificates to use when validating SSL connections.
    #   By default, a bundled set of trusted roots will be used.
    def initialize(options={})
      logger.debug { "#{self.class} - Initializing client with options #{options}" }
      
      # Normalize key to String to allow indifferent access.
      options = options.inject({}) do |accu, (key, value)|
        accu[key.to_sym] = value
        accu
      end
      # Almost all API usage will have a host of 'www.googleapis.com'.
      self.host = options[:host] || 'www.googleapis.com'
      self.port = options[:port] || 443
      self.discovery_path = options[:discovery_path] || '/discovery/v1'

      # Most developers will want to leave this value alone and use the
      # application_name option.
      if options[:application_name]
        app_name = options[:application_name]
        app_version = options[:application_version]
        application_string = "#{app_name}/#{app_version || '0.0.0'}"
      else
        logger.warn { "#{self.class} - Please provide :application_name and :application_version when initializing the client" }
      end
      self.user_agent = options[:user_agent] || (
        "#{application_string} " +
        "google-api-ruby-client/#{Google::APIClient::VERSION::STRING} #{ENV::OS_VERSION} (gzip)"
      ).strip
      # The writer method understands a few Symbols and will generate useful
      # default authentication mechanisms.
      self.authorization =
        options.key?(:authorization) ? options[:authorization] : :oauth_2
      self.auto_refresh_token = options.fetch(:auto_refresh_token) { true }
      self.key = options[:key]
      self.user_ip = options[:user_ip]
      self.retries = options.fetch(:retries) { 0 }
      @discovery_uris = {}
      @discovery_documents = {}
      @discovered_apis = {}
      ca_file = options[:ca_file] || File.expand_path('../../cacerts.pem', __FILE__)
      self.connection = Faraday.new do |faraday|
        faraday.response :gzip
        faraday.options.params_encoder = Faraday::FlatParamsEncoder
        faraday.ssl.ca_file = ca_file
        faraday.ssl.verify = true
        faraday.adapter Faraday.default_adapter
      end      
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
    # Default Faraday/HTTP connection.
    #
    # @return [Faraday::Connection]
    attr_accessor :connection

    ##
    # The setting that controls whether or not the api client attempts to
    # refresh authorization when a 401 is hit in #execute. 
    #
    # @return [Boolean]
    attr_accessor :auto_refresh_token

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
    # Number of times to retry on recoverable errors
    # 
    # @return [FixNum]
    #  Number of retries
    attr_accessor :retries

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
        response = self.execute!(
          :http_method => :get,
          :uri => self.directory_uri,
          :authenticated => false
        )
        response.data
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
        response = self.execute!(
          :http_method => :get,
          :uri => self.discovery_uri(api, version),
          :authenticated => false
        )
        response.data
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
    # @param [String, Symbol] api The API the method is within.
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
    # 
    # @deprecated Use the google-id-token gem for verifying JWTs
    def verify_id_token!
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
        response = self.execute!(
          :http_method => :get,
          :uri => 'https://www.googleapis.com/oauth2/v1/certs',
          :authenticated => false
        )
        @certificates.merge!(
          Hash[MultiJson.load(response.body).map do |key, cert|
            [key, OpenSSL::X509::Certificate.new(cert)]
          end]
        )
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
    # @option options [Google::APIClient::Method] :api_method
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
    # @return [Google::APIClient::Reference] The generated request.
    #
    # @example
    #   request = client.generate_request(
    #     :api_method => 'plus.activities.list',
    #     :parameters =>
    #       {'collection' => 'public', 'userId' => 'me'}
    #   )
    def generate_request(options={})
      options = {
        :api_client => self
      }.merge(options)
      return Google::APIClient::Request.new(options)
    end

    ##
    # Executes a request, wrapping it in a Result object.
    #
    # @param [Google::APIClient::Request, Hash, Array] params
    #   Either a Google::APIClient::Request, a Hash, or an Array.
    #
    #   If a Google::APIClient::Request, no other parameters are expected.
    #
    #   If a Hash, the below parameters are handled. If an Array, the
    #   parameters are assumed to be in the below order:
    #
    #   - (Google::APIClient::Method) api_method:
    #     The method object or the RPC name of the method being executed.
    #   - (Hash, Array) parameters:
    #     The parameters to send to the method.
    #   - (String) body: The body of the request.
    #   - (Hash, Array) headers: The HTTP headers for the request.
    #   - (Hash) options: A set of options for the request, of which:
    #     - (#generate_authenticated_request) :authorization (default: true) -
    #       The authorization mechanism for the response. Used only if
    #       `:authenticated` is `true`.
    #     - (TrueClass, FalseClass) :authenticated (default: true) -
    #       `true` if the request must be signed or somehow
    #       authenticated, `false` otherwise.
    #     - (TrueClass, FalseClass) :gzip (default: true) - 
    #       `true` if gzip enabled, `false` otherwise.
    #     - (FixNum) :retries -
    #       # of times to retry on recoverable errors
    #
    # @return [Google::APIClient::Result] The result from the API, nil if batch.
    #
    # @example
    #   result = client.execute(batch_request)
    #
    # @example
    #   plus = client.discovered_api('plus')
    #   result = client.execute(
    #     :api_method => plus.activities.list,
    #     :parameters => {'collection' => 'public', 'userId' => 'me'}
    #   )
    #
    # @see Google::APIClient#generate_request
    def execute!(*params)
      if params.first.kind_of?(Google::APIClient::Request)
        request = params.shift
        options = params.shift || {}
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
        options.update(params.shift) if params.size > 0
        request = self.generate_request(options)
      end
      
      request.headers['User-Agent'] ||= '' + self.user_agent unless self.user_agent.nil?
      request.headers['Accept-Encoding'] ||= 'gzip' unless options[:gzip] == false
      request.headers['Content-Type'] ||= ''
      request.parameters['key'] ||= self.key unless self.key.nil?
      request.parameters['userIp'] ||= self.user_ip unless self.user_ip.nil?

      connection = options[:connection] || self.connection
      request.authorization = options[:authorization] || self.authorization unless options[:authenticated] == false
      tries = 1 + (options[:retries] || self.retries)
      Retriable.retriable :tries => tries, 
                          :on => [TransmissionError], 
                          :interval => lambda {|attempts| (2 ** attempts) + rand} do
        result = request.send(connection, true)

        case result.status
          when 200...300
            result
          when 301, 302, 303, 307
            request = generate_request(request.to_hash.merge({
              :uri => result.headers['location'],
              :api_method => nil
            }))
            raise RedirectError.new(result.headers['location'], result)
          when 400...500
            if result.status == 401 && request.authorization.respond_to?(:refresh_token) && auto_refresh_token
              begin
                logger.debug("Attempting refresh of access token & retry of request")
                request.authorization.fetch_access_token!
              rescue Signet::AuthorizationError
                 # Ignore since we want the original error
              end
            end
            raise ClientError.new(result.error_message || "A client error has occurred", result)
          when 500...600
            raise ServerError.new(result.error_message || "A server error has occurred", result)
          else
            raise TransmissionError.new(result.error_message || "A transmission error has occurred", result)
        end
      end
    end

    ##
    # Same as Google::APIClient#execute!, but does not raise an exception for
    # normal API errros.
    #
    # @see Google::APIClient#execute
    def execute(*params)
      begin
        return self.execute!(*params)
      rescue TransmissionError => e
        return e.result
      end
    end

    protected

    ##
    # Resolves a URI template against the client's configured base.
    #
    # @api private
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
    
  end

end

require 'google/api_client/version'
