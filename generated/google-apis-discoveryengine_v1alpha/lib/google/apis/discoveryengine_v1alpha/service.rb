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
    module DiscoveryengineV1alpha
      # Discovery Engine API
      #
      # Discovery Engine API.
      #
      # @example
      #    require 'google/apis/discoveryengine_v1alpha'
      #
      #    Discoveryengine = Google::Apis::DiscoveryengineV1alpha # Alias the module
      #    service = Discoveryengine::DiscoveryEngineService.new
      #
      # @see https://cloud.google.com/generative-ai-app-builder/docs/
      class DiscoveryEngineService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://discoveryengine.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-discoveryengine_v1alpha',
                client_version: Google::Apis::DiscoveryengineV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Distributes a LicenseConfig from billing account level to project level.
        # @param [String] billing_account_license_config
        #   Required. Full resource name of BillingAccountLicenseConfig. Format: `
        #   billingAccounts/`billing_account`/billingAccountLicenseConfigs/`
        #   billing_account_license_config_id``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigRequest] google_cloud_discoveryengine_v1alpha_distribute_license_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def distribute_billing_account_billing_account_license_config_license_config(billing_account_license_config, google_cloud_discoveryengine_v1alpha_distribute_license_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+billingAccountLicenseConfig}:distributeLicenseConfig', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_distribute_license_config_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDistributeLicenseConfigResponse
          command.params['billingAccountLicenseConfig'] = billing_account_license_config unless billing_account_license_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a BillingAccountLicenseConfig.
        # @param [String] name
        #   Required. Full resource name of BillingAccountLicenseConfig. Format: `
        #   billingAccounts/`billing_account`/billingAccountLicenseConfigs/`
        #   billing_account_license_config_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_billing_account_billing_account_license_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBillingAccountLicenseConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all BillingAccountLicenseConfigs for a given billing account.
        # @param [String] parent
        #   Required. Format: `billingAccounts/`billing_account``.
        # @param [Fixnum] page_size
        #   Optional. Not supported.
        # @param [String] page_token
        #   Optional. Not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBillingAccountLicenseConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBillingAccountLicenseConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_billing_account_billing_account_license_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/billingAccountLicenseConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBillingAccountLicenseConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBillingAccountLicenseConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method is called from the billing account side to retract the
        # LicenseConfig from the given project back to the billing account.
        # @param [String] billing_account_license_config
        #   Required. Full resource name of BillingAccountLicenseConfig. Format: `
        #   billingAccounts/`billing_account`/billingAccountLicenseConfigs/`
        #   billing_account_license_config_id``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigRequest] google_cloud_discoveryengine_v1alpha_retract_license_config_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retract_billing_account_billing_account_license_config_license_config(billing_account_license_config, google_cloud_discoveryengine_v1alpha_retract_license_config_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+billingAccountLicenseConfig}:retractLicenseConfig', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_retract_license_config_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRetractLicenseConfigResponse
          command.params['billingAccountLicenseConfig'] = billing_account_license_config unless billing_account_license_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Project. Returns NOT_FOUND when the project is not yet created.
        # @param [String] name
        #   Required. Full resource name of a Project, such as `projects/`
        #   project_id_or_number``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the editable settings of a Discovery Engine Project.
        # @param [String] name
        #   Output only. Full resource name of the project, for example `projects/`project`
        #   `. Note that when making requests, project number and project id are both
        #   acceptable, but the server will always respond in project number.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject] google_cloud_discoveryengine_v1alpha_project_object
        # @param [String] update_mask
        #   Optional. The list of fields to update. Supported fields: * `
        #   customer_provided_config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project(name, google_cloud_discoveryengine_v1alpha_project_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_project_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions the project resource. During the process, related systems will get
        # prepared and initialized. Caller must read the [Terms for data use](https://
        # cloud.google.com/retail/data-use-terms), and optionally specify in request to
        # provide consent to that service terms.
        # @param [String] name
        #   Required. Full resource name of a Project, such as `projects/`
        #   project_id_or_number``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProvisionProjectRequest] google_cloud_discoveryengine_v1alpha_provision_project_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_project(name, google_cloud_discoveryengine_v1alpha_provision_project_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:provision', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProvisionProjectRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_provision_project_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates service terms for this project. This method can be used to
        # retroactively accept the latest terms. Terms available for update: * [Terms
        # for data use](https://cloud.google.com/retail/data-use-terms)
        # @param [String] project
        #   Required. Full resource name of a Project, such as `projects/`
        #   project_id_or_number``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReportConsentChangeRequest] google_cloud_discoveryengine_v1alpha_report_consent_change_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_project_consent_change(project, google_cloud_discoveryengine_v1alpha_report_consent_change_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+project}:reportConsentChange', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaReportConsentChangeRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_report_consent_change_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProject
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Estimates the data size to be used by a customer.
        # @param [String] location
        #   Required. Full resource name of the location, such as `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequest] google_cloud_discoveryengine_v1alpha_estimate_data_size_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def estimate_project_location_data_size(location, google_cloud_discoveryengine_v1alpha_estimate_data_size_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}:estimateDataSize', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEstimateDataSizeRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_estimate_data_size_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the AclConfig.
        # @param [String] name
        #   Required. Resource name of AclConfig, such as `projects/*/locations/*/
        #   aclConfig`. If the caller does not have permission to access the AclConfig,
        #   regardless of whether or not it exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_acl_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the CmekConfig.
        # @param [String] name
        #   Required. Resource name of CmekConfig, such as `projects/*/locations/*/
        #   cmekConfig` or `projects/*/locations/*/cmekConfigs/*`. If the caller does not
        #   have permission to access the CmekConfig, regardless of whether or not it
        #   exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_single_cmek_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Obtains the time series data of organic or dedicated crawl rate for monitoring.
        # When dedicated crawl rate is not set, it will return vertex AI's organic
        # crawl rate time series. Organic crawl means Google automatically crawl the
        # internet at its own convenience. When dedicated crawl rate is set, it will
        # return vertex AI's dedicated crawl rate time series.
        # @param [String] location
        #   Required. The location resource where crawl rate management will be performed.
        #   Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaObtainCrawlRateRequest] google_cloud_discoveryengine_v1alpha_obtain_crawl_rate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def obtain_project_location_crawl_rate(location, google_cloud_discoveryengine_v1alpha_obtain_crawl_rate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}:obtainCrawlRate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaObtainCrawlRateRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_obtain_crawl_rate_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaObtainCrawlRateResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries configurable pricing usage stats for a project.
        # @param [String] project
        #   Required. The project to query usage stats for. Format: projects/`project`
        # @param [String] location
        #   Required. The location to query usage stats for.
        # @param [Array<String>, String] metric_types
        #   Optional. The metric types to return usage for.
        # @param [Fixnum] time_range_end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] time_range_end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] time_range_end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] time_range_start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] time_range_start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] time_range_start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQueryConfigurablePricingUsageStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQueryConfigurablePricingUsageStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_location_configurable_pricing_usage_stats(project, location, metric_types: nil, time_range_end_date_day: nil, time_range_end_date_month: nil, time_range_end_date_year: nil, time_range_start_date_day: nil, time_range_start_date_month: nil, time_range_start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+project}/locations/{location}:queryConfigurablePricingUsageStats', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQueryConfigurablePricingUsageStatsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaQueryConfigurablePricingUsageStatsResponse
          command.params['project'] = project unless project.nil?
          command.params['location'] = location unless location.nil?
          command.query['metricTypes'] = metric_types unless metric_types.nil?
          command.query['timeRange.endDate.day'] = time_range_end_date_day unless time_range_end_date_day.nil?
          command.query['timeRange.endDate.month'] = time_range_end_date_month unless time_range_end_date_month.nil?
          command.query['timeRange.endDate.year'] = time_range_end_date_year unless time_range_end_date_year.nil?
          command.query['timeRange.startDate.day'] = time_range_start_date_day unless time_range_start_date_day.nil?
          command.query['timeRange.startDate.month'] = time_range_start_date_month unless time_range_start_date_month.nil?
          command.query['timeRange.startDate.year'] = time_range_start_date_year unless time_range_start_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the dedicated crawl rate for a craw_rate_scope. If the dedicated crawl
        # rate was set, this will disable vertex AI's crawl bot from using the dedicated
        # crawl rate for crawling. If the dedicated crawl rate was not set, this is a no-
        # op.
        # @param [String] location
        #   Required. The location resource where crawl rate management will be performed.
        #   Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateRequest] google_cloud_discoveryengine_v1alpha_remove_dedicated_crawl_rate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_dedicated_crawl_rate(location, google_cloud_discoveryengine_v1alpha_remove_dedicated_crawl_rate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}:removeDedicatedCrawlRate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveDedicatedCrawlRateRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_remove_dedicated_crawl_rate_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the dedicated crawl rate for a crawl_rate_scope. If the dedicated crawl
        # rate was not set, this will enable vertex AI's crawl bot to use the new
        # dedicated crawl rate for crawling. If the dedicated crawl rate was set, vertex
        # AI's crawl bot will try to update the rate to the new value. If the new value
        # is too high, the crawl bot may crawl at a lower rate to avoid overloading the
        # user's website.
        # @param [String] location
        #   Required. The location resource where crawl rate management will be performed.
        #   Format: `projects/`project`/locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateRequest] google_cloud_discoveryengine_v1alpha_set_dedicated_crawl_rate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_dedicated_crawl_rate(location, google_cloud_discoveryengine_v1alpha_set_dedicated_crawl_rate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}:setDedicatedCrawlRate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSetDedicatedCrawlRateRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_set_dedicated_crawl_rate_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Collection and sets up the DataConnector for it. To stop a
        # DataConnector after setup, use the CollectionService.DeleteCollection method.
        # @param [String] parent
        #   Required. The parent of Collection, in the format of `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorRequest] google_cloud_discoveryengine_v1alpha_set_up_data_connector_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_up_data_connector(parent, google_cloud_discoveryengine_v1alpha_set_up_data_connector_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:setUpDataConnector', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSetUpDataConnectorRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_set_up_data_connector_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Collection and sets up the DataConnector for it. To stop a
        # DataConnector after setup, use the CollectionService.DeleteCollection method.
        # @param [String] parent
        #   Required. The parent of Collection, in the format of `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector] google_cloud_discoveryengine_v1alpha_data_connector_object
        # @param [String] collection_display_name
        #   Required. The display name of the Collection. Should be human readable, used
        #   to display collections in the Console Dashboard. UTF-8 encoded string with
        #   limit of 1024 characters.
        # @param [String] collection_id
        #   Required. The ID to use for the Collection, which will become the final
        #   component of the Collection's resource name. A new Collection is created as
        #   part of the DataConnector setup. DataConnector is a singleton resource under
        #   Collection, managing all DataStores of the Collection. This field must conform
        #   to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a length
        #   limit of 63 characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_up_data_connector_v2(parent, google_cloud_discoveryengine_v1alpha_data_connector_object = nil, collection_display_name: nil, collection_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:setUpDataConnectorV2', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_data_connector_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['collectionDisplayName'] = collection_display_name unless collection_display_name.nil?
          command.query['collectionId'] = collection_id unless collection_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Default ACL configuration for use in a location of a customer's project.
        # Updates will only reflect to new data stores. Existing data stores will still
        # use the old value.
        # @param [String] name
        #   Immutable. The full resource name of the acl configuration. Format: `projects/`
        #   project`/locations/`location`/aclConfig`. This field must be a UTF-8 encoded
        #   string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig] google_cloud_discoveryengine_v1alpha_acl_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_acl_config(name, google_cloud_discoveryengine_v1alpha_acl_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_acl_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAclConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions a CMEK key for use in a location of a customer's project. This
        # method will also conduct location validation on the provided cmekConfig to
        # make sure the key is valid and can be used in the selected location.
        # @param [String] name
        #   Required. The name of the CmekConfig of the form `projects/`project`/locations/
        #   `location`/cmekConfig` or `projects/`project`/locations/`location`/cmekConfigs/
        #   `cmek_config``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig] google_cloud_discoveryengine_v1alpha_cmek_config_object
        # @param [Boolean] set_default
        #   Set the following CmekConfig as the default to be used for child resources if
        #   one is not specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_cmek_config(name, google_cloud_discoveryengine_v1alpha_cmek_config_object = nil, set_default: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_cmek_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['setDefault'] = set_default unless set_default.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Authorization.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization] google_cloud_discoveryengine_v1alpha_authorization_object
        # @param [String] authorization_id
        #   Required. The ID to use for the authorization, which will become the final
        #   component of the resource name. This field must conform to [RFC-1034](https://
        #   tools.ietf.org/html/rfc1034) with a length limit of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_authorization(parent, google_cloud_discoveryengine_v1alpha_authorization_object = nil, authorization_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/authorizations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_authorization_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization
          command.params['parent'] = parent unless parent.nil?
          command.query['authorizationId'] = authorization_id unless authorization_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Authorization.
        # @param [String] name
        #   Required. Resource name of Authorization. Format: `projects/`project`/
        #   locations/`location`/authorizations/`authorization`` If the caller does not
        #   have permission to delete the authorization, regardless of whether or not it
        #   exists, a `PERMISSION_DENIED` error is returned. If the authorization to
        #   delete does not exist, a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_authorization(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an Authorization.
        # @param [String] name
        #   Required. Resource name of Authorization. Format: `projects/`project`/
        #   locations/`location`/authorizations/`authorization``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_authorization(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Authorizations under an Engine.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location``
        # @param [Fixnum] page_size
        #   Maximum number of Authorizations to return. If unspecified, defaults to 100.
        #   The maximum allowed value is 1000; anything above that will be coerced down to
        #   1000.
        # @param [String] page_token
        #   A page token ListAuthorizationsResponse.next_page_token, received from a
        #   previous AuthorizationService.ListAuthorizations call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to ListAuthorizations must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAuthorizationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAuthorizationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_authorizations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/authorizations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAuthorizationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAuthorizationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Authorization
        # @param [String] name
        #   Identifier. Resource name of the authorization. Format: `projects/`project`/
        #   locations/`location`/authorizations/`authorization`` It must be a UTF-8
        #   encoded string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization] google_cloud_discoveryengine_v1alpha_authorization_object
        # @param [String] update_mask
        #   The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_authorization(name, google_cloud_discoveryengine_v1alpha_authorization_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_authorization_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAuthorization
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # De-provisions a CmekConfig.
        # @param [String] name
        #   Required. The resource name of the CmekConfig to delete, such as `projects/`
        #   project`/locations/`location`/cmekConfigs/`cmek_config``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_cmek_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the CmekConfig.
        # @param [String] name
        #   Required. Resource name of CmekConfig, such as `projects/*/locations/*/
        #   cmekConfig` or `projects/*/locations/*/cmekConfigs/*`. If the caller does not
        #   have permission to access the CmekConfig, regardless of whether or not it
        #   exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_cmek_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the CmekConfigs with the project.
        # @param [String] parent
        #   Required. The parent location resource name, such as `projects/`project`/
        #   locations/`location``. If the caller does not have permission to list
        #   CmekConfigs under this location, regardless of whether or not a CmekConfig
        #   exists, a PERMISSION_DENIED error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCmekConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCmekConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_cmek_configs(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/cmekConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCmekConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCmekConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions a CMEK key for use in a location of a customer's project. This
        # method will also conduct location validation on the provided cmekConfig to
        # make sure the key is valid and can be used in the selected location.
        # @param [String] name
        #   Required. The name of the CmekConfig of the form `projects/`project`/locations/
        #   `location`/cmekConfig` or `projects/`project`/locations/`location`/cmekConfigs/
        #   `cmek_config``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig] google_cloud_discoveryengine_v1alpha_cmek_config_object
        # @param [Boolean] set_default
        #   Set the following CmekConfig as the default to be used for child resources if
        #   one is not specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_cmek_config(name, google_cloud_discoveryengine_v1alpha_cmek_config_object = nil, set_default: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCmekConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_cmek_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['setDefault'] = set_default unless set_default.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Collection.
        # @param [String] name
        #   Required. The full resource name of the Collection, in the format of `projects/
        #   `project`/locations/`location`/collections/`collection``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Collection.
        # @param [String] name
        #   Required. The full resource name, in the format of `projects/`project`/
        #   locations/`location`/collections/`collection``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the DataConnector. DataConnector is a singleton resource for each
        # Collection.
        # @param [String] name
        #   Required. Full resource name of DataConnector, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataConnector`. If the caller
        #   does not have permission to access the DataConnector, regardless of whether or
        #   not it exists, a PERMISSION_DENIED error is returned. If the requested
        #   DataConnector does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_connector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Collections.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location``.
        # @param [String] filter
        #   Filter returned collections by associated data connector data sources. For
        #   example: `filter = 'data_source:jira confluence'`. If the filter is empty, we
        #   return all collections under a project and location.
        # @param [Fixnum] page_size
        #   The maximum number of Collections to return. The service may return fewer than
        #   this value. If unspecified, at most 100 Collections will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous CollectionService.ListCollections call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to CollectionService.ListCollections must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCollectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCollectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collections(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/collections', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCollectionsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCollectionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Collection.
        # @param [String] name
        #   Immutable. The full resource name of the Collection. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id``. This field must be
        #   a UTF-8 encoded string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection] google_cloud_discoveryengine_v1alpha_collection_object
        # @param [String] update_mask
        #   Optional. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection(name, google_cloud_discoveryengine_v1alpha_collection_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCollection::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_collection_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataConnector.
        # @param [String] name
        #   Output only. The full resource name of the Data Connector. Format: `projects/*/
        #   locations/*/collections/*/dataConnector`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector] google_cloud_discoveryengine_v1alpha_data_connector_object
        # @param [String] update_mask
        #   Indicates which fields in the provided DataConnector to update. Supported
        #   field paths include: - refresh_interval - params - auto_run_disabled -
        #   action_config - action_config.action_params - action_config.service_name -
        #   destination_configs - blocking_reasons - sync_mode - incremental_sync_disabled
        #   - incremental_refresh_interval Note: Support for these fields may vary
        #   depending on the connector type. For example, not all connectors support `
        #   destination_configs`. If an unsupported or unknown field path is provided, the
        #   request will return an INVALID_ARGUMENT error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_collection_data_connector(name, google_cloud_discoveryengine_v1alpha_data_connector_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_data_connector_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataConnector
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uses the per-user refresh token minted with AcquireAndStoreRefreshToken to
        # generate and return a new access token and its details. Takes the access token
        # from cache if available. Rotates the stored refresh token if needed. Uses the
        # end user identity to return the user specific access token. Does *not* return
        # the credentials configured by the administrator. Used by action execution and
        # UI.
        # @param [String] name
        #   Required. The resource name of the connector for which a token is queried.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenRequest] google_cloud_discoveryengine_v1alpha_acquire_access_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acquire_project_location_collection_data_connector_access_token(name, google_cloud_discoveryengine_v1alpha_acquire_access_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:acquireAccessToken', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_acquire_access_token_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAcquireAccessTokenResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Checks the existence of a refresh token for the EUC user for a
        # given connection and returns its details. Use AcquireAccessToken instead and
        # then check the validity of the returned token by asking the 3rd party system.
        # There's no way to know for sure if a refresh token is valid without asking the
        # 3rd party system.
        # @param [String] name
        #   Required. The resource name of the connector for which a token is queried.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRefreshTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRefreshTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_location_collection_data_connector_refresh_token(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:checkRefreshToken', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRefreshTokenResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRefreshTokenResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the secret for the associated connector.
        # @param [String] name
        #   Required. The full resource name of the associated data connector.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetConnectorSecretResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetConnectorSecretResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_connector_connector_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:getConnectorSecret', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetConnectorSecretResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetConnectorSecretResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts an immediate synchronization process for a DataConnector. Third Party
        # Connector Users must specify which entities should be synced. FHIR Connectors
        # must provide a timestamp to indicate the point in time from which data should
        # be synced.
        # @param [String] parent
        #   Required. Connector name of the form projects/`project`/locations/`location`/
        #   collections/ `collection_id`/dataConnector
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStartConnectorRunRequest] google_cloud_discoveryengine_v1alpha_start_connector_run_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRun] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRun]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_project_location_collection_data_connector_connector_run(parent, google_cloud_discoveryengine_v1alpha_start_connector_run_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:startConnectorRun', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStartConnectorRunRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_start_connector_run_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRun::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConnectorRun
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the ConnectorRuns of a DataConnector.
        # @param [String] parent
        #   Required. The parent DataConnector resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataConnector`. If the caller
        #   does not have permission to list ConnectorRuns under this DataConnector,
        #   regardless of whether or not this DataConnector exists, a PERMISSION_DENIED
        #   error is returned.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, defaults to 10. The maximum value is 50; values above 50 will be
        #   coerced to 50. If this field is negative, an INVALID_ARGUMENT error is
        #   returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListConnectorRuns` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListConnectorRuns` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConnectorRunsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConnectorRunsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_connector_connector_runs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/connectorRuns', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConnectorRunsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConnectorRunsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_connector_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_connector_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified user input with keyword suggestions.
        # @param [String] data_store
        #   Required. The parent data store resource name for which the completion is
        #   performed, such as `projects/*/locations/global/collections/default_collection/
        #   dataStores/default_data_store`.
        # @param [Boolean] include_tail_suggestions
        #   Indicates if tail suggestions should be returned if there are no suggestions
        #   that match the full query. Even if set to true, if there are suggestions that
        #   match the full query, those are returned and no tail suggestions are returned.
        # @param [String] query
        #   Required. The typeahead input used to fetch suggestions. Maximum length is 128
        #   characters.
        # @param [String] query_model
        #   Specifies the autocomplete data model. This overrides any model specified in
        #   the Configuration > Autocomplete section of the Cloud console. Currently
        #   supported values: * `document` - Using suggestions generated from user-
        #   imported documents. * `search-history` - Using suggestions generated from the
        #   past history of SearchService.Search API calls. Do not use it when there is no
        #   traffic for Search API. * `user-event` - Using suggestions generated from user-
        #   imported search events. * `document-completable` - Using suggestions taken
        #   directly from user-imported document fields marked as completable. Default
        #   values: * `document` is the default model for regular dataStores. * `search-
        #   history` is the default model for site search dataStores.
        # @param [String] user_pseudo_id
        #   Optional. A unique identifier for tracking visitors. For example, this could
        #   be implemented with an HTTP cookie, which should be able to uniquely identify
        #   a visitor on a single device. This unique identifier should not change if the
        #   visitor logs in or out of the website. This field should NOT have a fixed
        #   value such as `unknown_visitor`. This should be the same identifier as
        #   UserEvent.user_pseudo_id and SearchRequest.user_pseudo_id. The field must be a
        #   UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_collection_data_store_query(data_store, include_tail_suggestions: nil, query: nil, query_model: nil, user_pseudo_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+dataStore}:completeQuery', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['includeTailSuggestions'] = include_tail_suggestions unless include_tail_suggestions.nil?
          command.query['query'] = query unless query.nil?
          command.query['queryModel'] = query_model unless query_model.nil?
          command.query['userPseudoId'] = user_pseudo_id unless user_pseudo_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DataStore. DataStore is for storing Documents. To serve these
        # documents for Search, or Recommendation use case, an Engine needs to be
        # created separately.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] google_cloud_discoveryengine_v1alpha_data_store_object
        # @param [String] cmek_config_name
        #   Resource name of the CmekConfig to use for protecting this DataStore.
        # @param [Boolean] create_advanced_site_search
        #   A boolean flag indicating whether user want to directly create an advanced
        #   data store for site search. If the data store is not configured as site search
        #   (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be
        #   ignored.
        # @param [String] data_store_id
        #   Required. The ID to use for the DataStore, which will become the final
        #   component of the DataStore's resource name. This field must conform to [RFC-
        #   1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63
        #   characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [Boolean] disable_cmek
        #   DataStore without CMEK protections. If a default CmekConfig is set for the
        #   project, setting this field will override the default CmekConfig as well.
        # @param [Boolean] skip_default_schema_creation
        #   A boolean flag indicating whether to skip the default schema creation for the
        #   data store. Only enable this flag if you are certain that the default schema
        #   is incompatible with your use case. If set to true, you must manually create a
        #   schema for the data store before any documents can be ingested. This flag
        #   cannot be specified if `data_store.starting_schema` is specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store(parent, google_cloud_discoveryengine_v1alpha_data_store_object = nil, cmek_config_name: nil, create_advanced_site_search: nil, data_store_id: nil, disable_cmek: nil, skip_default_schema_creation: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/dataStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['cmekConfigName'] = cmek_config_name unless cmek_config_name.nil?
          command.query['createAdvancedSiteSearch'] = create_advanced_site_search unless create_advanced_site_search.nil?
          command.query['dataStoreId'] = data_store_id unless data_store_id.nil?
          command.query['disableCmek'] = disable_cmek unless disable_cmek.nil?
          command.query['skipDefaultSchemaCreation'] = skip_default_schema_creation unless skip_default_schema_creation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to delete the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   DataStore to delete does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to access the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   requested DataStore does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DocumentProcessingConfig.
        # @param [String] name
        #   Required. Full DocumentProcessingConfig resource name. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/documentProcessingConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_document_processing_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the SiteSearchEngine.
        # @param [String] name
        #   Required. Resource name of SiteSearchEngine, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to access the [
        #   SiteSearchEngine], regardless of whether or not it exists, a PERMISSION_DENIED
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DataStores associated with the project.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id``. If the caller does not have
        #   permission to list DataStores under this location, regardless of whether or
        #   not this data store exists, a PERMISSION_DENIED error is returned.
        # @param [String] filter
        #   Filter by solution type . For example: `filter = 'solution_type:
        #   SOLUTION_TYPE_SEARCH'`
        # @param [Fixnum] page_size
        #   Maximum number of DataStores to return. If unspecified, defaults to 10. The
        #   maximum allowed value is 50. Values above 50 will be coerced to 50. If this
        #   field is negative, an INVALID_ARGUMENT is returned.
        # @param [String] page_token
        #   A page token ListDataStoresResponse.next_page_token, received from a previous
        #   DataStoreService.ListDataStores call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DataStoreService.
        #   ListDataStores must match the call that provided the page token. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/dataStores', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataStore
        # @param [String] name
        #   Immutable. Identifier. The full resource name of the data store. Format: `
        #   projects/`project`/locations/`location`/collections/`collection_id`/dataStores/
        #   `data_store_id``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] google_cloud_discoveryengine_v1alpha_data_store_object
        # @param [String] update_mask
        #   Indicates which fields in the provided DataStore to update. If an unsupported
        #   or unknown field is provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store(name, google_cloud_discoveryengine_v1alpha_data_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Trains a custom model.
        # @param [String] data_store
        #   Required. The resource name of the Data Store, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/default_data_store`. This
        #   field is used to identify the data store where to train the models.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequest] google_cloud_discoveryengine_v1alpha_train_custom_model_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def train_project_location_collection_data_store_custom_model(data_store, google_cloud_discoveryengine_v1alpha_train_custom_model_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+dataStore}:trainCustomModel', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTrainCustomModelRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_train_custom_model_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the DocumentProcessingConfig. DocumentProcessingConfig is a singleon
        # resource of DataStore. It's empty when DataStore is created. The first call to
        # this method will set up DocumentProcessingConfig.
        # @param [String] name
        #   The full resource name of the Document Processing Config. Format: `projects/*/
        #   locations/*/collections/*/dataStores/*/documentProcessingConfig`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig] google_cloud_discoveryengine_v1alpha_document_processing_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided DocumentProcessingConfig to update. The
        #   following are the only supported fields: * DocumentProcessingConfig.ocr_config
        #   If not set, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_collection_data_store_document_processing_config(name, google_cloud_discoveryengine_v1alpha_document_processing_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_processing_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets index freshness metadata for Documents. Supported for website search only.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``.
        # @param [Array<String>, String] matcher_fhir_matcher_fhir_resources
        #   Required. The FHIR resources to match by. Format: projects/`project`/locations/
        #   `location`/datasets/`dataset`/fhirStores/`fhir_store`/fhir/`resource_type`/`
        #   fhir_resource_id`
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The exact URIs to match by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_collection_data_store_branch_get_documents_metadata(parent, matcher_fhir_matcher_fhir_resources: nil, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/batchGetDocumentsMetadata', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.fhirMatcher.fhirResources'] = matcher_fhir_matcher_fhir_resources unless matcher_fhir_matcher_fhir_resources.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Branch.
        # @param [String] name
        #   Required. The name of the branch to retrieve. Format: `projects/*/locations/
        #   global/dataStores/default_data_store/branches/some_branch_id`. "default_branch"
        #   can be used as a special branch_id, it returns the default branch that has
        #   been set for the document.
        # @param [String] view
        #   The view to apply to the returned Branch. Defaults to Branch.BranchView.BASIC
        #   if unspecified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Branchs under the specified parent DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name.
        # @param [String] view
        #   The view to apply to the returned Branch. Defaults to Branch.BranchView.BASIC
        #   if unspecified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branches(parent, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/branches', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Document.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [String] document_id
        #   Required. The ID to use for the Document, which becomes the final component of
        #   the Document.name. If the caller does not have permission to create the
        #   Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error
        #   is returned. This field must be unique among all Documents with the same
        #   parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must
        #   conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a
        #   length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_document_object = nil, document_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['parent'] = parent unless parent.nil?
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   delete the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the Document to delete does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the parsed layout information for a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] image_id
        #   Optional. Specifies config for IMAGE_BYTES.
        # @param [String] processed_document_format
        #   What format output should be. If unspecified, defaults to JSON.
        # @param [String] processed_document_type
        #   Required. What type of processing to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_document_processed_document(name, image_id: nil, processed_document_format: nil, processed_document_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:getProcessedDocument', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument
          command.params['name'] = name unless name.nil?
          command.query['imageId'] = image_id unless image_id.nil?
          command.query['processedDocumentFormat'] = processed_document_format unless processed_document_format.nil?
          command.query['processedDocumentType'] = processed_document_type unless processed_document_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Documents. Request processing may be synchronous. Non-
        # existing items are created. Note: It is possible for a subset of the Documents
        # to be successfully updated.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Requires create/update permission.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest] google_cloud_discoveryengine_v1alpha_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Documents.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Use `default_branch` as the branch ID, to list documents under the
        #   default branch. If the caller does not have permission to list Documents under
        #   this branch, regardless of whether or not this branch exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Documents to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 are set to 1000. If this
        #   field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListDocumentsResponse.next_page_token, received from a previous
        #   DocumentService.ListDocuments call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DocumentService.
        #   ListDocuments must match the call that provided the page token. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branch_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/documents', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Document.
        # @param [String] name
        #   Immutable. The full resource name of the document. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document_id``. This field must be a UTF-8 encoded string
        #   with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [Boolean] allow_missing
        #   If set to `true` and the Document is not found, a new Document is be created.
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'document' to update. If not
        #   set, by default updates all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_branch_document(name, google_cloud_discoveryengine_v1alpha_document_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all selected Documents in a branch. This process is
        # asynchronous. Depending on the number of Documents to be deleted, this
        # operation can take hours to complete. Before the delete operation completes,
        # some Documents might still be returned by DocumentService.GetDocument or
        # DocumentService.ListDocuments. To get a list of the Documents to be deleted,
        # set PurgeDocumentsRequest.force to false.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest] google_cloud_discoveryengine_v1alpha_purge_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_purge_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Chunk, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch`/
        #   documents/`document`/chunks/`chunk``. If the caller does not have permission
        #   to access the Chunk, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Chunk does not exist, a
        #   `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_document_chunk(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Chunks.
        # @param [String] parent
        #   Required. The parent document resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to list
        #   Chunks under this document, regardless of whether or not this document exists,
        #   a `PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Chunks to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListChunksResponse.next_page_token, received from a previous
        #   ChunkService.ListChunks call. Provide this to retrieve the subsequent page.
        #   When paginating, all other parameters provided to ChunkService.ListChunks must
        #   match the call that provided the page token. Otherwise, an `INVALID_ARGUMENT`
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branch_document_chunks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/chunks', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_collection_data_store_branch_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_branch_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the user input with advanced keyword suggestions.
        # @param [String] completion_config
        #   Required. The completion_config of the parent dataStore or engine resource
        #   name for which the completion is performed, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/*/completionConfig` `projects/
        #   */locations/global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest] google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_collection_data_store_completion_config_query(completion_config, google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+completionConfig}:completeQuery', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import customer
        #   autocomplete suggestions. Follows pattern `projects/*/locations/*/collections/*
        #   /dataStores/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequest] google_cloud_discoveryengine_v1alpha_import_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1alpha_import_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/completionSuggestions:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to purge completion
        #   suggestions. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsRequest] google_cloud_discoveryengine_v1alpha_purge_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1alpha_purge_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/completionSuggestions:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Control. By default 1000 controls are allowed for a data store. A
        # request can be submitted to adjust this limit. If the Control to create
        # already exists, an ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``
        #   or `projects/`project`/locations/`location`/collections/`collection_id`/
        #   engines/`engine_id``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] google_cloud_discoveryengine_v1alpha_control_object
        # @param [String] control_id
        #   Required. The ID to use for the Control, which will become the final component
        #   of the Control's resource name. This value must be within 1-63 characters.
        #   Valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_control(parent, google_cloud_discoveryengine_v1alpha_control_object = nil, control_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/controls', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['parent'] = parent unless parent.nil?
          command.query['controlId'] = control_id unless control_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Control to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Control.
        # @param [String] name
        #   Required. The resource name of the Control to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Controls by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection_id`/dataStores/`data_store_id`` or `projects/
        #   `project`/locations/`location`/collections/`collection_id`/engines/`engine_id``
        #   .
        # @param [String] filter
        #   Optional. A filter to apply on the list results. Supported features: * List
        #   all the products under the parent branch if filter is unset. Currently this
        #   field is unsupported.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListControls` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_controls(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/controls', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Control. Control action type cannot be changed. If the Control to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/
        #   controls/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] google_cloud_discoveryengine_v1alpha_control_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided Control to update. The
        #   following are NOT supported: * Control.name * Control.solution_type If not set
        #   or empty, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_control(name, google_cloud_discoveryengine_v1alpha_control_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest] google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_collection_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_conversation(parent, google_cloud_discoveryengine_v1alpha_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/dataStore/*/conversations/*` or `projects/`project`/
        #   locations/global/collections/`collection`/engines/*/conversations/*`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * Conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of all the custom models.
        # @param [String] data_store
        #   Required. The resource name of the parent Data Store, such as `projects/*/
        #   locations/global/collections/default_collection/dataStores/default_data_store`.
        #   This field is used to identify the data store where to fetch the models from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_custom_models(data_store, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+dataStore}/customModels', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCustomModelsResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_model_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_model_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Schema.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [String] schema_id
        #   Required. The ID to use for the Schema, which becomes the final component of
        #   the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.
        #   org/html/rfc1034) standard with a length limit of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_schema(parent, google_cloud_discoveryengine_v1alpha_schema_object = nil, schema_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/schemas', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['schemaId'] = schema_id unless schema_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Schemas.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Fixnum] page_size
        #   The maximum number of Schemas to return. The service may return fewer than
        #   this value. If unspecified, at most 100 Schemas are returned. The maximum
        #   value is 1000; values above 1000 are set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous SchemaService.ListSchemas call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to SchemaService.ListSchemas must match the call that provided the
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/schemas', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Schema.
        # @param [String] name
        #   Immutable. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Schema is not found, a new Schema is created. In this
        #   situation, `update_mask` is ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_schema(name, google_cloud_discoveryengine_v1alpha_schema_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_schema_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_schema_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest] google_cloud_discoveryengine_v1alpha_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def answer_project_location_collection_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:answer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not
        # exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine`/
        #   servingConfigs/`serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ServingConfigs linked to this dataStore.
        # @param [String] parent
        #   Required. Full resource name of the parent resource. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 100.
        #   If a value greater than 100 is provided, at most 100 results are returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListServingConfigs` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_serving_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/servingConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does
        # not exist.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/`location`/
        #   collections/`collection_id`/engines/`engine_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] google_cloud_discoveryengine_v1alpha_serving_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided ServingConfig to update. The following
        #   are NOT supported: * ServingConfig.name If not set, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_serving_config(name, google_cloud_discoveryengine_v1alpha_serving_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_serving_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of a ServingConfig: `projects/*/locations/global/
        #   collections/*/engines/*/servingConfigs/*`, or `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` One default serving config is
        #   created along with your recommendation engine creation. The engine ID is used
        #   as the ID of the default serving config. For example, for Engine `projects/*/
        #   locations/global/collections/*/engines/my-engine`, you can use `projects/*/
        #   locations/global/collections/*/engines/my-engine/servingConfigs/my-engine` for
        #   your RecommendationService.Recommend requests.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest] google_cloud_discoveryengine_v1alpha_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_collection_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_data_store_serving_configs(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. Similar to the SearchService.Search method, but a lite
        # version that allows API key for authentication, where OAuth and IAM checks are
        # not required. Only public website search is supported by this method. If data
        # stores and engines not associated with public website search are specified, a `
        # FAILED_PRECONDITION` error is returned. This method can be used for easy
        # onboarding without having to implement an authentication backend. However, it
        # is strongly recommended to use SearchService.Search instead with required
        # OAuth and IAM checks to provide better data security.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_data_store_serving_config_lite(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:searchLite', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method (streaming). It takes one AnswerQueryRequest and returns
        # multiple AnswerQueryResponse messages in a stream.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest] google_cloud_discoveryengine_v1alpha_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_collection_data_store_serving_config_answer(serving_config, google_cloud_discoveryengine_v1alpha_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:streamAnswer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Session. If the Session to create already exists, an ALREADY_EXISTS
        # error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] google_cloud_discoveryengine_v1alpha_session_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_session(parent, google_cloud_discoveryengine_v1alpha_session_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sessions', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Session to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/sessions/`session_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Session.
        # @param [String] name
        #   Required. The resource name of the Session to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   sessions/`session_id``
        # @param [Boolean] include_answer_details
        #   Optional. If set to true, the full session including all answer details will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_session(name, include_answer_details: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['name'] = name unless name.nil?
          command.query['includeAnswerDetails'] = include_answer_details unless include_answer_details.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Sessions by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A comma-separated list of fields to filter by, in EBNF grammar. The supported
        #   fields are: * `user_pseudo_id` * `state` * `display_name` * `starred` * `
        #   is_pinned` * `labels` * `create_time` * `update_time` Examples: * `
        #   user_pseudo_id = some_id` * `display_name = "some_name"` * `starred = true` * `
        #   is_pinned=true AND (NOT labels:hidden)` * `create_time > "1970-01-01T12:00:00Z"
        #   `
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `session_name` * `is_pinned` Example: * `update_time desc` * `
        #   create_time` * `is_pinned desc,update_time desc`: list sessions by is_pinned
        #   first, then by update_time.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSessions` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_sessions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Session. Session action type cannot be changed. If the Session to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/engines/`engine`/sessions/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] google_cloud_discoveryengine_v1alpha_session_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Session to update. The following are
        #   NOT supported: * Session.name If not set or empty, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_session(name, google_cloud_discoveryengine_v1alpha_session_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Answer.
        # @param [String] name
        #   Required. The resource name of the Answer to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine_id`/sessions/`
        #   session_id`/answers/`answer_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_session_answer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verify target sites' ownership and validity. This API sends all the target
        # sites under site search engine for verification.
        # @param [String] parent
        #   Required. The parent resource shared by all TargetSites being verified. `
        #   projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchVerifyTargetSitesRequest] google_cloud_discoveryengine_v1alpha_batch_verify_target_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_collection_data_store_site_search_engine_verify_target_sites(parent, google_cloud_discoveryengine_v1alpha_batch_verify_target_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:batchVerifyTargetSites', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchVerifyTargetSitesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_batch_verify_target_sites_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downgrade from advanced site search to basic site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1alpha_disable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_collection_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1alpha_disable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:disableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_disable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrade from basic site search to advanced site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1alpha_enable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_collection_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1alpha_enable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:enableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_enable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns list of target sites with its domain verification status. This method
        # can only be called under data store with BASIC_SITE_SEARCH state at the moment.
        # @param [String] site_search_engine
        #   Required. The site search engine resource under which we fetch all the domain
        #   verification status. `projects/`project`/locations/`location`/collections/`
        #   collection`/dataStores/`data_store`/siteSearchEngine`.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default. The maximum value is
        #   1000; values above 1000 will be coerced to 1000. If this field is negative, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] page_token
        #   A page token, received from a previous `FetchDomainVerificationStatus` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `FetchDomainVerificationStatus` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_collection_data_store_site_search_engine_domain_verification_status(site_search_engine, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+siteSearchEngine}:fetchDomainVerificationStatus', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchDomainVerificationStatusResponse
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the URI Pattern to Document data mapping for an Advanced Site Search
        # DataStore.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_uri_pattern_document_data(site_search_engine, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+siteSearchEngine}:getUriPatternDocumentData', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetUriPatternDocumentDataResponse
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request on-demand recrawl for a list of URIs.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest] google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recrawl_project_location_collection_data_store_site_search_engine_uris(site_search_engine, google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:recrawlUris', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the URI Pattern to Document data mapping for an Advanced Site Search
        # DataStore.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataRequest] google_cloud_discoveryengine_v1alpha_set_uri_pattern_document_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_collection_data_store_site_search_engine_uri_pattern_document_data(site_search_engine, google_cloud_discoveryengine_v1alpha_set_uri_pattern_document_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:setUriPatternDocumentData', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSetUriPatternDocumentDataRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_set_uri_pattern_document_data_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Sitemap.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSitemap] google_cloud_discoveryengine_v1alpha_sitemap_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_site_search_engine_sitemap(parent, google_cloud_discoveryengine_v1alpha_sitemap_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sitemaps', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSitemap::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_sitemap_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Sitemap.
        # @param [String] name
        #   Required. Full resource name of Sitemap, such as `projects/`project`/locations/
        #   `location`/collections/`collection`/dataStores/`data_store`/siteSearchEngine/
        #   sitemaps/`sitemap``. If the caller does not have permission to access the
        #   Sitemap, regardless of whether or not it exists, a PERMISSION_DENIED error is
        #   returned. If the requested Sitemap does not exist, a NOT_FOUND error is
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_site_search_engine_sitemap(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch Sitemaps in a DataStore.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The Sitemap uris.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_collection_data_store_site_search_engine_sitemap(parent, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sitemaps:fetch', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates TargetSite in a batch.
        # @param [String] parent
        #   Required. The parent resource shared by all TargetSites being created. `
        #   projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store`/siteSearchEngine`. The parent field in the CreateBookRequest
        #   messages must either be empty or match this field.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest] google_cloud_discoveryengine_v1alpha_batch_create_target_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_collection_data_store_site_search_engine_target_site_create(parent, google_cloud_discoveryengine_v1alpha_batch_create_target_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/targetSites:batchCreate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_batch_create_target_sites_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetSite.
        # @param [String] parent
        #   Required. Parent resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite] google_cloud_discoveryengine_v1alpha_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_data_store_site_search_engine_target_site(parent, google_cloud_discoveryengine_v1alpha_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/targetSites', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of TargetSites.
        # @param [String] parent
        #   Required. The parent site search engine resource name, such as `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to list TargetSites
        #   under this site search engine, regardless of whether or not this branch exists,
        #   a PERMISSION_DENIED error is returned.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default. The maximum value is
        #   1000; values above 1000 will be coerced to 1000. If this field is negative, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListTargetSites` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListTargetSites` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_target_sites(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/targetSites', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a TargetSite.
        # @param [String] name
        #   Output only. The fully qualified resource name of the target site. `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site`` The `target_site_id` is system-
        #   generated.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite] google_cloud_discoveryengine_v1alpha_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_site_search_engine_target_site(name, google_cloud_discoveryengine_v1alpha_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_site_search_engine_target_site_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_data_store_site_search_engine_target_site_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1alpha_import_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1alpha_import_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/suggestionDenyListEntries:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1alpha_purge_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1alpha_purge_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/suggestionDenyListEntries:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent resource name. If the collect user event action is
        #   applied in DataStore level, the format is: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store``. If the collect
        #   user event action is applied in Location level, for example, the event with
        #   Document across multiple DataStore, the format is: `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_collection_data_store_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of user events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest] google_cloud_discoveryengine_v1alpha_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the catalog under which the events are created.
        #   The format is `projects/`project`/locations/global/collections/`collection`/
        #   dataStores/`dataStore``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest] google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent resource name. If the write user event action is applied
        #   in DataStore level, the format is: `projects/`project`/locations/`location`/
        #   collections/`collection`/dataStores/`data_store``. If the write user event
        #   action is applied in Location level, for example, the event with Document
        #   across multiple DataStore, the format is: `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] google_cloud_discoveryengine_v1alpha_user_event_object
        # @param [Boolean] write_async
        #   If set to true, the user event is written asynchronously after validation, and
        #   the API responds without waiting for the write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_collection_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_user_event_object = nil, write_async: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['writeAsync'] = write_async unless write_async.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a WidgetConfig.
        # @param [String] name
        #   Required. Full WidgetConfig resource name. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   widgetConfigs/`widget_config_id``
        # @param [Boolean] accept_cache
        #   Optional. Whether it's acceptable to load the widget config from cache. If set
        #   to true, recent changes on widget configs may take a few minutes to reflect on
        #   the end user's view. It's recommended to set to true for maturely developed
        #   widgets, as it improves widget performance. Set to false to see changes
        #   reflected in prod right away, if your widget is under development.
        # @param [Boolean] get_widget_config_request_option_turn_off_collection_components
        #   Optional. Whether to turn off collection_components in WidgetConfig to reduce
        #   latency and data transmission.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_data_store_widget_config(name, accept_cache: nil, get_widget_config_request_option_turn_off_collection_components: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig
          command.params['name'] = name unless name.nil?
          command.query['acceptCache'] = accept_cache unless accept_cache.nil?
          command.query['getWidgetConfigRequestOption.turnOffCollectionComponents'] = get_widget_config_request_option_turn_off_collection_components unless get_widget_config_request_option_turn_off_collection_components.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a WidgetConfig.
        # @param [String] name
        #   Immutable. The full resource name of the widget config. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/widgetConfigs/`widget_config_id``. This field must be a UTF-8
        #   encoded string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] google_cloud_discoveryengine_v1alpha_widget_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided WidgetConfig to update. The following
        #   are the only supported fields: * WidgetConfig.enable_autocomplete If not set,
        #   all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_data_store_widget_config(name, google_cloud_discoveryengine_v1alpha_widget_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_widget_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Engine.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine] google_cloud_discoveryengine_v1alpha_engine_object
        # @param [String] engine_id
        #   Required. The ID to use for the Engine, which will become the final component
        #   of the Engine's resource name. This field must conform to [RFC-1034](https://
        #   tools.ietf.org/html/rfc1034) standard with a length limit of 63 characters.
        #   Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine(parent, google_cloud_discoveryengine_v1alpha_engine_object = nil, engine_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/engines', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_engine_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['engineId'] = engine_id unless engine_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Engine.
        # @param [String] name
        #   Required. Full resource name of Engine, such as `projects/`project`/locations/`
        #   location`/collections/`collection_id`/engines/`engine_id``. If the caller does
        #   not have permission to delete the Engine, regardless of whether or not it
        #   exists, a PERMISSION_DENIED error is returned. If the Engine to delete does
        #   not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Engine.
        # @param [String] name
        #   Required. Full resource name of Engine, such as `projects/`project`/locations/`
        #   location`/collections/`collection_id`/engines/`engine_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get Workspace settings for the end user.
        # @param [String] name
        #   Required. Full Engine resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection_id`/engines/`engine_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWorkspaceSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWorkspaceSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_workspace_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:getWorkspaceSettings', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWorkspaceSettings::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWorkspaceSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the Engines associated with the project.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection_id``.
        # @param [String] filter
        #   Optional. Filter by solution type. For example: solution_type=
        #   SOLUTION_TYPE_SEARCH
        # @param [Fixnum] page_size
        #   Optional. Not supported.
        # @param [String] page_token
        #   Optional. Not supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEnginesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEnginesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engines(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/engines', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEnginesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEnginesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Engine
        # @param [String] name
        #   Immutable. Identifier. The fully qualified resource name of the engine. This
        #   field must be a UTF-8 encoded string with a length limit of 1024 characters.
        #   Format: `projects/`project`/locations/`location`/collections/`collection`/
        #   engines/`engine`` engine should be 1-63 characters, and valid characters are /
        #   a-z0-9*/. Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine] google_cloud_discoveryengine_v1alpha_engine_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Engine to update. If an unsupported or
        #   unknown field is provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine(name, google_cloud_discoveryengine_v1alpha_engine_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_engine_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses the training of an existing engine. Only applicable if SolutionType is
        # SOLUTION_TYPE_RECOMMENDATION.
        # @param [String] name
        #   Required. The name of the engine to pause. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/engines/`engine_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPauseEngineRequest] google_cloud_discoveryengine_v1alpha_pause_engine_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_project_location_collection_engine(name, google_cloud_discoveryengine_v1alpha_pause_engine_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:pause', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPauseEngineRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_pause_engine_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes the training of an existing engine. Only applicable if SolutionType is
        # SOLUTION_TYPE_RECOMMENDATION.
        # @param [String] name
        #   Required. The name of the engine to resume. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/engines/`engine_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaResumeEngineRequest] google_cloud_discoveryengine_v1alpha_resume_engine_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_project_location_collection_engine(name, google_cloud_discoveryengine_v1alpha_resume_engine_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:resume', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaResumeEngineRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_resume_engine_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tunes an existing engine. Only applicable if SolutionType is
        # SOLUTION_TYPE_RECOMMENDATION.
        # @param [String] name
        #   Required. The resource name of the engine to tune. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/engines/`engine_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTuneEngineRequest] google_cloud_discoveryengine_v1alpha_tune_engine_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def tune_project_location_collection_engine(name, google_cloud_discoveryengine_v1alpha_tune_engine_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:tune', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTuneEngineRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_tune_engine_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports metrics.
        # @param [String] analytics
        #   Required. The analytics resource name under the engine where the metrics are
        #   created. The format is `projects/`project`/locations/`location`/collections/`
        #   collection`/engines/`engine`/analytics`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaExportMetricsRequest] google_cloud_discoveryengine_v1alpha_export_metrics_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_location_collection_engine_analytic_metrics(analytics, google_cloud_discoveryengine_v1alpha_export_metrics_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+analytics}:exportMetrics', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaExportMetricsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_export_metrics_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['analytics'] = analytics unless analytics.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Assistant.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant] google_cloud_discoveryengine_v1alpha_assistant_object
        # @param [String] assistant_id
        #   Required. The ID to use for the Assistant, which will become the final
        #   component of the Assistant's resource name. This field must conform to [RFC-
        #   1034](https://tools.ietf.org/html/rfc1034) with a length limit of 63
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_assistant(parent, google_cloud_discoveryengine_v1alpha_assistant_object = nil, assistant_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/assistants', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_assistant_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant
          command.params['parent'] = parent unless parent.nil?
          command.query['assistantId'] = assistant_id unless assistant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Assistant.
        # @param [String] name
        #   Required. Resource name of Assistant. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`` If
        #   the caller does not have permission to delete the Assistant, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   Assistant to delete does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_assistant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an Assistant.
        # @param [String] name
        #   Required. Resource name of Assistant. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Assistants under an Engine.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Maximum number of Assistants to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000; anything above that will be coerced down to
        #   1000.
        # @param [String] page_token
        #   A page token ListAssistantsResponse.next_page_token, received from a previous
        #   AssistantService.ListAssistants call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to ListAssistants must
        #   match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAssistantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAssistantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_assistants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/assistants', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAssistantsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAssistantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the data for displaying the Agents under an Assistant which are
        # available to the caller.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant``
        # @param [Boolean] admin_view
        #   Optional. Indicates whether to consider if the caller is an admin. If set, and
        #   the caller is an admin, the response will consider admin-only permissions.
        #   Otherwise, a caller with admin permissions will get a response as an
        #   unprivileged user.
        # @param [String] agent_origin
        #   Optional. The origin of the Agent.
        # @param [String] filter
        #   Optional. The filter syntax consists of an expression language for
        #   constructing a predicate from one or more fields of the files being filtered.
        #   Filter expression is case-sensitive. Allowed fields are: * `display_name` * `
        #   state` Some examples of filters would be: * `display_name = 'agent_1'` * `
        #   display_name = 'agent_1' AND state = ENABLED` For a full description of the
        #   filter format, please see https://google.aip.dev/160.
        # @param [String] language_code
        #   Optional. The UI language currently shown to the user. Specifying this field
        #   request that the texts in the AgentViews in the response should be translated
        #   to this language.
        # @param [Fixnum] max_suggested_prompts
        #   Optional. The maximum number of suggested prompts to return per agent.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of AgentViewss to return. If unspecified, defaults to
        #   100. The maximum allowed value is 1000; anything above that will be coerced
        #   down to 1000.
        # @param [String] page_token
        #   Optional. A page token ListAvailableAgentViewsResponse.next_page_token,
        #   received from a previous AgentService.ListAvailableAgentViews call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to ListAvailableAgentViews must match the call that provided the page
        #   token.
        # @param [String] sort_by
        #   Optional. The field to sort by. Can have the following values: - display-name:
        #   The display name of the agent. - description: The description of the agent. -
        #   create-time: The creation time of the agent. - state: The state of the agent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAvailableAgentViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAvailableAgentViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_assistant_available_agent_views(parent, admin_view: nil, agent_origin: nil, filter: nil, language_code: nil, max_suggested_prompts: nil, page_size: nil, page_token: nil, sort_by: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:listAvailableAgentViews', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAvailableAgentViewsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAvailableAgentViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['adminView'] = admin_view unless admin_view.nil?
          command.query['agentOrigin'] = agent_origin unless agent_origin.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['maxSuggestedPrompts'] = max_suggested_prompts unless max_suggested_prompts.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['sortBy'] = sort_by unless sort_by.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Assistant
        # @param [String] name
        #   Immutable. Resource name of the assistant. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant`` It must be a UTF-8 encoded string with a length limit of 1024
        #   characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant] google_cloud_discoveryengine_v1alpha_assistant_object
        # @param [String] update_mask
        #   The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_assistant(name, google_cloud_discoveryengine_v1alpha_assistant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_assistant_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAssistant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Assists the user with a query in a streaming fashion.
        # @param [String] name
        #   Required. The resource name of the Assistant. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequest] google_cloud_discoveryengine_v1alpha_stream_assist_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_collection_engine_assistant_assist(name, google_cloud_discoveryengine_v1alpha_stream_assist_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:streamAssist', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_stream_assist_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaStreamAssistResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Agent.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] google_cloud_discoveryengine_v1alpha_agent_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_assistant_agent(parent, google_cloud_discoveryengine_v1alpha_agent_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/agents', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_agent_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Agent.
        # @param [String] name
        #   Required. Resource name of Agent. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`/
        #   agents/`agent`` If the caller does not have permission to delete the agent,
        #   regardless of whether or not it exists, a `PERMISSION_DENIED` error is
        #   returned. If the agent to delete does not exist, a `NOT_FOUND` error is
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_assistant_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disables an Agent. The `state` of the Agent becomes `DISABLED`. Can be called
        # on an Agent in the state `ENABLED` or`SUSPENDED`, otherwise it returns an
        # error.
        # @param [String] name
        #   Required. The name of the Agent to disable. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant`/agents/`agent``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_collection_engine_assistant_agent_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:disableAgent', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enables an Agent. The `state` of the Agent becomes `ENABLED`. Can be called on
        # an Agent in the state `DISABLED` or 'SUSPENDED', otherwise it returns an error.
        # @param [String] name
        #   Required. The name of the Agent to enable. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant`/agents/`agent``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_collection_engine_assistant_agent_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:enableAgent', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an Agent.
        # @param [String] name
        #   Required. Resource name of Agent. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`/
        #   agents/`agent``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant_agent(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a AgentView for a given Agent, which contains additional information
        # about the Agent.
        # @param [String] name
        #   Required. The name of the Agent to get. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`/
        #   agents/`agent``
        # @param [Boolean] admin_view
        #   Optional. Indicates whether to consider if the caller is an admin. If set, and
        #   the caller is an admin, the response will consider admin-only permissions.
        #   Otherwise, a caller with admin permissions will get a response as an
        #   unprivileged user.
        # @param [String] language_code
        #   Optional. The UI language currently shown to the user. Specifying this field
        #   request that the texts in the AgentView in the response should be translated
        #   to this language.
        # @param [Fixnum] max_suggested_prompts
        #   Optional. The maximum number of suggested prompts to return per agent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetAgentViewResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetAgentViewResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant_agent_agent_view(name, admin_view: nil, language_code: nil, max_suggested_prompts: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:getAgentView', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetAgentViewResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaGetAgentViewResponse
          command.params['name'] = name unless name.nil?
          command.query['adminView'] = admin_view unless admin_view.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['maxSuggestedPrompts'] = max_suggested_prompts unless max_suggested_prompts.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an agent resource. A `NOT_FOUND` error is
        # returned if the resource does not exist. An empty policy is returned if the
        # resource exists but does not have a policy set on it.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The maximum policy version that will be used to format the policy.
        #   Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        #   rejected. Requests for policies with any conditional role bindings must
        #   specify version 3. Policies with no conditional role bindings may specify any
        #   valid value or leave the field unset. The policy in the response might use the
        #   policy version that you specified, or it might use a lower policy version. For
        #   example, if you specify version 3, but the policy has no conditional role
        #   bindings, the response uses version 1. To learn which resources support
        #   conditions in their IAM policies, see the [IAM documentation](https://cloud.
        #   google.com/iam/help/conditions/resource-policies).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant_agent_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Agents under an Assistant which were created by the caller.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant``
        # @param [String] order_by
        #   Optional. A comma-separated list of fields to order by, sorted in ascending
        #   order. Use "desc" after a field name for descending. Supported fields: * `
        #   update_time` * `is_pinned` Example: * "update_time desc" * "is_pinned desc,
        #   update_time desc": list agents by is_pinned first, then by update_time.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of Agents to return. If unspecified, defaults to 100.
        #   The maximum allowed value is 1000; anything above that will be coerced down to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token ListAgentsResponse.next_page_token, received from a
        #   previous AgentService.ListAgents call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to ListAgents must match
        #   the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAgentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAgentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_assistant_agents(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/agents', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAgentsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListAgentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Agent
        # @param [String] name
        #   Identifier. Resource name of the agent. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`/
        #   agents/`agent``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] google_cloud_discoveryengine_v1alpha_agent_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_assistant_agent(name, google_cloud_discoveryengine_v1alpha_agent_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_agent_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy for an agent resource. A `NOT_FOUND` error is
        # returned if the resource does not exist. Policy can only contain `roles/
        # discoveryengine.agentUser`, `roles/discoveryengine.agentViewer` and `roles/
        # discoveryengine.agentEditor` roles.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_location_collection_engine_assistant_agent_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suspends an Agent. It is still available for viewing but not for use. The `
        # state` of the Agent becomes `SUSPENDED`. Can be called on an Agent in the
        # state `ENABLED`, otherwise it returns an error.
        # @param [String] name
        #   Required. The name of the Agent to suspend. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant`/agents/`agent``
        # @param [String] suspension_reason
        #   Required. The reason for suspending the Agent. This will be shown to the users
        #   of the Agent.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suspend_project_location_collection_engine_assistant_agent_agent(name, suspension_reason: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:suspendAgent', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAgent
          command.params['name'] = name unless name.nil?
          command.query['suspensionReason'] = suspension_reason unless suspension_reason.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a file to an Agent. Currently only No-Code agents are supported.
        # @param [String] parent
        #   Required. The resource name of the Agent. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant`/agents/`agent``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportAgentFileRequest] google_cloud_discoveryengine_v1alpha_import_agent_file_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportAgentFileResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportAgentFileResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_collection_engine_assistant_agent_file(parent, google_cloud_discoveryengine_v1alpha_import_agent_file_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/files:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportAgentFileRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_agent_file_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportAgentFileResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportAgentFileResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant_agent_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CannedQuery.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery] google_cloud_discoveryengine_v1alpha_canned_query_object
        # @param [String] canned_query_id
        #   Required. The ID to use for the canned query, which will become the final
        #   component of the canned query's resource name. This field must conform to [RFC-
        #   1034](https://tools.ietf.org/html/rfc1034) with a length limit of 63
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_assistant_canned_query(parent, google_cloud_discoveryengine_v1alpha_canned_query_object = nil, canned_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/cannedQueries', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_canned_query_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['cannedQueryId'] = canned_query_id unless canned_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a CannedQuery.
        # @param [String] name
        #   Required. Resource name of CannedQuery. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`/
        #   cannedQueries/`canned_query`` If the caller does not have permission to delete
        #   the canned query, regardless of whether or not it exists, a `PERMISSION_DENIED`
        #   error is returned. If the canned query to delete does not exist, a `NOT_FOUND`
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_assistant_canned_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a CannedQuery.
        # @param [String] name
        #   Required. Resource name of CannedQuery. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant`/
        #   cannedQueries/`canned_query``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_assistant_canned_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all CannedQuerys under an Assistant.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/engines/`engine`/assistants/`assistant``
        # @param [String] filter
        #   Optional. The filter expression. Supported fields: * `enabled` * `
        #   google_defined` Examples: * `enabled=true` * `google_defined=true` * `enabled=
        #   true AND google_defined=true`
        # @param [Fixnum] page_size
        #   Maximum number of canned queries to return. If unspecified, defaults to 100.
        #   The maximum allowed value is 1000; anything above that will be coerced down to
        #   1000.
        # @param [String] page_token
        #   A page token received from a previous CannedQueryService.ListCannedQueries
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to CannedQueryService.ListCannedQueries must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCannedQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCannedQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_assistant_canned_queries(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/cannedQueries', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCannedQueriesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListCannedQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a CannedQuery.
        # @param [String] name
        #   Immutable. Resource name of the canned query. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/assistants/`
        #   assistant`/cannedQueries/`canned_query`` It must be a UTF-8 encoded string
        #   with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery] google_cloud_discoveryengine_v1alpha_canned_query_object
        # @param [String] update_mask
        #   The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_assistant_canned_query(name, google_cloud_discoveryengine_v1alpha_canned_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_canned_query_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCannedQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the user input with advanced keyword suggestions.
        # @param [String] completion_config
        #   Required. The completion_config of the parent dataStore or engine resource
        #   name for which the completion is performed, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/*/completionConfig` `projects/
        #   */locations/global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest] google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_collection_engine_completion_config_query(completion_config, google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+completionConfig}:completeQuery', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the search history suggestion in an engine for a user. This will
        # remove the suggestion from being returned in the AdvancedCompleteQueryResponse.
        # recent_search_suggestions for this user. If the user searches the same
        # suggestion again, the new history will override and suggest this suggestion
        # again.
        # @param [String] completion_config
        #   Required. The completion_config of the parent engine resource name for which
        #   the search history suggestion is to be removed, such as `projects/*/locations/
        #   global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveSuggestionRequest] google_cloud_discoveryengine_v1alpha_remove_suggestion_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveSuggestionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveSuggestionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_project_location_collection_engine_completion_config_suggestion(completion_config, google_cloud_discoveryengine_v1alpha_remove_suggestion_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+completionConfig}:removeSuggestion', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveSuggestionRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_remove_suggestion_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveSuggestionResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRemoveSuggestionResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Control. By default 1000 controls are allowed for a data store. A
        # request can be submitted to adjust this limit. If the Control to create
        # already exists, an ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``
        #   or `projects/`project`/locations/`location`/collections/`collection_id`/
        #   engines/`engine_id``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] google_cloud_discoveryengine_v1alpha_control_object
        # @param [String] control_id
        #   Required. The ID to use for the Control, which will become the final component
        #   of the Control's resource name. This value must be within 1-63 characters.
        #   Valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_control(parent, google_cloud_discoveryengine_v1alpha_control_object = nil, control_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/controls', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['parent'] = parent unless parent.nil?
          command.query['controlId'] = control_id unless control_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Control to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Control.
        # @param [String] name
        #   Required. The resource name of the Control to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Controls by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection_id`/dataStores/`data_store_id`` or `projects/
        #   `project`/locations/`location`/collections/`collection_id`/engines/`engine_id``
        #   .
        # @param [String] filter
        #   Optional. A filter to apply on the list results. Supported features: * List
        #   all the products under the parent branch if filter is unset. Currently this
        #   field is unsupported.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListControls` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_controls(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/controls', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Control. Control action type cannot be changed. If the Control to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/
        #   controls/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] google_cloud_discoveryengine_v1alpha_control_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided Control to update. The
        #   following are NOT supported: * Control.name * Control.solution_type If not set
        #   or empty, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_control(name, google_cloud_discoveryengine_v1alpha_control_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest] google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_collection_engine_conversation(name, google_cloud_discoveryengine_v1alpha_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_conversation(parent, google_cloud_discoveryengine_v1alpha_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/dataStore/*/conversations/*` or `projects/`project`/
        #   locations/global/collections/`collection`/engines/*/conversations/*`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * Conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_conversation(name, google_cloud_discoveryengine_v1alpha_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest] google_cloud_discoveryengine_v1alpha_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def answer_project_location_collection_engine_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:answer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not
        # exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine`/
        #   servingConfigs/`serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ServingConfigs linked to this dataStore.
        # @param [String] parent
        #   Required. Full resource name of the parent resource. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 100.
        #   If a value greater than 100 is provided, at most 100 results are returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListServingConfigs` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_serving_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/servingConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does
        # not exist.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/`location`/
        #   collections/`collection_id`/engines/`engine_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] google_cloud_discoveryengine_v1alpha_serving_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided ServingConfig to update. The following
        #   are NOT supported: * ServingConfig.name If not set, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_serving_config(name, google_cloud_discoveryengine_v1alpha_serving_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_serving_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of a ServingConfig: `projects/*/locations/global/
        #   collections/*/engines/*/servingConfigs/*`, or `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` One default serving config is
        #   created along with your recommendation engine creation. The engine ID is used
        #   as the ID of the default serving config. For example, for Engine `projects/*/
        #   locations/global/collections/*/engines/my-engine`, you can use `projects/*/
        #   locations/global/collections/*/engines/my-engine/servingConfigs/my-engine` for
        #   your RecommendationService.Recommend requests.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest] google_cloud_discoveryengine_v1alpha_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_collection_engine_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_engine_serving_configs(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. Similar to the SearchService.Search method, but a lite
        # version that allows API key for authentication, where OAuth and IAM checks are
        # not required. Only public website search is supported by this method. If data
        # stores and engines not associated with public website search are specified, a `
        # FAILED_PRECONDITION` error is returned. This method can be used for easy
        # onboarding without having to implement an authentication backend. However, it
        # is strongly recommended to use SearchService.Search instead with required
        # OAuth and IAM checks to provide better data security.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_collection_engine_serving_config_lite(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:searchLite', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method (streaming). It takes one AnswerQueryRequest and returns
        # multiple AnswerQueryResponse messages in a stream.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest] google_cloud_discoveryengine_v1alpha_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_collection_engine_serving_config_answer(serving_config, google_cloud_discoveryengine_v1alpha_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:streamAnswer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Session. If the Session to create already exists, an ALREADY_EXISTS
        # error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] google_cloud_discoveryengine_v1alpha_session_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_collection_engine_session(parent, google_cloud_discoveryengine_v1alpha_session_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sessions', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Session to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/sessions/`session_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_collection_engine_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Session.
        # @param [String] name
        #   Required. The resource name of the Session to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   sessions/`session_id``
        # @param [Boolean] include_answer_details
        #   Optional. If set to true, the full session including all answer details will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_session(name, include_answer_details: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['name'] = name unless name.nil?
          command.query['includeAnswerDetails'] = include_answer_details unless include_answer_details.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Sessions by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A comma-separated list of fields to filter by, in EBNF grammar. The supported
        #   fields are: * `user_pseudo_id` * `state` * `display_name` * `starred` * `
        #   is_pinned` * `labels` * `create_time` * `update_time` Examples: * `
        #   user_pseudo_id = some_id` * `display_name = "some_name"` * `starred = true` * `
        #   is_pinned=true AND (NOT labels:hidden)` * `create_time > "1970-01-01T12:00:00Z"
        #   `
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `session_name` * `is_pinned` Example: * `update_time desc` * `
        #   create_time` * `is_pinned desc,update_time desc`: list sessions by is_pinned
        #   first, then by update_time.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSessions` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_sessions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Session. Session action type cannot be changed. If the Session to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/engines/`engine`/sessions/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] google_cloud_discoveryengine_v1alpha_session_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Session to update. The following are
        #   NOT supported: * Session.name If not set or empty, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_session(name, google_cloud_discoveryengine_v1alpha_session_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_session_alpha_evolve_experiment_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Answer.
        # @param [String] name
        #   Required. The resource name of the Answer to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine_id`/sessions/`
        #   session_id`/answers/`answer_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_session_answer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists metadata for all files in the current session.
        # @param [String] parent
        #   Required. The resource name of the Session. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine`/sessions/`
        #   session`` Name of the session resource to which the file belong.
        # @param [String] filter
        #   Optional. The filter syntax consists of an expression language for
        #   constructing a predicate from one or more fields of the files being filtered.
        #   Filter expression is case-sensitive. Currently supported field names are: *
        #   upload_time * last_add_time * last_use_time * file_name * mime_type Some
        #   examples of filters would be: * "file_name = 'file_1'" * "file_name = 'file_1'
        #   AND mime_type = 'text/plain'" * "last_use_time > '2025-06-14T12:00:00Z'" For a
        #   full description of the filter format, please see https://google.aip.dev/160.
        # @param [String] order_by
        #   Optional. Specifies the order in which files are returned. The value is a
        #   comma-separated string of fields to sort by. For ascending order - just the
        #   field name is used. For descending order - the field name is suffixed with `
        #   desc`. Sorting is stable and applied sequentially according to the order of
        #   fields provided in the string. Supported fields for ordering: * `upload_time`:
        #   The time the file was uploaded. * `file_name`: The name of the file. * `
        #   mime_type`: The MIME type of the file. * `session_name`: The name of the
        #   session the file belongs to. Default Behavior: If the `order_by` field is not
        #   specified, files will be returned sorted by creation time in descending order.
        #   Examples: 1. Sort by file name in ascending order: `file_name` 2. Sort by
        #   upload time in descending order: `upload_time desc` 3. Sort by file name (
        #   ascending), then by content type (MIME type) (descending), and finally by
        #   upload time (ascending): `file_name, mime_type desc, upload_time`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of files to return. The service may return fewer
        #   than this value. If unspecified, at most 100 files will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000. If user
        #   specifies a value less than or equal to 0 - the request will be rejected with
        #   an INVALID_ARGUMENT error.
        # @param [String] page_token
        #   Optional. A page token received from a previous `ListFiles` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListFiles` must match the call that provided the page token (
        #   except `page_size`, which may differ).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListFilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListFilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_engine_session_files(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/files', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListFilesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListFilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_session_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a WidgetConfig.
        # @param [String] name
        #   Required. Full WidgetConfig resource name. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   widgetConfigs/`widget_config_id``
        # @param [Boolean] accept_cache
        #   Optional. Whether it's acceptable to load the widget config from cache. If set
        #   to true, recent changes on widget configs may take a few minutes to reflect on
        #   the end user's view. It's recommended to set to true for maturely developed
        #   widgets, as it improves widget performance. Set to false to see changes
        #   reflected in prod right away, if your widget is under development.
        # @param [Boolean] get_widget_config_request_option_turn_off_collection_components
        #   Optional. Whether to turn off collection_components in WidgetConfig to reduce
        #   latency and data transmission.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_engine_widget_config(name, accept_cache: nil, get_widget_config_request_option_turn_off_collection_components: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig
          command.params['name'] = name unless name.nil?
          command.query['acceptCache'] = accept_cache unless accept_cache.nil?
          command.query['getWidgetConfigRequestOption.turnOffCollectionComponents'] = get_widget_config_request_option_turn_off_collection_components unless get_widget_config_request_option_turn_off_collection_components.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a WidgetConfig.
        # @param [String] name
        #   Immutable. The full resource name of the widget config. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/widgetConfigs/`widget_config_id``. This field must be a UTF-8
        #   encoded string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] google_cloud_discoveryengine_v1alpha_widget_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided WidgetConfig to update. The following
        #   are the only supported fields: * WidgetConfig.enable_autocomplete If not set,
        #   all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_collection_engine_widget_config(name, google_cloud_discoveryengine_v1alpha_widget_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_widget_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_collection_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_collection_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified user input with keyword suggestions.
        # @param [String] data_store
        #   Required. The parent data store resource name for which the completion is
        #   performed, such as `projects/*/locations/global/collections/default_collection/
        #   dataStores/default_data_store`.
        # @param [Boolean] include_tail_suggestions
        #   Indicates if tail suggestions should be returned if there are no suggestions
        #   that match the full query. Even if set to true, if there are suggestions that
        #   match the full query, those are returned and no tail suggestions are returned.
        # @param [String] query
        #   Required. The typeahead input used to fetch suggestions. Maximum length is 128
        #   characters.
        # @param [String] query_model
        #   Specifies the autocomplete data model. This overrides any model specified in
        #   the Configuration > Autocomplete section of the Cloud console. Currently
        #   supported values: * `document` - Using suggestions generated from user-
        #   imported documents. * `search-history` - Using suggestions generated from the
        #   past history of SearchService.Search API calls. Do not use it when there is no
        #   traffic for Search API. * `user-event` - Using suggestions generated from user-
        #   imported search events. * `document-completable` - Using suggestions taken
        #   directly from user-imported document fields marked as completable. Default
        #   values: * `document` is the default model for regular dataStores. * `search-
        #   history` is the default model for site search dataStores.
        # @param [String] user_pseudo_id
        #   Optional. A unique identifier for tracking visitors. For example, this could
        #   be implemented with an HTTP cookie, which should be able to uniquely identify
        #   a visitor on a single device. This unique identifier should not change if the
        #   visitor logs in or out of the website. This field should NOT have a fixed
        #   value such as `unknown_visitor`. This should be the same identifier as
        #   UserEvent.user_pseudo_id and SearchRequest.user_pseudo_id. The field must be a
        #   UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_data_store_query(data_store, include_tail_suggestions: nil, query: nil, query_model: nil, user_pseudo_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+dataStore}:completeQuery', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCompleteQueryResponse
          command.params['dataStore'] = data_store unless data_store.nil?
          command.query['includeTailSuggestions'] = include_tail_suggestions unless include_tail_suggestions.nil?
          command.query['query'] = query unless query.nil?
          command.query['queryModel'] = query_model unless query_model.nil?
          command.query['userPseudoId'] = user_pseudo_id unless user_pseudo_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DataStore. DataStore is for storing Documents. To serve these
        # documents for Search, or Recommendation use case, an Engine needs to be
        # created separately.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] google_cloud_discoveryengine_v1alpha_data_store_object
        # @param [String] cmek_config_name
        #   Resource name of the CmekConfig to use for protecting this DataStore.
        # @param [Boolean] create_advanced_site_search
        #   A boolean flag indicating whether user want to directly create an advanced
        #   data store for site search. If the data store is not configured as site search
        #   (GENERIC vertical and PUBLIC_WEBSITE content_config), this flag will be
        #   ignored.
        # @param [String] data_store_id
        #   Required. The ID to use for the DataStore, which will become the final
        #   component of the DataStore's resource name. This field must conform to [RFC-
        #   1034](https://tools.ietf.org/html/rfc1034) standard with a length limit of 63
        #   characters. Otherwise, an INVALID_ARGUMENT error is returned.
        # @param [Boolean] disable_cmek
        #   DataStore without CMEK protections. If a default CmekConfig is set for the
        #   project, setting this field will override the default CmekConfig as well.
        # @param [Boolean] skip_default_schema_creation
        #   A boolean flag indicating whether to skip the default schema creation for the
        #   data store. Only enable this flag if you are certain that the default schema
        #   is incompatible with your use case. If set to true, you must manually create a
        #   schema for the data store before any documents can be ingested. This flag
        #   cannot be specified if `data_store.starting_schema` is specified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store(parent, google_cloud_discoveryengine_v1alpha_data_store_object = nil, cmek_config_name: nil, create_advanced_site_search: nil, data_store_id: nil, disable_cmek: nil, skip_default_schema_creation: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/dataStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['cmekConfigName'] = cmek_config_name unless cmek_config_name.nil?
          command.query['createAdvancedSiteSearch'] = create_advanced_site_search unless create_advanced_site_search.nil?
          command.query['dataStoreId'] = data_store_id unless data_store_id.nil?
          command.query['disableCmek'] = disable_cmek unless disable_cmek.nil?
          command.query['skipDefaultSchemaCreation'] = skip_default_schema_creation unless skip_default_schema_creation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to delete the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   DataStore to delete does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DataStore.
        # @param [String] name
        #   Required. Full resource name of DataStore, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``.
        #   If the caller does not have permission to access the DataStore, regardless of
        #   whether or not it exists, a PERMISSION_DENIED error is returned. If the
        #   requested DataStore does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a DocumentProcessingConfig.
        # @param [String] name
        #   Required. Full DocumentProcessingConfig resource name. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/documentProcessingConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_document_processing_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the SiteSearchEngine.
        # @param [String] name
        #   Required. Resource name of SiteSearchEngine, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to access the [
        #   SiteSearchEngine], regardless of whether or not it exists, a PERMISSION_DENIED
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_site_search_engine(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSiteSearchEngine
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the DataStores associated with the project.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection_id``. If the caller does not have
        #   permission to list DataStores under this location, regardless of whether or
        #   not this data store exists, a PERMISSION_DENIED error is returned.
        # @param [String] filter
        #   Filter by solution type . For example: `filter = 'solution_type:
        #   SOLUTION_TYPE_SEARCH'`
        # @param [Fixnum] page_size
        #   Maximum number of DataStores to return. If unspecified, defaults to 10. The
        #   maximum allowed value is 50. Values above 50 will be coerced to 50. If this
        #   field is negative, an INVALID_ARGUMENT is returned.
        # @param [String] page_token
        #   A page token ListDataStoresResponse.next_page_token, received from a previous
        #   DataStoreService.ListDataStores call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DataStoreService.
        #   ListDataStores must match the call that provided the page token. Otherwise, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_stores(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/dataStores', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDataStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataStore
        # @param [String] name
        #   Immutable. Identifier. The full resource name of the data store. Format: `
        #   projects/`project`/locations/`location`/collections/`collection_id`/dataStores/
        #   `data_store_id``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] google_cloud_discoveryengine_v1alpha_data_store_object
        # @param [String] update_mask
        #   Indicates which fields in the provided DataStore to update. If an unsupported
        #   or unknown field is provided, an INVALID_ARGUMENT error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store(name, google_cloud_discoveryengine_v1alpha_data_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_data_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDataStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the DocumentProcessingConfig. DocumentProcessingConfig is a singleon
        # resource of DataStore. It's empty when DataStore is created. The first call to
        # this method will set up DocumentProcessingConfig.
        # @param [String] name
        #   The full resource name of the Document Processing Config. Format: `projects/*/
        #   locations/*/collections/*/dataStores/*/documentProcessingConfig`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig] google_cloud_discoveryengine_v1alpha_document_processing_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided DocumentProcessingConfig to update. The
        #   following are the only supported fields: * DocumentProcessingConfig.ocr_config
        #   If not set, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_data_store_document_processing_config(name, google_cloud_discoveryengine_v1alpha_document_processing_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_processing_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocumentProcessingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets index freshness metadata for Documents. Supported for website search only.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``.
        # @param [Array<String>, String] matcher_fhir_matcher_fhir_resources
        #   Required. The FHIR resources to match by. Format: projects/`project`/locations/
        #   `location`/datasets/`dataset`/fhirStores/`fhir_store`/fhir/`resource_type`/`
        #   fhir_resource_id`
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The exact URIs to match by.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_data_store_branch_get_documents_metadata(parent, matcher_fhir_matcher_fhir_resources: nil, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/batchGetDocumentsMetadata', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchGetDocumentsMetadataResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.fhirMatcher.fhirResources'] = matcher_fhir_matcher_fhir_resources unless matcher_fhir_matcher_fhir_resources.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a Branch.
        # @param [String] name
        #   Required. The name of the branch to retrieve. Format: `projects/*/locations/
        #   global/dataStores/default_data_store/branches/some_branch_id`. "default_branch"
        #   can be used as a special branch_id, it returns the default branch that has
        #   been set for the document.
        # @param [String] view
        #   The view to apply to the returned Branch. Defaults to Branch.BranchView.BASIC
        #   if unspecified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBranch
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Branchs under the specified parent DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name.
        # @param [String] view
        #   The view to apply to the returned Branch. Defaults to Branch.BranchView.BASIC
        #   if unspecified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branches(parent, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/branches', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListBranchesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Document.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [String] document_id
        #   Required. The ID to use for the Document, which becomes the final component of
        #   the Document.name. If the caller does not have permission to create the
        #   Document, regardless of whether or not it exists, a `PERMISSION_DENIED` error
        #   is returned. This field must be unique among all Documents with the same
        #   parent. Otherwise, an `ALREADY_EXISTS` error is returned. This field must
        #   conform to [RFC-1034](https://tools.ietf.org/html/rfc1034) standard with a
        #   length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_document_object = nil, document_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['parent'] = parent unless parent.nil?
          command.query['documentId'] = document_id unless document_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   delete the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the Document to delete does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_document(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the parsed layout information for a Document.
        # @param [String] name
        #   Required. Full resource name of Document, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to
        #   access the Document, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Document does not exist,
        #   a `NOT_FOUND` error is returned.
        # @param [String] image_id
        #   Optional. Specifies config for IMAGE_BYTES.
        # @param [String] processed_document_format
        #   What format output should be. If unspecified, defaults to JSON.
        # @param [String] processed_document_type
        #   Required. What type of processing to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_document_processed_document(name, image_id: nil, processed_document_format: nil, processed_document_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}:getProcessedDocument', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaProcessedDocument
          command.params['name'] = name unless name.nil?
          command.query['imageId'] = image_id unless image_id.nil?
          command.query['processedDocumentFormat'] = processed_document_format unless processed_document_format.nil?
          command.query['processedDocumentType'] = processed_document_type unless processed_document_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple Documents. Request processing may be synchronous. Non-
        # existing items are created. Note: It is possible for a subset of the Documents
        # to be successfully updated.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Requires create/update permission.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest] google_cloud_discoveryengine_v1alpha_import_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_import_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Documents.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch``. Use `default_branch` as the branch ID, to list documents under the
        #   default branch. If the caller does not have permission to list Documents under
        #   this branch, regardless of whether or not this branch exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Documents to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 are set to 1000. If this
        #   field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListDocumentsResponse.next_page_token, received from a previous
        #   DocumentService.ListDocuments call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to DocumentService.
        #   ListDocuments must match the call that provided the page token. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branch_documents(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/documents', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListDocumentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Document.
        # @param [String] name
        #   Immutable. The full resource name of the document. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document_id``. This field must be a UTF-8 encoded string
        #   with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] google_cloud_discoveryengine_v1alpha_document_object
        # @param [Boolean] allow_missing
        #   If set to `true` and the Document is not found, a new Document is be created.
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'document' to update. If not
        #   set, by default updates all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_branch_document(name, google_cloud_discoveryengine_v1alpha_document_object = nil, allow_missing: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_document_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDocument
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all selected Documents in a branch. This process is
        # asynchronous. Depending on the number of Documents to be deleted, this
        # operation can take hours to complete. Before the delete operation completes,
        # some Documents might still be returned by DocumentService.GetDocument or
        # DocumentService.ListDocuments. To get a list of the Documents to be deleted,
        # set PurgeDocumentsRequest.force to false.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest] google_cloud_discoveryengine_v1alpha_purge_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_branch_document(parent, google_cloud_discoveryengine_v1alpha_purge_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/documents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeDocumentsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_documents_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Document.
        # @param [String] name
        #   Required. Full resource name of Chunk, such as `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store`/branches/`branch`/
        #   documents/`document`/chunks/`chunk``. If the caller does not have permission
        #   to access the Chunk, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. If the requested Chunk does not exist, a
        #   `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_document_chunk(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaChunk
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Chunks.
        # @param [String] parent
        #   Required. The parent document resource name, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/branches/
        #   `branch`/documents/`document``. If the caller does not have permission to list
        #   Chunks under this document, regardless of whether or not this document exists,
        #   a `PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of Chunks to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListChunksResponse.next_page_token, received from a previous
        #   ChunkService.ListChunks call. Provide this to retrieve the subsequent page.
        #   When paginating, all other parameters provided to ChunkService.ListChunks must
        #   match the call that provided the page token. Otherwise, an `INVALID_ARGUMENT`
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branch_document_chunks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/chunks', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListChunksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_data_store_branch_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_branch_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_branch_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the user input with advanced keyword suggestions.
        # @param [String] completion_config
        #   Required. The completion_config of the parent dataStore or engine resource
        #   name for which the completion is performed, such as `projects/*/locations/
        #   global/collections/default_collection/dataStores/*/completionConfig` `projects/
        #   */locations/global/collections/default_collection/engines/*/completionConfig`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest] google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_location_data_store_completion_config_query(completion_config, google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+completionConfig}:completeQuery', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_advanced_complete_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAdvancedCompleteQueryResponse
          command.params['completionConfig'] = completion_config unless completion_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import customer
        #   autocomplete suggestions. Follows pattern `projects/*/locations/*/collections/*
        #   /dataStores/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequest] google_cloud_discoveryengine_v1alpha_import_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1alpha_import_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/completionSuggestions:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all CompletionSuggestions for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to purge completion
        #   suggestions. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsRequest] google_cloud_discoveryengine_v1alpha_purge_completion_suggestions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_completion_suggestion(parent, google_cloud_discoveryengine_v1alpha_purge_completion_suggestions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/completionSuggestions:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeCompletionSuggestionsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_completion_suggestions_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Control. By default 1000 controls are allowed for a data store. A
        # request can be submitted to adjust this limit. If the Control to create
        # already exists, an ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id``
        #   or `projects/`project`/locations/`location`/collections/`collection_id`/
        #   engines/`engine_id``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] google_cloud_discoveryengine_v1alpha_control_object
        # @param [String] control_id
        #   Required. The ID to use for the Control, which will become the final component
        #   of the Control's resource name. This value must be within 1-63 characters.
        #   Valid characters are /a-z-_/.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_control(parent, google_cloud_discoveryengine_v1alpha_control_object = nil, control_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/controls', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['parent'] = parent unless parent.nil?
          command.query['controlId'] = control_id unless control_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Control. If the Control to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Control to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Control.
        # @param [String] name
        #   Required. The resource name of the Control to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   controls/`control_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_control(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Controls by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection_id`/dataStores/`data_store_id`` or `projects/
        #   `project`/locations/`location`/collections/`collection_id`/engines/`engine_id``
        #   .
        # @param [String] filter
        #   Optional. A filter to apply on the list results. Supported features: * List
        #   all the products under the parent branch if filter is unset. Currently this
        #   field is unsupported.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 50.
        #   Max allowed value is 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListControls` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_controls(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/controls', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Control. Control action type cannot be changed. If the Control to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/*/locations/global/dataStore/*/
        #   controls/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] google_cloud_discoveryengine_v1alpha_control_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided Control to update. The
        #   following are NOT supported: * Control.name * Control.solution_type If not set
        #   or empty, all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_control(name, google_cloud_discoveryengine_v1alpha_control_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_control_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaControl
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Converses a conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``. Use `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   conversations/-` to activate auto session mode, which automatically creates a
        #   new conversation inside a ConverseConversation session.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest] google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def converse_project_location_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_converse_conversation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:converse', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_converse_conversation_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConverseConversationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Conversation. If the Conversation to create already exists, an
        # ALREADY_EXISTS error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_conversation(parent, google_cloud_discoveryengine_v1alpha_conversation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/conversations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Conversation. If the Conversation to delete does not exist, a
        # NOT_FOUND error is returned.
        # @param [String] name
        #   Required. The resource name of the Conversation to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Conversation.
        # @param [String] name
        #   Required. The resource name of the Conversation to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/conversations/`conversation_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_conversation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Conversations by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A filter to apply on the list results. The supported features are:
        #   user_pseudo_id, state. Example: "user_pseudo_id = some_id"
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `conversation_name` Example: "update_time desc" "create_time"
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListConversations` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_conversations(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/conversations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListConversationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Conversation. Conversation action type cannot be changed. If the
        # Conversation to update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/dataStore/*/conversations/*` or `projects/`project`/
        #   locations/global/collections/`collection`/engines/*/conversations/*`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] google_cloud_discoveryengine_v1alpha_conversation_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Conversation to update. The following
        #   are NOT supported: * Conversation.name If not set or empty, all supported
        #   fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_conversation(name, google_cloud_discoveryengine_v1alpha_conversation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_conversation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaConversation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_model_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_model_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Schema.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [String] schema_id
        #   Required. The ID to use for the Schema, which becomes the final component of
        #   the Schema.name. This field should conform to [RFC-1034](https://tools.ietf.
        #   org/html/rfc1034) standard with a length limit of 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_schema(parent, google_cloud_discoveryengine_v1alpha_schema_object = nil, schema_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/schemas', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['schemaId'] = schema_id unless schema_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Schema.
        # @param [String] name
        #   Required. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Schemas.
        # @param [String] parent
        #   Required. The parent data store resource name, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store``
        #   .
        # @param [Fixnum] page_size
        #   The maximum number of Schemas to return. The service may return fewer than
        #   this value. If unspecified, at most 100 Schemas are returned. The maximum
        #   value is 1000; values above 1000 are set to 1000.
        # @param [String] page_token
        #   A page token, received from a previous SchemaService.ListSchemas call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to SchemaService.ListSchemas must match the call that provided the
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/schemas', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Schema.
        # @param [String] name
        #   Immutable. The full resource name of the schema, in the format of `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   schemas/`schema``. This field must be a UTF-8 encoded string with a length
        #   limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema] google_cloud_discoveryengine_v1alpha_schema_object
        # @param [Boolean] allow_missing
        #   If set to true, and the Schema is not found, a new Schema is created. In this
        #   situation, `update_mask` is ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_schema(name, google_cloud_discoveryengine_v1alpha_schema_object = nil, allow_missing: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSchema::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_schema_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['allowMissing'] = allow_missing unless allow_missing.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest] google_cloud_discoveryengine_v1alpha_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def answer_project_location_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:answer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a ServingConfig. Returns a NotFound error if the ServingConfig does not
        # exist.
        # @param [String] name
        #   Required. The resource name of the ServingConfig to get. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine`/
        #   servingConfigs/`serving_config_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_serving_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ServingConfigs linked to this dataStore.
        # @param [String] parent
        #   Required. Full resource name of the parent resource. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/engines/`engine``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. If unspecified, defaults to 100.
        #   If a value greater than 100 is provided, at most 100 results are returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListServingConfigs` call.
        #   Provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_serving_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/servingConfigs', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListServingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ServingConfig. Returns a NOT_FOUND error if the ServingConfig does
        # not exist.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/`location`/
        #   collections/`collection_id`/engines/`engine_id`/servingConfigs/`
        #   serving_config_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] google_cloud_discoveryengine_v1alpha_serving_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided ServingConfig to update. The following
        #   are NOT supported: * ServingConfig.name If not set, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_serving_config(name, google_cloud_discoveryengine_v1alpha_serving_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_serving_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaServingConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Makes a recommendation, which requires a contextual user event.
        # @param [String] serving_config
        #   Required. Full resource name of a ServingConfig: `projects/*/locations/global/
        #   collections/*/engines/*/servingConfigs/*`, or `projects/*/locations/global/
        #   collections/*/dataStores/*/servingConfigs/*` One default serving config is
        #   created along with your recommendation engine creation. The engine ID is used
        #   as the ID of the default serving config. For example, for Engine `projects/*/
        #   locations/global/collections/*/engines/my-engine`, you can use `projects/*/
        #   locations/global/collections/*/engines/my-engine/servingConfigs/my-engine` for
        #   your RecommendationService.Recommend requests.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest] google_cloud_discoveryengine_v1alpha_recommend_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recommend_project_location_data_store_serving_config(serving_config, google_cloud_discoveryengine_v1alpha_recommend_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:recommend', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recommend_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecommendResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_data_store_serving_configs(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:search', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a search. Similar to the SearchService.Search method, but a lite
        # version that allows API key for authentication, where OAuth and IAM checks are
        # not required. Only public website search is supported by this method. If data
        # stores and engines not associated with public website search are specified, a `
        # FAILED_PRECONDITION` error is returned. This method can be used for easy
        # onboarding without having to implement an authentication backend. However, it
        # is strongly recommended to use SearchService.Search instead with required
        # OAuth and IAM checks to provide better data security.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/default_data_store/servingConfigs/
        #   default_serving_config`. This field is used to identify the serving
        #   configuration name, set of models used to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest] google_cloud_discoveryengine_v1alpha_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_data_store_serving_config_lite(serving_config, google_cloud_discoveryengine_v1alpha_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:searchLite', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSearchResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Answer query method (streaming). It takes one AnswerQueryRequest and returns
        # multiple AnswerQueryResponse messages in a stream.
        # @param [String] serving_config
        #   Required. The resource name of the Search serving config, such as `projects/*/
        #   locations/global/collections/default_collection/engines/*/servingConfigs/
        #   default_serving_config`, or `projects/*/locations/global/collections/
        #   default_collection/dataStores/*/servingConfigs/default_serving_config`. This
        #   field is used to identify the serving configuration name, set of models used
        #   to make the search.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest] google_cloud_discoveryengine_v1alpha_answer_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_data_store_serving_config_answer(serving_config, google_cloud_discoveryengine_v1alpha_answer_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+servingConfig}:streamAnswer', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_answer_query_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswerQueryResponse
          command.params['servingConfig'] = serving_config unless serving_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Session. If the Session to create already exists, an ALREADY_EXISTS
        # error is returned.
        # @param [String] parent
        #   Required. Full resource name of parent data store. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] google_cloud_discoveryengine_v1alpha_session_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_session(parent, google_cloud_discoveryengine_v1alpha_session_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sessions', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Session. If the Session to delete does not exist, a NOT_FOUND error
        # is returned.
        # @param [String] name
        #   Required. The resource name of the Session to delete. Format: `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store_id`/sessions/`session_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Session.
        # @param [String] name
        #   Required. The resource name of the Session to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store_id`/
        #   sessions/`session_id``
        # @param [Boolean] include_answer_details
        #   Optional. If set to true, the full session including all answer details will
        #   be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_session(name, include_answer_details: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['name'] = name unless name.nil?
          command.query['includeAnswerDetails'] = include_answer_details unless include_answer_details.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Sessions by their parent DataStore.
        # @param [String] parent
        #   Required. The data store resource name. Format: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store_id``
        # @param [String] filter
        #   A comma-separated list of fields to filter by, in EBNF grammar. The supported
        #   fields are: * `user_pseudo_id` * `state` * `display_name` * `starred` * `
        #   is_pinned` * `labels` * `create_time` * `update_time` Examples: * `
        #   user_pseudo_id = some_id` * `display_name = "some_name"` * `starred = true` * `
        #   is_pinned=true AND (NOT labels:hidden)` * `create_time > "1970-01-01T12:00:00Z"
        #   `
        # @param [String] order_by
        #   A comma-separated list of fields to order by, sorted in ascending order. Use "
        #   desc" after a field name for descending. Supported fields: * `update_time` * `
        #   create_time` * `session_name` * `is_pinned` Example: * `update_time desc` * `
        #   create_time` * `is_pinned desc,update_time desc`: list sessions by is_pinned
        #   first, then by update_time.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. If unspecified, defaults to 50. Max
        #   allowed value is 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSessions` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_sessions(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sessions', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Session. Session action type cannot be changed. If the Session to
        # update does not exist, a NOT_FOUND error is returned.
        # @param [String] name
        #   Immutable. Fully qualified name `projects/`project`/locations/global/
        #   collections/`collection`/engines/`engine`/sessions/*`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] google_cloud_discoveryengine_v1alpha_session_object
        # @param [String] update_mask
        #   Indicates which fields in the provided Session to update. The following are
        #   NOT supported: * Session.name If not set or empty, all supported fields are
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_session(name, google_cloud_discoveryengine_v1alpha_session_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_session_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSession
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Answer.
        # @param [String] name
        #   Required. The resource name of the Answer to get. Format: `projects/`project`/
        #   locations/`location`/collections/`collection`/engines/`engine_id`/sessions/`
        #   session_id`/answers/`answer_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_session_answer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaAnswer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downgrade from advanced site search to basic site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1alpha_disable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_project_location_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1alpha_disable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:disableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaDisableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_disable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Upgrade from basic site search to advanced site search.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/`
        #   project`/locations/`location`/dataStores/`data_store_id`/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest] google_cloud_discoveryengine_v1alpha_enable_advanced_site_search_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_project_location_data_store_site_search_engine_advanced_site_search(site_search_engine, google_cloud_discoveryengine_v1alpha_enable_advanced_site_search_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:enableAdvancedSiteSearch', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEnableAdvancedSiteSearchRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_enable_advanced_site_search_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Request on-demand recrawl for a list of URIs.
        # @param [String] site_search_engine
        #   Required. Full resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest] google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recrawl_project_location_data_store_site_search_engine_uris(site_search_engine, google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+siteSearchEngine}:recrawlUris', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRecrawlUrisRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_recrawl_uris_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['siteSearchEngine'] = site_search_engine unless site_search_engine.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Sitemap.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSitemap] google_cloud_discoveryengine_v1alpha_sitemap_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_site_search_engine_sitemap(parent, google_cloud_discoveryengine_v1alpha_sitemap_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sitemaps', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSitemap::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_sitemap_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Sitemap.
        # @param [String] name
        #   Required. Full resource name of Sitemap, such as `projects/`project`/locations/
        #   `location`/collections/`collection`/dataStores/`data_store`/siteSearchEngine/
        #   sitemaps/`sitemap``. If the caller does not have permission to access the
        #   Sitemap, regardless of whether or not it exists, a PERMISSION_DENIED error is
        #   returned. If the requested Sitemap does not exist, a NOT_FOUND error is
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_site_search_engine_sitemap(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetch Sitemaps in a DataStore.
        # @param [String] parent
        #   Required. Parent resource name of the SiteSearchEngine, such as `projects/*/
        #   locations/*/collections/*/dataStores/*/siteSearchEngine`.
        # @param [Array<String>, String] matcher_uris_matcher_uris
        #   The Sitemap uris.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_project_location_data_store_site_search_engine_sitemap(parent, matcher_uris_matcher_uris: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sitemaps:fetch', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaFetchSitemapsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['matcher.urisMatcher.uris'] = matcher_uris_matcher_uris unless matcher_uris_matcher_uris.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates TargetSite in a batch.
        # @param [String] parent
        #   Required. The parent resource shared by all TargetSites being created. `
        #   projects/`project`/locations/`location`/collections/`collection`/dataStores/`
        #   data_store`/siteSearchEngine`. The parent field in the CreateBookRequest
        #   messages must either be empty or match this field.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest] google_cloud_discoveryengine_v1alpha_batch_create_target_sites_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_data_store_site_search_engine_target_site_create(parent, google_cloud_discoveryengine_v1alpha_batch_create_target_sites_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/targetSites:batchCreate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchCreateTargetSitesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_batch_create_target_sites_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetSite.
        # @param [String] parent
        #   Required. Parent resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite] google_cloud_discoveryengine_v1alpha_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_data_store_site_search_engine_target_site(parent, google_cloud_discoveryengine_v1alpha_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/targetSites', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a TargetSite.
        # @param [String] name
        #   Required. Full resource name of TargetSite, such as `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site``. If the caller does not have
        #   permission to access the TargetSite, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested TargetSite does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_site_search_engine_target_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of TargetSites.
        # @param [String] parent
        #   Required. The parent site search engine resource name, such as `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine`. If the caller does not have permission to list TargetSites
        #   under this site search engine, regardless of whether or not this branch exists,
        #   a PERMISSION_DENIED error is returned.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer items than requested. If
        #   unspecified, server will pick an appropriate default. The maximum value is
        #   1000; values above 1000 will be coerced to 1000. If this field is negative, an
        #   INVALID_ARGUMENT error is returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListTargetSites` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListTargetSites` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_data_store_site_search_engine_target_sites(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/targetSites', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListTargetSitesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a TargetSite.
        # @param [String] name
        #   Output only. The fully qualified resource name of the target site. `projects/`
        #   project`/locations/`location`/collections/`collection`/dataStores/`data_store`/
        #   siteSearchEngine/targetSites/`target_site`` The `target_site_id` is system-
        #   generated.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite] google_cloud_discoveryengine_v1alpha_target_site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_site_search_engine_target_site(name, google_cloud_discoveryengine_v1alpha_target_site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaTargetSite::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_target_site_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1alpha_import_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1alpha_import_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/suggestionDenyListEntries:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes all SuggestionDenyListEntry for a DataStore.
        # @param [String] parent
        #   Required. The parent data store resource name for which to import denylist
        #   entries. Follows pattern projects/*/locations/*/collections/*/dataStores/*.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesRequest] google_cloud_discoveryengine_v1alpha_purge_suggestion_deny_list_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_suggestion_deny_list_entry(parent, google_cloud_discoveryengine_v1alpha_purge_suggestion_deny_list_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/suggestionDenyListEntries:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeSuggestionDenyListEntriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_suggestion_deny_list_entries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent resource name. If the collect user event action is
        #   applied in DataStore level, the format is: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store``. If the collect
        #   user event action is applied in Location level, for example, the event with
        #   Document across multiple DataStore, the format is: `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_data_store_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of user events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest] google_cloud_discoveryengine_v1alpha_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes permanently all user events specified by the filter provided.
        # Depending on the number of events specified by the filter, this operation
        # could take hours or days to complete. To test a filter, use the list command
        # first.
        # @param [String] parent
        #   Required. The resource name of the catalog under which the events are created.
        #   The format is `projects/`project`/locations/global/collections/`collection`/
        #   dataStores/`dataStore``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest] google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_purge_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:purge', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent resource name. If the write user event action is applied
        #   in DataStore level, the format is: `projects/`project`/locations/`location`/
        #   collections/`collection`/dataStores/`data_store``. If the write user event
        #   action is applied in Location level, for example, the event with Document
        #   across multiple DataStore, the format is: `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] google_cloud_discoveryengine_v1alpha_user_event_object
        # @param [Boolean] write_async
        #   If set to true, the user event is written asynchronously after validation, and
        #   the API responds without waiting for the write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_data_store_user_event(parent, google_cloud_discoveryengine_v1alpha_user_event_object = nil, write_async: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['writeAsync'] = write_async unless write_async.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a WidgetConfig.
        # @param [String] name
        #   Required. Full WidgetConfig resource name. Format: `projects/`project`/
        #   locations/`location`/collections/`collection_id`/dataStores/`data_store_id`/
        #   widgetConfigs/`widget_config_id``
        # @param [Boolean] accept_cache
        #   Optional. Whether it's acceptable to load the widget config from cache. If set
        #   to true, recent changes on widget configs may take a few minutes to reflect on
        #   the end user's view. It's recommended to set to true for maturely developed
        #   widgets, as it improves widget performance. Set to false to see changes
        #   reflected in prod right away, if your widget is under development.
        # @param [Boolean] get_widget_config_request_option_turn_off_collection_components
        #   Optional. Whether to turn off collection_components in WidgetConfig to reduce
        #   latency and data transmission.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_data_store_widget_config(name, accept_cache: nil, get_widget_config_request_option_turn_off_collection_components: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig
          command.params['name'] = name unless name.nil?
          command.query['acceptCache'] = accept_cache unless accept_cache.nil?
          command.query['getWidgetConfigRequestOption.turnOffCollectionComponents'] = get_widget_config_request_option_turn_off_collection_components unless get_widget_config_request_option_turn_off_collection_components.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a WidgetConfig.
        # @param [String] name
        #   Immutable. The full resource name of the widget config. Format: `projects/`
        #   project`/locations/`location`/collections/`collection_id`/dataStores/`
        #   data_store_id`/widgetConfigs/`widget_config_id``. This field must be a UTF-8
        #   encoded string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] google_cloud_discoveryengine_v1alpha_widget_config_object
        # @param [String] update_mask
        #   Indicates which fields in the provided WidgetConfig to update. The following
        #   are the only supported fields: * WidgetConfig.enable_autocomplete If not set,
        #   all supported fields are updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_data_store_widget_config(name, google_cloud_discoveryengine_v1alpha_widget_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_widget_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaWidgetConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Evaluation. Upon creation, the evaluation will be automatically
        # triggered and begin execution.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation] google_cloud_discoveryengine_v1alpha_evaluation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_evaluation(parent, google_cloud_discoveryengine_v1alpha_evaluation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/evaluations', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_evaluation_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Evaluation.
        # @param [String] name
        #   Required. Full resource name of Evaluation, such as `projects/`project`/
        #   locations/`location`/evaluations/`evaluation``. If the caller does not have
        #   permission to access the Evaluation, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested Evaluation does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaEvaluation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of Evaluations.
        # @param [String] parent
        #   Required. The parent location resource name, such as `projects/`project`/
        #   locations/`location``. If the caller does not have permission to list
        #   Evaluations under this location, regardless of whether or not this location
        #   exists, a `PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of Evaluations to return. If unspecified, defaults to
        #   100. The maximum allowed value is 1000. Values above 1000 will be coerced to
        #   1000. If this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   Optional. A page token ListEvaluationsResponse.next_page_token, received from
        #   a previous EvaluationService.ListEvaluations call. Provide this to retrieve
        #   the subsequent page. When paginating, all other parameters provided to
        #   EvaluationService.ListEvaluations must match the call that provided the page
        #   token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_evaluations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/evaluations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of results for a given a Evaluation.
        # @param [String] evaluation
        #   Required. The evaluation resource name, such as `projects/`project`/locations/`
        #   location`/evaluations/`evaluation``. If the caller does not have permission to
        #   list ListEvaluationResultsResponse.EvaluationResult under this evaluation,
        #   regardless of whether or not this evaluation set exists, a `PERMISSION_DENIED`
        #   error is returned.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of ListEvaluationResultsResponse.EvaluationResult to
        #   return. If unspecified, defaults to 100. The maximum allowed value is 1000.
        #   Values above 1000 will be coerced to 1000. If this field is negative, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   Optional. A page token ListEvaluationResultsResponse.next_page_token, received
        #   from a previous EvaluationService.ListEvaluationResults call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to EvaluationService.ListEvaluationResults must match the call that provided
        #   the page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_evaluation_results(evaluation, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+evaluation}:listResults', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListEvaluationResultsResponse
          command.params['evaluation'] = evaluation unless evaluation.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_evaluation_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a grounding check.
        # @param [String] grounding_config
        #   Required. The resource name of the grounding config, such as `projects/*/
        #   locations/global/groundingConfigs/default_grounding_config`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingRequest] google_cloud_discoveryengine_v1alpha_check_grounding_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_location_grounding_config(grounding_config, google_cloud_discoveryengine_v1alpha_check_grounding_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+groundingConfig}:check', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_check_grounding_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckGroundingResponse
          command.params['groundingConfig'] = grounding_config unless grounding_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Identity Mapping Store.
        # @param [String] parent
        #   Required. The parent collection resource name, such as `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore] google_cloud_discoveryengine_v1alpha_identity_mapping_store_object
        # @param [String] cmek_config_name
        #   Resource name of the CmekConfig to use for protecting this Identity Mapping
        #   Store.
        # @param [Boolean] disable_cmek
        #   Identity Mapping Store without CMEK protections. If a default CmekConfig is
        #   set for the project, setting this field will override the default CmekConfig
        #   as well.
        # @param [String] identity_mapping_store_id
        #   Required. The ID of the Identity Mapping Store to create. The ID must contain
        #   only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The
        #   maximum length is 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_identity_mapping_store(parent, google_cloud_discoveryengine_v1alpha_identity_mapping_store_object = nil, cmek_config_name: nil, disable_cmek: nil, identity_mapping_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/identityMappingStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_identity_mapping_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore
          command.params['parent'] = parent unless parent.nil?
          command.query['cmekConfigName'] = cmek_config_name unless cmek_config_name.nil?
          command.query['disableCmek'] = disable_cmek unless disable_cmek.nil?
          command.query['identityMappingStoreId'] = identity_mapping_store_id unless identity_mapping_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the Identity Mapping Store.
        # @param [String] name
        #   Required. The name of the Identity Mapping Store to delete. Format: `projects/`
        #   project`/locations/`location`/identityMappingStores/`identityMappingStore``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_identity_mapping_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the Identity Mapping Store.
        # @param [String] name
        #   Required. The name of the Identity Mapping Store to get. Format: `projects/`
        #   project`/locations/`location`/identityMappingStores/`identityMappingStore``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_identity_mapping_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaIdentityMappingStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a list of Identity Mapping Entries to an Identity Mapping Store.
        # @param [String] identity_mapping_store
        #   Required. The name of the Identity Mapping Store to import Identity Mapping
        #   Entries to. Format: `projects/`project`/locations/`location`/
        #   identityMappingStores/`identityMappingStore``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequest] google_cloud_discoveryengine_v1alpha_import_identity_mappings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_identity_mapping_store_identity_mappings(identity_mapping_store, google_cloud_discoveryengine_v1alpha_import_identity_mappings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+identityMappingStore}:importIdentityMappings', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportIdentityMappingsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_identity_mappings_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['identityMappingStore'] = identity_mapping_store unless identity_mapping_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Identity Mapping Stores.
        # @param [String] parent
        #   Required. The parent of the Identity Mapping Stores to list. Format: `projects/
        #   `project`/locations/`location``.
        # @param [Fixnum] page_size
        #   Maximum number of IdentityMappingStores to return. If unspecified, defaults to
        #   100. The maximum allowed value is 1000. Values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIdentityMappingStores` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListIdentityMappingStores` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingStoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingStoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_identity_mapping_stores(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/identityMappingStores', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingStoresResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingStoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Identity Mappings in an Identity Mapping Store.
        # @param [String] identity_mapping_store
        #   Required. The name of the Identity Mapping Store to list Identity Mapping
        #   Entries in. Format: `projects/`project`/locations/`location`/
        #   identityMappingStores/`identityMappingStore``
        # @param [Fixnum] page_size
        #   Maximum number of IdentityMappings to return. If unspecified, defaults to 2000.
        #   The maximum allowed value is 10000. Values above 10000 will be coerced to
        #   10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIdentityMappings` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListIdentityMappings` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_identity_mapping_store_identity_mappings(identity_mapping_store, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+identityMappingStore}:listIdentityMappings', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListIdentityMappingsResponse
          command.params['identityMappingStore'] = identity_mapping_store unless identity_mapping_store.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Purges specified or all Identity Mapping Entries from an Identity Mapping
        # Store.
        # @param [String] identity_mapping_store
        #   Required. The name of the Identity Mapping Store to purge Identity Mapping
        #   Entries from. Format: `projects/`project`/locations/`location`/
        #   identityMappingStores/`identityMappingStore``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequest] google_cloud_discoveryengine_v1alpha_purge_identity_mappings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def purge_project_location_identity_mapping_store_identity_mappings(identity_mapping_store, google_cloud_discoveryengine_v1alpha_purge_identity_mappings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+identityMappingStore}:purgeIdentityMappings', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaPurgeIdentityMappingsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_purge_identity_mappings_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['identityMappingStore'] = identity_mapping_store unless identity_mapping_store.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_identity_mapping_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_identity_mapping_store_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a LicenseConfig
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig] google_cloud_discoveryengine_v1alpha_license_config_object
        # @param [String] license_config_id
        #   Optional. The ID to use for the LicenseConfig, which will become the final
        #   component of the LicenseConfig's resource name. We are using the tier (product
        #   edition) name as the license config id such as `search` or `
        #   search_and_assistant`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_license_config(parent, google_cloud_discoveryengine_v1alpha_license_config_object = nil, license_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/licenseConfigs', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_license_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['licenseConfigId'] = license_config_id unless license_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a LicenseConfig.
        # @param [String] name
        #   Required. Full resource name of LicenseConfig, such as `projects/`project`/
        #   locations/`location`/licenseConfigs/*`. If the caller does not have permission
        #   to access the LicenseConfig, regardless of whether or not it exists, a
        #   PERMISSION_DENIED error is returned. If the requested LicenseConfig does not
        #   exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_license_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the LicenseConfig
        # @param [String] name
        #   Immutable. Identifier. The fully qualified resource name of the license config.
        #   Format: `projects/`project`/locations/`location`/licenseConfigs/`
        #   license_config``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig] google_cloud_discoveryengine_v1alpha_license_config_object
        # @param [String] update_mask
        #   Optional. Indicates which fields in the provided LicenseConfig to update. If
        #   an unsupported or unknown field is provided, an INVALID_ARGUMENT error is
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_license_config(name, google_cloud_discoveryengine_v1alpha_license_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_license_config_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaLicenseConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch deletes Notebooks.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchDeleteNotebooksRequest] google_cloud_notebooklm_v1alpha_batch_delete_notebooks_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_notebook_delete(parent, google_cloud_notebooklm_v1alpha_batch_delete_notebooks_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/notebooks:batchDelete', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchDeleteNotebooksRequest::Representation
          command.request_object = google_cloud_notebooklm_v1alpha_batch_delete_notebooks_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a notebook.
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook] google_cloud_notebooklm_v1alpha_notebook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_notebook(parent, google_cloud_notebooklm_v1alpha_notebook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/notebooks', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook::Representation
          command.request_object = google_cloud_notebooklm_v1alpha_notebook_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a notebook.
        # @param [String] name
        #   Required. Full resource name of Notebook, such as `projects/`project`/
        #   locations/`location`/notebooks/`notebook_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_notebook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaNotebook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the notebooks ordered by last view time.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of Notebooks to return. If unspecified, defaults to "
        #   500". The maximum allowed value is "500". If this field is negative, will use
        #   the default value.
        # @param [String] page_token
        #   Optional. The page token, provide this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaListRecentlyViewedNotebooksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaListRecentlyViewedNotebooksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_notebook_recently_viewed(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/notebooks:listRecentlyViewed', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaListRecentlyViewedNotebooksResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaListRecentlyViewedNotebooksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Shares a notebook to other accounts.
        # @param [String] name
        #   Required. Full resource name of Notebook, such as `projects/`project`/
        #   locations/`location`/notebooks/`notebook_id``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaShareNotebookRequest] google_cloud_notebooklm_v1alpha_share_notebook_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaShareNotebookResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaShareNotebookResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def share_project_location_notebook(name, google_cloud_notebooklm_v1alpha_share_notebook_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:share', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaShareNotebookRequest::Representation
          command.request_object = google_cloud_notebooklm_v1alpha_share_notebook_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaShareNotebookResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaShareNotebookResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a new audio overview.
        # @param [String] parent
        #   Required. The parent resource where this notebook will be created. Format:
        #   projects/`project`/locations/`location`/notebooks/`notebook`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCreateAudioOverviewRequest] google_cloud_notebooklm_v1alpha_create_audio_overview_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCreateAudioOverviewResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCreateAudioOverviewResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_notebook_audio_overview(parent, google_cloud_notebooklm_v1alpha_create_audio_overview_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/audioOverviews', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCreateAudioOverviewRequest::Representation
          command.request_object = google_cloud_notebooklm_v1alpha_create_audio_overview_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCreateAudioOverviewResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaCreateAudioOverviewResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an audio overview.
        # @param [String] name
        #   Required. The full resource name of the AudioOverview, such as `projects/`
        #   project`/locations/`location`/notebooks/`notebook`/audioOverviews/`
        #   audio_overview_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_notebook_audio_overview(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a list of Sources.
        # @param [String] parent
        #   Required. The parent resource where the sources will be created. Format:
        #   projects/`project`/locations/`location`/notebooks/`notebook`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchCreateSourcesRequest] google_cloud_notebooklm_v1alpha_batch_create_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchCreateSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchCreateSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_notebook_source_create(parent, google_cloud_notebooklm_v1alpha_batch_create_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sources:batchCreate', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchCreateSourcesRequest::Representation
          command.request_object = google_cloud_notebooklm_v1alpha_batch_create_sources_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchCreateSourcesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchCreateSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes multiple sources
        # @param [String] parent
        #   Required. The parent resource where the sources will be deleted. Format:
        #   projects/`project`/locations/`location`/notebooks/`notebook`
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchDeleteSourcesRequest] google_cloud_notebooklm_v1alpha_batch_delete_sources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_notebook_source_delete(parent, google_cloud_notebooklm_v1alpha_batch_delete_sources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sources:batchDelete', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaBatchDeleteSourcesRequest::Representation
          command.request_object = google_cloud_notebooklm_v1alpha_batch_delete_sources_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Source.
        # @param [String] name
        #   Required. The resource name for source Format: projects/`project`/locations/`
        #   location`/notebooks/`notebook`/sources/`source`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_notebook_source(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudNotebooklmV1alphaSource
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_podcast_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Ranks a list of text records based on the given input query.
        # @param [String] ranking_config
        #   Required. The resource name of the rank service config, such as `projects/`
        #   project_num`/locations/`location`/rankingConfigs/default_ranking_config`.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankRequest] google_cloud_discoveryengine_v1alpha_rank_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rank_project_location_ranking_config(ranking_config, google_cloud_discoveryengine_v1alpha_rank_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+rankingConfig}:rank', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_rank_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaRankResponse
          command.params['rankingConfig'] = ranking_config unless ranking_config.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Check a particular requirement.
        # @param [String] location
        #   Required. Full resource name of the location. Format `projects/`
        #   project_number_or_id`/locations/`location``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementRequest] google_cloud_discoveryengine_v1alpha_check_requirement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_project_location_requirement_requirement(location, google_cloud_discoveryengine_v1alpha_check_requirement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+location}/requirements:checkRequirement', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_check_requirement_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaCheckRequirementResponse
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a SampleQuerySet
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet] google_cloud_discoveryengine_v1alpha_sample_query_set_object
        # @param [String] sample_query_set_id
        #   Required. The ID to use for the SampleQuerySet, which will become the final
        #   component of the SampleQuerySet.name. If the caller does not have permission
        #   to create the SampleQuerySet, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. This field must be unique among all
        #   SampleQuerySets with the same parent. Otherwise, an `ALREADY_EXISTS` error is
        #   returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/
        #   rfc1034) standard with a length limit of 63 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_sample_query_set(parent, google_cloud_discoveryengine_v1alpha_sample_query_set_object = nil, sample_query_set_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sampleQuerySets', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_sample_query_set_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet
          command.params['parent'] = parent unless parent.nil?
          command.query['sampleQuerySetId'] = sample_query_set_id unless sample_query_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a SampleQuerySet.
        # @param [String] name
        #   Required. Full resource name of SampleQuerySet, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set``. If the caller does
        #   not have permission to delete the SampleQuerySet, regardless of whether or not
        #   it exists, a `PERMISSION_DENIED` error is returned. If the SampleQuerySet to
        #   delete does not exist, a `NOT_FOUND` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_sample_query_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SampleQuerySet.
        # @param [String] name
        #   Required. Full resource name of SampleQuerySet, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set``. If the caller does
        #   not have permission to access the SampleQuerySet, regardless of whether or not
        #   it exists, a PERMISSION_DENIED error is returned. If the requested
        #   SampleQuerySet does not exist, a NOT_FOUND error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sample_query_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of SampleQuerySets.
        # @param [String] parent
        #   Required. The parent location resource name, such as `projects/`project`/
        #   locations/`location``. If the caller does not have permission to list
        #   SampleQuerySets under this location, regardless of whether or not this
        #   location exists, a `PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of SampleQuerySets to return. If unspecified, defaults to 100.
        #   The maximum allowed value is 1000. Values above 1000 will be coerced to 1000.
        #   If this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListSampleQuerySetsResponse.next_page_token, received from a
        #   previous SampleQuerySetService.ListSampleQuerySets call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to SampleQuerySetService.ListSampleQuerySets must match the call that provided
        #   the page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQuerySetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQuerySetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sample_query_sets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sampleQuerySets', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQuerySetsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQuerySetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a SampleQuerySet.
        # @param [String] name
        #   Identifier. The full resource name of the SampleQuerySet, in the format of `
        #   projects/`project`/locations/`location`/sampleQuerySets/`sample_query_set``.
        #   This field must be a UTF-8 encoded string with a length limit of 1024
        #   characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet] google_cloud_discoveryengine_v1alpha_sample_query_set_object
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'sample query set' to update.
        #   If not set, will by default update all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_sample_query_set(name, google_cloud_discoveryengine_v1alpha_sample_query_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_sample_query_set_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuerySet
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sample_query_set_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a SampleQuery
        # @param [String] parent
        #   Required. The parent resource name, such as `projects/`project`/locations/`
        #   location`/sampleQuerySets/`sampleQuerySet``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery] google_cloud_discoveryengine_v1alpha_sample_query_object
        # @param [String] sample_query_id
        #   Required. The ID to use for the SampleQuery, which will become the final
        #   component of the SampleQuery.name. If the caller does not have permission to
        #   create the SampleQuery, regardless of whether or not it exists, a `
        #   PERMISSION_DENIED` error is returned. This field must be unique among all
        #   SampleQuerys with the same parent. Otherwise, an `ALREADY_EXISTS` error is
        #   returned. This field must conform to [RFC-1034](https://tools.ietf.org/html/
        #   rfc1034) standard with a length limit of 63 characters. Otherwise, an `
        #   INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_sample_query_set_sample_query(parent, google_cloud_discoveryengine_v1alpha_sample_query_object = nil, sample_query_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sampleQueries', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_sample_query_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['sampleQueryId'] = sample_query_id unless sample_query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a SampleQuery.
        # @param [String] name
        #   Required. Full resource name of SampleQuery, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set`/sampleQueries/`
        #   sample_query``. If the caller does not have permission to delete the
        #   SampleQuery, regardless of whether or not it exists, a `PERMISSION_DENIED`
        #   error is returned. If the SampleQuery to delete does not exist, a `NOT_FOUND`
        #   error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_sample_query_set_sample_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a SampleQuery.
        # @param [String] name
        #   Required. Full resource name of SampleQuery, such as `projects/`project`/
        #   locations/`location`/sampleQuerySets/`sample_query_set`/sampleQueries/`
        #   sample_query``. If the caller does not have permission to access the
        #   SampleQuery, regardless of whether or not it exists, a PERMISSION_DENIED error
        #   is returned. If the requested SampleQuery does not exist, a NOT_FOUND error is
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_sample_query_set_sample_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of multiple SampleQuerys. Sample queries that already exist may be
        # deleted. Note: It is possible for a subset of the SampleQuerys to be
        # successfully imported.
        # @param [String] parent
        #   Required. The parent sample query set resource name, such as `projects/`
        #   project`/locations/`location`/sampleQuerySets/`sampleQuerySet``. If the caller
        #   does not have permission to list SampleQuerys under this sample query set,
        #   regardless of whether or not this sample query set exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequest] google_cloud_discoveryengine_v1alpha_import_sample_queries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_sample_query_set_sample_query(parent, google_cloud_discoveryengine_v1alpha_import_sample_queries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sampleQueries:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportSampleQueriesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_sample_queries_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of SampleQuerys.
        # @param [String] parent
        #   Required. The parent sample query set resource name, such as `projects/`
        #   project`/locations/`location`/sampleQuerySets/`sampleQuerySet``. If the caller
        #   does not have permission to list SampleQuerys under this sample query set,
        #   regardless of whether or not this sample query set exists, a `
        #   PERMISSION_DENIED` error is returned.
        # @param [Fixnum] page_size
        #   Maximum number of SampleQuerys to return. If unspecified, defaults to 100. The
        #   maximum allowed value is 1000. Values above 1000 will be coerced to 1000. If
        #   this field is negative, an `INVALID_ARGUMENT` error is returned.
        # @param [String] page_token
        #   A page token ListSampleQueriesResponse.next_page_token, received from a
        #   previous SampleQueryService.ListSampleQueries call. Provide this to retrieve
        #   the subsequent page. When paginating, all other parameters provided to
        #   SampleQueryService.ListSampleQueries must match the call that provided the
        #   page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_sample_query_set_sample_queries(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sampleQueries', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQueriesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListSampleQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a SampleQuery.
        # @param [String] name
        #   Identifier. The full resource name of the sample query, in the format of `
        #   projects/`project`/locations/`location`/sampleQuerySets/`sample_query_set`/
        #   sampleQueries/`sample_query``. This field must be a UTF-8 encoded string with
        #   a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery] google_cloud_discoveryengine_v1alpha_sample_query_object
        # @param [String] update_mask
        #   Indicates which fields in the provided imported 'simple query' to update. If
        #   not set, will by default update all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_sample_query_set_sample_query(name, google_cloud_discoveryengine_v1alpha_sample_query_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_sample_query_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaSampleQuery
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event from the browser. This uses a GET request to due to
        # browser restriction of POST-ing to a third-party domain. This method is used
        # only by the Discovery Engine API JavaScript pixel and Google Tag Manager.
        # Users should not call this method directly.
        # @param [String] parent
        #   Required. The parent resource name. If the collect user event action is
        #   applied in DataStore level, the format is: `projects/`project`/locations/`
        #   location`/collections/`collection`/dataStores/`data_store``. If the collect
        #   user event action is applied in Location level, for example, the event with
        #   Document across multiple DataStore, the format is: `projects/`project`/
        #   locations/`location``.
        # @param [Fixnum] ets
        #   The event timestamp in milliseconds. This prevents browser caching of
        #   otherwise identical get requests. The name is abbreviated to reduce the
        #   payload bytes.
        # @param [String] uri
        #   The URL including cgi-parameters but excluding the hash fragment with a length
        #   limit of 5,000 characters. This is often more useful than the referer URL,
        #   because many browsers only send the domain for third-party requests.
        # @param [String] user_event
        #   Required. URL encoded UserEvent proto with a length limit of 2,000,000
        #   characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def collect_project_location_user_event(parent, ets: nil, uri: nil, user_event: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userEvents:collect', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.query['ets'] = ets unless ets.nil?
          command.query['uri'] = uri unless uri.nil?
          command.query['userEvent'] = user_event unless user_event.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bulk import of user events. Request processing might be synchronous. Events
        # that already exist are skipped. Use this method for backfilling historical
        # user events. Operation.response is of type ImportResponse. Note that it is
        # possible for a subset of the items to be successfully inserted. Operation.
        # metadata is of type ImportMetadata.
        # @param [String] parent
        #   Required. Parent DataStore resource name, of the form `projects/`project`/
        #   locations/`location`/collections/`collection`/dataStores/`data_store``
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest] google_cloud_discoveryengine_v1alpha_import_user_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_location_user_event(parent, google_cloud_discoveryengine_v1alpha_import_user_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:import', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaImportUserEventsRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_import_user_events_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes a single user event.
        # @param [String] parent
        #   Required. The parent resource name. If the write user event action is applied
        #   in DataStore level, the format is: `projects/`project`/locations/`location`/
        #   collections/`collection`/dataStores/`data_store``. If the write user event
        #   action is applied in Location level, for example, the event with Document
        #   across multiple DataStore, the format is: `projects/`project`/locations/`
        #   location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] google_cloud_discoveryengine_v1alpha_user_event_object
        # @param [Boolean] write_async
        #   If set to true, the user event is written asynchronously after validation, and
        #   the API responds without waiting for the write.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_project_location_user_event(parent, google_cloud_discoveryengine_v1alpha_user_event_object = nil, write_async: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userEvents:write', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_user_event_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['writeAsync'] = write_async unless write_async.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the User License. This method is used for batch assign/unassign
        # licenses to users.
        # @param [String] parent
        #   Required. The parent UserStore resource name, format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequest] google_cloud_discoveryengine_v1alpha_batch_update_user_licenses_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_user_store_update_user_licenses(parent, google_cloud_discoveryengine_v1alpha_batch_update_user_licenses_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}:batchUpdateUserLicenses', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaBatchUpdateUserLicensesRequest::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_batch_update_user_licenses_request_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new User Store.
        # @param [String] parent
        #   Required. The parent collection resource name, such as `projects/`project`/
        #   locations/`location``.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore] google_cloud_discoveryengine_v1alpha_user_store_object
        # @param [String] user_store_id
        #   Required. The ID of the User Store to create. The ID must contain only letters
        #   (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum
        #   length is 63 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_user_store(parent, google_cloud_discoveryengine_v1alpha_user_store_object = nil, user_store_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userStores', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_user_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore
          command.params['parent'] = parent unless parent.nil?
          command.query['userStoreId'] = user_store_id unless user_store_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the User Store.
        # @param [String] name
        #   Required. The name of the User Store to delete. Format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_user_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the User Store.
        # @param [String] name
        #   Required. The name of the User Store to get. Format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_user_store(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the User Store.
        # @param [String] name
        #   Immutable. The full resource name of the User Store, in the format of `
        #   projects/`project`/locations/`location`/userStores/`user_store``. This field
        #   must be a UTF-8 encoded string with a length limit of 1024 characters.
        # @param [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore] google_cloud_discoveryengine_v1alpha_user_store_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_user_store(name, google_cloud_discoveryengine_v1alpha_user_store_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore::Representation
          command.request_object = google_cloud_discoveryengine_v1alpha_user_store_object
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaUserStore
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the LicenseConfigUsageStatss associated with the project.
        # @param [String] parent
        #   Required. The parent branch resource name, such as `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListLicenseConfigsUsageStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListLicenseConfigsUsageStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_user_store_license_configs_usage_stats(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/licenseConfigsUsageStats', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListLicenseConfigsUsageStatsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListLicenseConfigsUsageStatsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_user_store_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_user_store_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the User Licenses.
        # @param [String] parent
        #   Required. The parent UserStore resource name, format: `projects/`project`/
        #   locations/`location`/userStores/`user_store_id``.
        # @param [String] order_by
        #   Optional. The order in which the UserLicenses are listed. The value must be a
        #   comma-separated list of fields. Default sorting order is ascending. To specify
        #   descending order for a field, append a " desc" suffix. Redundant space
        #   characters in the syntax are insignificant. Supported fields: * `
        #   license_assignment_state` * `user_principal` * `user_profile` * `
        #   last_login_date` * `update_time` If not set, the default ordering is by `
        #   user_principal`. Examples: * `user_principal desc` to order by `user_principal`
        #   in descending order. * `license_assignment_state` to order by `
        #   license_assignment_state` in ascending order. * `last_login_date desc` to
        #   order by `last_login_date` in descending order. * `update_time desc` to order
        #   by `update_time` in descending order. * `last_login_date desc, user_principal`
        #   to order by `last_login_date` in descending order and then by `user_principal`
        #   in ascending order.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer items than requested.
        #   If unspecified, defaults to 10. The maximum value is 50; values above 50 will
        #   be coerced to 50. If this field is negative, an INVALID_ARGUMENT error is
        #   returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUserLicenses` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListUserLicenses` must match the call that provided
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
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListUserLicensesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListUserLicensesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_user_store_user_licenses(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userLicenses', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListUserLicensesResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleCloudDiscoveryengineV1alphaListUserLicensesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}/operations', options)
          command.response_representation = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DiscoveryengineV1alpha::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
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
