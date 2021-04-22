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
    module CloudcommerceprocurementV1
      # Cloud Commerce Partner Procurement API
      #
      # Partner API for the Cloud Commerce Procurement Service.
      #
      # @example
      #    require 'google/apis/cloudcommerceprocurement_v1'
      #
      #    Cloudcommerceprocurement = Google::Apis::CloudcommerceprocurementV1 # Alias the module
      #    service = Cloudcommerceprocurement::CloudCommercePartnerProcurementServiceService.new
      #
      # @see https://cloud.google.com/marketplace/docs/partners/
      class CloudCommercePartnerProcurementServiceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudcommerceprocurement.googleapis.com/', '',
                client_name: 'google-apis-cloudcommerceprocurement_v1',
                client_version: Google::Apis::CloudcommerceprocurementV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Grants an approval on an Account.
        # @param [String] name
        #   The resource name of the account. Required.
        # @param [Google::Apis::CloudcommerceprocurementV1::ApproveAccountRequest] approve_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_account(name, approve_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:approve', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::ApproveAccountRequest::Representation
          command.request_object = approve_account_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a requested Account resource.
        # @param [String] name
        #   The name of the account to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_provider_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Account::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Accounts that the provider has access to.
        # @param [String] parent
        #   The parent resource name.
        # @param [Fixnum] page_size
        #   The maximum number of entries that are requested. Default size is 200.
        # @param [String] page_token
        #   The token for fetching the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_provider_accounts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/accounts', options)
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::ListAccountsResponse::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::ListAccountsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rejects an approval on an Account.
        # @param [String] name
        #   The resource name of the account. Required.
        # @param [Google::Apis::CloudcommerceprocurementV1::RejectAccountRequest] reject_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reject_account(name, reject_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reject', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::RejectAccountRequest::Representation
          command.request_object = reject_account_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets an Account and cancel all associated Entitlements. Partner can only
        # reset accounts they own rather than customer accounts.
        # @param [String] name
        #   The resource name of the account. Required.
        # @param [Google::Apis::CloudcommerceprocurementV1::ResetAccountRequest] reset_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_account(name, reset_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reset', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::ResetAccountRequest::Representation
          command.request_object = reset_account_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves an entitlement that is in the EntitlementState.
        # ENTITLEMENT_ACTIVATION_REQUESTED state. This method is invoked by the provider
        # to approve the creation of the entitlement resource.
        # @param [String] name
        #   The resource name of the entitlement. Required.
        # @param [Google::Apis::CloudcommerceprocurementV1::ApproveEntitlementRequest] approve_entitlement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_entitlement(name, approve_entitlement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:approve', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::ApproveEntitlementRequest::Representation
          command.request_object = approve_entitlement_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves an entitlement plan change that is in the EntitlementState.
        # ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state. This method is invoked by the
        # provider to approve the plan change on the entitlement resource.
        # @param [String] name
        #   The resource name of the entitlement. Required.
        # @param [Google::Apis::CloudcommerceprocurementV1::ApproveEntitlementPlanChangeRequest] approve_entitlement_plan_change_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_provider_entitlement_plan_change(name, approve_entitlement_plan_change_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:approvePlanChange', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::ApproveEntitlementPlanChangeRequest::Representation
          command.request_object = approve_entitlement_plan_change_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a requested Entitlement resource.
        # @param [String] name
        #   The name of the entitlement to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_provider_entitlement(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Entitlement::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Entitlement
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Entitlements for which the provider has read access.
        # @param [String] parent
        #   The parent resource name.
        # @param [String] filter
        #   The filter that can be used to limit the list request. The filter is a query
        #   string that can match a selected set of attributes with string values. For
        #   example `account=E-1234-5678-ABCD-EFGH`, `state=pending_cancellation`, and `
        #   plan!=foo-plan`. Supported query attributes are * `account` * `
        #   customer_billing_account` with value in the format of: `billingAccounts/`id`` *
        #   `product_external_name` * `quote_external_name` * `offer` * `
        #   new_pending_offer` * `plan` * `newPendingPlan` or `new_pending_plan` * `state`
        #   * `consumers.project` Note that the consumers match works on repeated
        #   structures, so equality (`consumers.project=projects/123456789`) is not
        #   supported. Set membership can be expressed with the `:` operator. For example,
        #   `consumers.project:projects/123456789` finds entitlements with at least one
        #   consumer with project field equal to `projects/123456789`. Also note that the
        #   state name match is case-insensitive and query can omit the prefix "
        #   ENTITLEMENT_". For example, `state=active` is equivalent to `state=
        #   ENTITLEMENT_ACTIVE`. If the query contains some special characters other than
        #   letters, underscore, or digits, the phrase must be quoted with double quotes.
        #   For example, `product="providerId:productId"`, where the product name needs to
        #   be quoted because it contains special character colon. Queries can be combined
        #   with `AND`, `OR`, and `NOT` to form more complex queries. They can also be
        #   grouped to force a desired evaluation order. For example, `state=active AND (
        #   account=E-1234 OR account=5678) AND NOT (product=foo-product)`. Connective `
        #   AND` can be omitted between two predicates. For example `account=E-1234 state=
        #   active` is equivalent to `account=E-1234 AND state=active`.
        # @param [Fixnum] page_size
        #   The maximum number of entries that are requested.
        # @param [String] page_token
        #   The token for fetching the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::ListEntitlementsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::ListEntitlementsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_provider_entitlements(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entitlements', options)
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::ListEntitlementsResponse::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::ListEntitlementsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Entitlement.
        # @param [String] name
        #   The name of the entitlement to update.
        # @param [Google::Apis::CloudcommerceprocurementV1::Entitlement] entitlement_object
        # @param [String] update_mask
        #   The update mask that applies to the resource. See the [FieldMask definition] (
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask) for more details.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_provider_entitlement(name, entitlement_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::Entitlement::Representation
          command.request_object = entitlement_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Entitlement::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Entitlement
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rejects an entitlement that is in the EntitlementState.
        # ENTITLEMENT_ACTIVATION_REQUESTED state. This method is invoked by the provider
        # to reject the creation of the entitlement resource.
        # @param [String] name
        #   The resource name of the entitlement. Required.
        # @param [Google::Apis::CloudcommerceprocurementV1::RejectEntitlementRequest] reject_entitlement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reject_entitlement(name, reject_entitlement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:reject', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::RejectEntitlementRequest::Representation
          command.request_object = reject_entitlement_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rejects an entitlement plan change that is in the EntitlementState.
        # ENTITLEMENT_PENDING_PLAN_CHANGE_APPROVAL state. This method is invoked by the
        # provider to reject the plan change on the entitlement resource.
        # @param [String] name
        #   The resource name of the entitlement. Required.
        # @param [Google::Apis::CloudcommerceprocurementV1::RejectEntitlementPlanChangeRequest] reject_entitlement_plan_change_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reject_provider_entitlement_plan_change(name, reject_entitlement_plan_change_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:rejectPlanChange', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::RejectEntitlementPlanChangeRequest::Representation
          command.request_object = reject_entitlement_plan_change_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests suspension of an active Entitlement. This is not yet supported.
        # @param [String] name
        #   The name of the entitlement to suspend.
        # @param [Google::Apis::CloudcommerceprocurementV1::SuspendEntitlementRequest] suspend_entitlement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudcommerceprocurementV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudcommerceprocurementV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suspend_entitlement(name, suspend_entitlement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:suspend', options)
          command.request_representation = Google::Apis::CloudcommerceprocurementV1::SuspendEntitlementRequest::Representation
          command.request_object = suspend_entitlement_request_object
          command.response_representation = Google::Apis::CloudcommerceprocurementV1::Empty::Representation
          command.response_class = Google::Apis::CloudcommerceprocurementV1::Empty
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
