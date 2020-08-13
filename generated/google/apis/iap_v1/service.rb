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
    module IapV1
      # Cloud Identity-Aware Proxy API
      #
      # Controls access to cloud applications running on Google Cloud Platform.
      #
      # @example
      #    require 'google/apis/iap_v1'
      #
      #    Iap = Google::Apis::IapV1 # Alias the module
      #    service = Iap::CloudIAPService.new
      #
      # @see https://cloud.google.com/iap
      class CloudIAPService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://iap.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Constructs a new OAuth brand for the project if one does not exist. The
        # created brand is "internal only", meaning that OAuth clients created under it
        # only accept requests from users who belong to the same G Suite organization as
        # the project. The brand is created in an un-reviewed status. NOTE: The "
        # internal only" status can be manually changed in the Google Cloud console.
        # Requires that a brand does not already exist for the project, and that the
        # specified support email is owned by the caller.
        # @param [String] parent
        #   Required. GCP Project number/id under which the brand is to be created. In the
        #   following format: projects/`project_number/id`.
        # @param [Google::Apis::IapV1::Brand] brand_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::Brand] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::Brand]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_brand(parent, brand_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/brands', options)
          command.request_representation = Google::Apis::IapV1::Brand::Representation
          command.request_object = brand_object
          command.response_representation = Google::Apis::IapV1::Brand::Representation
          command.response_class = Google::Apis::IapV1::Brand
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the OAuth brand of the project.
        # @param [String] name
        #   Required. Name of the brand to be fetched. In the following format: projects/`
        #   project_number/id`/brands/`brand`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::Brand] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::Brand]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_brand(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IapV1::Brand::Representation
          command.response_class = Google::Apis::IapV1::Brand
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the existing brands for the project.
        # @param [String] parent
        #   Required. GCP Project number/id. In the following format: projects/`
        #   project_number/id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::ListBrandsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::ListBrandsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_brands(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/brands', options)
          command.response_representation = Google::Apis::IapV1::ListBrandsResponse::Representation
          command.response_class = Google::Apis::IapV1::ListBrandsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Identity Aware Proxy (IAP) OAuth client. The client is owned by IAP.
        # Requires that the brand for the project exists and that it is set for
        # internal-only use.
        # @param [String] parent
        #   Required. Path to create the client in. In the following format: projects/`
        #   project_number/id`/brands/`brand`. The project must belong to a G Suite
        #   account.
        # @param [Google::Apis::IapV1::IdentityAwareProxyClient] identity_aware_proxy_client_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::IdentityAwareProxyClient] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::IdentityAwareProxyClient]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_brand_identity_aware_proxy_client(parent, identity_aware_proxy_client_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/identityAwareProxyClients', options)
          command.request_representation = Google::Apis::IapV1::IdentityAwareProxyClient::Representation
          command.request_object = identity_aware_proxy_client_object
          command.response_representation = Google::Apis::IapV1::IdentityAwareProxyClient::Representation
          command.response_class = Google::Apis::IapV1::IdentityAwareProxyClient
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Identity Aware Proxy (IAP) OAuth client. Useful for removing
        # obsolete clients, managing the number of clients in a given project, and
        # cleaning up after tests. Requires that the client is owned by IAP.
        # @param [String] name
        #   Required. Name of the Identity Aware Proxy client to be deleted. In the
        #   following format: projects/`project_number/id`/brands/`brand`/
        #   identityAwareProxyClients/`client_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_brand_identity_aware_proxy_client(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IapV1::Empty::Representation
          command.response_class = Google::Apis::IapV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an Identity Aware Proxy (IAP) OAuth client. Requires that the client
        # is owned by IAP.
        # @param [String] name
        #   Required. Name of the Identity Aware Proxy client to be fetched. In the
        #   following format: projects/`project_number/id`/brands/`brand`/
        #   identityAwareProxyClients/`client_id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::IdentityAwareProxyClient] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::IdentityAwareProxyClient]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_brand_identity_aware_proxy_client(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::IapV1::IdentityAwareProxyClient::Representation
          command.response_class = Google::Apis::IapV1::IdentityAwareProxyClient
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the existing clients for the brand.
        # @param [String] parent
        #   Required. Full brand path. In the following format: projects/`project_number/
        #   id`/brands/`brand`.
        # @param [Fixnum] page_size
        #   The maximum number of clients to return. The service may return fewer than
        #   this value. If unspecified, at most 100 clients will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListIdentityAwareProxyClients` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListIdentityAwareProxyClients` must match the call
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
        # @yieldparam result [Google::Apis::IapV1::ListIdentityAwareProxyClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::ListIdentityAwareProxyClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_brand_identity_aware_proxy_clients(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/identityAwareProxyClients', options)
          command.response_representation = Google::Apis::IapV1::ListIdentityAwareProxyClientsResponse::Representation
          command.response_class = Google::Apis::IapV1::ListIdentityAwareProxyClientsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets an Identity Aware Proxy (IAP) OAuth client secret. Useful if the secret
        # was compromised. Requires that the client is owned by IAP.
        # @param [String] name
        #   Required. Name of the Identity Aware Proxy client to that will have its secret
        #   reset. In the following format: projects/`project_number/id`/brands/`brand`/
        #   identityAwareProxyClients/`client_id`.
        # @param [Google::Apis::IapV1::ResetIdentityAwareProxyClientSecretRequest] reset_identity_aware_proxy_client_secret_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::IdentityAwareProxyClient] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::IdentityAwareProxyClient]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_project_brand_identity_aware_proxy_client_secret(name, reset_identity_aware_proxy_client_secret_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resetSecret', options)
          command.request_representation = Google::Apis::IapV1::ResetIdentityAwareProxyClientSecretRequest::Representation
          command.request_object = reset_identity_aware_proxy_client_secret_request_object
          command.response_representation = Google::Apis::IapV1::IdentityAwareProxyClient::Representation
          command.response_class = Google::Apis::IapV1::IdentityAwareProxyClient
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an Identity-Aware Proxy protected resource.
        # More information about managing access via IAP can be found at: https://cloud.
        # google.com/iap/docs/managing-access#managing_access_via_the_api
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::IapV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::IapV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::IapV1::Policy::Representation
          command.response_class = Google::Apis::IapV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAP settings on a particular IAP protected resource.
        # @param [String] name
        #   Required. The resource name for which to retrieve the settings. Authorization:
        #   Requires the `getSettings` permission for the associated resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::IapSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::IapSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_iap_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:iapSettings', options)
          command.response_representation = Google::Apis::IapV1::IapSettings::Representation
          command.response_class = Google::Apis::IapV1::IapSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy for an Identity-Aware Proxy protected resource.
        # Replaces any existing policy. More information about managing access via IAP
        # can be found at: https://cloud.google.com/iap/docs/managing-access#
        # managing_access_via_the_api
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::IapV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::IapV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::IapV1::Policy::Representation
          command.response_class = Google::Apis::IapV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that a caller has on the Identity-Aware Proxy protected
        # resource. More information about managing access via IAP can be found at:
        # https://cloud.google.com/iap/docs/managing-access#managing_access_via_the_api
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See the
        #   operation documentation for the appropriate value for this field.
        # @param [Google::Apis::IapV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::IapV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::IapV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::IapV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the IAP settings on a particular IAP protected resource. It replaces
        # all fields unless the `update_mask` is set.
        # @param [String] name
        #   Required. The resource name of the IAP protected resource.
        # @param [Google::Apis::IapV1::IapSettings] iap_settings_object
        # @param [String] update_mask
        #   The field mask specifying which IAP settings should be updated. If omitted,
        #   the all of the settings are updated. See https://developers.google.com/
        #   protocol-buffers/docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IapV1::IapSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IapV1::IapSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_iap_settings(name, iap_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}:iapSettings', options)
          command.request_representation = Google::Apis::IapV1::IapSettings::Representation
          command.request_object = iap_settings_object
          command.response_representation = Google::Apis::IapV1::IapSettings::Representation
          command.response_class = Google::Apis::IapV1::IapSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
