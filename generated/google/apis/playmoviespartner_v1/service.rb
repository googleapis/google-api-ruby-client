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
    module PlaymoviespartnerV1
      # Google Play Movies Partner API
      #
      # Gets the delivery status of titles for Google Play Movies Partners.
      #
      # @example
      #    require 'google/apis/playmoviespartner_v1'
      #
      #    Playmoviespartner = Google::Apis::PlaymoviespartnerV1 # Alias the module
      #    service = Playmoviespartner::PlayMoviesService.new
      #
      # @see https://developers.google.com/playmoviespartner/
      class PlayMoviesService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://playmoviespartner.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Get an Avail given its avail group id and avail id.
        # @param [String] account_id
        #   REQUIRED. See _General rules_ for more information about this field.
        # @param [String] avail_id
        #   REQUIRED. Avail ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaymoviespartnerV1::Avail] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaymoviespartnerV1::Avail]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_avail(account_id, avail_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/accounts/{accountId}/avails/{availId}', options)
          command.response_representation = Google::Apis::PlaymoviespartnerV1::Avail::Representation
          command.response_class = Google::Apis::PlaymoviespartnerV1::Avail
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['availId'] = avail_id unless avail_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Avails owned or managed by the partner.
        # See _Authentication and Authorization rules_ and
        # _List methods rules_ for more information about this method.
        # @param [String] account_id
        #   REQUIRED. See _General rules_ for more information about this field.
        # @param [String] alt_id
        #   Filter Avails that match a case-insensitive, partner-specific custom id.
        #   NOTE: this field is deprecated and will be removed on V2; `alt_ids`
        #   should be used instead.
        # @param [Array<String>, String] alt_ids
        #   Filter Avails that match (case-insensitive) any of the given partner-specific
        #   custom ids.
        # @param [Fixnum] page_size
        #   See _List methods rules_ for info about this field.
        # @param [String] page_token
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] pph_names
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] studio_names
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] territories
        #   Filter Avails that match (case-insensitive) any of the given country codes,
        #   using the "ISO 3166-1 alpha-2" format (examples: "US", "us", "Us").
        # @param [String] title
        #   Filter that matches Avails with a `title_internal_alias`,
        #   `series_title_internal_alias`, `season_title_internal_alias`,
        #   or `episode_title_internal_alias` that contains the given
        #   case-insensitive title.
        # @param [Array<String>, String] video_ids
        #   Filter Avails that match any of the given `video_id`s.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaymoviespartnerV1::ListAvailsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaymoviespartnerV1::ListAvailsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_avails(account_id, alt_id: nil, alt_ids: nil, page_size: nil, page_token: nil, pph_names: nil, studio_names: nil, territories: nil, title: nil, video_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/accounts/{accountId}/avails', options)
          command.response_representation = Google::Apis::PlaymoviespartnerV1::ListAvailsResponse::Representation
          command.response_class = Google::Apis::PlaymoviespartnerV1::ListAvailsResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['altId'] = alt_id unless alt_id.nil?
          command.query['altIds'] = alt_ids unless alt_ids.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pphNames'] = pph_names unless pph_names.nil?
          command.query['studioNames'] = studio_names unless studio_names.nil?
          command.query['territories'] = territories unless territories.nil?
          command.query['title'] = title unless title.nil?
          command.query['videoIds'] = video_ids unless video_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an Order given its id.
        # See _Authentication and Authorization rules_ and
        # _Get methods rules_ for more information about this method.
        # @param [String] account_id
        #   REQUIRED. See _General rules_ for more information about this field.
        # @param [String] order_id
        #   REQUIRED. Order ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaymoviespartnerV1::Order] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaymoviespartnerV1::Order]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_order(account_id, order_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/accounts/{accountId}/orders/{orderId}', options)
          command.response_representation = Google::Apis::PlaymoviespartnerV1::Order::Representation
          command.response_class = Google::Apis::PlaymoviespartnerV1::Order
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['orderId'] = order_id unless order_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Orders owned or managed by the partner.
        # See _Authentication and Authorization rules_ and
        # _List methods rules_ for more information about this method.
        # @param [String] account_id
        #   REQUIRED. See _General rules_ for more information about this field.
        # @param [String] custom_id
        #   Filter Orders that match a case-insensitive, partner-specific custom id.
        # @param [String] name
        #   Filter that matches Orders with a `name`, `show`, `season` or `episode`
        #   that contains the given case-insensitive name.
        # @param [Fixnum] page_size
        #   See _List methods rules_ for info about this field.
        # @param [String] page_token
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] pph_names
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] status
        #   Filter Orders that match one of the given status.
        # @param [Array<String>, String] studio_names
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] video_ids
        #   Filter Orders that match any of the given `video_id`s.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaymoviespartnerV1::ListOrdersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaymoviespartnerV1::ListOrdersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_orders(account_id, custom_id: nil, name: nil, page_size: nil, page_token: nil, pph_names: nil, status: nil, studio_names: nil, video_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/accounts/{accountId}/orders', options)
          command.response_representation = Google::Apis::PlaymoviespartnerV1::ListOrdersResponse::Representation
          command.response_class = Google::Apis::PlaymoviespartnerV1::ListOrdersResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['customId'] = custom_id unless custom_id.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pphNames'] = pph_names unless pph_names.nil?
          command.query['status'] = status unless status.nil?
          command.query['studioNames'] = studio_names unless studio_names.nil?
          command.query['videoIds'] = video_ids unless video_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List StoreInfos owned or managed by the partner.
        # See _Authentication and Authorization rules_ and
        # _List methods rules_ for more information about this method.
        # @param [String] account_id
        #   REQUIRED. See _General rules_ for more information about this field.
        # @param [Array<String>, String] countries
        #   Filter StoreInfos that match (case-insensitive) any of the given country
        #   codes, using the "ISO 3166-1 alpha-2" format (examples: "US", "us", "Us").
        # @param [Array<String>, String] mids
        #   Filter StoreInfos that match any of the given `mid`s.
        # @param [String] name
        #   Filter that matches StoreInfos with a `name` or `show_name`
        #   that contains the given case-insensitive name.
        # @param [Fixnum] page_size
        #   See _List methods rules_ for info about this field.
        # @param [String] page_token
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] pph_names
        #   See _List methods rules_ for info about this field.
        # @param [Array<String>, String] season_ids
        #   Filter StoreInfos that match any of the given `season_id`s.
        # @param [Array<String>, String] studio_names
        #   See _List methods rules_ for info about this field.
        # @param [String] video_id
        #   Filter StoreInfos that match a given `video_id`.
        #   NOTE: this field is deprecated and will be removed on V2; `video_ids`
        #   should be used instead.
        # @param [Array<String>, String] video_ids
        #   Filter StoreInfos that match any of the given `video_id`s.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaymoviespartnerV1::ListStoreInfosResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaymoviespartnerV1::ListStoreInfosResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_store_infos(account_id, countries: nil, mids: nil, name: nil, page_size: nil, page_token: nil, pph_names: nil, season_ids: nil, studio_names: nil, video_id: nil, video_ids: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/accounts/{accountId}/storeInfos', options)
          command.response_representation = Google::Apis::PlaymoviespartnerV1::ListStoreInfosResponse::Representation
          command.response_class = Google::Apis::PlaymoviespartnerV1::ListStoreInfosResponse
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['countries'] = countries unless countries.nil?
          command.query['mids'] = mids unless mids.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pphNames'] = pph_names unless pph_names.nil?
          command.query['seasonIds'] = season_ids unless season_ids.nil?
          command.query['studioNames'] = studio_names unless studio_names.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['videoIds'] = video_ids unless video_ids.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a StoreInfo given its video id and country.
        # See _Authentication and Authorization rules_ and
        # _Get methods rules_ for more information about this method.
        # @param [String] account_id
        #   REQUIRED. See _General rules_ for more information about this field.
        # @param [String] video_id
        #   REQUIRED. Video ID.
        # @param [String] country
        #   REQUIRED. Edit country.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaymoviespartnerV1::StoreInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaymoviespartnerV1::StoreInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_store_info_country(account_id, video_id, country, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/accounts/{accountId}/storeInfos/{videoId}/country/{country}', options)
          command.response_representation = Google::Apis::PlaymoviespartnerV1::StoreInfo::Representation
          command.response_class = Google::Apis::PlaymoviespartnerV1::StoreInfo
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['videoId'] = video_id unless video_id.nil?
          command.params['country'] = country unless country.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
