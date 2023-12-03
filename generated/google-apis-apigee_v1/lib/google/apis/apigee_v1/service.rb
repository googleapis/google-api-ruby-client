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
    module ApigeeV1
      # Apigee API
      #
      # Use the Apigee API to programmatically develop and manage APIs with a set of
      #  RESTful operations. Develop and secure API proxies, deploy and undeploy API
      #  proxy revisions, monitor APIs, configure environments, manage users, and more.
      #  Note: This product is available as a free trial for a time period of 60 days.
      #
      # @example
      #    require 'google/apis/apigee_v1'
      #
      #    Apigee = Google::Apis::ApigeeV1 # Alias the module
      #    service = Apigee::ApigeeService.new
      #
      # @see https://cloud.google.com/apigee-api-management/
      class ApigeeService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://apigee.googleapis.com/', '',
                client_name: 'google-apis-apigee_v1',
                client_version: Google::Apis::ApigeeV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists hybrid services and its trusted issuers service account ids. This api is
        # authenticated and unauthorized(allow all the users) and used by runtime authn-
        # authz service to query control plane's issuer service account ids.
        # @param [String] name
        #   Required. Must be of the form `hybrid/issuers`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListHybridIssuersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListHybridIssuersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_hybrid_issuers(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListHybridIssuersResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListHybridIssuersResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Apigee organization. See [Create an Apigee organization](https://
        # cloud.google.com/apigee/docs/api-platform/get-started/create-org).
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization] google_cloud_apigee_v1_organization_object
        # @param [String] parent
        #   Required. Name of the Google Cloud project in which to associate the Apigee
        #   organization. Pass the information as a query parameter using the following
        #   structure in your request: `projects/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization(google_cloud_apigee_v1_organization_object = nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/organizations', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization::Representation
          command.request_object = google_cloud_apigee_v1_organization_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an Apigee organization. For organizations with BillingType EVALUATION,
        # an immediate deletion is performed. For paid organizations, a soft-deletion is
        # performed. The organization can be restored within the soft-deletion period
        # which can be controlled using the retention field in the request.
        # @param [String] name
        #   Required. Name of the organization. Use the following structure in your
        #   request: `organizations/`org``
        # @param [String] retention
        #   Optional. This setting is applicable only for organizations that are soft-
        #   deleted (i.e., BillingType is not EVALUATION). It controls how long
        #   Organization data will be retained after the initial delete operation
        #   completes. During this period, the Organization may be restored to its last
        #   known state. After this period, the Organization will no longer be able to be
        #   restored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization(name, retention: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['retention'] = retention unless retention.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the profile for an Apigee organization. See [Understanding organizations](
        # https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-
        # structure).
        # @param [String] name
        #   Required. Apigee organization name in the following format: `organizations/`
        #   org``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the deployed ingress configuration for an organization.
        # @param [String] name
        #   Required. Name of the deployed configuration for the organization in the
        #   following format: 'organizations/`org`/deployedIngressConfig'.
        # @param [String] view
        #   When set to FULL, additional details about the specific deployments receiving
        #   traffic will be included in the IngressConfig response's RoutingRules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1IngressConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1IngressConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_deployed_ingress_config(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1IngressConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1IngressConfig
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the project ID and region for an Apigee organization.
        # @param [String] name
        #   Required. Apigee organization name in the following format: `organizations/`
        #   org``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_project_mapping(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getProjectMapping', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1OrganizationProjectMapping
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get runtime config for an organization.
        # @param [String] name
        #   Required. Name of the runtime config for the organization in the following
        #   format: 'organizations/`org`/runtimeConfig'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_runtime_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RuntimeConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the service accounts with the permissions required to allow the
        # Synchronizer to download environment data from the control plane. An ETag is
        # returned in the response to `getSyncAuthorization`. Pass that ETag when
        # calling [setSyncAuthorization](setSyncAuthorization) to ensure that you are
        # updating the correct version. If you don't pass the ETag in the call to `
        # setSyncAuthorization`, then the existing authorization is overwritten
        # indiscriminately. For more information, see [Configure the Synchronizer](https:
        # //cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access). **Note**:
        # Available to Apigee hybrid only.
        # @param [String] name
        #   Required. Name of the Apigee organization. Use the following structure in your
        #   request: `organizations/`org``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetSyncAuthorizationRequest] google_cloud_apigee_v1_get_sync_authorization_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_sync_authorization(name, google_cloud_apigee_v1_get_sync_authorization_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:getSyncAuthorization', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetSyncAuthorizationRequest::Representation
          command.request_object = google_cloud_apigee_v1_get_sync_authorization_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Apigee organizations and associated Google Cloud projects that you
        # have permission to access. See [Understanding organizations](https://cloud.
        # google.com/apigee/docs/api-platform/fundamentals/organization-structure).
        # @param [String] parent
        #   Required. Use the following structure in your request: `organizations`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOrganizationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOrganizationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organizations(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOrganizationsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOrganizationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Configures the add-ons for the Apigee organization. The existing add-on
        # configuration will be fully replaced.
        # @param [String] org
        #   Required. Name of the organization. Use the following structure in your
        #   request: `organizations/`org``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SetAddonsRequest] google_cloud_apigee_v1_set_addons_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_addons(org, google_cloud_apigee_v1_set_addons_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+org}:setAddons', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SetAddonsRequest::Representation
          command.request_object = google_cloud_apigee_v1_set_addons_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['org'] = org unless org.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the permissions required to allow the Synchronizer to download
        # environment data from the control plane. You must call this API to enable
        # proper functioning of hybrid. Pass the ETag when calling `setSyncAuthorization`
        # to ensure that you are updating the correct version. To get an ETag, call [
        # getSyncAuthorization](getSyncAuthorization). If you don't pass the ETag in the
        # call to `setSyncAuthorization`, then the existing authorization is overwritten
        # indiscriminately. For more information, see [Configure the Synchronizer](https:
        # //cloud.google.com/apigee/docs/hybrid/latest/synchronizer-access). **Note**:
        # Available to Apigee hybrid only.
        # @param [String] name
        #   Required. Name of the Apigee organization. Use the following structure in your
        #   request: `organizations/`org``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization] google_cloud_apigee_v1_sync_authorization_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_sync_authorization(name, google_cloud_apigee_v1_sync_authorization_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setSyncAuthorization', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization::Representation
          command.request_object = google_cloud_apigee_v1_sync_authorization_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SyncAuthorization
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the properties for an Apigee organization. No other fields in the
        # organization profile will be updated.
        # @param [String] name
        #   Required. Apigee organization name in the following format: `organizations/`
        #   org``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization] google_cloud_apigee_v1_organization_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization(name, google_cloud_apigee_v1_organization_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization::Representation
          command.request_object = google_cloud_apigee_v1_organization_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Organization
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a Datastore for an org
        # @param [String] parent
        #   Required. The parent organization name. Must be of the form `organizations/`
        #   org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore] google_cloud_apigee_v1_datastore_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_analytic_datastore(parent, google_cloud_apigee_v1_datastore_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/analytics/datastores', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore::Representation
          command.request_object = google_cloud_apigee_v1_datastore_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a Datastore from an org.
        # @param [String] name
        #   Required. Resource name of the Datastore to be deleted. Must be of the form `
        #   organizations/`org`/analytics/datastores/`datastoreId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_analytic_datastore(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a Datastore
        # @param [String] name
        #   Required. Resource name of the Datastore to be get. Must be of the form `
        #   organizations/`org`/analytics/datastores/`datastoreId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_analytic_datastore(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Datastores
        # @param [String] parent
        #   Required. The parent organization name. Must be of the form `organizations/`
        #   org``.
        # @param [String] target_type
        #   Optional. TargetType is used to fetch all Datastores that match the type
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDatastoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDatastoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_analytic_datastores(parent, target_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/analytics/datastores', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDatastoresResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDatastoresResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['targetType'] = target_type unless target_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Test if Datastore configuration is correct. This includes checking if
        # credentials provided by customer have required permissions in target
        # destination storage
        # @param [String] parent
        #   Required. The parent organization name Must be of the form `organizations/`org`
        #   `
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore] google_cloud_apigee_v1_datastore_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TestDatastoreResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TestDatastoreResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_organization_analytic_datastore(parent, google_cloud_apigee_v1_datastore_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/analytics/datastores:test', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore::Representation
          command.request_object = google_cloud_apigee_v1_datastore_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TestDatastoreResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TestDatastoreResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a Datastore
        # @param [String] name
        #   Required. The resource name of datastore to be updated. Must be of the form `
        #   organizations/`org`/analytics/datastores/`datastoreId``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore] google_cloud_apigee_v1_datastore_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_analytic_datastore(name, google_cloud_apigee_v1_datastore_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore::Representation
          command.request_object = google_cloud_apigee_v1_datastore_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Datastore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates API product attributes. This API **replaces** the current
        # list of attributes with the attributes specified in the request body. In this
        # way, you can update existing attributes, add new attributes, or delete
        # existing attributes by omitting them from the request body. **Note**: OAuth
        # access tokens and Key Management Service (KMS) entities (apps, developers, and
        # API products) are cached for 180 seconds (current default). Any custom
        # attributes associated with entities also get cached for at least 180 seconds
        # after entity is accessed during runtime. In this case, the `ExpiresIn` element
        # on the OAuthV2 policy won't be able to expire an access token in less than 180
        # seconds.
        # @param [String] name
        #   Required. Name of the API product. Use the following structure in your request:
        #   `organizations/`org`/apiproducts/`apiproduct``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] google_cloud_apigee_v1_attributes_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def attributes_organization_apiproduct(name, google_cloud_apigee_v1_attributes_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/attributes', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.request_object = google_cloud_apigee_v1_attributes_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an API product in an organization. You create API products after you
        # have proxied backend services using API proxies. An API product is a
        # collection of API resources combined with quota settings and metadata that you
        # can use to deliver customized and productized API bundles to your developer
        # community. This metadata can include: - Scope - Environments - API proxies -
        # Extensible profile API products enable you repackage APIs on the fly, without
        # having to do any additional coding or configuration. Apigee recommends that
        # you start with a simple API product including only required elements. You then
        # provision credentials to apps to enable them to start testing your APIs. After
        # you have authentication and authorization working against a simple API product,
        # you can iterate to create finer-grained API products, defining different sets
        # of API resources for each API product. **WARNING:** - If you don't specify an
        # API proxy in the request body, *any* app associated with the product can make
        # calls to *any* API in your entire organization. - If you don't specify an
        # environment in the request body, the product allows access to all environments.
        # For more information, see What is an API product?
        # @param [String] parent
        #   Required. Name of the organization in which the API product will be created.
        #   Use the following structure in your request: `organizations/`org``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct] google_cloud_apigee_v1_api_product_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_apiproduct(parent, google_cloud_apigee_v1_api_product_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apiproducts', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct::Representation
          command.request_object = google_cloud_apigee_v1_api_product_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an API product from an organization. Deleting an API product causes
        # app requests to the resource URIs defined in the API product to fail. Ensure
        # that you create a new API product to serve existing apps, unless your
        # intention is to disable access to the resources defined in the API product.
        # The API product name required in the request URL is the internal name of the
        # product, not the display name. While they may be the same, it depends on
        # whether the API product was created via the UI or the API. View the list of
        # API products to verify the internal name.
        # @param [String] name
        #   Required. Name of the API product. Use the following structure in your request:
        #   `organizations/`org`/apiproducts/`apiproduct``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_apiproduct(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets configuration details for an API product. The API product name required
        # in the request URL is the internal name of the product, not the display name.
        # While they may be the same, it depends on whether the API product was created
        # via the UI or the API. View the list of API products to verify the internal
        # name.
        # @param [String] name
        #   Required. Name of the API product. Use the following structure in your request:
        #   `organizations/`org`/apiproducts/`apiproduct``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_apiproduct(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all API product names for an organization. Filter the list by passing an
        # `attributename` and `attibutevalue`. The maximum number of API products
        # returned is 1000. You can paginate the list of API products returned using the
        # `startKey` and `count` query parameters.
        # @param [String] parent
        #   Required. Name of the organization. Use the following structure in your
        #   request: `organizations/`org``
        # @param [String] attributename
        #   Name of the attribute used to filter the search.
        # @param [String] attributevalue
        #   Value of the attribute used to filter the search.
        # @param [Fixnum] count
        #   Enter the number of API products you want returned in the API call. The limit
        #   is 1000.
        # @param [Boolean] expand
        #   Flag that specifies whether to expand the results. Set to `true` to get
        #   expanded details about each API.
        # @param [String] start_key
        #   Gets a list of API products starting with a specific API product in the list.
        #   For example, if you're returning 50 API products at a time (using the `count`
        #   query parameter), you can view products 50-99 by entering the name of the 50th
        #   API product in the first API (without using `startKey`). Product name is case
        #   sensitive.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_apiproducts(parent, attributename: nil, attributevalue: nil, count: nil, expand: nil, start_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apiproducts', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProductsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProductsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['attributename'] = attributename unless attributename.nil?
          command.query['attributevalue'] = attributevalue unless attributevalue.nil?
          command.query['count'] = count unless count.nil?
          command.query['expand'] = expand unless expand.nil?
          command.query['startKey'] = start_key unless start_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing API product. You must include all required values, whether
        # or not you are updating them, as well as any optional values that you are
        # updating. The API product name required in the request URL is the internal
        # name of the product, not the display name. While they may be the same, it
        # depends on whether the API product was created via UI or API. View the list of
        # API products to identify their internal names.
        # @param [String] name
        #   Required. Name of the API product. Use the following structure in your request:
        #   `organizations/`org`/apiproducts/`apiproduct``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct] google_cloud_apigee_v1_api_product_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_apiproduct(name, google_cloud_apigee_v1_api_product_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct::Representation
          command.request_object = google_cloud_apigee_v1_api_product_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProduct
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an API product attribute.
        # @param [String] name
        #   Required. Name of the API product attribute. Use the following structure in
        #   your request: `organizations/`org`/apiproducts/`apiproduct`/attributes/`
        #   attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_apiproduct_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the value of an API product attribute.
        # @param [String] name
        #   Required. Name of the API product attribute. Use the following structure in
        #   your request: `organizations/`org`/apiproducts/`apiproduct`/attributes/`
        #   attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_apiproduct_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all API product attributes.
        # @param [String] parent
        #   Required. Name of the API product. Use the following structure in your request:
        #   `organizations/`org`/apiproducts/`apiproduct``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_apiproduct_attributes(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attributes', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the value of an API product attribute. **Note**: OAuth access tokens
        # and Key Management Service (KMS) entities (apps, developers, and API products)
        # are cached for 180 seconds (current default). Any custom attributes associated
        # with entities also get cached for at least 180 seconds after entity is
        # accessed during runtime. In this case, the `ExpiresIn` element on the OAuthV2
        # policy won't be able to expire an access token in less than 180 seconds.
        # @param [String] name
        #   Required. Name of the API product. Use the following structure in your request:
        #   `organizations/`org`/apiproducts/`apiproduct``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] google_cloud_apigee_v1_attribute_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_apiproduct_attribute_api_product_attribute(name, google_cloud_apigee_v1_attribute_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.request_object = google_cloud_apigee_v1_attribute_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a rate plan that is associated with an API product in an organization.
        # Using rate plans, API product owners can monetize their API products by
        # configuring one or more of the following: - Billing frequency - Initial setup
        # fees for using an API product - Payment funding model (postpaid only) - Fixed
        # recurring or consumption-based charges for using an API product - Revenue
        # sharing with developer partners An API product can have multiple rate plans
        # associated with it but *only one* rate plan can be active at any point of time.
        # **Note: From the developer's perspective, they purchase API products not rate
        # plans.
        # @param [String] parent
        #   Required. Name of the API product that is associated with the rate plan. Use
        #   the following structure in your request: `organizations/`org`/apiproducts/`
        #   apiproduct``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan] google_cloud_apigee_v1_rate_plan_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_apiproduct_rateplan(parent, google_cloud_apigee_v1_rate_plan_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/rateplans', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan::Representation
          command.request_object = google_cloud_apigee_v1_rate_plan_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a rate plan.
        # @param [String] name
        #   Required. ID of the rate plan. Use the following structure in your request: `
        #   organizations/`org`/apiproducts/`apiproduct`/rateplans/`rateplan``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_apiproduct_rateplan(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a rate plan.
        # @param [String] name
        #   Required. Name of the rate plan. Use the following structure in your request: `
        #   organizations/`org`/apiproducts/`apiproduct`/rateplans/`rateplan``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_apiproduct_rateplan(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the rate plans for an API product.
        # @param [String] parent
        #   Required. Name of the API product. Use the following structure in your request:
        #   `organizations/`org`/apiproducts/`apiproduct`` Use `organizations/`org`/
        #   apiproducts/-` to return rate plans for all API products within the
        #   organization.
        # @param [Fixnum] count
        #   Number of rate plans to return in the API call. Use with the `startKey`
        #   parameter to provide more targeted filtering. The maximum limit is 1000.
        #   Defaults to 100.
        # @param [Boolean] expand
        #   Flag that specifies whether to expand the results. Set to `true` to get
        #   expanded details about each API. Defaults to `false`.
        # @param [String] order_by
        #   Name of the attribute used for sorting. Valid values include: * `name`: Name
        #   of the rate plan. * `state`: State of the rate plan (`DRAFT`, `PUBLISHED`). * `
        #   startTime`: Time when the rate plan becomes active. * `endTime`: Time when the
        #   rate plan expires. **Note**: Not supported by Apigee at this time.
        # @param [String] start_key
        #   Name of the rate plan from which to start displaying the list of rate plans.
        #   If omitted, the list starts from the first item. For example, to view the rate
        #   plans from 51-150, set the value of `startKey` to the name of the 51st rate
        #   plan and set the value of `count` to 100.
        # @param [String] state
        #   State of the rate plans (`DRAFT`, `PUBLISHED`) that you want to display.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListRatePlansResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListRatePlansResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_apiproduct_rateplans(parent, count: nil, expand: nil, order_by: nil, start_key: nil, state: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/rateplans', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListRatePlansResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListRatePlansResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['count'] = count unless count.nil?
          command.query['expand'] = expand unless expand.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['startKey'] = start_key unless start_key.nil?
          command.query['state'] = state unless state.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing rate plan.
        # @param [String] name
        #   Required. Name of the rate plan. Use the following structure in your request: `
        #   organizations/`org`/apiproducts/`apiproduct`/rateplans/`rateplan``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan] google_cloud_apigee_v1_rate_plan_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_apiproduct_rateplan(name, google_cloud_apigee_v1_rate_plan_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan::Representation
          command.request_object = google_cloud_apigee_v1_rate_plan_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1RatePlan
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an API proxy. The API proxy created will not be accessible at runtime
        # until it is deployed to an environment. Create a new API proxy by setting the `
        # name` query parameter to the name of the API proxy. Import an API proxy
        # configuration bundle stored in zip format on your local machine to your
        # organization by doing the following: * Set the `name` query parameter to the
        # name of the API proxy. * Set the `action` query parameter to `import`. * Set
        # the `Content-Type` header to `multipart/form-data`. * Pass as a file the name
        # of API proxy configuration bundle stored in zip format on your local machine
        # using the `file` form field. **Note**: To validate the API proxy configuration
        # bundle only without importing it, set the `action` query parameter to `
        # validate`. When importing an API proxy configuration bundle, if the API proxy
        # does not exist, it will be created. If the API proxy exists, then a new
        # revision is created. Invalid API proxy configurations are rejected, and a list
        # of validation errors is returned to the client.
        # @param [String] parent
        #   Required. Name of the organization in the following format: `organizations/`
        #   org``
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [String] action
        #   Action to perform when importing an API proxy configuration bundle. Set this
        #   parameter to one of the following values: * `import` to import the API proxy
        #   configuration bundle. * `validate` to validate the API proxy configuration
        #   bundle without importing it.
        # @param [String] name
        #   Name of the API proxy. Restrict the characters used to: A-Za-z0-9._-
        # @param [Boolean] validate
        #   Ignored. All uploads are validated regardless of the value of this field.
        #   Maintained for compatibility with Apigee Edge API.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_api(parent, google_api_http_body_object = nil, action: nil, name: nil, validate: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apis', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision
          command.params['parent'] = parent unless parent.nil?
          command.query['action'] = action unless action.nil?
          command.query['name'] = name unless name.nil?
          command.query['validate'] = validate unless validate.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an API proxy and all associated endpoints, policies, resources, and
        # revisions. The API proxy must be undeployed before you can delete it.
        # @param [String] name
        #   Required. Name of the API proxy in the following format: `organizations/`org`/
        #   apis/`api``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_api(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an API proxy including a list of existing revisions.
        # @param [String] name
        #   Required. Name of the API proxy in the following format: `organizations/`org`/
        #   apis/`api``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_api(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the names of all API proxies in an organization. The names returned
        # correspond to the names defined in the configuration files for each API proxy.
        # @param [String] parent
        #   Required. Name of the organization in the following format: `organizations/`
        #   org``
        # @param [Boolean] include_meta_data
        #   Flag that specifies whether to include API proxy metadata in the response.
        # @param [Boolean] include_revisions
        #   Flag that specifies whether to include a list of revisions in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProxiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProxiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_apis(parent, include_meta_data: nil, include_revisions: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apis', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProxiesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiProxiesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['includeMetaData'] = include_meta_data unless include_meta_data.nil?
          command.query['includeRevisions'] = include_revisions unless include_revisions.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing API proxy.
        # @param [String] name
        #   Required. API proxy to update in the following format: `organizations/`org`/
        #   apis/`api``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy] google_cloud_apigee_v1_api_proxy_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_api(name, google_cloud_apigee_v1_api_proxy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy::Representation
          command.request_object = google_cloud_apigee_v1_api_proxy_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of an API proxy.
        # @param [String] parent
        #   Required. Name of the API proxy for which to return deployment information in
        #   the following format: `organizations/`org`/apis/`api``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_api_deployments(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a key value map in an API proxy.
        # @param [String] parent
        #   Required. Name of the environment in which to create the key value map. Use
        #   the following structure in your request: `organizations/`org`/apis/`api``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] google_cloud_apigee_v1_key_value_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_api_keyvaluemap(parent, google_cloud_apigee_v1_key_value_map_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keyvaluemaps', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.request_object = google_cloud_apigee_v1_key_value_map_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a key value map from an API proxy.
        # @param [String] name
        #   Required. Name of the key value map. Use the following structure in your
        #   request: `organizations/`org`/apis/`api`/keyvaluemaps/`keyvaluemap``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_api_keyvaluemap(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates key value entries in a key value map scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] parent
        #   Required. Scope as indicated by the URI in which to create the key value map
        #   entry. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap``. * `
        #   organizations/`organization`/environments/`environment`/keyvaluemaps/`
        #   keyvaluemap`` * `organizations/`organization`/keyvaluemaps/`keyvaluemap``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] google_cloud_apigee_v1_key_value_entry_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_api_keyvaluemap_entry(parent, google_cloud_apigee_v1_key_value_entry_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entries', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.request_object = google_cloud_apigee_v1_key_value_entry_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a key value entry from a key value map scoped to an organization,
        # environment, or API proxy. **Notes:** * After you delete the key value entry,
        # the policy consuming the entry will continue to function with its cached
        # values for a few minutes. This is expected behavior. * Supported for Apigee
        # hybrid 1.8.x and higher.
        # @param [String] name
        #   Required. Scope as indicated by the URI in which to delete the key value map
        #   entry. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap`/entries/`
        #   entry``. * `organizations/`organization`/environments/`environment`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry`` * `organizations/`organization`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_api_keyvaluemap_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the key value entry value for a key value map scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] name
        #   Required. Scope as indicated by the URI in which to fetch the key value map
        #   entry/value. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap`/entries/`
        #   entry``. * `organizations/`organization`/environments/`environment`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry`` * `organizations/`organization`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_api_keyvaluemap_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists key value entries for key values maps scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] parent
        #   Required. Scope as indicated by the URI in which to list key value maps. Use **
        #   one** of the following structures in your request: * `organizations/`
        #   organization`/apis/`api`/keyvaluemaps/`keyvaluemap``. * `organizations/`
        #   organization`/environments/`environment`/keyvaluemaps/`keyvaluemap`` * `
        #   organizations/`organization`/keyvaluemaps/`keyvaluemap``.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of key value entries to return. If unspecified, at
        #   most 100 entries will be returned.
        # @param [String] page_token
        #   Optional. Page token. If provides, must be a valid key value entry returned
        #   from a previous call that can be used to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_api_keyvaluemap_entries(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entries', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an API proxy revision and all policies, resources, endpoints, and
        # revisions associated with it. The API proxy revision must be undeployed before
        # you can delete it.
        # @param [String] name
        #   Required. API proxy revision in the following format: `organizations/`org`/
        #   apis/`api`/revisions/`rev``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_api_revision(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an API proxy revision. To download the API proxy configuration bundle for
        # the specified revision as a zip file, set the `format` query parameter to `
        # bundle`. If you are using curl, specify `-o filename.zip` to save the output
        # to a file; otherwise, it displays to `stdout`. Then, develop the API proxy
        # configuration locally and upload the updated API proxy configuration revision,
        # as described in [updateApiProxyRevision](updateApiProxyRevision).
        # @param [String] name
        #   Required. API proxy revision in the following format: `organizations/`org`/
        #   apis/`api`/revisions/`rev``
        # @param [String] format
        #   Format used when downloading the API proxy configuration revision. Set to `
        #   bundle` to download the API proxy configuration revision as a zip file.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_api_revision(name, format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['format'] = format unless format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing API proxy revision by uploading the API proxy
        # configuration bundle as a zip file from your local machine. You can update
        # only API proxy revisions that have never been deployed. After deployment, an
        # API proxy revision becomes immutable, even if it is undeployed. Set the `
        # Content-Type` header to either `multipart/form-data` or `application/octet-
        # stream`.
        # @param [String] name
        #   Required. API proxy revision to update in the following format: `organizations/
        #   `org`/apis/`api`/revisions/`rev``
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [Boolean] validate
        #   Ignored. All uploads are validated regardless of the value of this field.
        #   Maintained for compatibility with Apigee Edge API.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_api_revision_api_proxy_revision(name, google_api_http_body_object = nil, validate: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiProxyRevision
          command.params['name'] = name unless name.nil?
          command.query['validate'] = validate unless validate.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of an API proxy revision.
        # @param [String] parent
        #   Required. Name of the API proxy revision for which to return deployment
        #   information in the following format: `organizations/`org`/apis/`api`/revisions/
        #   `rev``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_api_revision_deployments(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an AppGroup. Once created, user can register apps under the AppGroup
        # to obtain secret key and password. At creation time, the AppGroup's state is
        # set as `active`.
        # @param [String] parent
        #   Required. Name of the Apigee organization in which the AppGroup is created.
        #   Use the following structure in your request: `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup] google_cloud_apigee_v1_app_group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_appgroup(parent, google_cloud_apigee_v1_app_group_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/appgroups', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup::Representation
          command.request_object = google_cloud_apigee_v1_app_group_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an AppGroup. All app and API keys associations with the AppGroup are
        # also removed. **Warning**: This API will permanently delete the AppGroup and
        # related artifacts. **Note**: The delete operation is asynchronous. The
        # AppGroup app is deleted immediately, but its associated resources, such as
        # apps and API keys, may take anywhere from a few seconds to a few minutes to be
        # deleted.
        # @param [String] name
        #   Required. Name of the AppGroup. Use the following structure in your request: `
        #   organizations/`org`/appgroups/`app_group_name``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_appgroup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the AppGroup details for the provided AppGroup name in the request URI.
        # @param [String] name
        #   Required. Name of the AppGroup. Use the following structure in your request: `
        #   organizations/`org`/appgroups/`app_group_name``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_appgroup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all AppGroups in an organization. A maximum of 1000 AppGroups are
        # returned in the response if PageSize is not specified, or if the PageSize is
        # greater than 1000.
        # @param [String] parent
        #   Required. Name of the Apigee organization. Use the following structure in your
        #   request: `organizations/`org``.
        # @param [String] filter
        #   The filter expression to be used to get the list of AppGroups, where filtering
        #   can be done on status, channelId or channelUri of the app group. Examples:
        #   filter=status=active", filter=channelId=, filter=channelUri=
        # @param [Fixnum] page_size
        #   Count of AppGroups a single page can have in the response. If unspecified, at
        #   most 1000 AppGroups will be returned. The maximum value is 1000; values above
        #   1000 will be coerced to 1000.
        # @param [String] page_token
        #   The starting index record for listing the AppGroups.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_appgroups(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/appgroups', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an AppGroup. This API replaces the existing AppGroup details with
        # those specified in the request. Include or exclude any existing details that
        # you want to retain or delete, respectively. Note that the state of the
        # AppGroup should be updated using `action`, and not via AppGroup.
        # @param [String] name
        #   Required. Name of the AppGroup. Use the following structure in your request: `
        #   organizations/`org`/appgroups/`app_group_name``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup] google_cloud_apigee_v1_app_group_object
        # @param [String] action
        #   Activate or de-activate the AppGroup by setting the action as `active` or `
        #   inactive`. The `Content-Type` header must be set to `application/octet-stream`,
        #   with empty body.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_appgroup(name, google_cloud_apigee_v1_app_group_object = nil, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup::Representation
          command.request_object = google_cloud_apigee_v1_app_group_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroup
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an app and associates it with an AppGroup. This API associates the
        # AppGroup app with the specified API product and auto-generates an API key for
        # the app to use in calls to API proxies inside that API product. The `name` is
        # the unique ID of the app that you can use in API calls.
        # @param [String] parent
        #   Required. Name of the AppGroup. Use the following structure in your request: `
        #   organizations/`org`/appgroups/`app_group_name``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp] google_cloud_apigee_v1_app_group_app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_appgroup_app(parent, google_cloud_apigee_v1_app_group_app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apps', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp::Representation
          command.request_object = google_cloud_apigee_v1_app_group_app_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an AppGroup app. **Note**: The delete operation is asynchronous. The
        # AppGroup app is deleted immediately, but its associated resources, such as app
        # keys or access tokens, may take anywhere from a few seconds to a few minutes
        # to be deleted.
        # @param [String] name
        #   Required. Name of the AppGroup app. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_appgroup_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the details for an AppGroup app.
        # @param [String] name
        #   Required. Name of the AppGroup app. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_appgroup_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all apps created by an AppGroup in an Apigee organization. Optionally,
        # you can request an expanded view of the AppGroup apps. Lists all AppGroupApps
        # in an AppGroup. A maximum of 1000 AppGroup apps are returned in the response
        # if PageSize is not specified, or if the PageSize is greater than 1000.
        # @param [String] parent
        #   Required. Name of the AppGroup. Use the following structure in your request: `
        #   organizations/`org`/appgroups/`app_group_name``
        # @param [Fixnum] page_size
        #   Optional. Maximum number entries to return. If unspecified, at most 1000
        #   entries will be returned.
        # @param [String] page_token
        #   Optional. Page token. If provides, must be a valid AppGroup app returned from
        #   a previous call that can be used to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_appgroup_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupAppsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppGroupAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the details for an AppGroup app. In addition, you can add an API
        # product to an AppGroup app and automatically generate an API key for the app
        # to use when calling APIs in the API product. If you want to use an existing
        # API key for the API product, add the API product to the API key using the
        # UpdateAppGroupAppKey API. Using this API, you cannot update the app name, as
        # it is the primary key used to identify the app and cannot be changed. This API
        # replaces the existing attributes with those specified in the request. Include
        # or exclude any existing attributes that you want to retain or delete,
        # respectively.
        # @param [String] name
        #   Required. Name of the AppGroup app. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp] google_cloud_apigee_v1_app_group_app_object
        # @param [String] action
        #   Approve or revoke the consumer key by setting this value to `approve` or `
        #   revoke`. The `Content-Type` header must be set to `application/octet-stream`,
        #   with empty body.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_appgroup_app(name, google_cloud_apigee_v1_app_group_app_object = nil, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp::Representation
          command.request_object = google_cloud_apigee_v1_app_group_app_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupApp
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a custom consumer key and secret for a AppGroup app. This is
        # particularly useful if you want to migrate existing consumer keys and secrets
        # to Apigee from another system. Consumer keys and secrets can contain letters,
        # numbers, underscores, and hyphens. No other special characters are allowed. To
        # avoid service disruptions, a consumer key and secret should not exceed 2 KBs
        # each. **Note**: When creating the consumer key and secret, an association to
        # API products will not be made. Therefore, you should not specify the
        # associated API products in your request. Instead, use the
        # ProductizeAppGroupAppKey API to make the association after the consumer key
        # and secret are created. If a consumer key and secret already exist, you can
        # keep them or delete them using the DeleteAppGroupAppKey API.
        # @param [String] parent
        #   Required. Parent of the AppGroup app key. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app`/keys`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey] google_cloud_apigee_v1_app_group_app_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_appgroup_app_key(parent, google_cloud_apigee_v1_app_group_app_key_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keys', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey::Representation
          command.request_object = google_cloud_apigee_v1_app_group_app_key_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an app's consumer key and removes all API products associated with the
        # app. After the consumer key is deleted, it cannot be used to access any APIs.
        # @param [String] name
        #   Required. Name of the AppGroup app key. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app`/keys/`key``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_appgroup_app_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details for a consumer key for a AppGroup app, including the key and
        # secret value, associated API products, and other information.
        # @param [String] name
        #   Required. Name of the AppGroup app key. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app`/keys/`key``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_appgroup_app_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an API product to an AppGroupAppKey, enabling the app that holds the key
        # to access the API resources bundled in the API product. In addition, you can
        # add attributes to the AppGroupAppKey. This API replaces the existing
        # attributes with those specified in the request. Include or exclude any
        # existing attributes that you want to retain or delete, respectively. You can
        # use the same key to access all API products associated with the app.
        # @param [String] name
        #   Required. Name of the AppGroup app key. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app`/keys/`key``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateAppGroupAppKeyRequest] google_cloud_apigee_v1_update_app_group_app_key_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_appgroup_app_key_app_group_app_key(name, google_cloud_apigee_v1_update_app_group_app_key_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1UpdateAppGroupAppKeyRequest::Representation
          command.request_object = google_cloud_apigee_v1_update_app_group_app_key_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an API product from an app's consumer key. After the API product is
        # removed, the app cannot access the API resources defined in that API product. *
        # *Note**: The consumer key is not removed, only its association with the API
        # product.
        # @param [String] name
        #   Required. Parent of the AppGroup app key. Use the following structure in your
        #   request: `organizations/`org`/appgroups/`app_group_name`/apps/`app`/keys/`key`/
        #   apiproducts/`apiproduct``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_appgroup_app_key_apiproduct(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AppGroupAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves or revokes the consumer key for an API product. After a consumer key
        # is approved, the app can use it to access APIs. A consumer key that is revoked
        # or pending cannot be used to access an API. Any access tokens associated with
        # a revoked consumer key will remain active. However, Apigee checks the status
        # of the consumer key and if set to `revoked` will not allow access to the API.
        # @param [String] name
        #   Required. Name of the API product in the developer app key in the following
        #   format: `organizations/`org`/appgroups/`app_group_name`/apps/`app`/keys/`key`/
        #   apiproducts/`apiproduct``
        # @param [String] action
        #   Approve or revoke the consumer key by setting this value to `approve` or `
        #   revoke` respectively. The `Content-Type` header, if set, must be set to `
        #   application/octet-stream`, with empty body.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_appgroup_app_key_apiproduct_app_group_app_key_api_product(name, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the app profile for the specified app ID.
        # @param [String] name
        #   Required. App ID in the following format: `organizations/`org`/apps/`app``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1App] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1App]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1App::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1App
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists IDs of apps within an organization that have the specified app status (
        # approved or revoked) or are of the specified app type (developer or company).
        # @param [String] parent
        #   Required. Resource path of the parent in the following format: `organizations/`
        #   org``
        # @param [String] api_product
        #   API product.
        # @param [String] apptype
        #   Optional. 'apptype' is no longer available. Use a 'filter' instead.
        # @param [Boolean] expand
        #   Optional. Flag that specifies whether to return an expanded list of apps for
        #   the organization. Defaults to `false`.
        # @param [String] filter
        #   Optional. The filter expression to be used to get the list of apps, where
        #   filtering can be done on developerEmail, apiProduct, consumerKey, status,
        #   appId, appName, appType and appGroup. Examples: "developerEmail=foo@bar.com", "
        #   appType=AppGroup", or "appType=Developer" "filter" is supported from ver 1.10.
        #   0 and above.
        # @param [String] ids
        #   Optional. Comma-separated list of app IDs on which to filter.
        # @param [Boolean] include_cred
        #   Optional. Flag that specifies whether to include credentials in the response.
        # @param [String] key_status
        #   Optional. Key status of the app. Valid values include `approved` or `revoked`.
        #   Defaults to `approved`.
        # @param [Fixnum] page_size
        #   Optional. Count of apps a single page can have in the response. If unspecified,
        #   at most 100 apps will be returned. The maximum value is 100; values above 100
        #   will be coerced to 100. "page_size" is supported from ver 1.10.0 and above.
        # @param [String] page_token
        #   Optional. The starting index record for listing the developers. "page_token"
        #   is supported from ver 1.10.0 and above.
        # @param [Fixnum] rows
        #   Optional. Maximum number of app IDs to return. Defaults to 10000.
        # @param [String] start_key
        #   Returns the list of apps starting from the specified app ID.
        # @param [String] status
        #   Optional. Filter by the status of the app. Valid values are `approved` or `
        #   revoked`. Defaults to `approved`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_apps(parent, api_product: nil, apptype: nil, expand: nil, filter: nil, ids: nil, include_cred: nil, key_status: nil, page_size: nil, page_token: nil, rows: nil, start_key: nil, status: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['apiProduct'] = api_product unless api_product.nil?
          command.query['apptype'] = apptype unless apptype.nil?
          command.query['expand'] = expand unless expand.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['includeCred'] = include_cred unless include_cred.nil?
          command.query['keyStatus'] = key_status unless key_status.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['rows'] = rows unless rows.nil?
          command.query['startKey'] = start_key unless start_key.nil?
          command.query['status'] = status unless status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new data collector.
        # @param [String] parent
        #   Required. Name of the organization in which to create the data collector in
        #   the following format: `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector] google_cloud_apigee_v1_data_collector_object
        # @param [String] data_collector_id
        #   ID of the data collector. Overrides any ID in the data collector resource.
        #   Must be a string beginning with `dc_` that contains only letters, numbers, and
        #   underscores.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_datacollector(parent, google_cloud_apigee_v1_data_collector_object = nil, data_collector_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/datacollectors', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector::Representation
          command.request_object = google_cloud_apigee_v1_data_collector_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector
          command.params['parent'] = parent unless parent.nil?
          command.query['dataCollectorId'] = data_collector_id unless data_collector_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a data collector.
        # @param [String] name
        #   Required. Name of the data collector in the following format: `organizations/`
        #   org`/datacollectors/`data_collector_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_datacollector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a data collector.
        # @param [String] name
        #   Required. Name of the data collector in the following format: `organizations/`
        #   org`/datacollectors/`data_collector_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_datacollector(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all data collectors.
        # @param [String] parent
        #   Required. Name of the organization for which to list data collectors in the
        #   following format: `organizations/`org``.
        # @param [Fixnum] page_size
        #   Maximum number of data collectors to return. The page size defaults to 25.
        # @param [String] page_token
        #   Page token, returned from a previous ListDataCollectors call, that you can use
        #   to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDataCollectorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDataCollectorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_datacollectors(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/datacollectors', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDataCollectorsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDataCollectorsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a data collector.
        # @param [String] name
        #   Required. Name of the data collector in the following format: `organizations/`
        #   org`/datacollectors/`data_collector_id``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector] google_cloud_apigee_v1_data_collector_object
        # @param [String] update_mask
        #   List of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_datacollector(name, google_cloud_apigee_v1_data_collector_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector::Representation
          command.request_object = google_cloud_apigee_v1_data_collector_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of API proxies or shared flows.
        # @param [String] parent
        #   Required. Name of the organization for which to return deployment information
        #   in the following format: `organizations/`org``
        # @param [Boolean] shared_flows
        #   Optional. Flag that specifies whether to return shared flow or API proxy
        #   deployments. Set to `true` to return shared flow deployments; set to `false`
        #   to return API proxy deployments. Defaults to `false`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_deployments(parent, shared_flows: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['sharedFlows'] = shared_flows unless shared_flows.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates developer attributes. This API replaces the existing attributes with
        # those specified in the request. Add new attributes, and include or exclude any
        # existing attributes that you want to retain or remove, respectively. The
        # custom attribute limit is 18. **Note**: OAuth access tokens and Key Management
        # Service (KMS) entities (apps, developers, and API products) are cached for 180
        # seconds (default). Any custom attributes associated with these entities are
        # cached for at least 180 seconds after the entity is accessed at runtime.
        # Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able to
        # expire an access token in less than 180 seconds.
        # @param [String] parent
        #   Required. Email address of the developer for which attributes are being
        #   updated. Use the following structure in your request: `organizations/`org`/
        #   developers/`developer_email``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] google_cloud_apigee_v1_attributes_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def attributes_organization_developer(parent, google_cloud_apigee_v1_attributes_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/attributes', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.request_object = google_cloud_apigee_v1_attributes_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a developer. Once created, the developer can register an app and
        # obtain an API key. At creation time, a developer is set as `active`. To change
        # the developer status, use the SetDeveloperStatus API.
        # @param [String] parent
        #   Required. Name of the Apigee organization in which the developer is created.
        #   Use the following structure in your request: `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer] google_cloud_apigee_v1_developer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_developer(parent, google_cloud_apigee_v1_developer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/developers', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer::Representation
          command.request_object = google_cloud_apigee_v1_developer_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a developer. All apps and API keys associated with the developer are
        # also removed. **Warning**: This API will permanently delete the developer and
        # related artifacts. To avoid permanently deleting developers and their
        # artifacts, set the developer status to `inactive` using the SetDeveloperStatus
        # API. **Note**: The delete operation is asynchronous. The developer app is
        # deleted immediately, but its associated resources, such as apps and API keys,
        # may take anywhere from a few seconds to a few minutes to be deleted.
        # @param [String] name
        #   Required. Email address of the developer. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_developer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the developer details, including the developer's name, email address,
        # apps, and other information. **Note**: The response includes only the first
        # 100 developer apps.
        # @param [String] name
        #   Required. Email address of the developer. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email``
        # @param [String] action
        #   Status of the developer. Valid values are `active` or `inactive`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer(name, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the account balance for the developer.
        # @param [String] name
        #   Required. Account balance for the developer. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer`/balance`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer_balance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the monetization configuration for the developer.
        # @param [String] name
        #   Required. Monetization configuration for the developer. Use the following
        #   structure in your request: `organizations/`org`/developers/`developer`/
        #   monetizationConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer_monetization_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all developers in an organization by email address. By default, the
        # response does not include company developers. Set the `includeCompany` query
        # parameter to `true` to include company developers. **Note**: A maximum of 1000
        # developers are returned in the response. You paginate the list of developers
        # returned using the `startKey` and `count` query parameters.
        # @param [String] parent
        #   Required. Name of the Apigee organization. Use the following structure in your
        #   request: `organizations/`org``.
        # @param [String] app
        #   Optional. List only Developers that are associated with the app. Note that
        #   start_key, count are not applicable for this filter criteria.
        # @param [Fixnum] count
        #   Optional. Number of developers to return in the API call. Use with the `
        #   startKey` parameter to provide more targeted filtering. The limit is 1000.
        # @param [Boolean] expand
        #   Specifies whether to expand the results. Set to `true` to expand the results.
        #   This query parameter is not valid if you use the `count` or `startKey` query
        #   parameters.
        # @param [String] ids
        #   Optional. List of IDs to include, separated by commas.
        # @param [Boolean] include_company
        #   Flag that specifies whether to include company details in the response.
        # @param [String] start_key
        #   **Note**: Must be used in conjunction with the `count` parameter. Email
        #   address of the developer from which to start displaying the list of developers.
        #   For example, if the an unfiltered list returns: ``` westley@example.com
        #   fezzik@example.com buttercup@example.com ``` and your `startKey` is `fezzik@
        #   example.com`, the list returned will be ``` fezzik@example.com buttercup@
        #   example.com ```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOfDevelopersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOfDevelopersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_developers(parent, app: nil, count: nil, expand: nil, ids: nil, include_company: nil, start_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/developers', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOfDevelopersResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListOfDevelopersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['app'] = app unless app.nil?
          command.query['count'] = count unless count.nil?
          command.query['expand'] = expand unless expand.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['includeCompany'] = include_company unless include_company.nil?
          command.query['startKey'] = start_key unless start_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the status of a developer. A developer is `active` by default. If you set
        # a developer's status to `inactive`, the API keys assigned to the developer
        # apps are no longer valid even though the API keys are set to `approved`.
        # Inactive developers can still sign in to the developer portal and create apps;
        # however, any new API keys generated during app creation won't work. To set the
        # status of a developer, set the `action` query parameter to `active` or `
        # inactive`, and the `Content-Type` header to `application/octet-stream`. If
        # successful, the API call returns the following HTTP status code: `204 No
        # Content`
        # @param [String] name
        #   Required. Name of the developer. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_id``
        # @param [String] action
        #   Status of the developer. Valid values are `active` and `inactive`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_developer_developer_status(name, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a developer. This API replaces the existing developer details with
        # those specified in the request. Include or exclude any existing details that
        # you want to retain or delete, respectively. The custom attribute limit is 18. *
        # *Note**: OAuth access tokens and Key Management Service (KMS) entities (apps,
        # developers, and API products) are cached for 180 seconds (current default).
        # Any custom attributes associated with these entities are cached for at least
        # 180 seconds after the entity is accessed at runtime. Therefore, an `ExpiresIn`
        # element on the OAuthV2 policy won't be able to expire an access token in less
        # than 180 seconds.
        # @param [String] name
        #   Required. Email address of the developer. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer] google_cloud_apigee_v1_developer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_developer(name, google_cloud_apigee_v1_developer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer::Representation
          command.request_object = google_cloud_apigee_v1_developer_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Developer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the monetization configuration for the developer.
        # @param [String] name
        #   Required. Monetization configuration for the developer. Use the following
        #   structure in your request: `organizations/`org`/developers/`developer`/
        #   monetizationConfig`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig] google_cloud_apigee_v1_developer_monetization_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_developer_monetization_config(name, google_cloud_apigee_v1_developer_monetization_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig::Representation
          command.request_object = google_cloud_apigee_v1_developer_monetization_config_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperMonetizationConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates attributes for a developer app. This API replaces the current
        # attributes with those specified in the request.
        # @param [String] name
        #   Required. Name of the developer app. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/apps/`app``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] google_cloud_apigee_v1_attributes_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def attributes_organization_developer_app(name, google_cloud_apigee_v1_attributes_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/attributes', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.request_object = google_cloud_apigee_v1_attributes_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an app associated with a developer. This API associates the developer
        # app with the specified API product and auto-generates an API key for the app
        # to use in calls to API proxies inside that API product. The `name` is the
        # unique ID of the app that you can use in API calls. The `DisplayName` (set as
        # an attribute) appears in the UI. If you don't set the `DisplayName` attribute,
        # the `name` appears in the UI.
        # @param [String] parent
        #   Required. Name of the developer. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] google_cloud_apigee_v1_developer_app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_developer_app(parent, google_cloud_apigee_v1_developer_app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apps', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.request_object = google_cloud_apigee_v1_developer_app_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a developer app. **Note**: The delete operation is asynchronous. The
        # developer app is deleted immediately, but its associated resources, such as
        # app keys or access tokens, may take anywhere from a few seconds to a few
        # minutes to be deleted.
        # @param [String] name
        #   Required. Name of the developer app. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/apps/`app``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_developer_app(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Manages access to a developer app by enabling you to: * Approve or revoke a
        # developer app * Generate a new consumer key and secret for a developer app To
        # approve or revoke a developer app, set the `action` query parameter to `
        # approve` or `revoke`, respectively, and the `Content-Type` header to `
        # application/octet-stream`. If a developer app is revoked, none of its API keys
        # are valid for API calls even though the keys are still approved. If successful,
        # the API call returns the following HTTP status code: `204 No Content` To
        # generate a new consumer key and secret for a developer app, pass the new key/
        # secret details. Rather than replace an existing key, this API generates a new
        # key. In this case, multiple key pairs may be associated with a single
        # developer app. Each key pair has an independent status (`approve` or `revoke`)
        # and expiration time. Any approved, non-expired key can be used in an API call.
        # For example, if you're using API key rotation, you can generate new keys with
        # expiration times that overlap keys that are going to expire. You might also
        # generate a new consumer key/secret if the security of the original key/secret
        # is compromised. The `keyExpiresIn` property defines the expiration time for
        # the API key in milliseconds. If you don't set this property or set it to `-1`,
        # the API key never expires. **Notes**: * When generating a new key/secret, this
        # API replaces the existing attributes, notes, and callback URLs with those
        # specified in the request. Include or exclude any existing information that you
        # want to retain or delete, respectively. * To migrate existing consumer keys
        # and secrets to hybrid from another system, see the CreateDeveloperAppKey API.
        # @param [String] name
        #   Required. Name of the developer app. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/apps/`app``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] google_cloud_apigee_v1_developer_app_object
        # @param [String] action
        #   Action. Valid values are `approve` or `revoke`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_organization_developer_app_key_pair_or_update_developer_app_status(name, google_cloud_apigee_v1_developer_app_object = nil, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.request_object = google_cloud_apigee_v1_developer_app_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the details for a developer app.
        # @param [String] name
        #   Required. Name of the developer app. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/apps/`app``
        # @param [String] entity
        #   **Note**: Must be used in conjunction with the `query` parameter. Set to `
        #   apiresources` to return the number of API resources that have been approved
        #   for access by a developer app in the specified Apigee organization.
        # @param [String] query
        #   **Note**: Must be used in conjunction with the `entity` parameter. Set to `
        #   count` to return the number of API resources that have been approved for
        #   access by a developer app in the specified Apigee organization.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer_app(name, entity: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp
          command.params['name'] = name unless name.nil?
          command.query['entity'] = entity unless entity.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all apps created by a developer in an Apigee organization. Optionally,
        # you can request an expanded view of the developer apps. A maximum of 100
        # developer apps are returned per API call. You can paginate the list of
        # deveoper apps returned using the `startKey` and `count` query parameters.
        # @param [String] parent
        #   Required. Name of the developer. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email``
        # @param [Fixnum] count
        #   Number of developer apps to return in the API call. Use with the `startKey`
        #   parameter to provide more targeted filtering. The limit is 1000.
        # @param [Boolean] expand
        #   Optional. Specifies whether to expand the results. Set to `true` to expand the
        #   results. This query parameter is not valid if you use the `count` or `startKey`
        #   query parameters.
        # @param [Boolean] shallow_expand
        #   Optional. Specifies whether to expand the results in shallow mode. Set to `
        #   true` to expand the results in shallow mode.
        # @param [String] start_key
        #   **Note**: Must be used in conjunction with the `count` parameter. Name of the
        #   developer app from which to start displaying the list of developer apps. For
        #   example, if you're returning 50 developer apps at a time (using the `count`
        #   query parameter), you can view developer apps 50-99 by entering the name of
        #   the 50th developer app. The developer app name is case sensitive.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_developer_apps(parent, count: nil, expand: nil, shallow_expand: nil, start_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperAppsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['count'] = count unless count.nil?
          command.query['expand'] = expand unless expand.nil?
          command.query['shallowExpand'] = shallow_expand unless shallow_expand.nil?
          command.query['startKey'] = start_key unless start_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the details for a developer app. In addition, you can add an API
        # product to a developer app and automatically generate an API key for the app
        # to use when calling APIs in the API product. If you want to use an existing
        # API key for the API product, add the API product to the API key using the
        # UpdateDeveloperAppKey API. Using this API, you cannot update the following: *
        # App name as it is the primary key used to identify the app and cannot be
        # changed. * Scopes associated with the app. Instead, use the
        # ReplaceDeveloperAppKey API. This API replaces the existing attributes with
        # those specified in the request. Include or exclude any existing attributes
        # that you want to retain or delete, respectively.
        # @param [String] name
        #   Required. Name of the developer app. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/apps/`app``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] google_cloud_apigee_v1_developer_app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_developer_app(name, google_cloud_apigee_v1_developer_app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.request_object = google_cloud_apigee_v1_developer_app_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperApp
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a developer app attribute.
        # @param [String] name
        #   Required. Name of the developer app attribute. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer_email`/apps/`app`/
        #   attributes/`attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_developer_app_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a developer app attribute.
        # @param [String] name
        #   Required. Name of the developer app attribute. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer_email`/apps/`app`/
        #   attributes/`attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer_app_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all developer app attributes.
        # @param [String] parent
        #   Required. Name of the developer app. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/apps/`app``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_developer_app_attributes(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attributes', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a developer app attribute. **Note**: OAuth access tokens and Key
        # Management Service (KMS) entities (apps, developers, and API products) are
        # cached for 180 seconds (current default). Any custom attributes associated
        # with these entities are cached for at least 180 seconds after the entity is
        # accessed at runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy
        # won't be able to expire an access token in less than 180 seconds.
        # @param [String] name
        #   Required. Name of the developer app attribute. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer_email`/apps/`app`/
        #   attributes/`attribute``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] google_cloud_apigee_v1_attribute_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_developer_app_attribute_developer_app_attribute(name, google_cloud_apigee_v1_attribute_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.request_object = google_cloud_apigee_v1_attribute_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a custom consumer key and secret for a developer app. This is
        # particularly useful if you want to migrate existing consumer keys and secrets
        # to Apigee from another system. Consumer keys and secrets can contain letters,
        # numbers, underscores, and hyphens. No other special characters are allowed. To
        # avoid service disruptions, a consumer key and secret should not exceed 2 KBs
        # each. **Note**: When creating the consumer key and secret, an association to
        # API products will not be made. Therefore, you should not specify the
        # associated API products in your request. Instead, use the
        # UpdateDeveloperAppKey API to make the association after the consumer key and
        # secret are created. If a consumer key and secret already exist, you can keep
        # them or delete them using the DeleteDeveloperAppKey API. **Note**: All keys
        # start out with status=approved, even if status=revoked is passed when the key
        # is created. To revoke a key, use the UpdateDeveloperAppKey API.
        # @param [String] parent
        #   Parent of the developer app key. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email`/apps`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] google_cloud_apigee_v1_developer_app_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_developer_app_key(parent, google_cloud_apigee_v1_developer_app_key_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keys', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.request_object = google_cloud_apigee_v1_developer_app_key_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an app's consumer key and removes all API products associated with the
        # app. After the consumer key is deleted, it cannot be used to access any APIs. *
        # *Note**: After you delete a consumer key, you may want to: 1. Create a new
        # consumer key and secret for the developer app using the CreateDeveloperAppKey
        # API, and subsequently add an API product to the key using the
        # UpdateDeveloperAppKey API. 2. Delete the developer app, if it is no longer
        # required.
        # @param [String] name
        #   Name of the developer app key. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email`/apps/`app`/keys/`key``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_developer_app_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details for a consumer key for a developer app, including the key and
        # secret value, associated API products, and other information.
        # @param [String] name
        #   Name of the developer app key. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email`/apps/`app`/keys/`key``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer_app_key(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the scope of an app. This API replaces the existing scopes with those
        # specified in the request. Include or exclude any existing scopes that you want
        # to retain or delete, respectively. The specified scopes must already be
        # defined for the API products associated with the app. This API sets the `
        # scopes` element under the `apiProducts` element in the attributes of the app.
        # @param [String] name
        #   Name of the developer app key. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email`/apps/`app`/keys/`key``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] google_cloud_apigee_v1_developer_app_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def replace_organization_developer_app_key_developer_app_key(name, google_cloud_apigee_v1_developer_app_key_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.request_object = google_cloud_apigee_v1_developer_app_key_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds an API product to a developer app key, enabling the app that holds the
        # key to access the API resources bundled in the API product. In addition, you
        # can add attributes to a developer app key. This API replaces the existing
        # attributes with those specified in the request. Include or exclude any
        # existing attributes that you want to retain or delete, respectively. You can
        # use the same key to access all API products associated with the app.
        # @param [String] name
        #   Name of the developer app key. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email`/apps/`app`/keys/`key``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] google_cloud_apigee_v1_developer_app_key_object
        # @param [String] action
        #   Approve or revoke the consumer key by setting this value to `approve` or `
        #   revoke`, respectively. The `Content-Type` header must be set to `application/
        #   octet-stream`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_developer_app_key_developer_app_key(name, google_cloud_apigee_v1_developer_app_key_object = nil, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.request_object = google_cloud_apigee_v1_developer_app_key_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes an API product from an app's consumer key. After the API product is
        # removed, the app cannot access the API resources defined in that API product. *
        # *Note**: The consumer key is not removed, only its association with the API
        # product.
        # @param [String] name
        #   Name of the API product in the developer app key in the following format: `
        #   organizations/`org`/developers/`developer_email`/apps/`app`/keys/`key`/
        #   apiproducts/`apiproduct``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_developer_app_key_apiproduct(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves or revokes the consumer key for an API product. After a consumer key
        # is approved, the app can use it to access APIs. A consumer key that is revoked
        # or pending cannot be used to access an API. Any access tokens associated with
        # a revoked consumer key will remain active. However, Apigee checks the status
        # of the consumer key and if set to `revoked` will not allow access to the API.
        # @param [String] name
        #   Name of the API product in the developer app key in the following format: `
        #   organizations/`org`/developers/`developer_email`/apps/`app`/keys/`key`/
        #   apiproducts/`apiproduct``
        # @param [String] action
        #   Approve or revoke the consumer key by setting this value to `approve` or `
        #   revoke`, respectively.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_developer_app_key_apiproduct_developer_app_key_api_product(name, action: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['action'] = action unless action.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a custom consumer key and secret for a developer app. This is
        # particularly useful if you want to migrate existing consumer keys and secrets
        # to Apigee from another system. Consumer keys and secrets can contain letters,
        # numbers, underscores, and hyphens. No other special characters are allowed. To
        # avoid service disruptions, a consumer key and secret should not exceed 2 KBs
        # each. **Note**: When creating the consumer key and secret, an association to
        # API products will not be made. Therefore, you should not specify the
        # associated API products in your request. Instead, use the
        # UpdateDeveloperAppKey API to make the association after the consumer key and
        # secret are created. If a consumer key and secret already exist, you can keep
        # them or delete them using the DeleteDeveloperAppKey API. **Note**: All keys
        # start out with status=approved, even if status=revoked is passed when the key
        # is created. To revoke a key, use the UpdateDeveloperAppKey API.
        # @param [String] parent
        #   Parent of the developer app key. Use the following structure in your request: `
        #   organizations/`org`/developers/`developer_email`/apps`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] google_cloud_apigee_v1_developer_app_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_developer_app_key_create(parent, google_cloud_apigee_v1_developer_app_key_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keys/create', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.request_object = google_cloud_apigee_v1_developer_app_key_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperAppKey
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a developer attribute.
        # @param [String] name
        #   Required. Name of the developer attribute. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/attributes/`
        #   attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_developer_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the value of the specified developer attribute.
        # @param [String] name
        #   Required. Name of the developer attribute. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/attributes/`
        #   attribute``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer_attribute(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all developer attributes.
        # @param [String] parent
        #   Required. Email address of the developer for which attributes are being listed.
        #   Use the following structure in your request: `organizations/`org`/developers/`
        #   developer_email``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_developer_attributes(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attributes', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attributes
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a developer attribute. **Note**: OAuth access tokens and Key
        # Management Service (KMS) entities (apps, developers, and API products) are
        # cached for 180 seconds (default). Any custom attributes associated with these
        # entities are cached for at least 180 seconds after the entity is accessed at
        # runtime. Therefore, an `ExpiresIn` element on the OAuthV2 policy won't be able
        # to expire an access token in less than 180 seconds.
        # @param [String] name
        #   Required. Name of the developer attribute. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email`/attributes/`
        #   attribute``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] google_cloud_apigee_v1_attribute_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_developer_attribute_developer_attribute(name, google_cloud_apigee_v1_attribute_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.request_object = google_cloud_apigee_v1_attribute_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Attribute
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adjust the prepaid balance for the developer. This API will be used in
        # scenarios where the developer has been under-charged or over-charged.
        # @param [String] name
        #   Required. Account balance for the developer. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer`/balance`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AdjustDeveloperBalanceRequest] google_cloud_apigee_v1_adjust_developer_balance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def adjust_organization_developer_balance(name, google_cloud_apigee_v1_adjust_developer_balance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:adjust', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AdjustDeveloperBalanceRequest::Representation
          command.request_object = google_cloud_apigee_v1_adjust_developer_balance_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Credits the account balance for the developer.
        # @param [String] name
        #   Required. Account balance for the developer. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer`/balance`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CreditDeveloperBalanceRequest] google_cloud_apigee_v1_credit_developer_balance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def credit_organization_developer_balance(name, google_cloud_apigee_v1_credit_developer_balance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:credit', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CreditDeveloperBalanceRequest::Representation
          command.request_object = google_cloud_apigee_v1_credit_developer_balance_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperBalance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a subscription to an API product.
        # @param [String] parent
        #   Required. Email address of the developer that is purchasing a subscription to
        #   the API product. Use the following structure in your request: `organizations/`
        #   org`/developers/`developer_email``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription] google_cloud_apigee_v1_developer_subscription_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_developer_subscription(parent, google_cloud_apigee_v1_developer_subscription_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/subscriptions', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription::Representation
          command.request_object = google_cloud_apigee_v1_developer_subscription_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Expires an API product subscription immediately.
        # @param [String] name
        #   Required. Name of the API product subscription. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer_email`/subscriptions/`
        #   subscription``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest] google_cloud_apigee_v1_expire_developer_subscription_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def expire_organization_developer_subscription(name, google_cloud_apigee_v1_expire_developer_subscription_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:expire', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ExpireDeveloperSubscriptionRequest::Representation
          command.request_object = google_cloud_apigee_v1_expire_developer_subscription_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details for an API product subscription.
        # @param [String] name
        #   Required. Name of the API product subscription. Use the following structure in
        #   your request: `organizations/`org`/developers/`developer_email`/subscriptions/`
        #   subscription``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_developer_subscription(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeveloperSubscription
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all API product subscriptions for a developer.
        # @param [String] parent
        #   Required. Email address of the developer. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email``
        # @param [Fixnum] count
        #   Number of API product subscriptions to return in the API call. Use with `
        #   startKey` to provide more targeted filtering. Defaults to 100. The maximum
        #   limit is 1000.
        # @param [String] start_key
        #   Name of the API product subscription from which to start displaying the list
        #   of subscriptions. If omitted, the list starts from the first item. For example,
        #   to view the API product subscriptions from 51-150, set the value of `startKey`
        #   to the name of the 51st subscription and set the value of `count` to 100.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_developer_subscriptions(parent, count: nil, start_key: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/subscriptions', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeveloperSubscriptionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['count'] = count unless count.nil?
          command.query['startKey'] = start_key unless start_key.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an endpoint attachment. **Note:** Not supported for Apigee hybrid.
        # @param [String] parent
        #   Required. Organization the endpoint attachment will be created in.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment] google_cloud_apigee_v1_endpoint_attachment_object
        # @param [String] endpoint_attachment_id
        #   ID to use for the endpoint attachment. ID must start with a lowercase letter
        #   followed by up to 31 lowercase letters, numbers, or hyphens, and cannot end
        #   with a hyphen. The minimum length is 2.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_endpoint_attachment(parent, google_cloud_apigee_v1_endpoint_attachment_object = nil, endpoint_attachment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/endpointAttachments', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment::Representation
          command.request_object = google_cloud_apigee_v1_endpoint_attachment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['endpointAttachmentId'] = endpoint_attachment_id unless endpoint_attachment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an endpoint attachment.
        # @param [String] name
        #   Required. Name of the endpoint attachment. Use the following structure in your
        #   request: `organizations/`org`/endpointAttachments/`endpoint_attachment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_endpoint_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the endpoint attachment.
        # @param [String] name
        #   Required. Name of the endpoint attachment. Use the following structure in your
        #   request: `organizations/`org`/endpointAttachments/`endpoint_attachment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_endpoint_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EndpointAttachment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the endpoint attachments in an organization.
        # @param [String] parent
        #   Required. Name of the organization for which to list endpoint attachments. Use
        #   the following structure in your request: `organizations/`org``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of endpoint attachments to return. If unspecified, at
        #   most 25 attachments will be returned.
        # @param [String] page_token
        #   Optional. Page token, returned from a previous `ListEndpointAttachments` call,
        #   that you can use to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEndpointAttachmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEndpointAttachmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_endpoint_attachments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/endpointAttachments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEndpointAttachmentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEndpointAttachmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new environment group.
        # @param [String] parent
        #   Required. Name of the organization in which to create the environment group in
        #   the following format: `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup] google_cloud_apigee_v1_environment_group_object
        # @param [String] name
        #   ID of the environment group. Overrides any ID in the environment_group
        #   resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_envgroup(parent, google_cloud_apigee_v1_environment_group_object = nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/envgroups', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup::Representation
          command.request_object = google_cloud_apigee_v1_environment_group_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an environment group.
        # @param [String] name
        #   Required. Name of the environment group in the following format: `
        #   organizations/`org`/envgroups/`envgroup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_envgroup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an environment group.
        # @param [String] name
        #   Required. Name of the environment group in the following format: `
        #   organizations/`org`/envgroups/`envgroup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_envgroup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the deployed ingress configuration for an environment group.
        # @param [String] name
        #   Required. Name of the deployed configuration for the environment group in the
        #   following format: 'organizations/`org`/envgroups/`envgroup`/
        #   deployedIngressConfig'.
        # @param [String] view
        #   When set to FULL, additional details about the specific deployments receiving
        #   traffic will be included in the IngressConfig response's RoutingRules.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_envgroup_deployed_ingress_config(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupConfig
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all environment groups.
        # @param [String] parent
        #   Required. Name of the organization for which to list environment groups in the
        #   following format: `organizations/`org``.
        # @param [Fixnum] page_size
        #   Maximum number of environment groups to return. The page size defaults to 25.
        # @param [String] page_token
        #   Page token, returned from a previous ListEnvironmentGroups call, that you can
        #   use to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_envgroups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/envgroups', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an environment group.
        # @param [String] name
        #   Required. Name of the environment group to update in the format: `
        #   organizations/`org`/envgroups/`envgroup`.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup] google_cloud_apigee_v1_environment_group_object
        # @param [String] update_mask
        #   List of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_envgroup(name, google_cloud_apigee_v1_environment_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroup::Representation
          command.request_object = google_cloud_apigee_v1_environment_group_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new attachment of an environment to an environment group.
        # @param [String] parent
        #   Required. EnvironmentGroup under which to create the attachment in the
        #   following format: `organizations/`org`/envgroups/`envgroup``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment] google_cloud_apigee_v1_environment_group_attachment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_envgroup_attachment(parent, google_cloud_apigee_v1_environment_group_attachment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/attachments', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment::Representation
          command.request_object = google_cloud_apigee_v1_environment_group_attachment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an environment group attachment.
        # @param [String] name
        #   Required. Name of the environment group attachment to delete in the following
        #   format: `organizations/`org`/envgroups/`envgroup`/attachments/`attachment``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_envgroup_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an environment group attachment.
        # @param [String] name
        #   Required. Name of the environment group attachment in the following format: `
        #   organizations/`org`/envgroups/`envgroup`/attachments/`attachment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_envgroup_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentGroupAttachment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all attachments of an environment group.
        # @param [String] parent
        #   Required. Name of the environment group in the following format: `
        #   organizations/`org`/envgroups/`envgroup``.
        # @param [Fixnum] page_size
        #   Maximum number of environment group attachments to return. The page size
        #   defaults to 25.
        # @param [String] page_token
        #   Page token, returned by a previous ListEnvironmentGroupAttachments call, that
        #   you can use to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_envgroup_attachments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attachments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentGroupAttachmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an environment in an organization.
        # @param [String] parent
        #   Required. Name of the organization in which the environment will be created.
        #   Use the following structure in your request: `organizations/`org``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment] google_cloud_apigee_v1_environment_object
        # @param [String] name
        #   Optional. Name of the environment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment(parent, google_cloud_apigee_v1_environment_object = nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/environments', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment::Representation
          command.request_object = google_cloud_apigee_v1_environment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an environment from an organization. **Warning: You must delete all
        # key value maps and key value entries before you delete an environment.**
        # Otherwise, if you re-create the environment the key value map entry operations
        # will encounter encryption/decryption discrepancies.
        # @param [String] name
        #   Required. Name of the environment. Use the following structure in your request:
        #   `organizations/`org`/environments/`env``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets environment details.
        # @param [String] name
        #   Required. Name of the environment. Use the following structure in your request:
        #   `organizations/`org`/environments/`env``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the add-ons config of an environment.
        # @param [String] name
        #   Required. Name of the add-ons config. Must be in the format of `/organizations/
        #   `org`/environments/`env`/addonsConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_addons_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AddonsConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the API Security runtime configuration for an environment. This named
        # ApiSecurityRuntimeConfig to prevent conflicts with ApiSecurityConfig from
        # addon config.
        # @param [String] name
        #   Required. Name of the environment API Security Runtime configuration resource.
        #   Use the following structure in your request: `organizations/`org`/environments/
        #   `env`/apiSecurityRuntimeConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiSecurityRuntimeConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiSecurityRuntimeConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_api_security_runtime_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiSecurityRuntimeConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiSecurityRuntimeConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the debug mask singleton resource for an environment.
        # @param [String] name
        #   Required. Name of the debug mask. Use the following structure in your request:
        #   `organizations/`org`/environments/`env`/debugmask`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_debugmask(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the deployed configuration for an environment.
        # @param [String] name
        #   Required. Name of the environment deployed configuration resource. Use the
        #   following structure in your request: `organizations/`org`/environments/`env`/
        #   deployedConfig`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_deployed_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnvironmentConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM policy on an environment. For more information, see [Manage users,
        # roles, and permissions using the API](https://cloud.google.com/apigee/docs/
        # api-platform/system-administration/manage-users-roles). You must have the `
        # apigee.environments.getIamPolicy` permission to call this API.
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_iam_policy(resource, options_requested_policy_version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+resource}:getIamPolicy', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['options.requestedPolicyVersion'] = options_requested_policy_version unless options_requested_policy_version.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetSecurityActionConfig returns the current SecurityActions configuration.
        # @param [String] name
        #   Required. The name of the SecurityActionsConfig to retrieve. This will always
        #   be: `organizations/`org`/environments/`env`/security_actions_config`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_security_actions_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get distributed trace configuration in an environment.
        # @param [String] name
        #   Required. Name of the trace configuration. Use the following structure in your
        #   request: "organizations/*/environments/*/traceConfig".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_trace_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates properties for an Apigee environment with patch semantics using a
        # field mask. **Note:** Not supported for Apigee hybrid.
        # @param [String] name
        #   Required. Name of the environment. Use the following structure in your request:
        #   `organizations/`org`/environments/`environment``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment] google_cloud_apigee_v1_environment_object
        # @param [String] update_mask
        #   List of fields to be updated. Fields that can be updated: node_config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_organization_environment_environment(name, google_cloud_apigee_v1_environment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment::Representation
          command.request_object = google_cloud_apigee_v1_environment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM policy on an environment, if the policy already exists it will be
        # replaced. For more information, see [Manage users, roles, and permissions
        # using the API](https://cloud.google.com/apigee/docs/api-platform/system-
        # administration/manage-users-roles). You must have the `apigee.environments.
        # setIamPolicy` permission to call this API.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ApigeeV1::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_environment_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a subscription for the environment's Pub/Sub topic. The server will
        # assign a random name for this subscription. The "name" and "push_config" must *
        # not* be specified.
        # @param [String] parent
        #   Required. Name of the environment. Use the following structure in your request:
        #   `organizations/`org`/environments/`env``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def subscribe_organization_environment(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:subscribe', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Subscription::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Subscription
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests the permissions of a user on an environment, and returns a subset of
        # permissions that the user has on the environment. If the environment does not
        # exist, an empty permission set is returned (a NOT_FOUND error is not returned).
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ApigeeV1::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_organization_environment_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a subscription for the environment's Pub/Sub topic.
        # @param [String] parent
        #   Required. Name of the environment. Use the following structure in your request:
        #   `organizations/`org`/environments/`env``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Subscription] google_cloud_apigee_v1_subscription_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unsubscribe_organization_environment(parent, google_cloud_apigee_v1_subscription_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:unsubscribe', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Subscription::Representation
          command.request_object = google_cloud_apigee_v1_subscription_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing environment. When updating properties, you must pass all
        # existing properties to the API, even if they are not being changed. If you
        # omit properties from the payload, the properties are removed. To get the
        # current list of properties for the environment, use the [Get Environment API](
        # get). **Note**: Both `PUT` and `POST` methods are supported for updating an
        # existing environment.
        # @param [String] name
        #   Required. Name of the environment. Use the following structure in your request:
        #   `organizations/`org`/environments/`env``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment] google_cloud_apigee_v1_environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment(name, google_cloud_apigee_v1_environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment::Representation
          command.request_object = google_cloud_apigee_v1_environment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the debug mask singleton resource for an environment.
        # @param [String] name
        #   Name of the debug mask.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask] google_cloud_apigee_v1_debug_mask_object
        # @param [Boolean] replace_repeated_fields
        #   Boolean flag that specifies whether to replace existing values in the debug
        #   mask when doing an update. Set to true to replace existing values. The default
        #   behavior is to append the values (false).
        # @param [String] update_mask
        #   Field debug mask to support partial updates.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_debugmask(name, google_cloud_apigee_v1_debug_mask_object = nil, replace_repeated_fields: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask::Representation
          command.request_object = google_cloud_apigee_v1_debug_mask_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugMask
          command.params['name'] = name unless name.nil?
          command.query['replaceRepeatedFields'] = replace_repeated_fields unless replace_repeated_fields.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing environment. When updating properties, you must pass all
        # existing properties to the API, even if they are not being changed. If you
        # omit properties from the payload, the properties are removed. To get the
        # current list of properties for the environment, use the [Get Environment API](
        # get). **Note**: Both `PUT` and `POST` methods are supported for updating an
        # existing environment.
        # @param [String] name
        #   Required. Name of the environment. Use the following structure in your request:
        #   `organizations/`org`/environments/`env``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment] google_cloud_apigee_v1_environment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_environment(name, google_cloud_apigee_v1_environment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment::Representation
          command.request_object = google_cloud_apigee_v1_environment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Environment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # UpdateSecurityActionConfig updates the current SecurityActions configuration.
        # This method is used to enable/disable the feature at the environment level.
        # @param [String] name
        #   This is a singleton resource, the name will always be set by SecurityActions
        #   and any user input will be ignored. The name is always: `organizations/`org`/
        #   environments/`env`/security_actions_config`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig] google_cloud_apigee_v1_security_actions_config_object
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_security_actions_config(name, google_cloud_apigee_v1_security_actions_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig::Representation
          command.request_object = google_cloud_apigee_v1_security_actions_config_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityActionsConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the trace configurations in an environment. Note that the repeated
        # fields have replace semantics when included in the field mask and that they
        # will be overwritten by the value of the fields in the request body.
        # @param [String] name
        #   Required. Name of the trace configuration. Use the following structure in your
        #   request: "organizations/*/environments/*/traceConfig".
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig] google_cloud_apigee_v1_trace_config_object
        # @param [String] update_mask
        #   List of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_trace_config(name, google_cloud_apigee_v1_trace_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig::Representation
          command.request_object = google_cloud_apigee_v1_trace_config_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an add-on enablement status of an environment.
        # @param [String] name
        #   Required. Name of the add-ons config. Must be in the format of `/organizations/
        #   `org`/environments/`env`/addonsConfig`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SetAddonEnablementRequest] google_cloud_apigee_v1_set_addon_enablement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_organization_environment_addons_config_addon_enablement(name, google_cloud_apigee_v1_set_addon_enablement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:setAddonEnablement', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SetAddonEnablementRequest::Representation
          command.request_object = google_cloud_apigee_v1_set_addon_enablement_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of metrics and dimensions that can be used to create analytics
        # queries and reports. Each schema element contains the name of the field, its
        # associated type, and a flag indicating whether it is a standard or custom
        # field.
        # @param [String] name
        #   Required. Path to the schema. Use the following structure in your request: `
        #   organizations/`org`/environments/`env`/analytics/admin/schemav2`.
        # @param [Boolean] disable_cache
        #   Flag that specifies whether the schema is be read from the database or cache.
        #   Set to `true` to read the schema from the database. Defaults to cache.
        # @param [String] type
        #   Required. Name of the dataset for which you want to retrieve the schema. For
        #   example: `fact` or `agg_cus1`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_analytic_admin_schemav2(name, disable_cache: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Schema::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Schema
          command.params['name'] = name unless name.nil?
          command.query['disableCache'] = disable_cache unless disable_cache.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a data export job to be processed in the background. If the request is
        # successful, the API returns a 201 status, a URI that can be used to retrieve
        # the status of the export job, and the `state` value of "enqueued".
        # @param [String] parent
        #   Required. Names of the parent organization and environment. Must be of the
        #   form `organizations/`org`/environments/`env``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ExportRequest] google_cloud_apigee_v1_export_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_analytic_export(parent, google_cloud_apigee_v1_export_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/analytics/exports', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ExportRequest::Representation
          command.request_object = google_cloud_apigee_v1_export_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details and status of an analytics export job. If the export job is
        # still in progress, its `state` is set to "running". After the export job has
        # completed successfully, its `state` is set to "completed". If the export job
        # fails, its `state` is set to `failed`.
        # @param [String] name
        #   Required. Resource name of the export to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_analytic_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Export
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the details and status of all analytics export jobs belonging to the
        # parent organization and environment.
        # @param [String] parent
        #   Required. Names of the parent organization and environment. Must be of the
        #   form `organizations/`org`/environments/`env``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListExportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListExportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_analytic_exports(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/analytics/exports', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListExportsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListExportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of an API proxy in an environment.
        # @param [String] parent
        #   Required. Name representing an API proxy in an environment in the following
        #   format: `organizations/`org`/environments/`env`/apis/`api``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_api_deployments(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys a revision of an API proxy. If another revision of the same API proxy
        # revision is currently deployed, set the `override` parameter to `true` to have
        # this revision replace the currently deployed revision. You cannot invoke an
        # API proxy until it has been deployed to an environment. After you deploy an
        # API proxy revision, you cannot edit it. To edit the API proxy, you must create
        # and deploy a new revision. For a request path `organizations/`org`/
        # environments/`env`/apis/`api`/revisions/`rev`/deployments`, two permissions
        # are required: * `apigee.deployments.create` on the resource `organizations/`
        # org`/environments/`env`` * `apigee.proxyrevisions.deploy` on the resource `
        # organizations/`org`/apis/`api`/revisions/`rev``
        # @param [String] name
        #   Required. Name of the API proxy revision deployment in the following format: `
        #   organizations/`org`/environments/`env`/apis/`api`/revisions/`rev``
        # @param [Boolean] override
        #   Flag that specifies whether the new deployment replaces other deployed
        #   revisions of the API proxy in the environment. Set `override` to `true` to
        #   replace other deployed revisions. By default, `override` is `false` and the
        #   deployment is rejected if other revisions of the API proxy are deployed in the
        #   environment.
        # @param [Boolean] sequenced_rollout
        #   Flag that specifies whether to enable sequenced rollout. If set to `true`, the
        #   routing rules for this deployment and the environment changes to add the
        #   deployment will be rolled out in a safe order. This reduces the risk of
        #   downtime that could be caused by changing the environment group's routing
        #   before the new destination for the affected traffic is ready to receive it.
        #   This should only be necessary if the new deployment will be capturing traffic
        #   from another environment under a shared environment group or if traffic will
        #   be rerouted to a different environment due to a base path removal. The
        #   generateDeployChangeReport API may be used to examine routing changes before
        #   issuing the deployment request, and its response will indicate if a sequenced
        #   rollout is recommended for the deployment.
        # @param [String] service_account
        #   Google Cloud IAM service account. The service account represents the identity
        #   of the deployed proxy, and determines what permissions it has. The format must
        #   be ``ACCOUNT_ID`@`PROJECT`.iam.gserviceaccount.com`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_organization_environment_api_revision(name, override: nil, sequenced_rollout: nil, service_account: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['override'] = override unless override.nil?
          command.query['sequencedRollout'] = sequenced_rollout unless sequenced_rollout.nil?
          command.query['serviceAccount'] = service_account unless service_account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the deployment of an API proxy revision and actual state reported by
        # runtime pods.
        # @param [String] name
        #   Required. Name representing an API proxy revision in an environment in the
        #   following format: `organizations/`org`/environments/`env`/apis/`api`/revisions/
        #   `rev``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_api_revision_deployments(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploys an API proxy revision from an environment. For a request path `
        # organizations/`org`/environments/`env`/apis/`api`/revisions/`rev`/deployments`,
        # two permissions are required: * `apigee.deployments.delete` on the resource `
        # organizations/`org`/environments/`env`` * `apigee.proxyrevisions.undeploy` on
        # the resource `organizations/`org`/apis/`api`/revisions/`rev``
        # @param [String] name
        #   Required. Name of the API proxy revision deployment in the following format: `
        #   organizations/`org`/environments/`env`/apis/`api`/revisions/`rev``
        # @param [Boolean] sequenced_rollout
        #   Flag that specifies whether to enable sequenced rollout. If set to `true`, the
        #   environment group routing rules corresponding to this deployment will be
        #   removed before removing the deployment from the runtime. This is likely to be
        #   a rare use case; it is only needed when the intended effect of undeploying
        #   this proxy is to cause the traffic it currently handles to be rerouted to some
        #   other existing proxy in the environment group. The
        #   GenerateUndeployChangeReport API may be used to examine routing changes before
        #   issuing the undeployment request, and its response will indicate if a
        #   sequenced rollout is recommended for the undeployment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_organization_environment_api_revision(name, sequenced_rollout: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['sequencedRollout'] = sequenced_rollout unless sequenced_rollout.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a debug session for a deployed API Proxy revision.
        # @param [String] parent
        #   Required. The resource name of the API Proxy revision deployment for which to
        #   create the DebugSession. Must be of the form `organizations/`organization`/
        #   environments/`environment`/apis/`api`/revisions/`revision``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession] google_cloud_apigee_v1_debug_session_object
        # @param [Fixnum] timeout
        #   Optional. The time in seconds after which this DebugSession should end. A
        #   timeout specified in DebugSession will overwrite this value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_api_revision_debugsession(parent, google_cloud_apigee_v1_debug_session_object = nil, timeout: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/debugsessions', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession::Representation
          command.request_object = google_cloud_apigee_v1_debug_session_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession
          command.params['parent'] = parent unless parent.nil?
          command.query['timeout'] = timeout unless timeout.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the data from a debug session. This does not cancel the debug session
        # or prevent further data from being collected if the session is still active in
        # runtime pods.
        # @param [String] name
        #   Required. The name of the debug session to delete. Must be of the form: `
        #   organizations/`organization`/environments/`environment`/apis/`api`/revisions/`
        #   revision`/debugsessions/`debugsession``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_api_revision_debugsession_data(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}/data', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a debug session.
        # @param [String] name
        #   Required. The name of the debug session to retrieve. Must be of the form: `
        #   organizations/`organization`/environments/`environment`/apis/`api`/revisions/`
        #   revision`/debugsessions/`session``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_api_revision_debugsession(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSession
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists debug sessions that are currently active in the given API Proxy revision.
        # @param [String] parent
        #   Required. The name of the API Proxy revision deployment for which to list
        #   debug sessions. Must be of the form: `organizations/`organization`/
        #   environments/`environment`/apis/`api`/revisions/`revision``.
        # @param [Fixnum] page_size
        #   Maximum number of debug sessions to return. The page size defaults to 25.
        # @param [String] page_token
        #   Page token, returned from a previous ListDebugSessions call, that you can use
        #   to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDebugSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDebugSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_api_revision_debugsessions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/debugsessions', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDebugSessionsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDebugSessionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the debug data from a transaction.
        # @param [String] name
        #   Required. The name of the debug session transaction. Must be of the form: `
        #   organizations/`organization`/environments/`environment`/apis/`api`/revisions/`
        #   revision`/debugsessions/`session`/data/`transaction``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSessionTransaction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSessionTransaction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_api_revision_debugsession_datum(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSessionTransaction::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DebugSessionTransaction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a report for a dry run analysis of a DeployApiProxy request without
        # committing the deployment. In addition to the standard validations performed
        # when adding deployments, additional analysis will be done to detect possible
        # traffic routing changes that would result from this deployment being created.
        # Any potential routing conflicts or unsafe changes will be reported in the
        # response. This routing analysis is not performed for a non-dry-run
        # DeployApiProxy request. For a request path `organizations/`org`/environments/`
        # env`/apis/`api`/revisions/`rev`/deployments:generateDeployChangeReport`, two
        # permissions are required: * `apigee.deployments.create` on the resource `
        # organizations/`org`/environments/`env`` * `apigee.proxyrevisions.deploy` on
        # the resource `organizations/`org`/apis/`api`/revisions/`rev``
        # @param [String] name
        #   Name of the API proxy revision deployment in the following format: `
        #   organizations/`org`/environments/`env`/apis/`api`/revisions/`rev``
        # @param [Boolean] override
        #   Flag that specifies whether to force the deployment of the new revision over
        #   the currently deployed revision by overriding conflict checks.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_organization_environment_api_revision_deployment_deploy_change_report(name, override: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/deployments:generateDeployChangeReport', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport
          command.params['name'] = name unless name.nil?
          command.query['override'] = override unless override.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a report for a dry run analysis of an UndeployApiProxy request
        # without committing the undeploy. In addition to the standard validations
        # performed when removing deployments, additional analysis will be done to
        # detect possible traffic routing changes that would result from this deployment
        # being removed. Any potential routing conflicts or unsafe changes will be
        # reported in the response. This routing analysis is not performed for a non-dry-
        # run UndeployApiProxy request. For a request path `organizations/`org`/
        # environments/`env`/apis/`api`/revisions/`rev`/deployments:
        # generateUndeployChangeReport`, two permissions are required: * `apigee.
        # deployments.delete` on the resource `organizations/`org`/environments/`env`` *
        # `apigee.proxyrevisions.undeploy` on the resource `organizations/`org`/apis/`
        # api`/revisions/`rev``
        # @param [String] name
        #   Name of the API proxy revision deployment in the following format: `
        #   organizations/`org`/environments/`env`/apis/`api`/revisions/`rev``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_organization_environment_api_revision_deployment_undeploy_change_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/deployments:generateUndeployChangeReport', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeploymentChangeReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new ArchiveDeployment.
        # @param [String] parent
        #   Required. The Environment this Archive Deployment will be created in.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment] google_cloud_apigee_v1_archive_deployment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_archive_deployment(parent, google_cloud_apigee_v1_archive_deployment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/archiveDeployments', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment::Representation
          command.request_object = google_cloud_apigee_v1_archive_deployment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an archive deployment.
        # @param [String] name
        #   Required. Name of the Archive Deployment in the following format: `
        #   organizations/`org`/environments/`env`/archiveDeployments/`id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_archive_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a signed URL for downloading the original zip file used to create an
        # Archive Deployment. The URL is only valid for a limited period and should be
        # used within minutes after generation. Each call returns a new upload URL.
        # @param [String] name
        #   Required. The name of the Archive Deployment you want to download.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateDownloadUrlRequest] google_cloud_apigee_v1_generate_download_url_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateDownloadUrlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateDownloadUrlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_organization_environment_archive_deployment_download_url(name, google_cloud_apigee_v1_generate_download_url_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:generateDownloadUrl', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateDownloadUrlRequest::Representation
          command.request_object = google_cloud_apigee_v1_generate_download_url_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateDownloadUrlResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateDownloadUrlResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a signed URL for uploading an Archive zip file to Google Cloud
        # Storage. Once the upload is complete, the signed URL should be passed to
        # CreateArchiveDeployment. When uploading to the generated signed URL, please
        # follow these restrictions: * Source file type should be a zip file. * Source
        # file size should not exceed 1GB limit. * No credentials should be attached -
        # the signed URLs provide access to the target bucket using internal service
        # identity; if credentials were attached, the identity from the credentials
        # would be used, but that identity does not have permissions to upload files to
        # the URL. When making a HTTP PUT request, these two headers need to be
        # specified: * `content-type: application/zip` * `x-goog-content-length-range: 0,
        # 1073741824` And this header SHOULD NOT be specified: * `Authorization: Bearer
        # YOUR_TOKEN`
        # @param [String] parent
        #   Required. The organization and environment to upload to.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateUploadUrlRequest] google_cloud_apigee_v1_generate_upload_url_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateUploadUrlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateUploadUrlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_organization_environment_archive_deployment_upload_url(parent, google_cloud_apigee_v1_generate_upload_url_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/archiveDeployments:generateUploadUrl', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateUploadUrlRequest::Representation
          command.request_object = google_cloud_apigee_v1_generate_upload_url_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateUploadUrlResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GenerateUploadUrlResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified ArchiveDeployment.
        # @param [String] name
        #   Required. Name of the Archive Deployment in the following format: `
        #   organizations/`org`/environments/`env`/archiveDeployments/`id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_archive_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the ArchiveDeployments in the specified Environment.
        # @param [String] parent
        #   Required. Name of the Environment for which to list Archive Deployments in the
        #   format: `organizations/`org`/environments/`env``.
        # @param [String] filter
        #   Optional. An optional query used to return a subset of Archive Deployments
        #   using the semantics defined in https://google.aip.dev/160.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of Archive Deployments to return. If unspecified, at
        #   most 25 deployments will be returned.
        # @param [String] page_token
        #   Optional. Page token, returned from a previous ListArchiveDeployments call,
        #   that you can use to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListArchiveDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListArchiveDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_archive_deployments(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/archiveDeployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListArchiveDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListArchiveDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing ArchiveDeployment. Labels can modified but most of the
        # other fields are not modifiable.
        # @param [String] name
        #   Name of the Archive Deployment in the following format: `organizations/`org`/
        #   environments/`env`/archiveDeployments/`id``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment] google_cloud_apigee_v1_archive_deployment_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_environment_archive_deployment(name, google_cloud_apigee_v1_archive_deployment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment::Representation
          command.request_object = google_cloud_apigee_v1_archive_deployment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ArchiveDeployment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a cache.
        # @param [String] name
        #   Required. Cache resource name of the form: `organizations/`organization_id`/
        #   environments/`environment_id`/caches/`cache_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_cach(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of API proxies or shared flows in an environment.
        # @param [String] parent
        #   Required. Name of the environment for which to return deployment information
        #   in the following format: `organizations/`org`/environments/`env``
        # @param [Boolean] shared_flows
        #   Optional. Flag that specifies whether to return shared flow or API proxy
        #   deployments. Set to `true` to return shared flow deployments; set to `false`
        #   to return API proxy deployments. Defaults to `false`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_deployments(parent, shared_flows: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['sharedFlows'] = shared_flows unless shared_flows.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Attaches a shared flow to a flow hook.
        # @param [String] name
        #   Required. Name of the flow hook to which the shared flow should be attached in
        #   the following format: `organizations/`org`/environments/`env`/flowhooks/`
        #   flowhook``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook] google_cloud_apigee_v1_flow_hook_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def attach_organization_environment_flowhook_shared_flow_to_flow_hook(name, google_cloud_apigee_v1_flow_hook_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook::Representation
          command.request_object = google_cloud_apigee_v1_flow_hook_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Detaches a shared flow from a flow hook.
        # @param [String] name
        #   Required. Name of the flow hook to detach in the following format: `
        #   organizations/`org`/environments/`env`/flowhooks/`flowhook``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def detach_organization_environment_flowhook_shared_flow_from_flow_hook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the name of the shared flow attached to the specified flow hook. If
        # there's no shared flow attached to the flow hook, the API does not return an
        # error; it simply does not return a name in the response.
        # @param [String] name
        #   Required. Name of the flow hook in the following format: `organizations/`org`/
        #   environments/`env`/flowhooks/`flowhook``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_flowhook(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1FlowHook
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a keystore or truststore. - Keystore: Contains certificates and their
        # associated keys. - Truststore: Contains trusted certificates used to validate
        # a server's certificate. These certificates are typically self-signed
        # certificates or certificates that are not signed by a trusted CA.
        # @param [String] parent
        #   Required. Name of the environment in which to create the keystore. Use the
        #   following format in your request: `organizations/`org`/environments/`env``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore] google_cloud_apigee_v1_keystore_object
        # @param [String] name
        #   Optional. Name of the keystore. Overrides the value in Keystore.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_keystore(parent, google_cloud_apigee_v1_keystore_object = nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keystores', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore::Representation
          command.request_object = google_cloud_apigee_v1_keystore_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore
          command.params['parent'] = parent unless parent.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a keystore or truststore.
        # @param [String] name
        #   Required. Name of the keystore. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_keystore(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a keystore or truststore.
        # @param [String] name
        #   Required. Name of the keystore. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_keystore(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an alias from a key/certificate pair. The structure of the request is
        # controlled by the `format` query parameter: - `keycertfile` - Separate PEM-
        # encoded key and certificate files are uploaded. Set `Content-Type: multipart/
        # form-data` and include the `keyFile`, `certFile`, and `password` (if keys are
        # encrypted) fields in the request body. If uploading to a truststore, omit `
        # keyFile`. - `pkcs12` - A PKCS12 file is uploaded. Set `Content-Type: multipart/
        # form-data`, provide the file in the `file` field, and include the `password`
        # field if the file is encrypted in the request body. - `selfsignedcert` - A new
        # private key and certificate are generated. Set `Content-Type: application/json`
        # and include CertificateGenerationSpec in the request body.
        # @param [String] parent
        #   Required. Name of the keystore. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore``.
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [String] _password
        #   DEPRECATED: For improved security, specify the password in the request body
        #   instead of using the query parameter. To specify the password in the request
        #   body, set `Content-type: multipart/form-data` part with name `password`.
        #   Password for the private key file, if required.
        # @param [String] alias_
        #   Alias for the key/certificate pair. Values must match the regular expression `[
        #   \w\s-.]`1,255``. This must be provided for all formats except `selfsignedcert`;
        #   self-signed certs may specify the alias in either this parameter or the JSON
        #   body.
        # @param [String] format
        #   Required. Format of the data. Valid values include: `selfsignedcert`, `
        #   keycertfile`, or `pkcs12`
        # @param [Boolean] ignore_expiry_validation
        #   Flag that specifies whether to ignore expiry validation. If set to `true`, no
        #   expiry validation will be performed.
        # @param [Boolean] ignore_newline_validation
        #   Flag that specifies whether to ignore newline validation. If set to `true`, no
        #   error is thrown when the file contains a certificate chain with no newline
        #   between each certificate. Defaults to `false`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_keystore_alias(parent, google_api_http_body_object = nil, _password: nil, alias_: nil, format: nil, ignore_expiry_validation: nil, ignore_newline_validation: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/aliases', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias
          command.params['parent'] = parent unless parent.nil?
          command.query['_password'] = _password unless _password.nil?
          command.query['alias'] = alias_ unless alias_.nil?
          command.query['format'] = format unless format.nil?
          command.query['ignoreExpiryValidation'] = ignore_expiry_validation unless ignore_expiry_validation.nil?
          command.query['ignoreNewlineValidation'] = ignore_newline_validation unless ignore_newline_validation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a PKCS #10 Certificate Signing Request for the private key in an
        # alias.
        # @param [String] name
        #   Required. Name of the alias. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def csr_organization_environment_keystore_alias(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/csr', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an alias.
        # @param [String] name
        #   Required. Name of the alias. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_keystore_alias(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an alias.
        # @param [String] name
        #   Required. Name of the alias. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_keystore_alias(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the certificate from an alias in PEM-encoded form.
        # @param [String] name
        #   Required. Name of the alias. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_keystore_alias_certificate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/certificate', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the certificate in an alias.
        # @param [String] name
        #   Required. Name of the alias. Use the following format in your request: `
        #   organizations/`org`/environments/`env`/keystores/`keystore`/aliases/`alias``
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [Boolean] ignore_expiry_validation
        #   Required. Flag that specifies whether to ignore expiry validation. If set to `
        #   true`, no expiry validation will be performed.
        # @param [Boolean] ignore_newline_validation
        #   Flag that specifies whether to ignore newline validation. If set to `true`, no
        #   error is thrown when the file contains a certificate chain with no newline
        #   between each certificate. Defaults to `false`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_keystore_alias(name, google_api_http_body_object = nil, ignore_expiry_validation: nil, ignore_newline_validation: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Alias
          command.params['name'] = name unless name.nil?
          command.query['ignoreExpiryValidation'] = ignore_expiry_validation unless ignore_expiry_validation.nil?
          command.query['ignoreNewlineValidation'] = ignore_newline_validation unless ignore_newline_validation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a key value map in an environment.
        # @param [String] parent
        #   Required. Name of the environment in which to create the key value map. Use
        #   the following structure in your request: `organizations/`org`/environments/`
        #   env``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] google_cloud_apigee_v1_key_value_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_keyvaluemap(parent, google_cloud_apigee_v1_key_value_map_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keyvaluemaps', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.request_object = google_cloud_apigee_v1_key_value_map_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a key value map from an environment.
        # @param [String] name
        #   Required. Name of the key value map. Use the following structure in your
        #   request: `organizations/`org`/environments/`env`/keyvaluemaps/`keyvaluemap``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_keyvaluemap(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates key value entries in a key value map scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] parent
        #   Required. Scope as indicated by the URI in which to create the key value map
        #   entry. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap``. * `
        #   organizations/`organization`/environments/`environment`/keyvaluemaps/`
        #   keyvaluemap`` * `organizations/`organization`/keyvaluemaps/`keyvaluemap``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] google_cloud_apigee_v1_key_value_entry_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_keyvaluemap_entry(parent, google_cloud_apigee_v1_key_value_entry_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entries', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.request_object = google_cloud_apigee_v1_key_value_entry_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a key value entry from a key value map scoped to an organization,
        # environment, or API proxy. **Notes:** * After you delete the key value entry,
        # the policy consuming the entry will continue to function with its cached
        # values for a few minutes. This is expected behavior. * Supported for Apigee
        # hybrid 1.8.x and higher.
        # @param [String] name
        #   Required. Scope as indicated by the URI in which to delete the key value map
        #   entry. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap`/entries/`
        #   entry``. * `organizations/`organization`/environments/`environment`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry`` * `organizations/`organization`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_keyvaluemap_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the key value entry value for a key value map scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] name
        #   Required. Scope as indicated by the URI in which to fetch the key value map
        #   entry/value. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap`/entries/`
        #   entry``. * `organizations/`organization`/environments/`environment`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry`` * `organizations/`organization`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_keyvaluemap_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists key value entries for key values maps scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] parent
        #   Required. Scope as indicated by the URI in which to list key value maps. Use **
        #   one** of the following structures in your request: * `organizations/`
        #   organization`/apis/`api`/keyvaluemaps/`keyvaluemap``. * `organizations/`
        #   organization`/environments/`environment`/keyvaluemaps/`keyvaluemap`` * `
        #   organizations/`organization`/keyvaluemaps/`keyvaluemap``.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of key value entries to return. If unspecified, at
        #   most 100 entries will be returned.
        # @param [String] page_token
        #   Optional. Page token. If provides, must be a valid key value entry returned
        #   from a previous call that can be used to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_keyvaluemap_entries(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entries', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Similar to GetStats except that the response is less verbose.
        # @param [String] name
        #   Required. Resource name for which the interactive query will be executed. Use
        #   the following format in your request: `organizations/`org`/environments/`env`/
        #   optimizedStats/`dimensions`` Dimensions let you view metrics in meaningful
        #   groupings, such as `apiproxy`, `target_host`. The value of `dimensions` should
        #   be a comma-separated list as shown below: `organizations/`org`/environments/`
        #   env`/optimizedStats/apiproxy,request_verb`
        # @param [String] accuracy
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] agg_table
        #   Table name used to query custom aggregate tables. If this parameter is skipped,
        #   then Apigee will try to retrieve the data from fact tables which will be
        #   expensive.
        # @param [String] filter
        #   Filter that enables you to drill-down on specific dimension values.
        # @param [String] limit
        #   Maximum number of result items to return. The default and maximum value that
        #   can be returned is 14400.
        # @param [String] offset
        #   Offset value. Use `offset` with `limit` to enable pagination of results. For
        #   example, to display results 11-20, set limit to `10` and offset to `10`.
        # @param [Boolean] realtime
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] select
        #   Required. Comma-separated list of metrics. For example: `sum(message_count),
        #   sum(error_count)`
        # @param [Boolean] sonar
        #   Routes the query to API Monitoring for the last hour.
        # @param [String] sort
        #   Flag that specifies whether the sort order should be ascending or descending.
        #   Valid values include `DESC` and `ASC`.
        # @param [String] sortby
        #   Comma-separated list of columns to sort the final result.
        # @param [String] time_range
        #   Required. Time interval for the interactive query. Time range is specified in
        #   GMT as `start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`
        # @param [String] time_unit
        #   Granularity of metrics returned. Valid values include: `second`, `minute`, `
        #   hour`, `day`, `week`, or `month`.
        # @param [String] topk
        #   Top number of results to return. For example, to return the top 5 results, set
        #   `topk=5`.
        # @param [Boolean] ts_ascending
        #   Flag that specifies whether to list timestamps in ascending (`true`) or
        #   descending (`false`) order. Apigee recommends setting this value to `true` if
        #   you are using `sortby` with `sort=DESC`.
        # @param [String] tzo
        #   Timezone offset value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_optimized_stat(name, accuracy: nil, agg_table: nil, filter: nil, limit: nil, offset: nil, realtime: nil, select: nil, sonar: nil, sort: nil, sortby: nil, time_range: nil, time_unit: nil, topk: nil, ts_ascending: nil, tzo: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats
          command.params['name'] = name unless name.nil?
          command.query['accuracy'] = accuracy unless accuracy.nil?
          command.query['aggTable'] = agg_table unless agg_table.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['offset'] = offset unless offset.nil?
          command.query['realtime'] = realtime unless realtime.nil?
          command.query['select'] = select unless select.nil?
          command.query['sonar'] = sonar unless sonar.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['sortby'] = sortby unless sortby.nil?
          command.query['timeRange'] = time_range unless time_range.nil?
          command.query['timeUnit'] = time_unit unless time_unit.nil?
          command.query['topk'] = topk unless topk.nil?
          command.query['tsAscending'] = ts_ascending unless ts_ascending.nil?
          command.query['tzo'] = tzo unless tzo.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a query to be processed in the background. If the submission of the
        # query succeeds, the API returns a 201 status and an ID that refer to the query.
        # In addition to the HTTP status 201, the `state` of "enqueued" means that the
        # request succeeded.
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org`/
        #   environments/`env``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Query] google_cloud_apigee_v1_query_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_query(parent, google_cloud_apigee_v1_query_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/queries', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Query::Representation
          command.request_object = google_cloud_apigee_v1_query_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get query status If the query is still in progress, the `state` is set to "
        # running" After the query has completed successfully, `state` is set to "
        # completed"
        # @param [String] name
        #   Required. Name of the asynchronous query to get. Must be of the form `
        #   organizations/`org`/environments/`env`/queries/`queryId``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # After the query is completed, use this API to retrieve the results. If the
        # request succeeds, and there is a non-zero result set, the result is downloaded
        # to the client as a zipped JSON file. The name of the downloaded file will be:
        # OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-
        # 318d0cb961bd.zip`
        # @param [String] name
        #   Required. Name of the asynchronous query result to get. Must be of the form `
        #   organizations/`org`/environments/`env`/queries/`queryId`/result`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_query_result(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # After the query is completed, use this API to retrieve the results. If the
        # request succeeds, and there is a non-zero result set, the result is sent to
        # the client as a list of urls to JSON files.
        # @param [String] name
        #   Required. Name of the asynchronous query result to get. Must be of the form `
        #   organizations/`org`/environments/`env`/queries/`queryId`/resulturl`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_query_resulturl(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1GetAsyncQueryResultUrlResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return a list of Asynchronous Queries
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org`/
        #   environments/`env``.
        # @param [String] dataset
        #   Filter response list by dataset. Example: `api`, `mint`
        # @param [String] from
        #   Filter response list by returning asynchronous queries that created after this
        #   date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.
        # @param [String] incl_queries_without_report
        #   Flag to include asynchronous queries that don't have a report denifition.
        # @param [String] status
        #   Filter response list by asynchronous query status.
        # @param [String] submitted_by
        #   Filter response list by user who submitted queries.
        # @param [String] to
        #   Filter response list by returning asynchronous queries that created before
        #   this date time. Time must be in ISO date-time format like '2011-12-03T10:16:
        #   30Z'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_queries(parent, dataset: nil, from: nil, incl_queries_without_report: nil, status: nil, submitted_by: nil, to: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/queries', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['dataset'] = dataset unless dataset.nil?
          command.query['from'] = from unless from.nil?
          command.query['inclQueriesWithoutReport'] = incl_queries_without_report unless incl_queries_without_report.nil?
          command.query['status'] = status unless status.nil?
          command.query['submittedBy'] = submitted_by unless submitted_by.nil?
          command.query['to'] = to unless to.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Reference in the specified environment.
        # @param [String] parent
        #   Required. The parent environment name under which the Reference will be
        #   created. Must be of the form `organizations/`org`/environments/`env``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference] google_cloud_apigee_v1_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_reference(parent, google_cloud_apigee_v1_reference_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/references', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference::Representation
          command.request_object = google_cloud_apigee_v1_reference_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Reference from an environment. Returns the deleted Reference
        # resource.
        # @param [String] name
        #   Required. The name of the Reference to delete. Must be of the form `
        #   organizations/`org`/environments/`env`/references/`ref``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_reference(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a Reference resource.
        # @param [String] name
        #   Required. The name of the Reference to get. Must be of the form `organizations/
        #   `org`/environments/`env`/references/`ref``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_reference(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Reference. Note that this operation has PUT semantics; it
        # will replace the entirety of the existing Reference with the resource in the
        # request body.
        # @param [String] name
        #   Required. The name of the Reference to update. Must be of the form `
        #   organizations/`org`/environments/`env`/references/`ref``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference] google_cloud_apigee_v1_reference_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_reference(name, google_cloud_apigee_v1_reference_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference::Representation
          command.request_object = google_cloud_apigee_v1_reference_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Reference
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a resource file. Specify the `Content-Type` as `application/octet-
        # stream` or `multipart/form-data`. For more information about resource files,
        # see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/
        # resource-files).
        # @param [String] parent
        #   Required. Name of the environment in which to create the resource file in the
        #   following format: `organizations/`org`/environments/`env``.
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [String] name
        #   Required. Name of the resource file. Must match the regular expression: [a-zA-
        #   Z0-9:/\\!@#$%^&``\[\]()+\-=,.~'` ]`1,255`
        # @param [String] type
        #   Required. Resource file type. `` resource_file_type ``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_resourcefile(parent, google_api_http_body_object = nil, name: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/resourcefiles', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile
          command.params['parent'] = parent unless parent.nil?
          command.query['name'] = name unless name.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource file. For more information about resource files, see [
        # Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/
        # resource-files).
        # @param [String] parent
        #   Required. Name of the environment in the following format: `organizations/`org`
        #   /environments/`env``.
        # @param [String] type
        #   Required. Resource file type. `` resource_file_type ``
        # @param [String] name
        #   Required. ID of the resource file to delete. Must match the regular expression:
        #   [a-zA-Z0-9:/\\!@#$%^&``\[\]()+\-=,.~'` ]`1,255`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_resourcefile(parent, type, name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+parent}/resourcefiles/{type}/{name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the contents of a resource file. For more information about resource
        # files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/
        # develop/resource-files).
        # @param [String] parent
        #   Required. Name of the environment in the following format: `organizations/`org`
        #   /environments/`env``.
        # @param [String] type
        #   Required. Resource file type. `` resource_file_type ``
        # @param [String] name
        #   Required. ID of the resource file. Must match the regular expression: [a-zA-Z0-
        #   9:/\\!@#$%^&``\[\]()+\-=,.~'` ]`1,255`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_resourcefile(parent, type, name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/resourcefiles/{type}/{name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all resource files, optionally filtering by type. For more information
        # about resource files, see [Resource files](https://cloud.google.com/apigee/
        # docs/api-platform/develop/resource-files).
        # @param [String] parent
        #   Required. Name of the environment in which to list resource files in the
        #   following format: `organizations/`org`/environments/`env``.
        # @param [String] type
        #   Optional. Type of resource files to list. `` resource_file_type ``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_resourcefiles(parent, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/resourcefiles', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all resource files, optionally filtering by type. For more information
        # about resource files, see [Resource files](https://cloud.google.com/apigee/
        # docs/api-platform/develop/resource-files).
        # @param [String] parent
        #   Required. Name of the environment in which to list resource files in the
        #   following format: `organizations/`org`/environments/`env``.
        # @param [String] type
        #   Optional. Type of resource files to list. `` resource_file_type ``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_resourcefile_environment_resources(parent, type, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/resourcefiles/{type}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListEnvironmentResourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a resource file. Specify the `Content-Type` as `application/octet-
        # stream` or `multipart/form-data`. For more information about resource files,
        # see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/
        # resource-files).
        # @param [String] parent
        #   Required. Name of the environment in the following format: `organizations/`org`
        #   /environments/`env``.
        # @param [String] type
        #   Required. Resource file type. `` resource_file_type ``
        # @param [String] name
        #   Required. ID of the resource file to update. Must match the regular expression:
        #   [a-zA-Z0-9:/\\!@#$%^&``\[\]()+\-=,.~'` ]`1,255`
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_resourcefile(parent, type, name, google_api_http_body_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+parent}/resourcefiles/{type}/{name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ResourceFile
          command.params['parent'] = parent unless parent.nil?
          command.params['type'] = type unless type.nil?
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # CreateSecurityAction creates a SecurityAction.
        # @param [String] parent
        #   Required. The organization and environment that this SecurityAction applies to.
        #   Format: organizations/`org`/environments/`env`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction] google_cloud_apigee_v1_security_action_object
        # @param [String] security_action_id
        #   Required. The ID to use for the SecurityAction, which will become the final
        #   component of the action's resource name. This value should be 0-61 characters,
        #   and valid format is (^[a-z]([a-z0-9-]`​0,61`[a-z0-9])?$).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_security_action(parent, google_cloud_apigee_v1_security_action_object = nil, security_action_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/securityActions', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction::Representation
          command.request_object = google_cloud_apigee_v1_security_action_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction
          command.params['parent'] = parent unless parent.nil?
          command.query['securityActionId'] = security_action_id unless security_action_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disable a SecurityAction. The `state` of the SecurityAction after disabling is
        # `DISABLED`. `DisableSecurityAction` can be called on SecurityActions in the
        # state `ENABLED`; SecurityActions in a different state (including `DISABLED`)
        # return an error.
        # @param [String] name
        #   Required. The name of the SecurityAction to disable. Format: organizations/`
        #   org`/environments/`env`/securityActions/`security_action`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DisableSecurityActionRequest] google_cloud_apigee_v1_disable_security_action_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_organization_environment_security_action(name, google_cloud_apigee_v1_disable_security_action_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:disable', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DisableSecurityActionRequest::Representation
          command.request_object = google_cloud_apigee_v1_disable_security_action_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable a SecurityAction. The `state` of the SecurityAction after enabling is `
        # ENABLED`. `EnableSecurityAction` can be called on SecurityActions in the state
        # `DISABLED`; SecurityActions in a different state (including `ENABLED) return
        # an error.
        # @param [String] name
        #   Required. The name of the SecurityAction to enable. Format: organizations/`org`
        #   /environments/`env`/securityActions/`security_action`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnableSecurityActionRequest] google_cloud_apigee_v1_enable_security_action_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_organization_environment_security_action(name, google_cloud_apigee_v1_enable_security_action_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:enable', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1EnableSecurityActionRequest::Representation
          command.request_object = google_cloud_apigee_v1_enable_security_action_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a SecurityAction by name.
        # @param [String] name
        #   Required. The fully qualified name of the SecurityAction to retrieve. Format:
        #   organizations/`org`/environments/`env`/securityActions/`security_action`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_security_action(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityAction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of SecurityActions. This returns both enabled and disabled
        # actions.
        # @param [String] parent
        #   Required. The parent, which owns this collection of SecurityActions. Format:
        #   organizations/`org`/environments/`env`
        # @param [String] filter
        #   The filter expression to filter List results. https://google.aip.dev/160.
        #   Allows for filtering over: state and api_proxies. E.g.: state = ACTIVE AND
        #   apiProxies:foo. Filtering by action is not supported https://github.com/aip-
        #   dev/google.aip.dev/issues/624
        # @param [Fixnum] page_size
        #   The maximum number of SecurityActions to return. If unspecified, at most 50
        #   SecurityActions will be returned. The maximum value is 1000; values above 1000
        #   will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSecurityActions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListSecurityActions` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityActionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityActionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_security_actions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/securityActions', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityActionsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityActionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # BatchUpdateSecurityIncident updates multiple existing security incidents.
        # @param [String] parent
        #   Optional. The parent resource shared by all security incidents being updated.
        #   If this is set, the parent field in the UpdateSecurityIncidentRequest messages
        #   must either be empty or match this field.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchUpdateSecurityIncidentsRequest] google_cloud_apigee_v1_batch_update_security_incidents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_organization_environment_security_incident_update(parent, google_cloud_apigee_v1_batch_update_security_incidents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/securityIncidents:batchUpdate', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchUpdateSecurityIncidentsRequest::Representation
          command.request_object = google_cloud_apigee_v1_batch_update_security_incidents_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1BatchUpdateSecurityIncidentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetSecurityIncident gets the specified security incident. Returns NOT_FOUND if
        # security incident is not present for the specified organization and
        # environment.
        # @param [String] name
        #   Required. Security incident in the following format: `organizations/`org`/
        #   environments/`environment`/securityIncidents/`incident`'. Example:
        #   organizations/testOrg/environments/testEnv/securityIncidents/1234-4567-890-111
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_security_incident(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ListSecurityIncidents lists all the security incident associated with the
        # environment.
        # @param [String] parent
        #   Required. For a specific organization, list of all the security incidents.
        #   Format: `organizations/`org`/environments/`environment``
        # @param [String] filter
        #   The filter expression to be used to get the list of security incidents, where
        #   filtering can be done on API Proxies. Example: filter = "api_proxy = /", "
        #   first_detected_time >", "last_detected_time <"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of incidents to return. The service may return
        #   fewer than this value. If unspecified, at most 50 incidents will be returned.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListSecurityIncident` call.
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityIncidentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityIncidentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_security_incidents(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/securityIncidents', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityIncidentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityIncidentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # UpdateSecurityIncidents updates an existing security incident.
        # @param [String] name
        #   Immutable. Name of the security incident resource. Format: organizations/`org`/
        #   environments/`environment`/securityIncidents/`incident` Example: organizations/
        #   apigee-org/environments/dev/securityIncidents/1234-5678-9101-1111
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident] google_cloud_apigee_v1_security_incident_object
        # @param [String] update_mask
        #   Required. The list of fields to update. Allowed fields are: LINT.IfChange(
        #   allowed_update_fields_comment) - observability LINT.ThenChange()
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_environment_security_incident(name, google_cloud_apigee_v1_security_incident_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident::Representation
          command.request_object = google_cloud_apigee_v1_security_incident_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityIncident
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a report request to be processed in the background. If the submission
        # succeeds, the API returns a 200 status and an ID that refer to the report
        # request. In addition to the HTTP status 200, the `state` of "enqueued" means
        # that the request succeeded.
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org`/
        #   environments/`env``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportQuery] google_cloud_apigee_v1_security_report_query_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_security_report(parent, google_cloud_apigee_v1_security_report_query_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/securityReports', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportQuery::Representation
          command.request_object = google_cloud_apigee_v1_security_report_query_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get security report status If the query is still in progress, the `state` is
        # set to "running" After the query has completed successfully, `state` is set to
        # "completed"
        # @param [String] name
        #   Required. Name of the security report to get. Must be of the form `
        #   organizations/`org`/environments/`env`/securityReports/`reportId``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_security_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # After the query is completed, use this API to retrieve the results as file. If
        # the request succeeds, and there is a non-zero result set, the result is
        # downloaded to the client as a zipped JSON file. The name of the downloaded
        # file will be: OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-
        # 0f30-46d6-ae6f-318d0cb961bd.zip`
        # @param [String] name
        #   Required. Name of the security report result to get. Must be of the form `
        #   organizations/`org`/environments/`env`/securityReports/`reportId`/result`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_security_report_result(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # After the query is completed, use this API to view the query result when
        # result size is small.
        # @param [String] name
        #   Required. Name of the security report result view to get. Must be of the form `
        #   organizations/`org`/environments/`env`/securityReports/`reportId`/resultView`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_security_report_result_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return a list of Security Reports
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org`/
        #   environments/`env``.
        # @param [String] dataset
        #   Filter response list by dataset. Example: `api`, `mint`
        # @param [String] from
        #   Filter response list by returning security reports that created after this
        #   date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.
        # @param [Fixnum] page_size
        #   The maximum number of security report to return in the list response.
        # @param [String] page_token
        #   Token returned from the previous list response to fetch the next page.
        # @param [String] status
        #   Filter response list by security reports status.
        # @param [String] submitted_by
        #   Filter response list by user who submitted queries.
        # @param [String] to
        #   Filter response list by returning security reports that created before this
        #   date time. Time must be in ISO date-time format like '2011-12-03T10:16:30Z'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_security_reports(parent, dataset: nil, from: nil, page_size: nil, page_token: nil, status: nil, submitted_by: nil, to: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/securityReports', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['dataset'] = dataset unless dataset.nil?
          command.query['from'] = from unless from.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['status'] = status unless status.nil?
          command.query['submittedBy'] = submitted_by unless submitted_by.nil?
          command.query['to'] = to unless to.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve security statistics as tabular rows.
        # @param [String] orgenv
        #   Required. Should be of the form organizations//environments/.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTabularStatsRequest] google_cloud_apigee_v1_query_tabular_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTabularStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTabularStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_organization_environment_security_stat_tabular_stats(orgenv, google_cloud_apigee_v1_query_tabular_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+orgenv}/securityStats:queryTabularStats', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTabularStatsRequest::Representation
          command.request_object = google_cloud_apigee_v1_query_tabular_stats_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTabularStatsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTabularStatsResponse
          command.params['orgenv'] = orgenv unless orgenv.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve security statistics as a collection of time series.
        # @param [String] orgenv
        #   Required. Should be of the form organizations//environments/.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsRequest] google_cloud_apigee_v1_query_time_series_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_organization_environment_security_stat_time_series_stats(orgenv, google_cloud_apigee_v1_query_time_series_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+orgenv}/securityStats:queryTimeSeriesStats', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsRequest::Representation
          command.request_object = google_cloud_apigee_v1_query_time_series_stats_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1QueryTimeSeriesStatsResponse
          command.params['orgenv'] = orgenv unless orgenv.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of a shared flow in an environment.
        # @param [String] parent
        #   Required. Name representing a shared flow in an environment in the following
        #   format: `organizations/`org`/environments/`env`/sharedflows/`sharedflow``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_sharedflow_deployments(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deploys a revision of a shared flow. If another revision of the same shared
        # flow is currently deployed, set the `override` parameter to `true` to have
        # this revision replace the currently deployed revision. You cannot use a shared
        # flow until it has been deployed to an environment. For a request path `
        # organizations/`org`/environments/`env`/sharedflows/`sf`/revisions/`rev`/
        # deployments`, two permissions are required: * `apigee.deployments.create` on
        # the resource `organizations/`org`/environments/`env`` * `apigee.
        # sharedflowrevisions.deploy` on the resource `organizations/`org`/sharedflows/`
        # sf`/revisions/`rev``
        # @param [String] name
        #   Required. Name of the shared flow revision to deploy in the following format: `
        #   organizations/`org`/environments/`env`/sharedflows/`sharedflow`/revisions/`rev`
        #   `
        # @param [Boolean] override
        #   Flag that specifies whether the new deployment replaces other deployed
        #   revisions of the shared flow in the environment. Set `override` to `true` to
        #   replace other deployed revisions. By default, `override` is `false` and the
        #   deployment is rejected if other revisions of the shared flow are deployed in
        #   the environment.
        # @param [String] service_account
        #   Google Cloud IAM service account. The service account represents the identity
        #   of the deployed proxy, and determines what permissions it has. The format must
        #   be ``ACCOUNT_ID`@`PROJECT`.iam.gserviceaccount.com`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deploy_organization_environment_sharedflow_revision(name, override: nil, service_account: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['override'] = override unless override.nil?
          command.query['serviceAccount'] = service_account unless service_account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the deployment of a shared flow revision and actual state reported by
        # runtime pods.
        # @param [String] name
        #   Required. Name representing a shared flow in an environment in the following
        #   format: `organizations/`org`/environments/`env`/sharedflows/`sharedflow`/
        #   revisions/`rev``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_sharedflow_revision_deployments(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeploys a shared flow revision from an environment. For a request path `
        # organizations/`org`/environments/`env`/sharedflows/`sf`/revisions/`rev`/
        # deployments`, two permissions are required: * `apigee.deployments.delete` on
        # the resource `organizations/`org`/environments/`env`` * `apigee.
        # sharedflowrevisions.undeploy` on the resource `organizations/`org`/sharedflows/
        # `sf`/revisions/`rev``
        # @param [String] name
        #   Required. Name of the shared flow revision to undeploy in the following format:
        #   `organizations/`org`/environments/`env`/sharedflows/`sharedflow`/revisions/`
        #   rev``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undeploy_organization_environment_sharedflow_revision(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve metrics grouped by dimensions. The types of metrics you can retrieve
        # include traffic, message counts, API call latency, response size, and cache
        # hits and counts. Dimensions let you view metrics in meaningful groups. You can
        # optionally pass dimensions as path parameters to the `stats` API. If
        # dimensions are not specified, the metrics are computed on the entire set of
        # data for the given time range.
        # @param [String] name
        #   Required. Resource name for which the interactive query will be executed. Use
        #   the following format in your request: `organizations/`org`/environments/`env`/
        #   stats/`dimensions`` Dimensions let you view metrics in meaningful groupings,
        #   such as `apiproxy` or `target_host`. The value of dimensions should be a comma-
        #   separated list, as shown below: `organizations/`org`/environments/`env`/stats/
        #   apiproxy,request_verb`
        # @param [String] accuracy
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] agg_table
        #   Table name used to query custom aggregate tables. If this parameter is skipped,
        #   then Apigee will try to retrieve the data from fact tables which will be
        #   expensive.
        # @param [String] filter
        #   Filter that enables you to drill down on specific dimension values.
        # @param [String] limit
        #   Maximum number of result items to return. The default and maximum value that
        #   can be returned is 14400.
        # @param [String] offset
        #   Offset value. Use `offset` with `limit` to enable pagination of results. For
        #   example, to display results 11-20, set limit to `10` and offset to `10`.
        # @param [Boolean] realtime
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] select
        #   Comma-separated list of metrics. For example: `sum(message_count),sum(
        #   error_count)`
        # @param [Boolean] sonar
        #   Routes the query to API Monitoring for the last hour.
        # @param [String] sort
        #   Flag that specifies whether the sort order should be ascending or descending.
        #   Valid values include: `DESC` and `ASC`.
        # @param [String] sortby
        #   Comma-separated list of columns to sort the final result.
        # @param [String] time_range
        #   Time interval for the interactive query. Time range is specified in GMT as `
        #   start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`
        # @param [String] time_unit
        #   Granularity of metrics returned. Valid values include: `second`, `minute`, `
        #   hour`, `day`, `week`, or` month`.
        # @param [String] topk
        #   Top number of results to return. For example, to return the top 5 results, set
        #   `topk=5`.
        # @param [Boolean] ts_ascending
        #   Flag that specifies whether to list timestamps in ascending (`true`) or
        #   descending (`false`) order. Apigee recommends that you set this value to `true`
        #   if you are using `sortby` with `sort=DESC`.
        # @param [String] tzo
        #   Timezone offset value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_stat(name, accuracy: nil, agg_table: nil, filter: nil, limit: nil, offset: nil, realtime: nil, select: nil, sonar: nil, sort: nil, sortby: nil, time_range: nil, time_unit: nil, topk: nil, ts_ascending: nil, tzo: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats
          command.params['name'] = name unless name.nil?
          command.query['accuracy'] = accuracy unless accuracy.nil?
          command.query['aggTable'] = agg_table unless agg_table.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['offset'] = offset unless offset.nil?
          command.query['realtime'] = realtime unless realtime.nil?
          command.query['select'] = select unless select.nil?
          command.query['sonar'] = sonar unless sonar.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['sortby'] = sortby unless sortby.nil?
          command.query['timeRange'] = time_range unless time_range.nil?
          command.query['timeUnit'] = time_unit unless time_unit.nil?
          command.query['topk'] = topk unless topk.nil?
          command.query['tsAscending'] = ts_ascending unless ts_ascending.nil?
          command.query['tzo'] = tzo unless tzo.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a TargetServer in the specified environment.
        # @param [String] parent
        #   Required. The parent environment name under which the TargetServer will be
        #   created. Must be of the form `organizations/`org`/environments/`env``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer] google_cloud_apigee_v1_target_server_object
        # @param [String] name
        #   Optional. The ID to give the TargetServer. This will overwrite the value in
        #   TargetServer.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_targetserver(parent, google_cloud_apigee_v1_target_server_object = nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/targetservers', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer::Representation
          command.request_object = google_cloud_apigee_v1_target_server_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer
          command.params['parent'] = parent unless parent.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a TargetServer from an environment. Returns the deleted TargetServer
        # resource.
        # @param [String] name
        #   Required. The name of the TargetServer to delete. Must be of the form `
        #   organizations/`org`/environments/`env`/targetservers/`target_server_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_targetserver(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a TargetServer resource.
        # @param [String] name
        #   Required. The name of the TargetServer to get. Must be of the form `
        #   organizations/`org`/environments/`env`/targetservers/`target_server_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_targetserver(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing TargetServer. Note that this operation has PUT semantics;
        # it will replace the entirety of the existing TargetServer with the resource in
        # the request body.
        # @param [String] name
        #   Required. The name of the TargetServer to replace. Must be of the form `
        #   organizations/`org`/environments/`env`/targetservers/`target_server_id``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer] google_cloud_apigee_v1_target_server_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_environment_targetserver(name, google_cloud_apigee_v1_target_server_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer::Representation
          command.request_object = google_cloud_apigee_v1_target_server_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TargetServer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a trace configuration override. The response contains a system-
        # generated UUID, that can be used to view, update, or delete the configuration
        # override. Use the List API to view the existing trace configuration overrides.
        # @param [String] parent
        #   Required. Parent resource of the trace configuration override. Use the
        #   following structure in your request. "organizations/*/environments/*/
        #   traceConfig".
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride] google_cloud_apigee_v1_trace_config_override_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_environment_trace_config_override(parent, google_cloud_apigee_v1_trace_config_override_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/overrides', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride::Representation
          command.request_object = google_cloud_apigee_v1_trace_config_override_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a distributed trace configuration override.
        # @param [String] name
        #   Required. Name of the trace configuration override. Use the following
        #   structure in your request: "organizations/*/environments/*/traceConfig/
        #   overrides/*".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_environment_trace_config_override(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a trace configuration override.
        # @param [String] name
        #   Required. Name of the trace configuration override. Use the following
        #   structure in your request: "organizations/*/environments/*/traceConfig/
        #   overrides/*".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_environment_trace_config_override(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all of the distributed trace configuration overrides in an environment.
        # @param [String] parent
        #   Required. Parent resource of the trace configuration override. Use the
        #   following structure in your request: "organizations/*/environments/*/
        #   traceConfig".
        # @param [Fixnum] page_size
        #   Maximum number of trace configuration overrides to return. If not specified,
        #   the maximum number returned is 25. The maximum number cannot exceed 100.
        # @param [String] page_token
        #   A page token, returned from a previous `ListTraceConfigOverrides` call. Token
        #   value that can be used to retrieve the subsequent page. When paginating, all
        #   other parameters provided to `ListTraceConfigOverrides` must match those
        #   specified in the call to obtain the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListTraceConfigOverridesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListTraceConfigOverridesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_environment_trace_config_overrides(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/overrides', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListTraceConfigOverridesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListTraceConfigOverridesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a distributed trace configuration override. Note that the repeated
        # fields have replace semantics when included in the field mask and that they
        # will be overwritten by the value of the fields in the request body.
        # @param [String] name
        #   Required. Name of the trace configuration override. Use the following
        #   structure in your request: "organizations/*/environments/*/traceConfig/
        #   overrides/*".
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride] google_cloud_apigee_v1_trace_config_override_object
        # @param [String] update_mask
        #   List of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_environment_trace_config_override(name, google_cloud_apigee_v1_trace_config_override_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride::Representation
          command.request_object = google_cloud_apigee_v1_trace_config_override_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1TraceConfigOverride
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a query at host level to be processed in the background. If the
        # submission of the query succeeds, the API returns a 201 status and an ID that
        # refer to the query. In addition to the HTTP status 201, the `state` of "
        # enqueued" means that the request succeeded.
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Query] google_cloud_apigee_v1_query_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_host_query(parent, google_cloud_apigee_v1_query_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/hostQueries', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Query::Representation
          command.request_object = google_cloud_apigee_v1_query_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get status of a query submitted at host level. If the query is still in
        # progress, the `state` is set to "running" After the query has completed
        # successfully, `state` is set to "completed"
        # @param [String] name
        #   Required. Name of the asynchronous query to get. Must be of the form `
        #   organizations/`org`/queries/`queryId``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_host_query(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQuery
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # After the query is completed, use this API to retrieve the results. If the
        # request succeeds, and there is a non-zero result set, the result is downloaded
        # to the client as a zipped JSON file. The name of the downloaded file will be:
        # OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-
        # 318d0cb961bd.zip`
        # @param [String] name
        #   Required. Name of the asynchronous query result to get. Must be of the form `
        #   organizations/`org`/queries/`queryId`/result`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_host_query_result(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # 
        # @param [String] name
        #   Required. Name of the asynchronous query result view to get. Must be of the
        #   form `organizations/`org`/queries/`queryId`/resultView`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResultView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResultView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_host_query_result_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResultView::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1AsyncQueryResultView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return a list of Asynchronous Queries at host level.
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org``.
        # @param [String] dataset
        #   Filter response list by dataset. Example: `api`, `mint`
        # @param [String] envgroup_hostname
        #   Required. Filter response list by hostname.
        # @param [String] from
        #   Filter response list by returning asynchronous queries that created after this
        #   date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.
        # @param [String] incl_queries_without_report
        #   Flag to include asynchronous queries that don't have a report denifition.
        # @param [String] status
        #   Filter response list by asynchronous query status.
        # @param [String] submitted_by
        #   Filter response list by user who submitted queries.
        # @param [String] to
        #   Filter response list by returning asynchronous queries that created before
        #   this date time. Time must be in ISO date-time format like '2011-12-03T10:16:
        #   30Z'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_host_queries(parent, dataset: nil, envgroup_hostname: nil, from: nil, incl_queries_without_report: nil, status: nil, submitted_by: nil, to: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/hostQueries', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAsyncQueriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['dataset'] = dataset unless dataset.nil?
          command.query['envgroupHostname'] = envgroup_hostname unless envgroup_hostname.nil?
          command.query['from'] = from unless from.nil?
          command.query['inclQueriesWithoutReport'] = incl_queries_without_report unless incl_queries_without_report.nil?
          command.query['status'] = status unless status.nil?
          command.query['submittedBy'] = submitted_by unless submitted_by.nil?
          command.query['to'] = to unless to.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submit a query at host level to be processed in the background. If the
        # submission of the query succeeds, the API returns a 201 status and an ID that
        # refer to the query. In addition to the HTTP status 201, the `state` of "
        # enqueued" means that the request succeeded.
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportQuery] google_cloud_apigee_v1_security_report_query_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_host_security_report(parent, google_cloud_apigee_v1_security_report_query_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/hostSecurityReports', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportQuery::Representation
          command.request_object = google_cloud_apigee_v1_security_report_query_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get status of a query submitted at host level. If the query is still in
        # progress, the `state` is set to "running" After the query has completed
        # successfully, `state` is set to "completed"
        # @param [String] name
        #   Required. Name of the security report to get. Must be of the form `
        #   organizations/`org`/securityReports/`reportId``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_host_security_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # After the query is completed, use this API to retrieve the results. If the
        # request succeeds, and there is a non-zero result set, the result is downloaded
        # to the client as a zipped JSON file. The name of the downloaded file will be:
        # OfflineQueryResult-.zip Example: `OfflineQueryResult-9cfc0d85-0f30-46d6-ae6f-
        # 318d0cb961bd.zip`
        # @param [String] name
        #   Required. Name of the security report result to get. Must be of the form `
        #   organizations/`org`/securityReports/`reportId`/result`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_host_security_report_result(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # After the query is completed, use this API to view the query result when
        # result size is small.
        # @param [String] name
        #   Required. Name of the security report result view to get. Must be of the form `
        #   organizations/`org`/securityReports/`reportId`/resultView`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_host_security_report_result_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityReportResultView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return a list of Security Reports at host level.
        # @param [String] parent
        #   Required. The parent resource name. Must be of the form `organizations/`org``.
        # @param [String] dataset
        #   Filter response list by dataset. Example: `api`, `mint`
        # @param [String] envgroup_hostname
        #   Required. Filter response list by hostname.
        # @param [String] from
        #   Filter response list by returning security reports that created after this
        #   date time. Time must be in ISO date-time format like '2011-12-03T10:15:30Z'.
        # @param [Fixnum] page_size
        #   The maximum number of security report to return in the list response.
        # @param [String] page_token
        #   Token returned from the previous list response to fetch the next page.
        # @param [String] status
        #   Filter response list by security report status.
        # @param [String] submitted_by
        #   Filter response list by user who submitted queries.
        # @param [String] to
        #   Filter response list by returning security reports that created before this
        #   date time. Time must be in ISO date-time format like '2011-12-03T10:16:30Z'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_host_security_reports(parent, dataset: nil, envgroup_hostname: nil, from: nil, page_size: nil, page_token: nil, status: nil, submitted_by: nil, to: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/hostSecurityReports', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['dataset'] = dataset unless dataset.nil?
          command.query['envgroupHostname'] = envgroup_hostname unless envgroup_hostname.nil?
          command.query['from'] = from unless from.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['status'] = status unless status.nil?
          command.query['submittedBy'] = submitted_by unless submitted_by.nil?
          command.query['to'] = to unless to.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve metrics grouped by dimensions in host level. The types of metrics you
        # can retrieve include traffic, message counts, API call latency, response size,
        # and cache hits and counts. Dimensions let you view metrics in meaningful
        # groups. You can optionally pass dimensions as path parameters to the `stats`
        # API. If dimensions are not specified, the metrics are computed on the entire
        # set of data for the given time range.
        # @param [String] name
        #   Required. Resource name for which the interactive query will be executed. Use
        #   the following format in your request: `organizations/`org`/hostStats/`
        #   dimensions`` Dimensions let you view metrics in meaningful groupings, such as `
        #   apiproxy`, `target_host`. The value of dimensions should be a comma-separated
        #   list as shown below `organizations/`org`/hostStats/apiproxy,request_verb`
        # @param [String] accuracy
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] envgroup_hostname
        #   Required. Hostname for which the interactive query will be executed.
        # @param [String] filter
        #   Flag that enables drill-down on specific dimension values.
        # @param [String] limit
        #   Maximum number of result items to return. The default and maximum value that
        #   can be returned is 14400.
        # @param [String] offset
        #   Offset value. Use `offset` with `limit` to enable pagination of results. For
        #   example, to display results 11-20, set limit to `10` and offset to `10`.
        # @param [Boolean] realtime
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] select
        #   Comma-separated list of metrics. For example: `sum(message_count),sum(
        #   error_count)`
        # @param [String] sort
        #   Flag that specifies if the sort order should be ascending or descending. Valid
        #   values are `DESC` and `ASC`.
        # @param [String] sortby
        #   Comma-separated list of columns to sort the final result.
        # @param [String] time_range
        #   Time interval for the interactive query. Time range is specified in GMT as `
        #   start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`
        # @param [String] time_unit
        #   Granularity of metrics returned. Valid values include: `second`, `minute`, `
        #   hour`, `day`, `week`, or `month`.
        # @param [String] topk
        #   Top number of results to return. For example, to return the top 5 results, set
        #   `topk=5`.
        # @param [Boolean] ts_ascending
        #   Flag that specifies whether to list timestamps in ascending (`true`) or
        #   descending (`false`) order. Apigee recommends that you set this value to `true`
        #   if you are using `sortby` with `sort=DESC`.
        # @param [String] tzo
        #   Timezone offset value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_host_stat(name, accuracy: nil, envgroup_hostname: nil, filter: nil, limit: nil, offset: nil, realtime: nil, select: nil, sort: nil, sortby: nil, time_range: nil, time_unit: nil, topk: nil, ts_ascending: nil, tzo: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Stats
          command.params['name'] = name unless name.nil?
          command.query['accuracy'] = accuracy unless accuracy.nil?
          command.query['envgroupHostname'] = envgroup_hostname unless envgroup_hostname.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['offset'] = offset unless offset.nil?
          command.query['realtime'] = realtime unless realtime.nil?
          command.query['select'] = select unless select.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['sortby'] = sortby unless sortby.nil?
          command.query['timeRange'] = time_range unless time_range.nil?
          command.query['timeUnit'] = time_unit unless time_unit.nil?
          command.query['topk'] = topk unless topk.nil?
          command.query['tsAscending'] = ts_ascending unless ts_ascending.nil?
          command.query['tzo'] = tzo unless tzo.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Apigee runtime instance. The instance is accessible from the
        # authorized network configured on the organization. **Note:** Not supported for
        # Apigee hybrid.
        # @param [String] parent
        #   Required. Name of the organization. Use the following structure in your
        #   request: `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance] google_cloud_apigee_v1_instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_instance(parent, google_cloud_apigee_v1_instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/instances', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance::Representation
          command.request_object = google_cloud_apigee_v1_instance_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Apigee runtime instance. The instance stops serving requests and
        # the runtime data is deleted. **Note:** Not supported for Apigee hybrid.
        # @param [String] name
        #   Required. Name of the instance. Use the following structure in your request: `
        #   organizations/`org`/instances/`instance``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details for an Apigee runtime instance. **Note:** Not supported for
        # Apigee hybrid.
        # @param [String] name
        #   Required. Name of the instance. Use the following structure in your request: `
        #   organizations/`org`/instances/`instance``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all Apigee runtime instances for the organization. **Note:** Not
        # supported for Apigee hybrid.
        # @param [String] parent
        #   Required. Name of the organization. Use the following structure in your
        #   request: `organizations/`org``.
        # @param [Fixnum] page_size
        #   Maximum number of instances to return. Defaults to 25.
        # @param [String] page_token
        #   Page token, returned from a previous ListInstances call, that you can use to
        #   retrieve the next page of content.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_instances(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instances', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstancesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Apigee runtime instance. You can update the fields described in
        # NodeConfig. No other fields will be updated. **Note:** Not supported for
        # Apigee hybrid.
        # @param [String] name
        #   Required. Name of the instance. Use the following structure in your request: `
        #   organizations/`org`/instances/`instance``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance] google_cloud_apigee_v1_instance_object
        # @param [String] update_mask
        #   List of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_instance(name, google_cloud_apigee_v1_instance_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Instance::Representation
          command.request_object = google_cloud_apigee_v1_instance_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reports the latest status for a runtime instance.
        # @param [String] instance
        #   The name of the instance reporting this status. For SaaS the request will be
        #   rejected if no instance exists under this name. Format is organizations/`org`/
        #   instances/`instance`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportInstanceStatusRequest] google_cloud_apigee_v1_report_instance_status_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportInstanceStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportInstanceStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_organization_instance_status(instance, google_cloud_apigee_v1_report_instance_status_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+instance}:reportStatus', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportInstanceStatusRequest::Representation
          command.request_object = google_cloud_apigee_v1_report_instance_status_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportInstanceStatusResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ReportInstanceStatusResponse
          command.params['instance'] = instance unless instance.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new attachment of an environment to an instance. **Note:** Not
        # supported for Apigee hybrid.
        # @param [String] parent
        #   Required. Name of the instance. Use the following structure in your request: `
        #   organizations/`org`/instances/`instance``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment] google_cloud_apigee_v1_instance_attachment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_instance_attachment(parent, google_cloud_apigee_v1_instance_attachment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/attachments', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment::Representation
          command.request_object = google_cloud_apigee_v1_instance_attachment_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an attachment. **Note:** Not supported for Apigee hybrid.
        # @param [String] name
        #   Required. Name of the attachment. Use the following structure in your request:
        #   `organizations/`org`/instances/`instance`/attachments/`attachment``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_instance_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an attachment. **Note:** Not supported for Apigee hybrid.
        # @param [String] name
        #   Required. Name of the attachment. Use the following structure in your request:
        #   `organizations/`org`/instances/`instance`/attachments/`attachment``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_instance_attachment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1InstanceAttachment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all attachments to an instance. **Note:** Not supported for Apigee
        # hybrid.
        # @param [String] parent
        #   Required. Name of the organization. Use the following structure in your
        #   request: `organizations/`org`/instances/`instance``
        # @param [Fixnum] page_size
        #   Maximum number of instance attachments to return. Defaults to 25.
        # @param [String] page_token
        #   Page token, returned by a previous ListInstanceAttachments call, that you can
        #   use to retrieve the next page of content.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstanceAttachmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstanceAttachmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_instance_attachments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/attachments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstanceAttachmentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListInstanceAttachmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new canary evaluation for an organization.
        # @param [String] parent
        #   Required. Name of the organization. Use the following structure in your
        #   request: `organizations/`org`/instances/`instance``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluation] google_cloud_apigee_v1_canary_evaluation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_instance_canaryevaluation(parent, google_cloud_apigee_v1_canary_evaluation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/canaryevaluations', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluation::Representation
          command.request_object = google_cloud_apigee_v1_canary_evaluation_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a CanaryEvaluation for an organization.
        # @param [String] name
        #   Required. Name of the CanaryEvaluation. Use the following structure in your
        #   request: `organizations/`org`/instances/*/canaryevaluations/`evaluation``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_instance_canaryevaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CanaryEvaluation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates the NAT address. The Apigee instance can now use this for Internet
        # egress traffic. **Note:** Not supported for Apigee hybrid.
        # @param [String] name
        #   Required. Name of the nat address. Use the following structure in your request:
        #   `organizations/`org`/instances/`instances`/natAddresses/`nataddress```
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ActivateNatAddressRequest] google_cloud_apigee_v1_activate_nat_address_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_organization_instance_nat_address(name, google_cloud_apigee_v1_activate_nat_address_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:activate', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ActivateNatAddressRequest::Representation
          command.request_object = google_cloud_apigee_v1_activate_nat_address_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a NAT address. The address is created in the RESERVED state and a
        # static external IP address will be provisioned. At this time, the instance
        # will not use this IP address for Internet egress traffic. The address can be
        # activated for use once any required firewall IP whitelisting has been
        # completed. **Note:** Not supported for Apigee hybrid.
        # @param [String] parent
        #   Required. Name of the instance. Use the following structure in your request: `
        #   organizations/`org`/instances/`instance``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress] google_cloud_apigee_v1_nat_address_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_instance_nat_address(parent, google_cloud_apigee_v1_nat_address_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/natAddresses', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress::Representation
          command.request_object = google_cloud_apigee_v1_nat_address_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the NAT address. Connections that are actively using the address are
        # drained before it is removed. **Note:** Not supported for Apigee hybrid.
        # @param [String] name
        #   Required. Name of the nat address. Use the following structure in your request:
        #   `organizations/`org`/instances/`instances`/natAddresses/`nataddress```
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_instance_nat_address(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the details of a NAT address. **Note:** Not supported for Apigee hybrid.
        # @param [String] name
        #   Required. Name of the nat address. Use the following structure in your request:
        #   `organizations/`org`/instances/`instances`/natAddresses/`nataddress``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_instance_nat_address(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1NatAddress
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the NAT addresses for an Apigee instance. **Note:** Not supported for
        # Apigee hybrid.
        # @param [String] parent
        #   Required. Name of the instance. Use the following structure in your request: `
        #   organizations/`org`/instances/`instance``
        # @param [Fixnum] page_size
        #   Maximum number of natAddresses to return. Defaults to 25.
        # @param [String] page_token
        #   Page token, returned from a previous ListNatAddresses call, that you can use
        #   to retrieve the next page of content.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListNatAddressesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListNatAddressesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_instance_nat_addresses(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/natAddresses', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListNatAddressesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListNatAddressesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a key value map in an organization.
        # @param [String] parent
        #   Required. Name of the organization in which to create the key value map file.
        #   Use the following structure in your request: `organizations/`org``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] google_cloud_apigee_v1_key_value_map_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_keyvaluemap(parent, google_cloud_apigee_v1_key_value_map_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/keyvaluemaps', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.request_object = google_cloud_apigee_v1_key_value_map_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a key value map from an organization.
        # @param [String] name
        #   Required. Name of the key value map. Use the following structure in your
        #   request: `organizations/`org`/keyvaluemaps/`keyvaluemap``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_keyvaluemap(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueMap
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates key value entries in a key value map scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] parent
        #   Required. Scope as indicated by the URI in which to create the key value map
        #   entry. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap``. * `
        #   organizations/`organization`/environments/`environment`/keyvaluemaps/`
        #   keyvaluemap`` * `organizations/`organization`/keyvaluemaps/`keyvaluemap``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] google_cloud_apigee_v1_key_value_entry_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_keyvaluemap_entry(parent, google_cloud_apigee_v1_key_value_entry_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entries', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.request_object = google_cloud_apigee_v1_key_value_entry_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a key value entry from a key value map scoped to an organization,
        # environment, or API proxy. **Notes:** * After you delete the key value entry,
        # the policy consuming the entry will continue to function with its cached
        # values for a few minutes. This is expected behavior. * Supported for Apigee
        # hybrid 1.8.x and higher.
        # @param [String] name
        #   Required. Scope as indicated by the URI in which to delete the key value map
        #   entry. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap`/entries/`
        #   entry``. * `organizations/`organization`/environments/`environment`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry`` * `organizations/`organization`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_keyvaluemap_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the key value entry value for a key value map scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] name
        #   Required. Scope as indicated by the URI in which to fetch the key value map
        #   entry/value. Use **one** of the following structures in your request: * `
        #   organizations/`organization`/apis/`api`/keyvaluemaps/`keyvaluemap`/entries/`
        #   entry``. * `organizations/`organization`/environments/`environment`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry`` * `organizations/`organization`/
        #   keyvaluemaps/`keyvaluemap`/entries/`entry``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_keyvaluemap_entry(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1KeyValueEntry
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists key value entries for key values maps scoped to an organization,
        # environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and
        # higher.
        # @param [String] parent
        #   Required. Scope as indicated by the URI in which to list key value maps. Use **
        #   one** of the following structures in your request: * `organizations/`
        #   organization`/apis/`api`/keyvaluemaps/`keyvaluemap``. * `organizations/`
        #   organization`/environments/`environment`/keyvaluemaps/`keyvaluemap`` * `
        #   organizations/`organization`/keyvaluemaps/`keyvaluemap``.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of key value entries to return. If unspecified, at
        #   most 100 entries will be returned.
        # @param [String] page_token
        #   Optional. Page token. If provides, must be a valid key value entry returned
        #   from a previous call that can be used to retrieve the next page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_keyvaluemap_entries(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entries', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListKeyValueEntriesResponse
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
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
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Similar to GetHostStats except that the response is less verbose.
        # @param [String] name
        #   Required. Resource name for which the interactive query will be executed. Use
        #   the following format in your request: `organizations/`organization_id`/
        #   optimizedHostStats/`dimensions`` Dimensions let you view metrics in meaningful
        #   groupings, such as `apiproxy`, `target_host`. The value of dimensions should
        #   be a comma-separated list as shown below: `organizations/`org`/
        #   optimizedHostStats/apiproxy,request_verb`
        # @param [String] accuracy
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] envgroup_hostname
        #   Required. Hostname for which the interactive query will be executed.
        # @param [String] filter
        #   Filter that enables you to drill-down on specific dimension values.
        # @param [String] limit
        #   Maximum number of result items to return. The default and maximum value that
        #   can be returned is 14400.
        # @param [String] offset
        #   Offset value. Use `offset` with `limit` to enable pagination of results. For
        #   example, to display results 11-20, set limit to `10` and offset to `10`.
        # @param [Boolean] realtime
        #   No longer used by Apigee. Supported for backwards compatibility.
        # @param [String] select
        #   Required. Comma-separated list of metrics. For example: `sum(message_count),
        #   sum(error_count)`
        # @param [String] sort
        #   Flag that specifies whether the sort order should be ascending or descending.
        #   Valid values include `DESC` and `ASC`.
        # @param [String] sortby
        #   Comma-separated list of columns used to sort the final result.
        # @param [String] time_range
        #   Required. Time interval for the interactive query. Time range is specified in
        #   GMT as `start~end`. For example: `04/15/2017 00:00~05/15/2017 23:59`.
        # @param [String] time_unit
        #   Granularity of metrics returned. Valid values include: `second`, `minute`, `
        #   hour`, `day`, `week`, or `month`.
        # @param [String] topk
        #   Top number of results to return. For example, to return the top 5 results, set
        #   `topk=5`.
        # @param [Boolean] ts_ascending
        #   Flag that specifies whether to list timestamps in ascending (`true`) or
        #   descending (`false`) order. Apigee recommends that you set this value to `true`
        #   if you are using `sortby` with `sort=DESC`.
        # @param [String] tzo
        #   Timezone offset value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_optimized_host_stat(name, accuracy: nil, envgroup_hostname: nil, filter: nil, limit: nil, offset: nil, realtime: nil, select: nil, sort: nil, sortby: nil, time_range: nil, time_unit: nil, topk: nil, ts_ascending: nil, tzo: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1OptimizedStats
          command.params['name'] = name unless name.nil?
          command.query['accuracy'] = accuracy unless accuracy.nil?
          command.query['envgroupHostname'] = envgroup_hostname unless envgroup_hostname.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['offset'] = offset unless offset.nil?
          command.query['realtime'] = realtime unless realtime.nil?
          command.query['select'] = select unless select.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['sortby'] = sortby unless sortby.nil?
          command.query['timeRange'] = time_range unless time_range.nil?
          command.query['timeUnit'] = time_unit unless time_unit.nil?
          command.query['topk'] = topk unless topk.nil?
          command.query['tsAscending'] = ts_ascending unless ts_ascending.nil?
          command.query['tzo'] = tzo unless tzo.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Custom Report for an Organization. A Custom Report provides Apigee
        # Customers to create custom dashboards in addition to the standard dashboards
        # which are provided. The Custom Report in its simplest form contains
        # specifications about metrics, dimensions and filters. It is important to note
        # that the custom report by itself does not provide an executable entity. The
        # Edge UI converts the custom report definition into an analytics query and
        # displays the result in a chart.
        # @param [String] parent
        #   Required. The parent organization name under which the Custom Report will be
        #   created. Must be of the form: `organizations/`organization_id`/reports`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport] google_cloud_apigee_v1_custom_report_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_report(parent, google_cloud_apigee_v1_custom_report_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/reports', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport::Representation
          command.request_object = google_cloud_apigee_v1_custom_report_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing custom report definition
        # @param [String] name
        #   Required. Custom Report name of the form: `organizations/`organization_id`/
        #   reports/`report_name``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteCustomReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteCustomReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteCustomReportResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteCustomReportResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a custom report definition.
        # @param [String] name
        #   Required. Custom Report name of the form: `organizations/`organization_id`/
        #   reports/`report_name``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return a list of Custom Reports
        # @param [String] parent
        #   Required. The parent organization name under which the API product will be
        #   listed `organizations/`organization_id`/reports`
        # @param [Boolean] expand
        #   Set to 'true' to get expanded details about each custom report.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListCustomReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListCustomReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_reports(parent, expand: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reports', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListCustomReportsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListCustomReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['expand'] = expand unless expand.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an existing custom report definition
        # @param [String] name
        #   Required. Custom Report name of the form: `organizations/`organization_id`/
        #   reports/`report_name``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport] google_cloud_apigee_v1_custom_report_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_report(name, google_cloud_apigee_v1_custom_report_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport::Representation
          command.request_object = google_cloud_apigee_v1_custom_report_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1CustomReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # CreateSecurityProfile create a new custom security profile.
        # @param [String] parent
        #   Required. Name of organization. Format: organizations/`org`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile] google_cloud_apigee_v1_security_profile_object
        # @param [String] security_profile_id
        #   Required. The ID to use for the SecurityProfile, which will become the final
        #   component of the action's resource name. This value should be 1-63 characters
        #   and validated by "(^[a-z]([a-z0-9-]`0,61`[a-z0-9])?$)".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_security_profile(parent, google_cloud_apigee_v1_security_profile_object = nil, security_profile_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/securityProfiles', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile::Representation
          command.request_object = google_cloud_apigee_v1_security_profile_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile
          command.params['parent'] = parent unless parent.nil?
          command.query['securityProfileId'] = security_profile_id unless security_profile_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteSecurityProfile delete a profile with all its revisions.
        # @param [String] name
        #   Required. Name of profile. Format: organizations/`org`/securityProfiles/`
        #   profile`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_security_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # GetSecurityProfile gets the specified security profile. Returns NOT_FOUND if
        # security profile is not present for the specified organization.
        # @param [String] name
        #   Required. Security profile in the following format: `organizations/`org`/
        #   securityProfiles/`profile`'. Profile may optionally contain revision ID. If
        #   revision ID is not provided, the response will contain latest revision by
        #   default. Example: organizations/testOrg/securityProfiles/testProfile@5
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_security_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ListSecurityProfiles lists all the security profiles associated with the org
        # including attached and unattached profiles.
        # @param [String] parent
        #   Required. For a specific organization, list of all the security profiles.
        #   Format: `organizations/`org``
        # @param [Fixnum] page_size
        #   The maximum number of profiles to return. The service may return fewer than
        #   this value. If unspecified, at most 50 profiles will be returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListSecurityProfiles` call. Provide
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_security_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/securityProfiles', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfilesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ListSecurityProfileRevisions lists all the revisions of the security profile.
        # @param [String] name
        #   Required. For a specific profile, list all the revisions. Format: `
        #   organizations/`org`/securityProfiles/`profile``
        # @param [Fixnum] page_size
        #   The maximum number of profile revisions to return. The service may return
        #   fewer than this value. If unspecified, at most 50 revisions will be returned.
        # @param [String] page_token
        #   A page token, received from a previous `ListSecurityProfileRevisions` call.
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_security_profile_revisions(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:listRevisions', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSecurityProfileRevisionsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # UpdateSecurityProfile update the metadata of security profile.
        # @param [String] name
        #   Immutable. Name of the security profile resource. Format: organizations/`org`/
        #   securityProfiles/`profile`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile] google_cloud_apigee_v1_security_profile_object
        # @param [String] update_mask
        #   Required. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_security_profile(name, google_cloud_apigee_v1_security_profile_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile::Representation
          command.request_object = google_cloud_apigee_v1_security_profile_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfile
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # ComputeEnvironmentScores calculates scores for requested time range for the
        # specified security profile and environment.
        # @param [String] profile_environment
        #   Required. Name of organization and environment and profile id for which score
        #   needs to be computed. Format: organizations/`org`/securityProfiles/`profile`/
        #   environments/`env`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresRequest] google_cloud_apigee_v1_compute_environment_scores_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_organization_security_profile_environment_environment_scores(profile_environment, google_cloud_apigee_v1_compute_environment_scores_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+profileEnvironment}:computeEnvironmentScores', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresRequest::Representation
          command.request_object = google_cloud_apigee_v1_compute_environment_scores_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ComputeEnvironmentScoresResponse
          command.params['profileEnvironment'] = profile_environment unless profile_environment.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # CreateSecurityProfileEnvironmentAssociation creates profile environment
        # association i.e. attaches environment to security profile.
        # @param [String] parent
        #   Required. Name of organization and security profile ID. Format: organizations/`
        #   org`/securityProfiles/`profile`
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation] google_cloud_apigee_v1_security_profile_environment_association_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_security_profile_environment(parent, google_cloud_apigee_v1_security_profile_environment_association_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/environments', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation::Representation
          command.request_object = google_cloud_apigee_v1_security_profile_environment_association_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SecurityProfileEnvironmentAssociation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # DeleteSecurityProfileEnvironmentAssociation removes profile environment
        # association i.e. detaches environment from security profile.
        # @param [String] name
        #   Required. The name of the environment attachment to delete. Format:
        #   organizations/`org`/securityProfiles/`profile`/environments/`env`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_security_profile_environment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a ZIP-formatted shared flow configuration bundle to an organization.
        # If the shared flow already exists, this creates a new revision of it. If the
        # shared flow does not exist, this creates it. Once imported, the shared flow
        # revision must be deployed before it can be accessed at runtime. The size limit
        # of a shared flow bundle is 15 MB.
        # @param [String] parent
        #   Required. The name of the parent organization under which to create the shared
        #   flow. Must be of the form: `organizations/`organization_id``
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [String] action
        #   Required. Must be set to either `import` or `validate`.
        # @param [String] name
        #   Required. The name to give the shared flow
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_sharedflow(parent, google_api_http_body_object = nil, action: nil, name: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/sharedflows', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision
          command.params['parent'] = parent unless parent.nil?
          command.query['action'] = action unless action.nil?
          command.query['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a shared flow and all it's revisions. The shared flow must be
        # undeployed before you can delete it.
        # @param [String] name
        #   Required. shared flow name of the form: `organizations/`organization_id`/
        #   sharedflows/`shared_flow_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_sharedflow(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a shared flow by name, including a list of its revisions.
        # @param [String] name
        #   Required. The name of the shared flow to get. Must be of the form: `
        #   organizations/`organization_id`/sharedflows/`shared_flow_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_sharedflow(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlow
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all shared flows in the organization.
        # @param [String] parent
        #   Required. The name of the parent organization under which to get shared flows.
        #   Must be of the form: `organizations/`organization_id``
        # @param [Boolean] include_meta_data
        #   Indicates whether to include shared flow metadata in the response.
        # @param [Boolean] include_revisions
        #   Indicates whether to include a list of revisions in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSharedFlowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSharedFlowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_sharedflows(parent, include_meta_data: nil, include_revisions: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/sharedflows', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSharedFlowsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListSharedFlowsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['includeMetaData'] = include_meta_data unless include_meta_data.nil?
          command.query['includeRevisions'] = include_revisions unless include_revisions.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of a shared flow.
        # @param [String] parent
        #   Required. Name of the shared flow for which to return deployment information
        #   in the following format: `organizations/`org`/sharedflows/`sharedflow``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_sharedflow_deployments(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a shared flow and all associated policies, resources, and revisions.
        # You must undeploy the shared flow before deleting it.
        # @param [String] name
        #   Required. The name of the shared flow revision to delete. Must be of the form:
        #   `organizations/`organization_id`/sharedflows/`shared_flow_id`/revisions/`
        #   revision_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_sharedflow_revision(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a revision of a shared flow. To download the shared flow configuration
        # bundle for the specified revision as a zip file, set the `format` query
        # parameter to `bundle`. If you are using curl, specify `-o filename.zip` to
        # save the output to a file; otherwise, it displays to `stdout`. Then, develop
        # the shared flow configuration locally and upload the updated sharedFlow
        # configuration revision, as described in [updateSharedFlowRevision](
        # updateSharedFlowRevision).
        # @param [String] name
        #   Required. The name of the shared flow revision to get. Must be of the form: `
        #   organizations/`organization_id`/sharedflows/`shared_flow_id`/revisions/`
        #   revision_id``
        # @param [String] format
        #   Specify `bundle` to export the contents of the shared flow bundle. Otherwise,
        #   the bundle metadata is returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleApiHttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleApiHttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_sharedflow_revision(name, format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleApiHttpBody
          command.params['name'] = name unless name.nil?
          command.query['format'] = format unless format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a shared flow revision. This operation is only allowed on revisions
        # which have never been deployed. After deployment a revision becomes immutable,
        # even if it becomes undeployed. The payload is a ZIP-formatted shared flow.
        # Content type must be either multipart/form-data or application/octet-stream.
        # @param [String] name
        #   Required. The name of the shared flow revision to update. Must be of the form:
        #   `organizations/`organization_id`/sharedflows/`shared_flow_id`/revisions/`
        #   revision_id``
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [Boolean] validate
        #   Ignored. All uploads are validated regardless of the value of this field. It
        #   is kept for compatibility with existing APIs. Must be `true` or `false` if
        #   provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_organization_sharedflow_revision_shared_flow_revision(name, google_api_http_body_object = nil, validate: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleApiHttpBody::Representation
          command.request_object = google_api_http_body_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1SharedFlowRevision
          command.params['name'] = name unless name.nil?
          command.query['validate'] = validate unless validate.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deployments of a shared flow revision.
        # @param [String] parent
        #   Required. Name of the API proxy revision for which to return deployment
        #   information in the following format: `organizations/`org`/sharedflows/`
        #   sharedflow`/revisions/`rev``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_sharedflow_revision_deployments(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new API category.
        # @param [String] parent
        #   Required. Name of the portal. Use the following structure in your request: `
        #   organizations/`org`/sites/`site``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory] google_cloud_apigee_v1_api_category_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_site_apicategory(parent, google_cloud_apigee_v1_api_category_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apicategories', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory::Representation
          command.request_object = google_cloud_apigee_v1_api_category_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an API category.
        # @param [String] name
        #   Required. Name of the category. Use the following structure in your request: `
        #   organizations/`org`/sites/`site`/apicategories/`apicategory``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_site_apicategory(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1DeleteResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an API category.
        # @param [String] name
        #   Required. Name of the category. Use the following structure in your request: `
        #   organizations/`org`/sites/`site`/apicategories/`apicategory``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_site_apicategory(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the API categories associated with a portal.
        # @param [String] parent
        #   Required. Name of the portal. Use the following structure in your request: `
        #   organizations/`org`/sites/`site``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiCategoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiCategoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_site_apicategories(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apicategories', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiCategoriesResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListApiCategoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an API category.
        # @param [String] name
        #   Required. Name of the category. Use the following structure in your request: `
        #   organizations/`org`/sites/`site`/apicategories/`apicategory``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory] google_cloud_apigee_v1_api_category_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_site_apicategory(name, google_cloud_apigee_v1_api_category_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory::Representation
          command.request_object = google_cloud_apigee_v1_api_category_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Provisions a new Apigee organization with a functioning runtime. This is the
        # standard way to create trial organizations for a free Apigee trial.
        # @param [String] project
        #   Required. Name of the GCP project with which to associate the Apigee
        #   organization.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProvisionOrganizationRequest] google_cloud_apigee_v1_provision_organization_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_project_organization(project, google_cloud_apigee_v1_provision_organization_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+project}:provisionOrganization', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ProvisionOrganizationRequest::Representation
          command.request_object = google_cloud_apigee_v1_provision_organization_request_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleLongrunningOperation
          command.params['project'] = project unless project.nil?
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
