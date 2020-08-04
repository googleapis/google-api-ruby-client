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
    module BillingbudgetsV1beta1
      # Cloud Billing Budget API
      #
      # The Cloud Billing Budget API stores Cloud Billing budgets, which define a
      #  budget plan and the rules to execute as spend is tracked against that plan.
      #
      # @example
      #    require 'google/apis/billingbudgets_v1beta1'
      #
      #    Billingbudgets = Google::Apis::BillingbudgetsV1beta1 # Alias the module
      #    service = Billingbudgets::CloudBillingBudgetService.new
      #
      # @see https://cloud.google.com/billing/docs/how-to/budget-api-overview
      class CloudBillingBudgetService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://billingbudgets.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates a new budget. See Quotas and limits for more information on the limits
        # of the number of budgets you can create.
        # @param [String] parent
        #   Required. The name of the billing account to create the budget in. Values are
        #   of the form `billingAccounts/`billingAccountId``.
        # @param [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest] google_cloud_billing_budgets_v1beta1_create_budget_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_billing_account_budget(parent, google_cloud_billing_budgets_v1beta1_create_budget_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/budgets', options)
          command.request_representation = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1CreateBudgetRequest::Representation
          command.request_object = google_cloud_billing_budgets_v1beta1_create_budget_request_object
          command.response_representation = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget::Representation
          command.response_class = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a budget. Returns successfully if already deleted.
        # @param [String] name
        #   Required. Name of the budget to delete. Values are of the form `
        #   billingAccounts/`billingAccountId`/budgets/`budgetId``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BillingbudgetsV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_budget(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::BillingbudgetsV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::BillingbudgetsV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a budget. WARNING: There are some fields exposed on the Google Cloud
        # Console that aren't available on this API. When reading from the API, you will
        # not see these fields in the return value, though they may have been set in the
        # Cloud Console.
        # @param [String] name
        #   Required. Name of budget to get. Values are of the form `billingAccounts/`
        #   billingAccountId`/budgets/`budgetId``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_budget(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget::Representation
          command.response_class = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of budgets for a billing account. WARNING: There are some
        # fields exposed on the Google Cloud Console that aren't available on this API.
        # When reading from the API, you will not see these fields in the return value,
        # though they may have been set in the Cloud Console.
        # @param [String] parent
        #   Required. Name of billing account to list budgets under. Values are of the
        #   form `billingAccounts/`billingAccountId``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of budgets to return per page. The default and
        #   maximum value are 100.
        # @param [String] page_token
        #   Optional. The value returned by the last `ListBudgetsResponse` which indicates
        #   that this is a continuation of a prior `ListBudgets` call, and that the system
        #   should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_budgets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/budgets', options)
          command.response_representation = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse::Representation
          command.response_class = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1ListBudgetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a budget and returns the updated budget. WARNING: There are some
        # fields exposed on the Google Cloud Console that aren't available on this API.
        # Budget fields that are not exposed in this API will not be changed by this
        # method.
        # @param [String] name
        #   Output only. Resource name of the budget. The resource name implies the scope
        #   of a budget. Values are of the form `billingAccounts/`billingAccountId`/
        #   budgets/`budgetId``.
        # @param [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest] google_cloud_billing_budgets_v1beta1_update_budget_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_billing_account_budget(name, google_cloud_billing_budgets_v1beta1_update_budget_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1UpdateBudgetRequest::Representation
          command.request_object = google_cloud_billing_budgets_v1beta1_update_budget_request_object
          command.response_representation = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget::Representation
          command.response_class = Google::Apis::BillingbudgetsV1beta1::GoogleCloudBillingBudgetsV1beta1Budget
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
