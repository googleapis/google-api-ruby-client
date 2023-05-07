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
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://paymentsresellersubscription.googleapis.com/', '',
                client_name: 'google-apis-paymentsresellersubscription_v1',
                client_version: Google::Apis::PaymentsresellersubscriptionV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # To retrieve the products that can be resold by the partner. It should be
        # autenticated with a service account.
        # @param [String] parent
        #   Required. The parent, the partner that can resell. Format: partners/`partner`
        # @param [String] filter
        #   Optional. Specifies the filters for the product results. The syntax is defined
        #   in https://google.aip.dev/160 with the following caveats: - Only the following
        #   features are supported: - Logical operator `AND` - Comparison operator `=` (no
        #   wildcards `*`) - Traversal operator `.` - Has operator `:` (no wildcards `*`) -
        #   Only the following fields are supported: - `regionCodes` - `youtubePayload.
        #   partnerEligibilityId` - `youtubePayload.postalCode` - Unless explicitly
        #   mentioned above, other features are not supported. Example: `regionCodes:US
        #   AND youtubePayload.postalCode=94043 AND youtubePayload.partnerEligibilityId=
        #   eligibility-id`
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
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_products(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/products', options)
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListProductsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # To find eligible promotions for the current user. The API requires user
        # authorization via OAuth. The user is inferred from the authenticated OAuth
        # credential.
        # @param [String] parent
        #   Required. The parent, the partner that can resell. Format: partners/`partner`
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest] google_cloud_payments_reseller_subscription_v1_find_eligible_promotions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_partner_promotion_eligible(parent, google_cloud_payments_reseller_subscription_v1_find_eligible_promotions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/promotions:findEligible', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsRequest::Representation
          command.request_object = google_cloud_payments_reseller_subscription_v1_find_eligible_promotions_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1FindEligiblePromotionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # To retrieve the promotions, such as free trial, that can be used by the
        # partner. It should be autenticated with a service account.
        # @param [String] parent
        #   Required. The parent, the partner that can resell. Format: partners/`partner`
        # @param [String] filter
        #   Optional. Specifies the filters for the promotion results. The syntax is
        #   defined in https://google.aip.dev/160 with the following caveats: - Only the
        #   following features are supported: - Logical operator `AND` - Comparison
        #   operator `=` (no wildcards `*`) - Traversal operator `.` - Has operator `:` (
        #   no wildcards `*`) - Only the following fields are supported: - `
        #   applicableProducts` - `regionCodes` - `youtubePayload.partnerEligibilityId` - `
        #   youtubePayload.postalCode` - Unless explicitly mentioned above, other features
        #   are not supported. Example: `applicableProducts:partners/partner1/products/
        #   product1 AND regionCodes:US AND youtubePayload.postalCode=94043 AND
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
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_partner_promotions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/promotions', options)
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ListPromotionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Used by partners to cancel a subscription service either immediately or by the
        # end of the current billing cycle for their customers. It should be called
        # directly by the partner using service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource to be cancelled. It will have
        #   the format of "partners/`partner_id`/subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest] google_cloud_payments_reseller_subscription_v1_cancel_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_partner_subscription(name, google_cloud_payments_reseller_subscription_v1_cancel_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionRequest::Representation
          command.request_object = google_cloud_payments_reseller_subscription_v1_cancel_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1CancelSubscriptionResponse
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
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription] google_cloud_payments_reseller_subscription_v1_subscription_object
        # @param [String] subscription_id
        #   Required. Identifies the subscription resource on the Partner side. The value
        #   is restricted to 63 ASCII characters at the maximum. If a subscription was
        #   previously created with the same subscription_id, we will directly return that
        #   one.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_partner_subscription(parent, google_cloud_payments_reseller_subscription_v1_subscription_object = nil, subscription_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/subscriptions', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
          command.request_object = google_cloud_payments_reseller_subscription_v1_subscription_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription
          command.params['parent'] = parent unless parent.nil?
          command.query['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Used by partners to entitle a previously provisioned subscription to the
        # current end user. The end user identity is inferred from the authorized
        # credential of the request. This API must be authorized by the end user using
        # OAuth.
        # @param [String] name
        #   Required. The name of the subscription resource that is entitled to the
        #   current end user. It will have the format of "partners/`partner_id`/
        #   subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest] google_cloud_payments_reseller_subscription_v1_entitle_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def entitle_partner_subscription(name, google_cloud_payments_reseller_subscription_v1_entitle_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:entitle', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionRequest::Representation
          command.request_object = google_cloud_payments_reseller_subscription_v1_entitle_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1EntitleSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # [Opt-in only] Most partners should be on auto-extend by default. Used by
        # partners to extend a subscription service for their customers on an ongoing
        # basis for the subscription to remain active and renewable. It should be called
        # directly by the partner using service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource to be extended. It will have
        #   the format of "partners/`partner_id`/subscriptions/`subscription_id`".
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest] google_cloud_payments_reseller_subscription_v1_extend_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def extend_partner_subscription(name, google_cloud_payments_reseller_subscription_v1_extend_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:extend', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionRequest::Representation
          command.request_object = google_cloud_payments_reseller_subscription_v1_extend_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1ExtendSubscriptionResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Used by partners to get a subscription by id. It should be called directly by
        # the partner using service accounts.
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
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_partner_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription
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
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription] google_cloud_payments_reseller_subscription_v1_subscription_object
        # @param [String] subscription_id
        #   Required. Identifies the subscription resource on the Partner side. The value
        #   is restricted to 63 ASCII characters at the maximum. If a subscription was
        #   previously created with the same subscription_id, we will directly return that
        #   one.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_partner_subscription(parent, google_cloud_payments_reseller_subscription_v1_subscription_object = nil, subscription_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/subscriptions:provision', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
          command.request_object = google_cloud_payments_reseller_subscription_v1_subscription_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1Subscription
          command.params['parent'] = parent unless parent.nil?
          command.query['subscriptionId'] = subscription_id unless subscription_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Used by partners to revoke the pending cancellation of a subscription, which
        # is currently in `STATE_CANCEL_AT_END_OF_CYCLE` state. If the subscription is
        # already cancelled, the request will fail. It should be called directly by the
        # partner using service accounts.
        # @param [String] name
        #   Required. The name of the subscription resource whose pending cancellation
        #   needs to be undone. It will have the format of "partners/`partner_id`/
        #   subscriptions/`subscription_id`"
        # @param [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest] google_cloud_payments_reseller_subscription_v1_undo_cancel_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undo_partner_subscription_cancel(name, google_cloud_payments_reseller_subscription_v1_undo_cancel_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:undoCancel', options)
          command.request_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionRequest::Representation
          command.request_object = google_cloud_payments_reseller_subscription_v1_undo_cancel_subscription_request_object
          command.response_representation = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse::Representation
          command.response_class = Google::Apis::PaymentsresellersubscriptionV1::GoogleCloudPaymentsResellerSubscriptionV1UndoCancelSubscriptionResponse
          command.params['name'] = name unless name.nil?
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
