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
    module ApigeeV1
      # Apigee API
      #
      # Use the Apigee API to programmatically develop and manage APIs with a set of
      #  RESTful operations. Develop and secure API proxies, deploy and undeploy API
      #  proxy revisions, monitor APIs, configure environments, manage users, and more.
      #  Get started using the APIs. *Note:* This product is available as a free trial
      #  for a time period of 60 days.
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
          super('https://apigee.googleapis.com/', '')
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
        #   Required. Name of the GCP project in which to associate the Apigee
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
        
        # Lists the Apigee organizations and associated GCP projects that you have
        # permission to access. See [Understanding organizations](https://cloud.google.
        # com/apigee/docs/api-platform/fundamentals/organization-structure).
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
        # Extensible profile API products enable you repackage APIs on-the-fly, without
        # having to do any additional coding or configuration. Apigee recommends that
        # you start with a simple API product including only required elements. You then
        # provision credentials to apps to enable them to start testing your APIs. After
        # you have authentication and authorization working against a simple API product,
        # you can iterate to create finer grained API products, defining different sets
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
        # `attributename` and `attibutevalue`. The limit on the number of API products
        # returned by the API is 1000. You can paginate the list of API products
        # returned using the `startKey` and `count` query parameters.
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
        # name of the product, not the Display Name. While they may be the same, it
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
        
        # Creates a key value map in an api proxy.
        # @param [String] parent
        #   Required. The name of the environment in which to create the key value map.
        #   Must be of the form `organizations/`organization`/apis/`api``.
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
        
        # Delete a key value map in an api proxy.
        # @param [String] name
        #   Required. The name of the key value map. Must be of the form `organizations/`
        #   organization`/apis/`api`/keyvaluemaps/`keyvaluemap``.
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
        # the specified revision as a zip file, do the following: * Set the `format`
        # query parameter to `bundle`. * Set the `Accept` header to `application/zip`.
        # If you are using curl, specify `-o filename.zip` to save the output to a file;
        # otherwise, it displays to `stdout`. Then, develop the API proxy configuration
        # locally and upload the updated API proxy configuration revision, as described
        # in [updateApiProxyRevision](updateApiProxyRevision).
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
        #   Optional. Filter by the type of the app. Valid values are `company` or `
        #   developer`. Defaults to `developer`.
        # @param [Boolean] expand
        #   Optional. Flag that specifies whether to return an expanded list of apps for
        #   the organization. Defaults to `false`.
        # @param [String] ids
        #   Optional. Comma-separated list of app IDs on which to filter.
        # @param [Boolean] include_cred
        #   Optional. Flag that specifies whether to include credentials in the response.
        # @param [String] key_status
        #   Optional. Key status of the app. Valid values include `approved` or `revoked`.
        #   Defaults to `approved`.
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
        def list_organization_apps(parent, api_product: nil, apptype: nil, expand: nil, ids: nil, include_cred: nil, key_status: nil, rows: nil, start_key: nil, status: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/apps', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppsResponse::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ListAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['apiProduct'] = api_product unless api_product.nil?
          command.query['apptype'] = apptype unless apptype.nil?
          command.query['expand'] = expand unless expand.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['includeCred'] = include_cred unless include_cred.nil?
          command.query['keyStatus'] = key_status unless key_status.nil?
          command.query['rows'] = rows unless rows.nil?
          command.query['startKey'] = start_key unless start_key.nil?
          command.query['status'] = status unless status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new data collector.
        # @param [String] parent
        #   Required. Name of the organization in which to create the Data Collector in
        #   the following format: `organizations/`org``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1DataCollector] google_cloud_apigee_v1_data_collector_object
        # @param [String] data_collector_id
        #   ID of the Data Collector. Overrides any ID in the Data Collector resource.
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
        #   Required. Name of the Data Collector in the following format: `organizations/`
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
        #   Required. Name of the Data Collector in the following format: `organizations/`
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
        #   Required. Name of the organization for which to list Data Collectors in the
        #   following format: `organizations/`org``.
        # @param [Fixnum] page_size
        #   Maximum number of Data Collectors to return. The page size defaults to 25.
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
        #   Required. Name of the Data Collector in the following format: `organizations/`
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
        #   updated in the following format: `organizations/`org`/developers/`
        #   developer_email``
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
        
        # Sets the status of a developer. Valid values are `active` or `inactive`. A
        # developer is `active` by default. If you set a developer's status to `inactive`
        # , the API keys assigned to the developer apps are no longer valid even though
        # the API keys are set to `approved`. Inactive developers can still sign in to
        # the developer portal and create apps; however, any new API keys generated
        # during app creation won't work. If successful, the API call returns the
        # following HTTP status code: `204 No Content`
        # @param [String] name
        #   Required. Email address of the developer. Use the following structure in your
        #   request: `organizations/`org`/developers/`developer_email``
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
        # approved` or `revoked`, respectively, and the `Content-Type` header to `
        # application/octet-stream`. If a developer app is revoked, none of its API keys
        # are valid for API calls even though the keys are still `approved`. If
        # successful, the API call returns the following HTTP status code: `204 No
        # Content` To generate a new consumer key and secret for a developer app, pass
        # the new key/secret details. Rather than replace an existing key, this API
        # generates a new key. In this case, multiple key pairs may be associated with a
        # single developer app. Each key pair has an independent status (`approved` or `
        # revoked`) and expiration time. Any approved, non-expired key can be used in an
        # API call. For example, if you're using API key rotation, you can generate new
        # keys with expiration times that overlap keys that are going to expire. You
        # might also generate a new consumer key/secret if the security of the original
        # key/secret is compromised. The `keyExpiresIn` property defines the expiration
        # time for the API key in milliseconds. If you don't set this property or set it
        # to `-1`, the API key never expires. **Notes**: * When generating a new key/
        # secret, this API replaces the existing attributes, notes, and callback URLs
        # with those specified in the request. Include or exclude any existing
        # information that you want to retain or delete, respectively. * To migrate
        # existing consumer keys and secrets to hybrid from another system, see the
        # CreateDeveloperAppKey API.
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
        # to Apigee hybrid from another system. Consumer keys and secrets can contain
        # letters, numbers, underscores, and hyphens. No other special characters are
        # allowed. To avoid service disruptions, a consumer key and secret should not
        # exceed 2 KBs each. **Note**: When creating the consumer key and secret, an
        # association to API products will not be made. Therefore, you should not
        # specify the associated API products in your request. Instead, use the
        # UpdateDeveloperAppKey API to make the association after the consumer key and
        # secret are created. If a consumer key and secret already exist, you can keep
        # them or delete them using the DeleteDeveloperAppKey API.
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
        
        # Returns details for a consumer key for a developer app, including the key and
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
        
        # Approve or revoke an app's consumer key. After a consumer key is approved, the
        # app can use it to access APIs. A consumer key that is revoked or pending
        # cannot be used to access an API. Any access tokens associated with a revoked
        # consumer key will remain active. However, Apigee hybrid checks the status of
        # the consumer key and if set to `revoked` will not allow access to the API.
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
        # to Apigee hybrid from another system. Consumer keys and secrets can contain
        # letters, numbers, underscores, and hyphens. No other special characters are
        # allowed. To avoid service disruptions, a consumer key and secret should not
        # exceed 2 KBs each. **Note**: When creating the consumer key and secret, an
        # association to API products will not be made. Therefore, you should not
        # specify the associated API products in your request. Instead, use the
        # UpdateDeveloperAppKey API to make the association after the consumer key and
        # secret are created. If a consumer key and secret already exist, you can keep
        # them or delete them using the DeleteDeveloperAppKey API.
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
        #   Required. Email address of the developer for which attributes are being listed
        #   in the following format: `organizations/`org`/developers/`developer_email``
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
        #   Optional. Name of the environment. Alternatively, the name may be specified in
        #   the request body in the name field.
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
        
        # Deletes an environment from an organization.
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
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Fixnum] options_requested_policy_version
        #   Optional. The policy format version to be returned. Valid values are 0, 1, and
        #   3. Requests specifying an invalid value will be rejected. Requests for
        #   policies with any conditional bindings must specify version 3. Policies
        #   without any conditional bindings may specify any valid value or leave the
        #   field unset. To learn which resources support conditions in their IAM policies,
        #   see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        #   resource-policies).
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
        
        # Sets the IAM policy on an environment, if the policy already exists it will be
        # replaced. For more information, see [Manage users, roles, and permissions
        # using the API](https://cloud.google.com/apigee/docs/api-platform/system-
        # administration/manage-users-roles). You must have the `apigee.environments.
        # setIamPolicy` permission to call this API.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
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
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
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
        # get).
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
        # get).
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
        
        # Get a list of metrics and dimensions which can be used for creating analytics
        # queries and reports. Each schema element contains the name of the field with
        # its associated type and if it is either custom field or standard field.
        # @param [String] name
        #   Required. The parent organization and environment names. Must be of the form `
        #   organizations/`org`/environments/`env`/analytics/admin/schemav2`.
        # @param [String] type
        #   Required. Type refers to the dataset name whose schema needs to be retrieved E.
        #   g. type=fact or type=agg_cus1
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
        def get_organization_environment_analytic_admin_schemav2(name, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Schema::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Schema
          command.params['name'] = name unless name.nil?
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
        #   revisions of the API proxy in the environment. Set override to true to replace
        #   other deployed revisions. By default, override is false and the deployment is
        #   rejected if other revisions of the API proxy are deployed in the environment.
        # @param [Boolean] sequenced_rollout
        #   If true, a best-effort attempt will be made to roll out the routing rules
        #   corresponding to this deployment and the environment changes to add this
        #   deployment in a safe order. This reduces the risk of downtime that could be
        #   caused by changing the environment group's routing before the new destination
        #   for the affected traffic is ready to receive it. This should only be necessary
        #   if the new deployment will be capturing traffic from another environment under
        #   a shared environment group or if traffic will be rerouted to a different
        #   environment due to a basepath removal. The GenerateDeployChangeReport API may
        #   be used to examine routing changes before issuing the deployment request, and
        #   its response will indicate if a sequenced rollout is recommended for the
        #   deployment.
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
        def deploy_organization_environment_api_revision(name, override: nil, sequenced_rollout: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['override'] = override unless override.nil?
          command.query['sequencedRollout'] = sequenced_rollout unless sequenced_rollout.nil?
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
        #   If true, a best-effort attempt will be made to remove the environment group
        #   routing rules corresponding to this deployment before removing the deployment
        #   from the runtime. This is likely to be a rare use case; it is only needed when
        #   the intended effect of undeploying this proxy is to cause the traffic it
        #   currently handles to be rerouted to some other existing proxy in the
        #   environment group. The GenerateUndeployChangeReport API may be used to examine
        #   routing changes before issuing the undeployment request, and its response will
        #   indicate if a sequenced rollout is recommended for the undeployment.
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
        
        # Creates a keystore or truststore: * Keystore: Contains certificates and their
        # associated keys. * Truststore: Contains trusted certificates used to validate
        # a server's certificate. These certificates are typically self-signed
        # certificates or certificates that are not signed by a trusted CA.
        # @param [String] parent
        #   Required. The name of the environment in which to create the keystore. Must be
        #   of the form `organizations/`organization`/environments/`environment``.
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1Keystore] google_cloud_apigee_v1_keystore_object
        # @param [String] name
        #   Optional. Overrides the value in Keystore.
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
        #   Required. The name of keystore to delete. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore``.
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
        #   Required. The name of keystore. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore``.
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
        
        # Creates an alias from a key, certificate pair. The structure of the request is
        # controlled by the `format` query parameter: * `keycertfile` - Separate PEM-
        # encoded key and certificate files are uploaded. The request must have `Content-
        # Type: multipart/form-data` and include fields `keyFile` and `certFile`. If
        # uploading to a truststore, omit `keyFile`. A `password` field should be
        # provided for encrypted keys. * `pkcs12` - A PKCS12 file is uploaded. The
        # request must have `Content-Type: multipart/form-data` with the file provided
        # in the `file` field and a `password` field if the file is encrypted. * `
        # selfsignedcert` - A new private key and certificate are generated. The request
        # must have `Content-Type: application/json` and a body of
        # CertificateGenerationSpec.
        # @param [String] parent
        #   Required. The name of the keystore. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore``.
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [String] _password
        #   DEPRECATED: For improved security, send the password in the body instead of
        #   using this query param. To send it in the body, use a multipart/form-data part
        #   with name "password". The password for the private key file, if it exists.
        # @param [String] alias_
        #   The alias for the key, certificate pair. Values must match regular expression `
        #   [\w\s-.]`1,255``. This must be provided for all formats except 'selfsignedcert'
        #   ; self-signed certs may specify the alias in either this parameter or the JSON
        #   body.
        # @param [String] format
        #   Required. The format of the data. Must be either `selfsignedcert`, `
        #   keycertfile`, or `pkcs12`.
        # @param [Boolean] ignore_expiry_validation
        #   If `true`, no expiry validation will be performed.
        # @param [Boolean] ignore_newline_validation
        #   If `true`, do not throw an error when the file contains a chain with no
        #   newline between each certificate. By default, a newline is needed between each
        #   certificate in a chain.
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
        #   Required. The name of the alias. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore`/aliases/`alias``.
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
        #   Required. The name of the alias. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore`/aliases/`alias``.
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
        #   Required. The name of the alias. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore`/aliases/`alias``.
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
        #   Required. The name of the alias. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore`/aliases/`alias``.
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
        #   Required. The name of the alias. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keystores/`keystore`/aliases/`alias``.
        # @param [Google::Apis::ApigeeV1::GoogleApiHttpBody] google_api_http_body_object
        # @param [Boolean] ignore_expiry_validation
        #   Required. If `true`, no expiry validation will be performed.
        # @param [Boolean] ignore_newline_validation
        #   If `true`, do not throw an error when the file contains a chain with no
        #   newline between each certificate. By default, a newline is needed between each
        #   certificate in a chain.
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
        #   Required. The name of the environment in which to create the key value map.
        #   Must be of the form `organizations/`organization`/environments/`environment``.
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
        
        # Delete a key value map in an environment.
        # @param [String] name
        #   Required. The name of the key value map. Must be of the form `organizations/`
        #   organization`/environments/`environment`/keyvaluemaps/`keyvaluemap``.
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
        
        # This api is similar to GetStats except that the response is less verbose. In
        # the current scheme, a query parameter _optimized instructs Edge Analytics to
        # change the response but since this behavior is not possible with protocol
        # buffer and since this parameter is predominantly used by Edge UI, we are
        # introducing a separate api.
        # @param [String] name
        #   Required. The resource name for which the interactive query will be executed.
        #   Must be of the form `organizations/`organization_id`/environments/`
        #   environment_id/stats/`dimensions`` Dimensions let you view metrics in
        #   meaningful groupings. E.g. apiproxy, target_host. The value of dimensions
        #   should be comma separated list as shown below `organizations/`org`/
        #   environments/`env`/stats/apiproxy,request_verb`
        # @param [String] accuracy
        #   Legacy field: not used anymore.
        # @param [String] agg_table
        #   If customers want to query custom aggregate tables, then this parameter can be
        #   used to specify the table name. If this parameter is skipped, then Edge Query
        #   will try to retrieve the data from fact tables which will be expensive.
        # @param [String] filter
        #   Enables drill-down on specific dimension values.
        # @param [String] limit
        #   This parameter is used to limit the number of result items. Default and the
        #   max value is 14400.
        # @param [String] offset
        #   Use offset with limit to enable pagination of results. For example, to display
        #   results 11-20, set limit to '10' and offset to '10'.
        # @param [Boolean] realtime
        #   Legacy field: not used anymore.
        # @param [String] select
        #   Required. The select parameter contains a comma separated list of metrics. E.g.
        #   sum(message_count),sum(error_count)
        # @param [Boolean] sonar
        #   This parameter routes the query to api monitoring service for last hour.
        # @param [String] sort
        #   This parameter specifies if the sort order should be ascending or descending
        #   Supported values are DESC and ASC.
        # @param [String] sortby
        #   Comma separated list of columns to sort the final result.
        # @param [String] time_range
        #   Required. Time interval for the interactive query. Time range is specified as
        #   start~end E.g. 04/15/2017 00:00~05/15/2017 23:59
        # @param [String] time_unit
        #   A value of second, minute, hour, day, week, month. Time Unit specifies the
        #   granularity of metrics returned.
        # @param [String] topk
        #   Take 'top k' results from results, for example, to return the top 5 results '
        #   topk=5'.
        # @param [Boolean] ts_ascending
        #   Lists timestamps in ascending order if set to true. Recommend setting this
        #   value to true if you are using sortby with sort=DESC.
        # @param [String] tzo
        #   This parameters contains the timezone offset value.
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
        #   Flag that specifies whether to force the deployment of the new revision over
        #   the currently deployed revision by overriding conflict checks. If an existing
        #   shared flow revision is deployed, to ensure seamless deployment with no
        #   downtime, set this parameter to `true`. In this case, hybrid deploys the new
        #   revision fully before undeploying the existing revision. If set to `false`,
        #   you must undeploy the existing revision before deploying the new revision.
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
        def deploy_organization_environment_sharedflow_revision(name, override: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}/deployments', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1Deployment
          command.params['name'] = name unless name.nil?
          command.query['override'] = override unless override.nil?
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
        # hits and counts. Dimensions let you view metrics in meaningful groups. The
        # stats api does accept dimensions as path params. The dimensions are optional
        # in which case the metrics are computed on the entire data for the given
        # timerange.
        # @param [String] name
        #   Required. The resource name for which the interactive query will be executed.
        #   Must be of the form `organizations/`organization_id`/environments/`
        #   environment_id/stats/`dimensions`` Dimensions let you view metrics in
        #   meaningful groupings. E.g. apiproxy, target_host. The value of dimensions
        #   should be comma separated list as shown below `organizations/`org`/
        #   environments/`env`/stats/apiproxy,request_verb`
        # @param [String] accuracy
        #   Legacy field: not used anymore. This field is present to support UI calls
        #   which still use this parameter.
        # @param [String] agg_table
        #   If customers want to query custom aggregate tables, then this parameter can be
        #   used to specify the table name. If this parameter is skipped, then Edge Query
        #   will try to retrieve the data from fact tables which will be expensive.
        # @param [String] filter
        #   Enables drill-down on specific dimension values
        # @param [String] limit
        #   This parameter is used to limit the number of result items. Default and the
        #   max value is 14400.
        # @param [String] offset
        #   Use offset with limit to enable pagination of results. For example, to display
        #   results 11-20, set limit to '10' and offset to '10'.
        # @param [Boolean] realtime
        #   Legacy field: not used anymore.
        # @param [String] select
        #   The select parameter contains a comma separated list of metrics. E.g. sum(
        #   message_count),sum(error_count)
        # @param [Boolean] sonar
        #   This parameter routes the query to api monitoring service for last hour.
        # @param [String] sort
        #   This parameter specifies if the sort order should be ascending or descending
        #   Supported values are DESC and ASC.
        # @param [String] sortby
        #   Comma separated list of columns to sort the final result.
        # @param [String] time_range
        #   Time interval for the interactive query. Time range is specified as start~end
        #   E.g. 04/15/2017 00:00~05/15/2017 23:59
        # @param [String] time_unit
        #   A value of second, minute, hour, day, week, month. Time Unit specifies the
        #   granularity of metrics returned.
        # @param [String] topk
        #   Take 'top k' results from results, for example, to return the top 5 results '
        #   topk=5'.
        # @param [Boolean] ts_ascending
        #   Lists timestamps in ascending order if set to true. Recommend setting this
        #   value to true if you are using sortby with sort=DESC.
        # @param [String] tzo
        #   This parameters contains the timezone offset value.
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
        
        # Retrieve metrics grouped by dimensions in host level. The types of metrics you
        # can retrieve include traffic, message counts, API call latency, response size,
        # and cache hits and counts. Dimensions let you view metrics in meaningful
        # groups. The stats api does accept dimensions as path params. The dimensions
        # are optional in which case the metrics are computed on the entire data for the
        # given timerange.
        # @param [String] name
        #   Required. The resource name for which the interactive query will be executed.
        #   Must be of the form `organizations/`organization_id`/stats/`dimensions``.
        #   Dimensions let you view metrics in meaningful groupings. E.g. apiproxy,
        #   target_host. The value of dimensions should be comma separated list as shown
        #   below `organizations/`org`/stats/apiproxy,request_verb`
        # @param [String] accuracy
        #   Legacy field: not used anymore.
        # @param [String] envgroup_hostname
        #   Required. The hostname for which the interactive query will be executed.
        # @param [String] filter
        #   Enables drill-down on specific dimension values.
        # @param [String] limit
        #   This parameter is used to limit the number of result items. Default and the
        #   max value is 14400.
        # @param [String] offset
        #   Use offset with limit to enable pagination of results. For example, to display
        #   results 11-20, set limit to '10' and offset to '10'.
        # @param [Boolean] realtime
        #   Legacy field: not used anymore.
        # @param [String] select
        #   The select parameter contains a comma separated list of metrics. E.g. sum(
        #   message_count),sum(error_count)
        # @param [String] sort
        #   This parameter specifies if the sort order should be ascending or descending
        #   Supported values are DESC and ASC.
        # @param [String] sortby
        #   Comma separated list of columns to sort the final result.
        # @param [String] time_range
        #   Time interval for the interactive query. Time range is specified as start~end
        #   E.g. 04/15/2017 00:00~05/15/2017 23:59
        # @param [String] time_unit
        #   A value of second, minute, hour, day, week, month. Time Unit specifies the
        #   granularity of metrics returned.
        # @param [String] topk
        #   Take 'top k' results from results, for example, to return the top 5 results '
        #   topk=5'.
        # @param [Boolean] ts_ascending
        #   Lists timestamps in ascending order if set to true. Recommend setting this
        #   value to true if you are using sortby with sort=DESC.
        # @param [String] tzo
        #   This parameters contains the timezone offset value.
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
        
        # Creates a key value map in an organization.
        # @param [String] parent
        #   Required. The name of the organization in which to create the key value map
        #   file. Must be of the form `organizations/`organization``.
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
        
        # Delete a key value map in an organization.
        # @param [String] name
        #   Required. The name of the key value map. Must be of the form `organizations/`
        #   organization`/keyvaluemaps/`keyvaluemap``.
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
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
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
        
        # This api is similar to GetHostStats except that the response is less verbose.
        # @param [String] name
        #   Required. The resource name for which the interactive query will be executed.
        #   Must be of the form `organizations/`organization_id`/stats/`dimensions``.
        #   Dimensions let you view metrics in meaningful groupings. E.g. apiproxy,
        #   target_host. The value of dimensions should be comma separated list as shown
        #   below `organizations/`org`/stats/apiproxy,request_verb`
        # @param [String] accuracy
        #   Legacy field: not used anymore.
        # @param [String] envgroup_hostname
        #   Required. The hostname for which the interactive query will be executed.
        # @param [String] filter
        #   Enables drill-down on specific dimension values.
        # @param [String] limit
        #   This parameter is used to limit the number of result items. Default and the
        #   max value is 14400.
        # @param [String] offset
        #   Use offset with limit to enable pagination of results. For example, to display
        #   results 11-20, set limit to '10' and offset to '10'.
        # @param [Boolean] realtime
        #   Legacy field: not used anymore.
        # @param [String] select
        #   Required. The select parameter contains a comma separated list of metrics. E.g.
        #   sum(message_count),sum(error_count)
        # @param [String] sort
        #   This parameter specifies if the sort order should be ascending or descending
        #   Supported values are DESC and ASC.
        # @param [String] sortby
        #   Comma separated list of columns to sort the final result.
        # @param [String] time_range
        #   Required. Time interval for the interactive query. Time range is specified as
        #   start~end. E.g 04/15/2017 00:00~05/15/2017 23:59.
        # @param [String] time_unit
        #   A value of second, minute, hour, day, week, month. Time Unit specifies the
        #   granularity of metrics returned.
        # @param [String] topk
        #   Take 'top k' results from results, for example, to return the top 5 results '
        #   topk=5'.
        # @param [Boolean] ts_ascending
        #   Lists timestamps in ascending order if set to true. Recommend setting this
        #   value to true if you are using sortby with sort=DESC.
        # @param [String] tzo
        #   This parameters contains the timezone offset value.
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
        
        # Gets a revision of a shared flow. If `format=bundle` is passed, it instead
        # outputs a shared flow revision as a ZIP-formatted bundle of code and config
        # files.
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
        
        # Creates a new category on the portal.
        # @param [String] parent
        #   Required. Name of the portal. Use the following structure in your request: `
        #   organizations/`org`/sites/`site``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryData] google_cloud_apigee_v1_api_category_data_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_site_apicategory(parent, google_cloud_apigee_v1_api_category_data_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/apicategories', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryData::Representation
          command.request_object = google_cloud_apigee_v1_api_category_data_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a category from the portal.
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiResponseWrapper] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiResponseWrapper]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_site_apicategory(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiResponseWrapper::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiResponseWrapper
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a category on the portal.
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
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_site_apicategory(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the categories on the portal.
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
        
        # Updates a category on the portal.
        # @param [String] name
        #   Required. Name of the category. Use the following structure in your request: `
        #   organizations/`org`/sites/`site`/apicategories/`apicategory``
        # @param [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryData] google_cloud_apigee_v1_api_category_data_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_site_apicategory(name, google_cloud_apigee_v1_api_category_data_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategoryData::Representation
          command.request_object = google_cloud_apigee_v1_api_category_data_object
          command.response_representation = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory::Representation
          command.response_class = Google::Apis::ApigeeV1::GoogleCloudApigeeV1ApiCategory
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
