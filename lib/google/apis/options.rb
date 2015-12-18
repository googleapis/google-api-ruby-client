# Copyright 2015 Google Inc.
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

module Google
  module Apis
    # General options for API requests
    ClientOptions =  Struct.new(
      :application_name,
      :application_version,
      :proxy_url,
      :use_net_http)

    RequestOptions = Struct.new(
      :authorization,
      :retries,
      :header,
      :timeout_sec,
      :open_timeout_sec)

    # General client options
    class ClientOptions
      # @!attribute [rw] application_name
      #   @return [String] Name of the application, for identification in the User-Agent header
      # @!attribute [rw] application_version
      #   @return [String] Version of the application, for identification in the User-Agent header
      # @!attribute [rw] proxy_url
      #   @return [String] URL of a proxy server

      # Get the default options
      # @return [Google::Apis::ClientOptions]
      def self.default
        @options ||= ClientOptions.new
      end
    end

    # Request options
    class RequestOptions
      # @!attribute [rw] authorization
      #   @return [Signet::OAuth2::Client, #apply(Hash)] OAuth2 credentials
      # @!attribute [rw] retries
      #   @return [Fixnum] Number of times to retry requests on server error
      # @!attribute [rw] timeout_sec
      #   @return [Fixnum] How long, in seconds, before requests time out
      # @!attribute [rw] open_timeout_sec
      #   @return [Fixnum] How long, in seconds, before failed connections time out
      # @!attribute [rw] header
      #   @return [Hash<String,String] Additional HTTP headers to include in requests

      # Get the default options
      # @return [Google::Apis::RequestOptions]
      def self.default
        @options ||= RequestOptions.new
      end

      def merge(options)
        return self if options.nil?

        new_options = dup
        members.each do |opt|
          opt = opt.to_sym
          new_options[opt] = options[opt] unless options[opt].nil?
        end
        new_options
      end
    end
    
    ClientOptions.default.use_net_http = false
    ClientOptions.default.application_name = 'unknown'
    ClientOptions.default.application_version = '0.0.0'

    RequestOptions.default.retries = 0
    RequestOptions.default.open_timeout_sec = 20
  end
end
