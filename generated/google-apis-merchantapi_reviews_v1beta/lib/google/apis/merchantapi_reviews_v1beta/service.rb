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
    module MerchantapiReviewsV1beta
      # Merchant API
      #
      # Programmatically manage your Merchant Center Accounts.
      #
      # @example
      #    require 'google/apis/merchantapi_reviews_v1beta'
      #
      #    Merchantapi = Google::Apis::MerchantapiReviewsV1beta # Alias the module
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
                client_name: 'google-apis-merchantapi_reviews_v1beta',
                client_version: Google::Apis::MerchantapiReviewsV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Deletes merchant review.
        # @param [String] name
        #   Required. The ID of the merchant review. Format: accounts/`account`/
        #   merchantReviews/`merchantReview`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_merchant_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'reviews/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a merchant review.
        # @param [String] name
        #   Required. The ID of the merchant review. Format: accounts/`account`/
        #   merchantReviews/`merchantReview`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::MerchantReview] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::MerchantReview]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_merchant_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'reviews/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::MerchantReview::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::MerchantReview
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a review for your Merchant Center account. If the review already
        # exists, then the review is replaced with the new instance.
        # @param [String] parent
        #   Required. The account where the merchant review will be inserted. Format:
        #   accounts/`account`
        # @param [Google::Apis::MerchantapiReviewsV1beta::MerchantReview] merchant_review_object
        # @param [String] data_source
        #   Required. The data source of the [merchantreview](https://support.google.com/
        #   merchants/answer/7045996?sjid=5253581244217581976-EU) Format: `accounts/`
        #   account`/dataSources/`datasource``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::MerchantReview] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::MerchantReview]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_merchant_review(parent, merchant_review_object = nil, data_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'reviews/v1beta/{+parent}/merchantReviews:insert', options)
          command.request_representation = Google::Apis::MerchantapiReviewsV1beta::MerchantReview::Representation
          command.request_object = merchant_review_object
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::MerchantReview::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::MerchantReview
          command.params['parent'] = parent unless parent.nil?
          command.query['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists merchant reviews.
        # @param [String] parent
        #   Required. The account to list merchant reviews for. Format: accounts/`account`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of merchant reviews to return. The service can
        #   return fewer than this value. The maximum value is 1000; values above 1000 are
        #   coerced to 1000. If unspecified, the maximum number of reviews is returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListMerchantReviews` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListMerchantReviews` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::ListMerchantReviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::ListMerchantReviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_merchant_reviews(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'reviews/v1beta/{+parent}/merchantReviews', options)
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::ListMerchantReviewsResponse::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::ListMerchantReviewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a product review.
        # @param [String] name
        #   Required. The ID of the Product review. Format: accounts/`account`/
        #   productReviews/`productReview`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_product_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'reviews/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::Empty::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a product review.
        # @param [String] name
        #   Required. The ID of the merchant review. Format: accounts/`account`/
        #   productReviews/`productReview`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::ProductReview] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::ProductReview]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_product_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'reviews/v1beta/{+name}', options)
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::ProductReview::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::ProductReview
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a product review.
        # @param [String] parent
        #   Required. The account where the product review will be inserted. Format:
        #   accounts/`account`
        # @param [Google::Apis::MerchantapiReviewsV1beta::ProductReview] product_review_object
        # @param [String] data_source
        #   Required. Format: `accounts/`account`/dataSources/`datasource``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::ProductReview] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::ProductReview]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_account_product_review(parent, product_review_object = nil, data_source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'reviews/v1beta/{+parent}/productReviews:insert', options)
          command.request_representation = Google::Apis::MerchantapiReviewsV1beta::ProductReview::Representation
          command.request_object = product_review_object
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::ProductReview::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::ProductReview
          command.params['parent'] = parent unless parent.nil?
          command.query['dataSource'] = data_source unless data_source.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists product reviews.
        # @param [String] parent
        #   Required. The account to list product reviews for. Format: accounts/`account`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of products to return. The service may return
        #   fewer than this value.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListProductReviews` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListProductReviews` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MerchantapiReviewsV1beta::ListProductReviewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MerchantapiReviewsV1beta::ListProductReviewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_product_reviews(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'reviews/v1beta/{+parent}/productReviews', options)
          command.response_representation = Google::Apis::MerchantapiReviewsV1beta::ListProductReviewsResponse::Representation
          command.response_class = Google::Apis::MerchantapiReviewsV1beta::ListProductReviewsResponse
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
