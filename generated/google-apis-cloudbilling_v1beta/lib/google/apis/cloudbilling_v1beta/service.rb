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
    module CloudbillingV1beta
      # Cloud Billing API
      #
      # Allows developers to manage billing for their Google Cloud Platform projects
      #  programmatically.
      #
      # @example
      #    require 'google/apis/cloudbilling_v1beta'
      #
      #    Cloudbilling = Google::Apis::CloudbillingV1beta # Alias the module
      #    service = Cloudbilling::CloudbillingService.new
      #
      # @see https://cloud.google.com/billing/
      class CloudbillingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudbilling.googleapis.com/', '',
                client_name: 'google-apis-cloudbilling_v1beta',
                client_version: Google::Apis::CloudbillingV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Use custom pricing in the estimate, using a `CostScenario` with a defined `
        # billingAccount`.
        # @param [String] billing_account
        #   Resource name of the billing account for the cost estimate. The resource name
        #   has the form `billingAccounts/`billing_account_id``. For example, `
        #   billingAccounts/012345-567890-ABCDEF` is the resource name for billing account
        #   `012345-567890-ABCDEF`. Must be specified.
        # @param [Google::Apis::CloudbillingV1beta::EstimateCostScenarioForBillingAccountRequest] estimate_cost_scenario_for_billing_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::EstimateCostScenarioForBillingAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::EstimateCostScenarioForBillingAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def estimate_cost_scenario_for_billing_account(billing_account, estimate_cost_scenario_for_billing_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+billingAccount}:estimateCostScenario', options)
          command.request_representation = Google::Apis::CloudbillingV1beta::EstimateCostScenarioForBillingAccountRequest::Representation
          command.request_object = estimate_cost_scenario_for_billing_account_request_object
          command.response_representation = Google::Apis::CloudbillingV1beta::EstimateCostScenarioForBillingAccountResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::EstimateCostScenarioForBillingAccountResponse
          command.params['billingAccount'] = billing_account unless billing_account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Estimate list prices using a `CostScenario` without a defined `billingAccount`.
        # @param [Google::Apis::CloudbillingV1beta::EstimateCostScenarioWithListPriceRequest] estimate_cost_scenario_with_list_price_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::EstimateCostScenarioWithListPriceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::EstimateCostScenarioWithListPriceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def estimate_cost_scenario_with_list_price(estimate_cost_scenario_with_list_price_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta:estimateCostScenario', options)
          command.request_representation = Google::Apis::CloudbillingV1beta::EstimateCostScenarioWithListPriceRequest::Representation
          command.request_object = estimate_cost_scenario_with_list_price_request_object
          command.response_representation = Google::Apis::CloudbillingV1beta::EstimateCostScenarioWithListPriceResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::EstimateCostScenarioWithListPriceResponse
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
