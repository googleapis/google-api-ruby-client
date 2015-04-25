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
    module IdentitytoolkitV3
      # Google Identity Toolkit API
      #
      # Help the third party sites to implement federated login.
      #
      # @example
      #    require 'google/apis/identitytoolkit_v3'
      #
      #    Identitytoolkit = Google::Apis::IdentitytoolkitV3 # Alias the module
      #    service = Identitytoolkit::IdentityToolkitService.new
      #
      # @see https://developers.google.com/identity-toolkit/v3/
      class IdentityToolkitService < Google::Apis::Core::BaseService

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'identitytoolkit/v3/relyingparty/')
        end

        # Creates the URI used by the IdP to authenticate the user.
        # @param [Google::Apis::IdentitytoolkitV3::CreateAuthUriRequest] identitytoolkit_relyingparty_create_auth_uri_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::CreateAuthUriResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::CreateAuthUriResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_auth_uri(identitytoolkit_relyingparty_create_auth_uri_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'createAuthUri'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::CreateAuthUriRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_create_auth_uri_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::CreateAuthUriResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::CreateAuthUriResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Delete user account.
        # @param [Google::Apis::IdentitytoolkitV3::DeleteAccountRequest] identitytoolkit_relyingparty_delete_account_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::DeleteAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::DeleteAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account(identitytoolkit_relyingparty_delete_account_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'deleteAccount'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::DeleteAccountRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_delete_account_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::DeleteAccountResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::DeleteAccountResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Batch download user accounts.
        # @param [Google::Apis::IdentitytoolkitV3::DownloadAccountRequest] identitytoolkit_relyingparty_download_account_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::DownloadAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::DownloadAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_account(identitytoolkit_relyingparty_download_account_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'downloadAccount'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::DownloadAccountRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_download_account_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::DownloadAccountResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::DownloadAccountResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the account info.
        # @param [Google::Apis::IdentitytoolkitV3::GetAccountInfoRequest] identitytoolkit_relyingparty_get_account_info_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::GetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::GetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_info(identitytoolkit_relyingparty_get_account_info_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'getAccountInfo'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::GetAccountInfoRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_get_account_info_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::GetAccountInfoResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::GetAccountInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Get a code for user action confirmation.
        # @param [Google::Apis::IdentitytoolkitV3::Relyingparty] relyingparty
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::GetOobConfirmationCodeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::GetOobConfirmationCodeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_oob_confirmation_code(relyingparty = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'getOobConfirmationCode'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::RelyingpartyRepresentation
          command.request_object = relyingparty
          command.response_representation = Google::Apis::IdentitytoolkitV3::GetOobConfirmationCodeResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::GetOobConfirmationCodeResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Get token signing public key.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Hash<String,String>] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Hash<String,String>]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_public_keys(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'publicKeys'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Hash<String,String>Representation
          command.response_class = Hash<String,String>
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Get recaptcha secure param.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::GetRecaptchaParamResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::GetRecaptchaParamResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_recaptcha_param(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'getRecaptchaParam'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::IdentitytoolkitV3::GetRecaptchaParamResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::GetRecaptchaParamResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Reset password for a user.
        # @param [Google::Apis::IdentitytoolkitV3::ResetPasswordRequest] identitytoolkit_relyingparty_reset_password_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::ResetPasswordResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::ResetPasswordResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_password(identitytoolkit_relyingparty_reset_password_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'resetPassword'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::ResetPasswordRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_reset_password_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::ResetPasswordResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::ResetPasswordResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Set account info for a user.
        # @param [Google::Apis::IdentitytoolkitV3::SetAccountInfoRequest] identitytoolkit_relyingparty_set_account_info_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::SetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::SetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_account_info(identitytoolkit_relyingparty_set_account_info_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'setAccountInfo'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::SetAccountInfoRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_set_account_info_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::SetAccountInfoResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::SetAccountInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Batch upload existing user accounts.
        # @param [Google::Apis::IdentitytoolkitV3::UploadAccountRequest] identitytoolkit_relyingparty_upload_account_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::UploadAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::UploadAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upload_account(identitytoolkit_relyingparty_upload_account_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'uploadAccount'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::UploadAccountRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_upload_account_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::UploadAccountResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::UploadAccountResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Verifies the assertion returned by the IdP.
        # @param [Google::Apis::IdentitytoolkitV3::VerifyAssertionRequest] identitytoolkit_relyingparty_verify_assertion_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::VerifyAssertionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::VerifyAssertionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_assertion(identitytoolkit_relyingparty_verify_assertion_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'verifyAssertion'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::VerifyAssertionRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_verify_assertion_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::VerifyAssertionResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::VerifyAssertionResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Verifies the user entered password.
        # @param [Google::Apis::IdentitytoolkitV3::VerifyPasswordRequest] identitytoolkit_relyingparty_verify_password_request
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV3::VerifyPasswordResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV3::VerifyPasswordResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_password(identitytoolkit_relyingparty_verify_password_request = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'verifyPassword'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::IdentitytoolkitV3::VerifyPasswordRequestRepresentation
          command.request_object = identitytoolkit_relyingparty_verify_password_request
          command.response_representation = Google::Apis::IdentitytoolkitV3::VerifyPasswordResponseRepresentation
          command.response_class = Google::Apis::IdentitytoolkitV3::VerifyPasswordResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
