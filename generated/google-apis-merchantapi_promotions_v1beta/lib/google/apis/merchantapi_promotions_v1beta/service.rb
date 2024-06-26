# Copyright 2020 Google LLC
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
    module MerchantapiPromotionsV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_promotions_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiPromotionsV1beta # Alias the module
      #    service = Merchantapi::MerchantService.new
      #
      # @see https://developers.devsite.corp.google.com/merchant/api
      class MerchantService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://merchantapi.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-merchantapi_promotions_v1beta',
                client_version: Google::Apis::MerchantapiPromotionsV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves the promotion from your Merchant Center account. After inserting or
        # updating a promotion input, it may take several minutes before the updated
        # promotion can be retrieved.
        # @param [String] name
        #   Required. The name of the promotion to retrieve. Format: `accounts/`account`/
        #   promotions/`promotions``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiPromotionsV1beta::Promotion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Promotion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_promotion(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'promotions/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiPromotionsV1beta::Promotion::Representation
          command.response_class = Google::Apis::MerchantapiPromotionsV1beta::Promotion
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a promotion for your Merchant Center account. If the promotion already
        # exists, then it updates the promotion instead.
        # @param [String] parent
        #   Required. The account where the promotion will be inserted. Format: accounts/`
        #   account`
        # @param [Google::Apis::MerchantapiPromotionsV1beta::InsertPromotionRequest] insert_promotion_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiPromotionsV1beta::Promotion] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiPromotionsV1beta::Promotion]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_promotion(parent, insert_promotion_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'promotions/v1beta/{+parent}/promotions:insert', options)
          command.request_representation = Google::Apis::MerchantapiPromotionsV1beta::InsertPromotionRequest::Representation
          command.request_object = insert_promotion_request_object
          command.response_representation = Google::Apis::MerchantapiPromotionsV1beta::Promotion::Representation
          command.response_class = Google::Apis::MerchantapiPromotionsV1beta::Promotion
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the promotions in your Merchant Center account. The response might
        # contain fewer items than specified by `pageSize`. Rely on `pageToken` to
        # determine if there are more items to be requested. After inserting or updating
        # a promotion, it may take several minutes before the updated processed
        # promotion can be retrieved.
        # @param [String] parent
        #   Required. The account to list processed promotions for. Format: `accounts/`
        #   account``
        # @param [Fixnum] page_size
        #   Output only. The maximum number of promotions to return. The service may
        #   return fewer than this value. The maximum value is 1000; values above 1000
        #   will be coerced to 1000. If unspecified, the maximum number of promotions will
        #   be returned.
        # @param [String] page_token
        #   Output only. A page token, received from a previous `ListPromotions` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListPromotions` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiPromotionsV1beta::ListPromotionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiPromotionsV1beta::ListPromotionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_promotions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'promotions/v1beta/{+parent}/promotions', options)
          command.response_representation = Google::Apis::MerchantapiPromotionsV1beta::ListPromotionsResponse::Representation
          command.response_class = Google::Apis::MerchantapiPromotionsV1beta::ListPromotionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
