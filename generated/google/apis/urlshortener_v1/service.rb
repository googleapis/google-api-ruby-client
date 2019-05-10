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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module UrlshortenerV1
      # URL Shortener API
      #
      # Lets you create, inspect, and manage goo.gl short URLs
      #
      # @example
      #    require 'google/apis/urlshortener_v1'
      #
      #    Urlshortener = Google::Apis::UrlshortenerV1 # Alias the module
      #    service = Urlshortener::UrlshortenerService.new
      #
      # @see https://developers.google.com/url-shortener/v1/getting_started
      class UrlshortenerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'urlshortener/v1/')
          @batch_path = 'batch/urlshortener/v1'
        end
        
        # Expands a short URL or gets creation time and analytics.
        # @param [String] short_url
        #   The short URL, including the protocol.
        # @param [String] projection
        #   Additional information to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::UrlshortenerV1::Url] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::UrlshortenerV1::Url]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_url(short_url, projection: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'url', options)
          command.response_representation = Google::Apis::UrlshortenerV1::Url::Representation
          command.response_class = Google::Apis::UrlshortenerV1::Url
          command.query['projection'] = projection unless projection.nil?
          command.query['shortUrl'] = short_url unless short_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new short URL.
        # @param [Google::Apis::UrlshortenerV1::Url] url_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::UrlshortenerV1::Url] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::UrlshortenerV1::Url]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_url(url_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:post, 'url', options)
          command.request_representation = Google::Apis::UrlshortenerV1::Url::Representation
          command.request_object = url_object
          command.response_representation = Google::Apis::UrlshortenerV1::Url::Representation
          command.response_class = Google::Apis::UrlshortenerV1::Url
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of URLs shortened by a user.
        # @param [String] projection
        #   Additional information to return.
        # @param [String] start_token
        #   Token for requesting successive pages of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::UrlshortenerV1::UrlHistory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::UrlshortenerV1::UrlHistory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_urls(projection: nil, start_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command = make_simple_command(:get, 'url/history', options)
          command.response_representation = Google::Apis::UrlshortenerV1::UrlHistory::Representation
          command.response_class = Google::Apis::UrlshortenerV1::UrlHistory
          command.query['projection'] = projection unless projection.nil?
          command.query['start-token'] = start_token unless start_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
