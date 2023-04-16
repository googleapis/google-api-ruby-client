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
    module IdentitytoolkitV2
      # Identity Toolkit API
      #
      # The Google Identity Toolkit API lets you use open standards to verify a user's
      #  identity.
      #
      # @example
      #    require 'google/apis/identitytoolkit_v2'
      #
      #    Identitytoolkit = Google::Apis::IdentitytoolkitV2 # Alias the module
      #    service = Identitytoolkit::IdentityToolkitService.new
      #
      # @see https://cloud.google.com/identity-platform
      class IdentityToolkitService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://identitytoolkit.googleapis.com/', '',
                client_name: 'google-apis-identitytoolkit_v2',
                client_version: Google::Apis::IdentitytoolkitV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Revokes a user's token from an Identity Provider (IdP). This is done by
        # manually providing an IdP credential, and the token types for revocation. An [
        # API key](https://cloud.google.com/docs/authentication/api-keys) is required in
        # the request in order to identify the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RevokeTokenRequest] google_cloud_identitytoolkit_v2_revoke_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RevokeTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RevokeTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revoke_account_token(google_cloud_identitytoolkit_v2_revoke_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/accounts:revokeToken', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RevokeTokenRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v2_revoke_token_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RevokeTokenResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RevokeTokenResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Finishes enrolling a second factor for the user.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest] google_cloud_identitytoolkit_v2_finalize_mfa_enrollment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_account_mfa_enrollment(google_cloud_identitytoolkit_v2_finalize_mfa_enrollment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/accounts/mfaEnrollment:finalize', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v2_finalize_mfa_enrollment_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Step one of the MFA enrollment process. In SMS case, this sends an SMS
        # verification code to the user.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest] google_cloud_identitytoolkit_v2_start_mfa_enrollment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_account_mfa_enrollment(google_cloud_identitytoolkit_v2_start_mfa_enrollment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/accounts/mfaEnrollment:start', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v2_start_mfa_enrollment_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Revokes one second factor from the enrolled second factors for an account.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2WithdrawMfaRequest] google_cloud_identitytoolkit_v2_withdraw_mfa_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2WithdrawMfaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2WithdrawMfaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def withdraw_account_mfa_enrollment(google_cloud_identitytoolkit_v2_withdraw_mfa_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/accounts/mfaEnrollment:withdraw', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2WithdrawMfaRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v2_withdraw_mfa_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2WithdrawMfaResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2WithdrawMfaResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verifies the MFA challenge and performs sign-in
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest] google_cloud_identitytoolkit_v2_finalize_mfa_sign_in_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def finalize_account_mfa_sign_in(google_cloud_identitytoolkit_v2_finalize_mfa_sign_in_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/accounts/mfaSignIn:finalize', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v2_finalize_mfa_sign_in_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends the MFA challenge
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaSignInRequest] google_cloud_identitytoolkit_v2_start_mfa_sign_in_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaSignInResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaSignInResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_account_mfa_sign_in(google_cloud_identitytoolkit_v2_start_mfa_sign_in_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/accounts/mfaSignIn:start', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaSignInRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v2_start_mfa_sign_in_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaSignInResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaSignInResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all default supported Idps.
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_default_supported_idps(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/defaultSupportedIdps', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an Identity Toolkit project configuration.
        # @param [String] name
        #   The resource name of the config, for example: "projects/my-awesome-project/
        #   config"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an Identity Toolkit project configuration.
        # @param [String] name
        #   Output only. The name of the Config resource. Example: "projects/my-awesome-
        #   project/config"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config] google_cloud_identitytoolkit_admin_v2_config_object
        # @param [String] update_mask
        #   The update mask applies to the resource. Fields set in the config but not
        #   included in this update mask will be ignored. For the `FieldMask` definition,
        #   see https://developers.google.com/protocol-buffers/docs/reference/google.
        #   protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_config(name, google_cloud_identitytoolkit_admin_v2_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Config
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name where the config to be created, for example: "
        #   projects/my-awesome-project"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
        # @param [String] idp_id
        #   The id of the Idp to create a config for. Call ListDefaultSupportedIdps for
        #   list of all default supported Idps.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_default_supported_idp_config(parent, google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object = nil, idp_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/defaultSupportedIdpConfigs', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['idpId'] = idp_id unless idp_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: "projects/my-awesome-project/
        #   defaultSupportedIdpConfigs/google.com"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_default_supported_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: "projects/my-awesome-project/
        #   defaultSupportedIdpConfigs/google.com"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_default_supported_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all default supported Idp configurations for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name, for example, "projects/my-awesome-project".
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_default_supported_idp_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/defaultSupportedIdpConfigs', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-
        #   awesome-project/defaultSupportedIdpConfigs/google.com"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_default_supported_idp_config(name, google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initialize Identity Platform for a Cloud project. Identity Platform is an end-
        # to-end authentication system for third-party users to access your apps and
        # services. These could include mobile/web apps, games, APIs and beyond. This is
        # the publicly available variant of EnableIdentityPlatform that is only
        # available to billing-enabled projects.
        # @param [String] project
        #   The resource name of the target project the developer wants to enable Identity
        #   Platform for.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest] google_cloud_identitytoolkit_admin_v2_initialize_identity_platform_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def initialize_project_identity_platform_auth(project, google_cloud_identitytoolkit_admin_v2_initialize_identity_platform_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+project}/identityPlatform:initializeAuth', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_initialize_identity_platform_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name where the config to be created, for example: "
        #   projects/my-awesome-project"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
        # @param [String] inbound_saml_config_id
        #   The id to use for this config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_inbound_saml_config(parent, google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object = nil, inbound_saml_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/inboundSamlConfigs', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['inboundSamlConfigId'] = inbound_saml_config_id unless inbound_saml_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config to be deleted, for example: 'projects/my-
        #   awesome-project/inboundSamlConfigs/my-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_inbound_saml_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: 'projects/my-awesome-project/
        #   inboundSamlConfigs/my-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_inbound_saml_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all inbound SAML configurations for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name, for example, "projects/my-awesome-project".
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_inbound_saml_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/inboundSamlConfigs', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] name
        #   The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-
        #   project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
        # @param [String] update_mask
        #   The update mask applies to the resource. Empty update mask will result in
        #   updating nothing. For the `FieldMask` definition, see https://developers.
        #   google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_inbound_saml_config(name, google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name where the config to be created, for example: "
        #   projects/my-awesome-project"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
        # @param [String] oauth_idp_config_id
        #   The id to use for this config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_oauth_idp_config(parent, google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object = nil, oauth_idp_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/oauthIdpConfigs', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['oauthIdpConfigId'] = oauth_idp_config_id unless oauth_idp_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config to be deleted, for example: 'projects/my-
        #   awesome-project/oauthIdpConfigs/oauth-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_oauth_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: 'projects/my-awesome-project/
        #   oauthIdpConfigs/oauth-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_oauth_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all Oidc Idp configurations for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name, for example, "projects/my-awesome-project".
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_oauth_idp_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/oauthIdpConfigs', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-
        #   project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
        # @param [String] update_mask
        #   The update mask applies to the resource. Empty update mask will result in
        #   updating nothing. For the `FieldMask` definition, see https://developers.
        #   google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_oauth_idp_config(name, google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a tenant. Requires write permission on the Agent project.
        # @param [String] parent
        #   The parent resource name where the tenant will be created. For example, "
        #   projects/project1".
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant] google_cloud_identitytoolkit_admin_v2_tenant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant(parent, google_cloud_identitytoolkit_admin_v2_tenant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/tenants', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_tenant_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a tenant. Requires write permission on the Agent project.
        # @param [String] name
        #   Resource name of the tenant to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a tenant. Requires read permission on the Tenant resource.
        # @param [String] name
        #   Resource name of the tenant to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a resource. An error is returned if the
        # resource does not exist. An empty policy is returned if the resource exists
        # but does not have a policy set on it. Caller must have the right Google IAM
        # permission on the resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleIamV1GetIamPolicyRequest] google_iam_v1_get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_iam_policy(resource, google_iam_v1_get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleIamV1GetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_get_iam_policy_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List tenants under the given agent project. Requires read permission on the
        # Agent project.
        # @param [String] parent
        #   Required. The parent resource name to list tenants for.
        # @param [Fixnum] page_size
        #   The maximum number of results to return, capped at 1000. If not specified, the
        #   default value is 20.
        # @param [String] page_token
        #   The pagination token from the response of a previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/tenants', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a tenant. Requires write permission on the Tenant resource.
        # @param [String] name
        #   Output only. Resource name of a tenant. For example: "projects/`project-id`/
        #   tenants/`tenant-id`"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant] google_cloud_identitytoolkit_admin_v2_tenant_object
        # @param [String] update_mask
        #   If provided, only update fields set in the update mask. Otherwise, all
        #   settable fields will be updated. For the `FieldMask` definition, see https://
        #   developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant(name, google_cloud_identitytoolkit_admin_v2_tenant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_tenant_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy for a resource. If the policy exists, it is
        # replaced. Caller must have the right Google IAM permission on the resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleIamV1SetIamPolicyRequest] google_iam_v1_set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_project_tenant_iam_policy(resource, google_iam_v1_set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleIamV1SetIamPolicyRequest::Representation
          command.request_object = google_iam_v1_set_iam_policy_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the caller's permissions on a resource. An error is returned if the
        # resource does not exist. A caller is not required to have Google IAM
        # permission to make this request.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleIamV1TestIamPermissionsRequest] google_iam_v1_test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleIamV1TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleIamV1TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_project_tenant_iam_permissions(resource, google_iam_v1_test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleIamV1TestIamPermissionsRequest::Representation
          command.request_object = google_iam_v1_test_iam_permissions_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleIamV1TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleIamV1TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name where the config to be created, for example: "
        #   projects/my-awesome-project"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
        # @param [String] idp_id
        #   The id of the Idp to create a config for. Call ListDefaultSupportedIdps for
        #   list of all default supported Idps.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_default_supported_idp_config(parent, google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object = nil, idp_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/defaultSupportedIdpConfigs', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['idpId'] = idp_id unless idp_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: "projects/my-awesome-project/
        #   defaultSupportedIdpConfigs/google.com"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_default_supported_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: "projects/my-awesome-project/
        #   defaultSupportedIdpConfigs/google.com"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_default_supported_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all default supported Idp configurations for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name, for example, "projects/my-awesome-project".
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_default_supported_idp_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/defaultSupportedIdpConfigs', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a default supported Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The name of the DefaultSupportedIdpConfig resource, for example: "projects/my-
        #   awesome-project/defaultSupportedIdpConfigs/google.com"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
        # @param [String] update_mask
        #   The update mask applies to the resource. For the `FieldMask` definition, see
        #   https://developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_default_supported_idp_config(name, google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_default_supported_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name where the config to be created, for example: "
        #   projects/my-awesome-project"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
        # @param [String] inbound_saml_config_id
        #   The id to use for this config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_inbound_saml_config(parent, google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object = nil, inbound_saml_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/inboundSamlConfigs', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['inboundSamlConfigId'] = inbound_saml_config_id unless inbound_saml_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config to be deleted, for example: 'projects/my-
        #   awesome-project/inboundSamlConfigs/my-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_inbound_saml_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: 'projects/my-awesome-project/
        #   inboundSamlConfigs/my-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_inbound_saml_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all inbound SAML configurations for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name, for example, "projects/my-awesome-project".
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_inbound_saml_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/inboundSamlConfigs', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an inbound SAML configuration for an Identity Toolkit project.
        # @param [String] name
        #   The name of the InboundSamlConfig resource, for example: 'projects/my-awesome-
        #   project/inboundSamlConfigs/my-config-id'. Ignored during create requests.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
        # @param [String] update_mask
        #   The update mask applies to the resource. Empty update mask will result in
        #   updating nothing. For the `FieldMask` definition, see https://developers.
        #   google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_inbound_saml_config(name, google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_inbound_saml_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name where the config to be created, for example: "
        #   projects/my-awesome-project"
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
        # @param [String] oauth_idp_config_id
        #   The id to use for this config.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_oauth_idp_config(parent, google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object = nil, oauth_idp_config_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/oauthIdpConfigs', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['oauthIdpConfigId'] = oauth_idp_config_id unless oauth_idp_config_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config to be deleted, for example: 'projects/my-
        #   awesome-project/oauthIdpConfigs/oauth-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_oauth_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The resource name of the config, for example: 'projects/my-awesome-project/
        #   oauthIdpConfigs/oauth-config-id'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_oauth_idp_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all Oidc Idp configurations for an Identity Toolkit project.
        # @param [String] parent
        #   The parent resource name, for example, "projects/my-awesome-project".
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_oauth_idp_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/oauthIdpConfigs', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an Oidc Idp configuration for an Identity Toolkit project.
        # @param [String] name
        #   The name of the OAuthIdpConfig resource, for example: 'projects/my-awesome-
        #   project/oauthIdpConfigs/oauth-config-id'. Ignored during create requests.
        # @param [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
        # @param [String] update_mask
        #   The update mask applies to the resource. Empty update mask will result in
        #   updating nothing. For the `FieldMask` definition, see https://developers.
        #   google.com/protocol-buffers/docs/reference/google.protobuf#fieldmask
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_oauth_idp_config(name, google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.request_object = google_cloud_identitytoolkit_admin_v2_o_auth_idp_config_object
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets parameters needed for reCAPTCHA analysis.
        # @param [String] client_type
        #   reCAPTCHA Enterprise uses separate site keys for different client types.
        #   Specify the client type to get the corresponding key.
        # @param [String] tenant_id
        #   The id of a tenant.
        # @param [String] version
        #   The reCAPTCHA version.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RecaptchaConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RecaptchaConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_recaptcha_config(client_type: nil, tenant_id: nil, version: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/recaptchaConfig', options)
          command.response_representation = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RecaptchaConfig::Representation
          command.response_class = Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RecaptchaConfig
          command.query['clientType'] = client_type unless client_type.nil?
          command.query['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['version'] = version unless version.nil?
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
