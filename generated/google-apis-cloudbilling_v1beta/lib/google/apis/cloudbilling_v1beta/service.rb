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
      # @see https://cloud.google.com/billing/docs/apis
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
        
        # Gets a Google Cloud service visible to a billing account.
        # @param [String] name
        #   Required. The name of the billing account service to retrieve. Format:
        #   billingAccounts/`billing_account`/services/`service`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists services visible to a billing account.
        # @param [String] parent
        #   Required. The billing account to list billing account service from. Format:
        #   billingAccounts/`billing_account`
        # @param [Fixnum] page_size
        #   Maximum number of billing account service to return. Results may return fewer
        #   than this value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Page token received from a previous ListBillingAccountServices call to
        #   retrieve the next page of results. If this field is empty, the first page is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_services(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/services', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SKU group visible to a billing account.
        # @param [String] name
        #   Required. The name of the BillingAccountSkuGroup to retrieve. Format:
        #   billingAccounts/`billing_account`/skuGroups/`sku_group`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_sku_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists SKU groups visible to a billing account.
        # @param [String] parent
        #   Required. The billing account to list billing account SKU groups from. Format:
        #   billingAccounts/`billing_account`
        # @param [Fixnum] page_size
        #   Maximum number of billing account SKU groups to return. Results may return
        #   fewer than this value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Page token received from a previous ListBillingAccountSkuGroups call to
        #   retrieve the next page of results. If this field is empty, the first page is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_sku_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/skuGroups', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SKU that is part of a billing account SKU group.
        # @param [String] name
        #   Required. The name of the billing account SKU group SKU to retrieve. Format:
        #   billingAccounts/`billing_account`/skuGroups/`sku_group`/skus/`sku`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_sku_group_sku(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists SKUs that is part of billing account SKU groups.
        # @param [String] parent
        #   Required. The billing account SKU group to list billing account SKU group SKUs
        #   from. Format: billingAccounts/`billing_account`/skuGroups/`sku_group`
        # @param [Fixnum] page_size
        #   Maximum number of billing account SKU group SKUs to return. Results may return
        #   fewer than this value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Page token received from a previous ListBillingAccountSkuGroupSkus call to
        #   retrieve the next page of results. If this field is empty, the first page is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_sku_group_skus(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/skus', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SKU visible to a billing account.
        # @param [String] name
        #   Required. The name of the billing account SKU to retrieve. Format:
        #   billingAccounts/`billing_account`/skus/`sku`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_sku(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists SKUs visible to a billing account.
        # @param [String] parent
        #   Required. The billing account to list billing account SKU from. Format:
        #   billingAccounts/`billing_account`
        # @param [String] filter
        #   Options for how to filter the billing account SKUs. Currently, only filter on `
        #   billing_account_service` is supported. Only !=, = operators are supported.
        #   Examples: - billing_account_service = "billingAccounts/012345-567890-ABCDEF/
        #   services/DA34-426B-A397"
        # @param [Fixnum] page_size
        #   Maximum number of billing account SKUs to return. Results may return fewer
        #   than this value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Page token received from a previous ListBillingAccountSkus call to retrieve
        #   the next page of results. If this field is empty, the first page is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_skus(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/skus', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest price for SKUs available to your Cloud Billing account.
        # @param [String] name
        #   Required. Name of the billing account price to retrieve. Format:
        #   billingAccounts/`billing_account`/skus/`sku`/price
        # @param [String] currency_code
        #   Optional. ISO-4217 currency code for the price. If not specified, the currency
        #   of the billing account is used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_sku_price(name, currency_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice
          command.params['name'] = name unless name.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the latest prices for SKUs available to your Cloud Billing account.
        # @param [String] parent
        #   Required. To list all Billing Account SKUs, use `-` as the SKU ID. Format: `
        #   billingAccounts/`billing_account`/skus/-` Note: Specifying an actual SKU
        #   resource id will return a collection of one Billing Account Price.
        # @param [String] currency_code
        #   Optional. ISO-4217 currency code for the price. If not specified, currency of
        #   billing account will be used.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of billing account price to return. Results may
        #   return fewer than this value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListBillingAccountPrices call to
        #   retrieve the next page of results. If this field is empty, the first page is
        #   returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_sku_prices(parent, currency_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/prices', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a publicly listed SKU group.
        # @param [String] name
        #   Required. The name of the SKU group to retrieve. Format: skuGroups/`sku_group`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sku_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaSkuGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all publicly listed SKU groups.
        # @param [Fixnum] page_size
        #   Maximum number of SKU groups to return. Results may return fewer than this
        #   value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Page token received from a previous ListSkuGroups call to retrieve the next
        #   page of results. If this field is empty, the first page is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sku_groups(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/skuGroups', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a publicly listed SKU that is part of a publicly listed SKU group.
        # @param [String] name
        #   Required. The name of the SKU group SKU to retrieve. Format: skuGroups/`
        #   sku_group`/skus/`sku`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sku_group_sku(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaSkuGroupSku
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all publicly listed SKUs contained by a publicly listed SKU group.
        # @param [String] parent
        #   Required. The SkuGroup to list SkuGroupSku from. Format: skuGroups/`sku_group`
        # @param [Fixnum] page_size
        #   Maximum number of SKU group SKUs to return. Results may return fewer than this
        #   value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Page token received from a previous ListSkuGroupSkus call to retrieve the next
        #   page of results. If this field is empty, the first page is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sku_group_skus(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/skus', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest price for the given SKU.
        # @param [String] name
        #   Required. Name of the latest price to retrieve. Format: skus/`sku`/price
        # @param [String] currency_code
        #   Optional. ISO-4217 currency code for the price. If not specified, USD will be
        #   used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sku_price(name, currency_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaPrice
          command.params['name'] = name unless name.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the latest prices for all SKUs.
        # @param [String] parent
        #   Required. To list the prices for all SKUs, use `-` as the SKU ID. Format: `
        #   skus/-` Specifying a specific SKU ID returns a collection with one Price
        #   object for the SKU.
        # @param [String] currency_code
        #   Optional. ISO-4217 currency code for the price. If not specified, USD will be
        #   used.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of prices to return. Results may return fewer than
        #   this value. Default value is 50 and maximum value is 5000.
        # @param [String] page_token
        #   Optional. Page token received from a previous ListPrices call to retrieve the
        #   next page of results. If this field is empty, the first page is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaListPricesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaListPricesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sku_prices(parent, currency_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/prices', options)
          command.response_representation = Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaListPricesResponse::Representation
          command.response_class = Google::Apis::CloudbillingV1beta::GoogleCloudBillingPricesV1betaListPricesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
