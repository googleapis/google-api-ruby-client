# Copyright 2013 Google Inc.
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

require 'google/api_client'
require 'google/api_client/service/stub_generator'
require 'google/api_client/service/resource'
require 'google/api_client/service/request'
require 'google/api_client/service/result'
require 'google/api_client/service/batch'
require 'google/api_client/service/simple_file_store'

module Google
  class APIClient

    ##
    # Experimental new programming interface at the API level.
    # Hides Google::APIClient. Designed to be easier to use, with less code.
    #
    # @example
    #   calendar = Google::APIClient::Service.new('calendar', 'v3')
    #   result = calendar.events.list('calendarId' => 'primary').execute()
    class Service
      include Google::APIClient::Service::StubGenerator
      extend Forwardable

      DEFAULT_CACHE_FILE = 'discovery.cache'

      # Cache for discovered APIs.
      @@discovered = {}

      ##
      # Creates a new Service.
      #
      # @param [String, Symbol] api_name
      #   The name of the API this service will access.
      # @param [String, Symbol] api_version
      #   The version of the API this service will access.
      # @param [Hash] options
      #   The configuration parameters for the service.
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
      # @option options [String] :host ("www.googleapis.com")
      #   The API hostname used by the client. This rarely needs to be changed.
      # @option options [String] :port (443)
      #   The port number used by the client. This rarely needs to be changed.
      # @option options [String] :discovery_path ("/discovery/v1")
      #   The discovery base path. This rarely needs to be changed.
      # @option options [String] :ca_file
      #   Optional set of root certificates to use when validating SSL connections.
      #   By default, a bundled set of trusted roots will be used.
      # @option options [#generate_authenticated_request] :authorization
      #   The authorization mechanism for requests. Used only if
      #   `:authenticated` is `true`.
      # @option options [TrueClass, FalseClass] :authenticated (default: true)
      #   `true` if requests must be signed or somehow
      #   authenticated, `false` otherwise.
      # @option options [TrueClass, FalseClass] :gzip (default: true)
      #   `true` if gzip enabled, `false` otherwise.
      # @option options [Faraday::Connection] :connection
      #   A custom connection to be used for all requests.
      # @option options [ActiveSupport::Cache::Store, :default] :discovery_cache
      #   A cache store to place the discovery documents for loaded APIs.
      #   Avoids unnecessary roundtrips to the discovery service.
      #   :default loads the default local file cache store.
      def initialize(api_name, api_version, options = {})
        @api_name = api_name.to_s
        if api_version.nil?
          raise ArgumentError,
            "API version must be set"
        end
        @api_version = api_version.to_s
        if options && !options.respond_to?(:to_hash)
          raise ArgumentError,
            "expected options Hash, got #{options.class}"
        end

        params = {}
        [:application_name, :application_version, :authorization, :host, :port,
         :discovery_path, :auto_refresh_token, :key, :user_ip,
         :ca_file].each do |option|
          if options.include? option
            params[option] = options[option]
          end
        end

        @client = Google::APIClient.new(params)

        @connection = options[:connection] || @client.connection

        @options = options

        # Initialize cache store. Default to SimpleFileStore if :cache_store
        # is not provided and we have write permissions.
        if options.include? :cache_store
          @cache_store = options[:cache_store]
        else
          cache_exists = File.exist?(DEFAULT_CACHE_FILE)
          if (cache_exists && File.writable?(DEFAULT_CACHE_FILE)) ||
             (!cache_exists && File.writable?(Dir.pwd))
            @cache_store = Google::APIClient::Service::SimpleFileStore.new(
              DEFAULT_CACHE_FILE)
          end
        end

        # Attempt to read API definition from memory cache.
        # Not thread-safe, but the worst that can happen is a cache miss.
        unless @api = @@discovered[[api_name, api_version]]
          # Attempt to read API definition from cache store, if there is one.
          # If there's a miss or no cache store, call discovery service.
          if !@cache_store.nil?
            @api = @cache_store.fetch("%s/%s" % [api_name, api_version]) do
              @client.discovered_api(api_name, api_version)
            end
          else
            @api = @client.discovered_api(api_name, api_version)
          end
          @@discovered[[api_name, api_version]] = @api
        end

        generate_call_stubs(self, @api)
      end

      ##
      # Returns the authorization mechanism used by the service.
      #
      # @return [#generate_authenticated_request] The authorization mechanism.
      def_delegators :@client, :authorization, :authorization=

      ##
      # The setting that controls whether or not the service attempts to
      # refresh authorization when a 401 is hit during an API call.
      #
      # @return [Boolean]
      def_delegators :@client, :auto_refresh_token, :auto_refresh_token=

      ##
      # The application's API key issued by the API console.
      #
      # @return [String] The API key.
      def_delegators :@client, :key, :key=

      ##
      # The Faraday/HTTP connection used by this service.
      #
      # @return [Faraday::Connection]
      attr_accessor :connection

      ##
      # The cache store used for storing discovery documents.
      #
      # @return [ActiveSupport::Cache::Store,
      #          Google::APIClient::Service::SimpleFileStore,
      #          nil]
      attr_reader :cache_store

      ##
      # Prepares a Google::APIClient::BatchRequest object to make batched calls.
      # @param [Array] calls
      #   Optional array of Google::APIClient::Service::Request to initialize
      #   the batch request with.
      # @param [Proc] block
      #   Callback for every call's response. Won't be called if a call defined
      #   a callback of its own.
      #
      # @yield [Google::APIClient::Service::Result]
      #   block to be called when result ready
      def batch(calls = nil, &block)
        Google::APIClient::Service::BatchRequest.new(self, calls, &block)
      end

      ##
      # Executes an API request.
      # Do not call directly; this method is only used by Request objects when
      # executing.
      #
      # @param [Google::APIClient::Service::Request,
      #         Google::APIClient::Service::BatchCall] request
      #   The request to be executed.
      def execute(request)
        if request.instance_of? Google::APIClient::Service::Request
          params = {:api_method => request.method,
            :parameters => request.parameters,
            :connection => @connection}
          if request.respond_to? :body
            if request.body.respond_to? :to_hash
              params[:body_object] = request.body
            else
              params[:body] = request.body
            end
          end
          if request.respond_to? :media
            params[:media] = request.media
          end
          [:authenticated, :gzip].each do |option|
            if @options.include? option
              params[option] = @options[option]
            end
          end
          result = @client.execute(params)
          return Google::APIClient::Service::Result.new(request, result)
        elsif request.instance_of? Google::APIClient::Service::BatchRequest
          @client.execute(request.base_batch)
        end
      end
    end
  end
end
