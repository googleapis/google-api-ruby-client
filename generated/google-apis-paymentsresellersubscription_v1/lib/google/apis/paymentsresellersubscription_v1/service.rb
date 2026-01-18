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
    module PaymentsresellersubscriptionV1
      # Payments Reseller Subscription API
      #
      # 
      #
      # @example
      #    require 'google/apis/paymentsresellersubscription_v1'
      #
      #    Paymentsresellersubscription = Google::Apis::PaymentsresellersubscriptionV1 # Alias the module
      #    service = Paymentsresellersubscription::PaymentsResellerSubscriptionService.new
      #
      # @see https://developers.google.com/payments/reseller/subscription/
      class PaymentsResellerSubscriptionService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://paymentsresellersubscription.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-paymentsresellersubscription_v1',
                client_version: Google::Apis::PaymentsresellersubscriptionV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Currently, it doesn't support **YouTube** products. Retrieves the products
        # that can be resold by the partner. It should be autenticated with a service
        # account.
        # @param [String] parent
        #   Required. The parent, the partner that can resell. Format: partners/`partner`
        # @param [String] filter
        #   Optional. Specifies the filters for the product results. The syntax is defined
        #   in https://google.aip.dev/160 with the following caveats: 1. Only the
        #   following features are supported: - Logical operator `AND` - Comparison
        #   operator `=` (no wildcards `*`) - Traversal operator `.` - Has operator `:` (
        #   no wildcards `*`) 2. Only the following fields are supported: - `regionCodes` -
        #   `youtubePayload.partnerEligibilityId` - `youtubePayload.postalCode` 3. Unless
        #   explicitly mentioned above, other features are not supported. Example: `
        #   regionCodes:US AND youtubePayload.postalCode=94043 AND youtubePayload.
        #   partnerEligibilityId=eligibility-id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of products to return. The service may return
        #   fewer than this value. If unspecified, at most 50 products will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListProducts` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListProducts` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::ListProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::ListProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_products(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/products', options)
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::ListProductsResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::ListProductsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Currently, it is only enabeld for **YouTube**. Finds eligible promotions for
        # the current user. The API requires user authorization via OAuth. The bare
        # minimum oauth scope `openid` is sufficient, which will skip the consent screen.
        # @param [String] parent
        #   Required. The parent, the partner that can resell. Format: partners/`partner`
        # @param [Google::Apis::PaymentsresellersubscriptionV1::FindEligiblePromotionsRequest] find_eligible_promotions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::FindEligiblePromotionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::FindEligiblePromotionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_partner_promotion_eligible(parent, find_eligible_promotions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/promotions:findEligible', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::FindEligiblePromotionsRequest::Representation
          command.request_object = find_eligible_promotions_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::FindEligiblePromotionsResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::FindEligiblePromotionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Currently, it doesn't support **YouTube** promotions. Retrieves the promotions,
        # such as free trial, that can be used by the partner. It should be
        # autenticated with a service account.
        # @param [String] parent
        #   Required. The parent, the partner that can resell. Format: partners/`partner`
        # @param [String] filter
        #   Optional. Specifies the filters for the promotion results. The syntax is
        #   defined in https://google.aip.dev/160 with the following caveats: 1. Only the
        #   following features are supported: - Logical operator `AND` - Comparison
        #   operator `=` (no wildcards `*`) - Traversal operator `.` - Has operator `:` (
        #   no wildcards `*`) 2. Only the following fields are supported: - `
        #   applicableProducts` - `regionCodes` - `youtubePayload.partnerEligibilityId` - `
        #   youtubePayload.postalCode` 3. Unless explicitly mentioned above, other
        #   features are not supported. Example: `applicableProducts:partners/partner1/
        #   products/product1 AND regionCodes:US AND youtubePayload.postalCode=94043 AND
        #   youtubePayload.partnerEligibilityId=eligibility-id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of promotions to return. The service may return
        #   fewer than this value. If unspecified, at most 50 products will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListPromotions` call.
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
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::ListPromotionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::ListPromotionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_promotions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/promotions', options)
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::ListPromotionsResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::ListPromotionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a subscription service either immediately or by the end of the current
        # billing cycle for their customers. It should be called directly by the partner
        # using service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource to be cancelled. It will have
        #   the format of "partners/`partner_id`/subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::CancelSubscriptionRequest] cancel_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::CancelSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::CancelSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_partner_subscription(name, cancel_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::CancelSubscriptionRequest::Representation
          command.request_object = cancel_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::CancelSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::CancelSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Used by partners to create a subscription for their customers. The created
        # subscription is associated with the end user inferred from the end user
        # credentials. This API must be authorized by the end user using OAuth.
        # @param [String] parent
        #   Required. The parent resource name, which is the identifier of the partner. It
        #   will have the format of "partners/`partner_id`".
        # @param [Google::Apis::PaymentsresellersubscriptionV1::Subscription] subscription_object
        # @param [String] subscription_id
        #   Required. Identifies the subscription resource on the Partner side. The value
        #   is restricted to 63 ASCII characters at the maximum. If a subscription with
        #   the same ID already exists, the creation fails with an `ALREADY_EXISTS` error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_partner_subscription(parent, subscription_object = nil, subscription_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/subscriptions', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::Subscription
          command.params['parent'] = parent unless parent.nil?
          command.query['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Entitles a previously provisioned subscription to the current end user. The
        # end user identity is inferred from the authorized credential of the request.
        # This API must be authorized by the end user using OAuth.
        # @param [String] name
        #   Required. The name of the subscription resource that is entitled to the
        #   current end user. It will have the format of "partners/`partner_id`/
        #   subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionRequest] entitle_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def entitle_partner_subscription(name, entitle_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:entitle', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionRequest::Representation
          command.request_object = entitle_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::EntitleSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Opt-in only] Most partners should be on auto-extend by default. Extends a
        # subscription service for their customers on an ongoing basis for the
        # subscription to remain active and renewable. It should be called directly by
        # the partner using service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource to be extended. It will have
        #   the format of "partners/`partner_id`/subscriptions/`subscription_id`".
        # @param [Google::Apis::PaymentsresellersubscriptionV1::ExtendSubscriptionRequest] extend_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::ExtendSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::ExtendSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def extend_partner_subscription(name, extend_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:extend', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::ExtendSubscriptionRequest::Representation
          command.request_object = extend_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::ExtendSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::ExtendSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a subscription by id. It should be called directly by the partner using
        # service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource to retrieve. It will have the
        #   format of "partners/`partner_id`/subscriptions/`subscription_id`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_partner_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::Subscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Used by partners to provision a subscription for their customers. This creates
        # a subscription without associating it with the end user account.
        # EntitleSubscription must be called separately using OAuth in order for the end
        # user account to be associated with the subscription. It should be called
        # directly by the partner using service accounts.
        # @param [String] parent
        #   Required. The parent resource name, which is the identifier of the partner. It
        #   will have the format of "partners/`partner_id`".
        # @param [Google::Apis::PaymentsresellersubscriptionV1::Subscription] subscription_object
        # @param [Fixnum] cycle_options_initial_cycle_duration_count
        #   number of duration units to be included.
        # @param [String] cycle_options_initial_cycle_duration_unit
        #   The unit used for the duration
        # @param [String] subscription_id
        #   Required. Identifies the subscription resource on the Partner side. The value
        #   is restricted to 63 ASCII characters at the maximum. If a subscription with
        #   the same ID already exists, the creation fails with an `ALREADY_EXISTS` error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_partner_subscription(parent, subscription_object = nil, cycle_options_initial_cycle_duration_count: nil, cycle_options_initial_cycle_duration_unit: nil, subscription_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/subscriptions:provision', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::Subscription::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::Subscription
          command.params['parent'] = parent unless parent.nil?
          command.query['cycleOptions.initialCycleDuration.count'] = cycle_options_initial_cycle_duration_count unless cycle_options_initial_cycle_duration_count.nil?
          command.query['cycleOptions.initialCycleDuration.unit'] = cycle_options_initial_cycle_duration_unit unless cycle_options_initial_cycle_duration_unit.nil?
          command.query['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes a suspended subscription. The new billing cycle will start at the time
        # of the request. It should be called directly by the partner using service
        # accounts.
        # @param [String] name
        #   Required. The name of the subscription resource to be resumed. It will have
        #   the format of "partners/`partner_id`/subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::ResumeSubscriptionRequest] resume_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::ResumeSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::ResumeSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_partner_subscription(name, resume_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resume', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::ResumeSubscriptionRequest::Representation
          command.request_object = resume_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::ResumeSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::ResumeSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suspends a subscription. Contract terms may dictate if a prorated refund will
        # be issued upon suspension. It should be called directly by the partner using
        # service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource to be suspended. It will have
        #   the format of "partners/`partner_id`/subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::SuspendSubscriptionRequest] suspend_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::SuspendSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::SuspendSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suspend_partner_subscription(name, suspend_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:suspend', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::SuspendSubscriptionRequest::Representation
          command.request_object = suspend_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::SuspendSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::SuspendSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Currently, it is used by **Google One, Play Pass** partners. Revokes the
        # pending cancellation of a subscription, which is currently in `
        # STATE_CANCEL_AT_END_OF_CYCLE` state. If the subscription is already cancelled,
        # the request will fail. It should be called directly by the partner using
        # service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource whose pending cancellation
        #   needs to be undone. It will have the format of "partners/`partner_id`/
        #   subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::UndoCancelSubscriptionRequest] undo_cancel_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::UndoCancelSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::UndoCancelSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undo_partner_subscription_cancel(name, undo_cancel_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:undoCancel', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::UndoCancelSubscriptionRequest::Representation
          command.request_object = undo_cancel_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::UndoCancelSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::UndoCancelSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a line item of a subscription. It should be autenticated with a
        # service account.
        # @param [String] name
        #   Identifier. Resource name of the line item. Format: partners/`partner`/
        #   subscriptions/`subscription`/lineItems/`lineItem`
        # @param [Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem] subscription_line_item_object
        # @param [String] update_mask
        #   Required. The list of fields to update. Only a limited set of fields can be
        #   updated. The allowed fields are the following: - `product_payload.
        #   googleHomePayload.googleStructureId`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_partner_subscription_line_item(name, subscription_line_item_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem::Representation
          command.request_object = subscription_line_item_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::SubscriptionLineItem
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This API replaces user authorized OAuth consent based APIs (Create, Entitle).
        # Issues a timed session token for the given user intent. You can use the
        # session token to redirect the user to Google to finish the signup flow. You
        # can re-generate new session token repeatedly for the same request if necessary,
        # regardless of the previous tokens being expired or not. By default, the
        # session token is valid for 1 hour.
        # @param [String] parent
        #   Required. The parent, the partner that can resell. Format: partners/`partner`
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GenerateUserSessionRequest] generate_user_session_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GenerateUserSessionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GenerateUserSessionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_partner_user_session(parent, generate_user_session_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/userSessions:generate', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GenerateUserSessionRequest::Representation
          command.request_object = generate_user_session_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GenerateUserSessionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GenerateUserSessionResponse
          command.params['parent'] = parent unless parent.nil?
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
