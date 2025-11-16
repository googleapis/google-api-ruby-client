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
    module ChromemanagementV1
      # Chrome Management API
      #
      # The Chrome Management API is a suite of services that allows Chrome
      #  administrators to view, manage and gain insights on their Chrome OS and Chrome
      #  Browser devices.
      #
      # @example
      #    require 'google/apis/chromemanagement_v1'
      #
      #    Chromemanagement = Google::Apis::ChromemanagementV1 # Alias the module
      #    service = Chromemanagement::ChromeManagementService.new
      #
      # @see https://developers.google.com/chrome/management/
      class ChromeManagementService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://chromemanagement.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-chromemanagement_v1',
                client_version: Google::Apis::ChromemanagementV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Generate summary of app installation requests.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] order_by
        #   Field used to order results. Supported fields: * request_count *
        #   latest_request_time
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 50, anything
        #   above will be coerced to 50.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_app_chrome_app_requests(customer, order_by: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/apps:countChromeAppRequests', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeAppRequestsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of devices that have requested to install an extension.
        # @param [String] customer
        #   Required. The customer ID or "my_customer" prefixed with "customers/".
        # @param [String] extension_id
        #   Required. The extension for which we want to find requesting devices.
        # @param [String] org_unit_id
        #   The ID of the organizational unit. Only consider devices that directly belong
        #   to this org unit, i.e. sub-orgunits are not counted. If omitted, all data will
        #   be returned.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. Maximum and default are 50. Any
        #   page size larger than 50 will be coerced to 50.
        # @param [String] page_token
        #   Optional. Token to specify the page of the request to be returned. Token
        #   expires after 1 day.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_customer_app_devices_requesting_extension(customer, extension_id: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/apps:fetchDevicesRequestingExtension', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchDevicesRequestingExtensionResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['extensionId'] = extension_id unless extension_id.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of users that have requested to install an extension.
        # @param [String] customer
        #   Required. The customer ID or "my_customer" prefixed with "customers/".
        # @param [String] extension_id
        #   Required. The extension for which we want to find the requesting users.
        # @param [String] org_unit_id
        #   The ID of the organizational unit. Only consider devices that directly belong
        #   to this org unit, i.e. sub-orgunits are not counted. If omitted, all data will
        #   be returned.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. Maximum and default are 50. Any
        #   page size larger than 50 will be coerced to 50.
        # @param [String] page_token
        #   Optional. Token to specify the page of the request to be returned. Token
        #   expires after 1 day.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchUsersRequestingExtensionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchUsersRequestingExtensionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_customer_app_users_requesting_extension(customer, extension_id: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/apps:fetchUsersRequestingExtension', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchUsersRequestingExtensionResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FetchUsersRequestingExtensionResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['extensionId'] = extension_id unless extension_id.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific app for a customer by its resource name.
        # @param [String] name
        #   Required. The app for which details are being queried. Examples: "customers/
        #   my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2" for the Save
        #   to Google Drive Chrome extension version 2.1.2, "customers/my_customer/apps/
        #   android/com.google.android.apps.docs" for the Google Drive Android app's
        #   latest version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_app_android(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific app for a customer by its resource name.
        # @param [String] name
        #   Required. The app for which details are being queried. Examples: "customers/
        #   my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2" for the Save
        #   to Google Drive Chrome extension version 2.1.2, "customers/my_customer/apps/
        #   android/com.google.android.apps.docs" for the Google Drive Android app's
        #   latest version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_app_chrome(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a specific app for a customer by its resource name.
        # @param [String] name
        #   Required. The app for which details are being queried. Examples: "customers/
        #   my_customer/apps/chrome/gmbmikajjgmnabiglmofipeabaddhgne@2.1.2" for the Save
        #   to Google Drive Chrome extension version 2.1.2, "customers/my_customer/apps/
        #   android/com.google.android.apps.docs" for the Google Drive Android app's
        #   latest version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_app_web(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1AppDetails
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Claims a certificate provisioning process. For each certificate provisioning
        # process, this operation can succeed only for one `caller_instance_id`.
        # @param [String] name
        #   Required. Resource name of the `CertificateProvisioningProcess` to claim. The
        #   name pattern is given as `customers/`customer`/
        #   certificateProvisioningProcesses/`certificate_provisioning_process`` with ``
        #   customer`` being the obfuscated customer id and ``
        #   certificate_provisioning_process`` being the certificate provisioning process
        #   id.
        # @param [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest] google_chrome_management_versions_v1_claim_certificate_provisioning_process_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def claim_customer_certificate_provisioning_process(name, google_chrome_management_versions_v1_claim_certificate_provisioning_process_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:claim', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessRequest::Representation
          command.request_object = google_chrome_management_versions_v1_claim_certificate_provisioning_process_request_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ClaimCertificateProvisioningProcessResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a certificate provisioning process.
        # @param [String] name
        #   Required. Resource name of the `CertificateProvisioningProcess` to return. The
        #   name pattern is given as `customers/`customer`/
        #   certificateProvisioningProcesses/`certificate_provisioning_process`` with ``
        #   customer`` being the obfuscated customer id and ``
        #   certificate_provisioning_process`` being the certificate provisioning process
        #   id.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1CertificateProvisioningProcess] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1CertificateProvisioningProcess]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_certificate_provisioning_process(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1CertificateProvisioningProcess::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1CertificateProvisioningProcess
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks a certificate provisioning process as failed.
        # @param [String] name
        #   Required. Resource name of the `CertificateProvisioningProcess` to return. The
        #   name pattern is given as `customers/`customer`/
        #   certificateProvisioningProcesses/`certificate_provisioning_process`` with ``
        #   customer`` being the obfuscated customer id and ``
        #   certificate_provisioning_process`` being the certificate provisioning process
        #   id.
        # @param [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SetFailureRequest] google_chrome_management_versions_v1_set_failure_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SetFailureResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SetFailureResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_customer_certificate_provisioning_process_failure(name, google_chrome_management_versions_v1_set_failure_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setFailure', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SetFailureRequest::Representation
          command.request_object = google_chrome_management_versions_v1_set_failure_request_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SetFailureResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SetFailureResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests the client that initiated a certificate provisioning process to sign
        # data. This should only be called after `ClaimCertificateProvisioningProcess`
        # has been successfully executed.
        # @param [String] name
        #   Required. Resource name of the `CertificateProvisioningProcess` to return. The
        #   name pattern is given as `customers/`customer`/
        #   certificateProvisioningProcesses/`certificate_provisioning_process`` with ``
        #   customer`` being the obfuscated customer id and ``
        #   certificate_provisioning_process`` being the certificate provisioning process
        #   id.
        # @param [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SignDataRequest] google_chrome_management_versions_v1_sign_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_customer_certificate_provisioning_process_data(name, google_chrome_management_versions_v1_sign_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:signData', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1SignDataRequest::Representation
          command.request_object = google_chrome_management_versions_v1_sign_data_request_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a successfully issued certificate for a certificate provisioning
        # process.
        # @param [String] name
        #   Required. Resource name of the `CertificateProvisioningProcess` to return. The
        #   name pattern is given as `customers/`customer`/
        #   certificateProvisioningProcesses/`certificate_provisioning_process`` with ``
        #   customer`` being the obfuscated customer id and ``
        #   certificate_provisioning_process`` being the certificate provisioning process
        #   id.
        # @param [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1UploadCertificateRequest] google_chrome_management_versions_v1_upload_certificate_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1UploadCertificateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1UploadCertificateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_customer_certificate_provisioning_process_certificate(name, google_chrome_management_versions_v1_upload_certificate_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:uploadCertificate', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1UploadCertificateRequest::Representation
          command.request_object = google_chrome_management_versions_v1_upload_certificate_request_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1UploadCertificateResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1UploadCertificateResponse
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
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_certificate_provisioning_process_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the data collected from a Chrome browser profile.
        # @param [String] name
        #   Required. Format: customers/`customer_id`/profiles/`profile_permanent_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_customer_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Chrome browser profile with customer ID and profile permanent ID.
        # @param [String] name
        #   Required. Format: customers/`customer_id`/profiles/`profile_permanent_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfile::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Chrome browser profiles of a customer based on the given search and
        # sorting criteria.
        # @param [String] parent
        #   Required. Format: customers/`customer_id`
        # @param [String] filter
        #   Optional. The filter used to filter profiles. The following fields can be used
        #   in the filter: - profile_id - display_name - user_email - last_activity_time -
        #   last_policy_sync_time - last_status_report_time - first_enrollment_time -
        #   os_platform_type - os_version - browser_version - browser_channel -
        #   policy_count - extension_count - identity_provider - affiliation_state -
        #   os_platform_version - ouId Any of the above fields can be used to specify a
        #   filter, and filtering by multiple fields is supported with AND operator.
        #   String type fields and enum type fields support '=' and '!=' operators. The
        #   integer type and the timestamp type fields support '=', '!=', '<', '>', '<='
        #   and '>=' operators. Timestamps expect an RFC-3339 formatted string (e.g. 2012-
        #   04-21T11:30:00-04:00). Wildcard '*' can be used with a string type field
        #   filter. In addition, string literal filtering is also supported, for example, '
        #   ABC' as a filter maps to a filter that checks if any of the filterable string
        #   type fields contains 'ABC'. Organization unit number can be used as a
        #   filtering criteria here by specifying 'ouId = $`your_org_unit_id`', please
        #   note that only single OU ID matching is supported.
        # @param [String] order_by
        #   Optional. The fields used to specify the ordering of the results. The
        #   supported fields are: - profile_id - display_name - user_email -
        #   last_activity_time - last_policy_sync_time - last_status_report_time -
        #   first_enrollment_time - os_platform_type - os_version - browser_version -
        #   browser_channel - policy_count - extension_count - identity_provider -
        #   affiliation_state - os_platform_version By default, sorting is in ascending
        #   order, to specify descending order for a field, a suffix " desc" should be
        #   added to the field name. The default ordering is the descending order of
        #   last_status_report_time.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of profiles to return. The default page size is
        #   100 if page_size is unspecified, and the maximum page size allowed is 200.
        # @param [String] page_token
        #   Optional. The page token used to retrieve a specific page of the listing
        #   request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_profiles(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/profiles', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Chrome browser profile remote command.
        # @param [String] parent
        #   Required. Format: customers/`customer_id`/profiles/`profile_permanent_id`
        # @param [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand] google_chrome_management_versions_v1_chrome_browser_profile_command_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_profile_command(parent, google_chrome_management_versions_v1_chrome_browser_profile_command_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/commands', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand::Representation
          command.request_object = google_chrome_management_versions_v1_chrome_browser_profile_command_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Chrome browser profile remote command.
        # @param [String] name
        #   Required. Format: customers/`customer_id`/profiles/`profile_permanent_id`/
        #   commands/`command_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_profile_command(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ChromeBrowserProfileCommand
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists remote commands of a Chrome browser profile.
        # @param [String] parent
        #   Required. Format: customers/`customer_id`/profiles/`profile_permanent_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of commands to return. The default page size is
        #   100 if page_size is unspecified, and the maximum page size allowed is 100.
        # @param [String] page_token
        #   Optional. The page token used to retrieve a specific page of the listing
        #   request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_profile_commands(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/commands', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1ListChromeBrowserProfileCommandsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a count of active devices per set time frames.
        # @param [String] customer
        #   Required. Obfuscated customer ID prefixed with "customers/C" or "customers/
        #   my_customer".
        # @param [Fixnum] date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] date_year
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
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountActiveDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountActiveDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_active_devices(customer, date_day: nil, date_month: nil, date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countActiveDevices', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountActiveDevicesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountActiveDevicesResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['date.day'] = date_day unless date_day.nil?
          command.query['date.month'] = date_month unless date_month.nil?
          command.query['date.year'] = date_year unless date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Count of Chrome Browsers that have been recently enrolled, have new policy to
        # be synced, or have no recent activity.
        # @param [String] customer
        #   Required. The customer ID or "my_customer" prefixed with "customers/".
        # @param [String] org_unit_id
        #   Optional. The ID of the organizational unit. If omitted, all data will be
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
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_browsers_needing_attention(customer, org_unit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeBrowsersNeedingAttention', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeBrowsersNeedingAttentionResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a count of Chrome crash events.
        # @param [String] customer
        #   Customer ID.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Supported
        #   filter fields: * major_browser_version * minor_browser_version *
        #   browser_channel * device_platform * past_number_days Example: `
        #   major_browser_version = 'M115' AND past_number_days = '28'`.
        # @param [String] order_by
        #   Field used to order results. Supported order by fields: * browser_version *
        #   count * date
        # @param [String] org_unit_id
        #   If specified, only count the number of crash events of the devices in this
        #   organizational unit.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeCrashEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeCrashEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_crash_events(customer, filter: nil, order_by: nil, org_unit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeCrashEvents', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeCrashEventsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeCrashEventsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of the number of devices expiring in each month of the
        # selected time frame. Devices are grouped by auto update expiration date and
        # model. Further information can be found [here](https://support.google.com/
        # chrome/a/answer/10564947).
        # @param [String] customer
        #   Required. The customer ID or "my_customer" prefixed with "customers/".
        # @param [String] max_aue_date
        #   Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If
        #   included returns all devices that have already expired and devices with auto
        #   expiration date equal to or earlier than the maximum date.
        # @param [String] min_aue_date
        #   Optional. Maximum expiration date in format yyyy-mm-dd in UTC timezone. If
        #   included returns all devices that have already expired and devices with auto
        #   expiration date equal to or later than the minimum date.
        # @param [String] org_unit_id
        #   Optional. The organizational unit ID, if omitted, will return data for all
        #   organizational units.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_devices_reaching_auto_expiration_date(customer, max_aue_date: nil, min_aue_date: nil, org_unit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeDevicesReachingAutoExpirationDate', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesReachingAutoExpirationDateResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['maxAueDate'] = max_aue_date unless max_aue_date.nil?
          command.query['minAueDate'] = min_aue_date unless min_aue_date.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Counts of ChromeOS devices that have not synced policies or have lacked user
        # activity in the past 28 days, are out of date, or are not complaint. Further
        # information can be found here https://support.google.com/chrome/a/answer/
        # 10564947
        # @param [String] customer
        #   Required. The customer ID or "my_customer" prefixed with "customers/".
        # @param [String] org_unit_id
        #   Optional. The ID of the organizational unit. If omitted, all data will be
        #   returned.
        # @param [String] read_mask
        #   Required. Mask of the fields that should be populated in the returned report.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_devices_that_need_attention(customer, org_unit_id: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeDevicesThatNeedAttention', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeDevicesThatNeedAttentionResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Counts of devices with a specific hardware specification from the requested
        # hardware type (for example model name, processor type). Further information
        # can be found here https://support.google.com/chrome/a/answer/10564947
        # @param [String] customer
        #   Required. The customer ID or "my_customer".
        # @param [String] org_unit_id
        #   Optional. The ID of the organizational unit. If omitted, all data will be
        #   returned.
        # @param [String] read_mask
        #   Required. Mask of the fields that should be populated in the returned report.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_hardware_fleet_devices(customer, org_unit_id: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeHardwareFleetDevices', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeHardwareFleetDevicesResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of installed Chrome versions.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Supported filter fields: *
        #   last_active_date
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_chrome_versions(customer, filter: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countChromeVersions', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountChromeVersionsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a count of devices per boot type.
        # @param [String] customer
        #   Required. Obfuscated customer ID prefixed with "customers/C" or "customers/
        #   my_customer".
        # @param [Fixnum] date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] date_year
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
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerBootTypeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerBootTypeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_devices_per_boot_type(customer, date_day: nil, date_month: nil, date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countDevicesPerBootType', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerBootTypeResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerBootTypeResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['date.day'] = date_day unless date_day.nil?
          command.query['date.month'] = date_month unless date_month.nil?
          command.query['date.year'] = date_year unless date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a count of devices per channel.
        # @param [String] customer
        #   Required. Obfuscated customer ID prefixed with "customers/C" or "customers/
        #   my_customer".
        # @param [Fixnum] date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] date_year
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
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_devices_per_release_channel(customer, date_day: nil, date_month: nil, date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countDevicesPerReleaseChannel', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountDevicesPerReleaseChannelResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['date.day'] = date_day unless date_day.nil?
          command.query['date.month'] = date_month unless date_month.nil?
          command.query['date.year'] = date_year unless date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of app installations.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Supported filter fields: *
        #   app_name * app_type * install_type * number_of_permissions *
        #   total_install_count * latest_profile_active_date * permission_name * app_id *
        #   manifest_versions * risk_score
        # @param [String] order_by
        #   Field used to order results. Supported order by fields: * app_name * app_type *
        #   install_type * number_of_permissions * total_install_count * app_id *
        #   manifest_versions * risk_score
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_installed_apps(customer, filter: nil, order_by: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countInstalledApps', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountInstalledAppsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a summary of printing done by each printer.
        # @param [String] customer
        #   Required. Customer ID prefixed with "customers/" or "customers/my_customer" to
        #   use the customer associated to the account making the request.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Note: Only >= and <= comparators
        #   are supported in this filter. Supported filter fields: * complete_time
        # @param [String] order_by
        #   Field used to order results. If omitted, results will be ordered in ascending
        #   order of the 'printer' field. Supported order_by fields: * printer * job_count
        #   * device_count * user_count
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the response to be returned.
        # @param [String] printer_org_unit_id
        #   The ID of the organizational unit for printers. If specified, only data for
        #   printers from the specified organizational unit will be returned. If omitted,
        #   data for printers from all organizational units will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByPrinterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByPrinterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_print_jobs_by_printer(customer, filter: nil, order_by: nil, page_size: nil, page_token: nil, printer_org_unit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countPrintJobsByPrinter', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByPrinterResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByPrinterResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['printerOrgUnitId'] = printer_org_unit_id unless printer_org_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a summary of printing done by each user.
        # @param [String] customer
        #   Required. Customer ID prefixed with "customers/" or "customers/my_customer" to
        #   use the customer associated to the account making the request.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Note: Only >= and <= comparators
        #   are supported in this filter. Supported filter fields: * complete_time
        # @param [String] order_by
        #   Field used to order results. If omitted, results will be ordered in ascending
        #   order of the 'user_email' field. Supported order_by fields: * user_email *
        #   job_count * printer_count * device_count
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the response to be returned.
        # @param [String] printer_org_unit_id
        #   The ID of the organizational unit for printers. If specified, only print jobs
        #   initiated with printers from the specified organizational unit will be counted.
        #   If omitted, all print jobs will be counted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByUserResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByUserResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_customer_report_print_jobs_by_user(customer, filter: nil, order_by: nil, page_size: nil, page_token: nil, printer_org_unit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:countPrintJobsByUser', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByUserResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1CountPrintJobsByUserResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['printerOrgUnitId'] = printer_org_unit_id unless printer_org_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of print jobs.
        # @param [String] customer
        #   Required. Customer ID prefixed with "customers/" or "customers/my_customer" to
        #   use the customer associated to the account making the request.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Note: Only >= and <= comparators
        #   are supported for `complete_time`. Note: Only = comparator supported for `
        #   user_id` and `printer_id`. Supported filter fields: * complete_time *
        #   printer_id * user_id
        # @param [String] order_by
        #   Field used to order results. If not specified, results will be ordered in
        #   descending order of the `complete_time` field. Supported order by fields: *
        #   title * state * create_time * complete_time * document_page_count * color_mode
        #   * duplex_mode * printer * user_email
        # @param [Fixnum] page_size
        #   The number of print jobs in the page from 0 to 100 inclusive, if page_size is
        #   not specified or zero, the size will be 50.
        # @param [String] page_token
        #   A page token received from a previous `EnumeratePrintJobs` call. Provide this
        #   to retrieve the subsequent page. If omitted, the first page of results will be
        #   returned. When paginating, all other parameters provided to `
        #   EnumeratePrintJobs` must match the call that provided the page token.
        # @param [String] printer_org_unit_id
        #   The ID of the organizational unit for printers. If specified, only print jobs
        #   submitted to printers from the specified organizational unit will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1EnumeratePrintJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1EnumeratePrintJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enumerate_customer_report_print_jobs(customer, filter: nil, order_by: nil, page_size: nil, page_token: nil, printer_org_unit_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:enumeratePrintJobs', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1EnumeratePrintJobsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1EnumeratePrintJobsResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['printerOrgUnitId'] = printer_org_unit_id unless printer_org_unit_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate report of managed Chrome browser devices that have a specified app
        # installed.
        # @param [String] customer
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] app_id
        #   Unique identifier of the app. For Chrome apps and extensions, the 32-character
        #   id (e.g. ehoadneljpdggcbbknedodolkkjodefl). For Android apps, the package name
        #   (e.g. com.evernote).
        # @param [String] app_type
        #   Type of the app. Optional. If not provided, an app type will be inferred from
        #   the format of the app ID.
        # @param [String] filter
        #   Query string to filter results, AND-separated fields in EBNF syntax. Note: OR
        #   operations are not supported in this filter. Supported filter fields: *
        #   last_active_date
        # @param [String] order_by
        #   Field used to order results. Supported order by fields: * machine * device_id
        # @param [String] org_unit_id
        #   The ID of the organizational unit.
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Maximum and default are 100.
        # @param [String] page_token
        #   Token to specify the page of the request to be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_customer_report_installed_app_devices(customer, app_id: nil, app_type: nil, filter: nil, order_by: nil, org_unit_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}/reports:findInstalledAppDevices', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1FindInstalledAppDevicesResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['appId'] = app_id unless app_id.nil?
          command.query['appType'] = app_type unless app_type.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['orgUnitId'] = org_unit_id unless org_unit_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get telemetry device.
        # @param [String] name
        #   Required. Name of the `TelemetryDevice` to return.
        # @param [String] read_mask
        #   Required. Read mask to specify which fields to return. Supported read_mask
        #   paths are: - name - org_unit_id - device_id - serial_number - cpu_info -
        #   cpu_status_report - memory_info - memory_status_report - network_info -
        #   network_diagnostics_report - network_status_report - os_update_status -
        #   graphics_info - graphics_status_report - battery_info - battery_status_report -
        #   storage_info - storage_status_report - thunderbolt_info - audio_status_report
        #   - boot_performance_report - heartbeat_status_report - network_bandwidth_report
        #   - peripherals_report - kiosk_app_status_report - app_report -
        #   runtime_counters_report
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_telemetry_device(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryDevice
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all telemetry devices.
        # @param [String] parent
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Optional. Only include resources that match the filter. Requests that don't
        #   specify a "reports_timestamp" value will default to returning only recent
        #   reports. Specify "reports_timestamp>=0" to get all report data. Supported
        #   filter fields: - org_unit_id - serial_number - device_id - reports_timestamp
        #   The "reports_timestamp" filter accepts either the Unix Epoch milliseconds
        #   format or the RFC3339 UTC "Zulu" format with nanosecond resolution and up to
        #   nine fractional digits. Both formats should be surrounded by simple double
        #   quotes. Examples: "2014-10-02T15:01:23Z", "2014-10-02T15:01:23.045123456Z", "
        #   1679283943823".
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Default value is 100. Maximum value is
        #   1000.
        # @param [String] page_token
        #   Token to specify next page in the list.
        # @param [String] read_mask
        #   Required. Read mask to specify which fields to return. Supported read_mask
        #   paths are: - name - org_unit_id - device_id - serial_number - cpu_info -
        #   cpu_status_report - memory_info - memory_status_report - network_info -
        #   network_diagnostics_report - network_status_report - os_update_status -
        #   graphics_info - graphics_status_report - battery_info - battery_status_report -
        #   storage_info - storage_status_report - thunderbolt_info - audio_status_report
        #   - boot_performance_report - heartbeat_status_report - network_bandwidth_report
        #   - peripherals_report - kiosk_app_status_report - app_report -
        #   runtime_counters_report
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_telemetry_devices(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/telemetry/devices', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryDevicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List telemetry events.
        # @param [String] parent
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Optional. Only include resources that match the filter. Although this
        #   parameter is currently optional, this parameter will be required- please
        #   specify at least 1 event type. Supported filter fields: - device_id - user_id -
        #   device_org_unit_id - user_org_unit_id - timestamp - event_type The "timestamp"
        #   filter accepts either the Unix Epoch milliseconds format or the RFC3339 UTC "
        #   Zulu" format with nanosecond resolution and up to nine fractional digits. Both
        #   formats should be surrounded by simple double quotes. Examples: "2014-10-02T15:
        #   01:23Z", "2014-10-02T15:01:23.045123456Z", "1679283943823".
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results to return. Default value is 100. Maximum
        #   value is 1000.
        # @param [String] page_token
        #   Optional. Token to specify next page in the list.
        # @param [String] read_mask
        #   Required. Read mask to specify which fields to return. Although currently
        #   required, this field will become optional, while the filter parameter with an
        #   event type will be come required. Supported read_mask paths are: - device -
        #   user - audio_severe_underrun_event - usb_peripherals_event -
        #   https_latency_change_event - network_state_change_event -
        #   wifi_signal_strength_event - vpn_connection_state_change_event -
        #   app_install_event - app_uninstall_event - app_launch_event - os_crash_event -
        #   external_displays_event
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_telemetry_events(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/telemetry/events', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a telemetry notification config.
        # @param [String] parent
        #   Required. The parent resource where this notification config will be created.
        #   Format: `customers/`customer``
        # @param [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig] google_chrome_management_v1_telemetry_notification_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_customer_telemetry_notification_config(parent, google_chrome_management_v1_telemetry_notification_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/telemetry/notificationConfigs', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig::Representation
          command.request_object = google_chrome_management_v1_telemetry_notification_config_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryNotificationConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a telemetry notification config.
        # @param [String] name
        #   Required. The name of the notification config to delete. Format: `customers/`
        #   customer`/telemetry/notificationConfigs/`notification_config``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_customer_telemetry_notification_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all telemetry notification configs.
        # @param [String] parent
        #   Required. The parent which owns the notification configs.
        # @param [Fixnum] page_size
        #   The maximum number of notification configs to return. The service may return
        #   fewer than this value. If unspecified, at most 100 notification configs will
        #   be returned. The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   A page token, received from a previous `ListTelemetryNotificationConfigs` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListTelemetryNotificationConfigs` must match the call
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
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_telemetry_notification_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/telemetry/notificationConfigs', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryNotificationConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get telemetry user.
        # @param [String] name
        #   Required. Name of the `TelemetryUser` to return.
        # @param [String] read_mask
        #   Read mask to specify which fields to return. Supported read_mask paths are: -
        #   name - org_unit_id - user_id - user_email - user_device.device_id -
        #   user_device.audio_status_report - user_device.device_activity_report -
        #   user_device.network_bandwidth_report - user_device.peripherals_report -
        #   user_device.app_report
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_telemetry_user(name, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1TelemetryUser
          command.params['name'] = name unless name.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all telemetry users.
        # @param [String] parent
        #   Required. Customer id or "my_customer" to use the customer associated to the
        #   account making the request.
        # @param [String] filter
        #   Only include resources that match the filter. Supported filter fields: -
        #   user_id - user_org_unit_id
        # @param [Fixnum] page_size
        #   Maximum number of results to return. Default value is 100. Maximum value is
        #   1000.
        # @param [String] page_token
        #   Token to specify next page in the list.
        # @param [String] read_mask
        #   Read mask to specify which fields to return. Supported read_mask paths are: -
        #   name - org_unit_id - user_id - user_email - user_device.device_id -
        #   user_device.audio_status_report - user_device.device_activity_report -
        #   user_device.network_bandwidth_report - user_device.peripherals_report -
        #   user_device.app_report
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_customer_telemetry_users(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/telemetry/users', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementV1ListTelemetryUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves a third party chrome profile user to a destination OU. All profiles
        # associated to that user will be moved to the destination OU.
        # @param [String] name
        #   Required. Format: customers/`customer_id`/thirdPartyProfileUsers/`
        #   third_party_profile_user_id`
        # @param [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest] google_chrome_management_versions_v1_move_third_party_profile_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_customer_third_party_profile_user(name, google_chrome_management_versions_v1_move_third_party_profile_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:move', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserRequest::Representation
          command.request_object = google_chrome_management_versions_v1_move_third_party_profile_user_request_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleChromeManagementVersionsV1MoveThirdPartyProfileUserResponse
          command.params['name'] = name unless name.nil?
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
        # @param [Google::Apis::ChromemanagementV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::ChromemanagementV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::ChromemanagementV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromemanagementV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ChromemanagementV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::ChromemanagementV1::GoogleLongrunningListOperationsResponse
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
