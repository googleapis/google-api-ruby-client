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
    module IdentitytoolkitV1
      # Identity Toolkit API
      #
      # The Google Identity Toolkit API lets you use open standards to verify a user's
      #  identity.
      #
      # @example
      #    require 'google/apis/identitytoolkit_v1'
      #
      #    Identitytoolkit = Google::Apis::IdentitytoolkitV1 # Alias the module
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
                client_name: 'google-apis-identitytoolkit_v1',
                client_version: Google::Apis::IdentitytoolkitV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # If an email identifier is specified, checks and returns if any user account is
        # registered with the email. If there is a registered account, fetches all
        # providers associated with the account's email. If the provider ID of an
        # Identity Provider (IdP) is specified, creates an authorization URI for the IdP.
        # The user can be directed to this URI to sign in with the IdP. An [API key](
        # https://cloud.google.com/docs/authentication/api-keys) is required in the
        # request in order to identify the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateAuthUriRequest] google_cloud_identitytoolkit_v1_create_auth_uri_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateAuthUriResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateAuthUriResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_auth_uri(google_cloud_identitytoolkit_v1_create_auth_uri_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:createAuthUri', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateAuthUriRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_create_auth_uri_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateAuthUriResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateAuthUriResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user's account.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountRequest] google_cloud_identitytoolkit_v1_delete_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account(google_cloud_identitytoolkit_v1_delete_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:delete', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_delete_account_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Experimental
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest] google_cloud_identitytoolkit_v1_issue_saml_response_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def issue_account_saml_response(google_cloud_identitytoolkit_v1_issue_saml_response_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:issueSamlResponse', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_issue_saml_response_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets account information for all matched accounts. For an end user request,
        # retrieves the account of the end user. For an admin request with Google OAuth
        # 2.0 credential, retrieves one or multiple account(s) with matching criteria.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoRequest] google_cloud_identitytoolkit_v1_get_account_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_account(google_cloud_identitytoolkit_v1_get_account_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:lookup', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_get_account_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resets the password of an account either using an out-of-band code generated
        # by sendOobCode or by specifying the email and password of the account to be
        # modified. Can also check the purpose of an out-of-band code without consuming
        # it.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ResetPasswordRequest] google_cloud_identitytoolkit_v1_reset_password_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ResetPasswordResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ResetPasswordResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reset_account_password(google_cloud_identitytoolkit_v1_reset_password_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:resetPassword', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ResetPasswordRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_reset_password_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ResetPasswordResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ResetPasswordResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends an out-of-band confirmation code for an account. Requests from a
        # authenticated request can optionally return a link including the OOB code
        # instead of sending it.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeRequest] google_cloud_identitytoolkit_v1_get_oob_code_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_account_oob_code(google_cloud_identitytoolkit_v1_get_oob_code_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:sendOobCode', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_get_oob_code_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends a SMS verification code for phone number sign-in. An [API key](https://
        # cloud.google.com/docs/authentication/api-keys) is required in the request in
        # order to identify the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest] google_cloud_identitytoolkit_v1_send_verification_code_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_account_verification_code(google_cloud_identitytoolkit_v1_send_verification_code_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:sendVerificationCode', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_send_verification_code_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs in or signs up a user by exchanging a custom Auth token. Upon a
        # successful sign-in or sign-up, a new Identity Platform ID token and refresh
        # token are issued for the user. An [API key](https://cloud.google.com/docs/
        # authentication/api-keys) is required in the request in order to identify the
        # Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest] google_cloud_identitytoolkit_v1_sign_in_with_custom_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_account_in_with_custom_token(google_cloud_identitytoolkit_v1_sign_in_with_custom_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:signInWithCustomToken', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_in_with_custom_token_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs in or signs up a user with a out-of-band code from an email link. If a
        # user does not exist with the given email address, a user record will be
        # created. If the sign-in succeeds, an Identity Platform ID and refresh token
        # are issued for the authenticated user. An [API key](https://cloud.google.com/
        # docs/authentication/api-keys) is required in the request in order to identify
        # the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest] google_cloud_identitytoolkit_v1_sign_in_with_email_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_account_in_with_email_link(google_cloud_identitytoolkit_v1_sign_in_with_email_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:signInWithEmailLink', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_in_with_email_link_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs in or signs up a user with iOS Game Center credentials. If the sign-in
        # succeeds, a new Identity Platform ID token and refresh token are issued for
        # the authenticated user. The bundle ID is required in the request header as `x-
        # ios-bundle-identifier`. An [API key](https://cloud.google.com/docs/
        # authentication/api-keys) is required in the request in order to identify the
        # Google Cloud project. Apple has [deprecated the `playerID` field](https://
        # developer.apple.com/documentation/gamekit/gkplayer/1521127-playerid/). The
        # Apple platform Firebase SDK will use `gamePlayerID` and `teamPlayerID` from
        # version 10.5.0 and onwards. Upgrading to SDK version 10.5.0 or later updates
        # existing integrations that use `playerID` to instead use `gamePlayerID` and `
        # teamPlayerID`. When making calls to `signInWithGameCenter`, you must include `
        # playerID` along with the new fields `gamePlayerID` and `teamPlayerID` to
        # successfully identify all existing users. Upgrading existing Game Center sign
        # in integrations to SDK version 10.5.0 or later is irreversible.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest] google_cloud_identitytoolkit_v1_sign_in_with_game_center_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_account_in_with_game_center(google_cloud_identitytoolkit_v1_sign_in_with_game_center_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:signInWithGameCenter', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_in_with_game_center_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs in or signs up a user using credentials from an Identity Provider (IdP).
        # This is done by manually providing an IdP credential, or by providing the
        # authorization response obtained via the authorization request from
        # CreateAuthUri. If the sign-in succeeds, a new Identity Platform ID token and
        # refresh token are issued for the authenticated user. A new Identity Platform
        # user account will be created if the user has not previously signed in to the
        # IdP with the same account. In addition, when the "One account per email
        # address" setting is enabled, there should not be an existing Identity Platform
        # user account with the same email address for a new user account to be created.
        # An [API key](https://cloud.google.com/docs/authentication/api-keys) is
        # required in the request in order to identify the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithIdpRequest] google_cloud_identitytoolkit_v1_sign_in_with_idp_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithIdpResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithIdpResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_account_in_with_idp(google_cloud_identitytoolkit_v1_sign_in_with_idp_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:signInWithIdp', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithIdpRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_in_with_idp_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithIdpResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithIdpResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs in a user with email and password. If the sign-in succeeds, a new
        # Identity Platform ID token and refresh token are issued for the authenticated
        # user. An [API key](https://cloud.google.com/docs/authentication/api-keys) is
        # required in the request in order to identify the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest] google_cloud_identitytoolkit_v1_sign_in_with_password_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_account_in_with_password(google_cloud_identitytoolkit_v1_sign_in_with_password_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:signInWithPassword', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_in_with_password_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes a phone number authentication attempt. If a user already exists with
        # the given phone number, an ID token is minted for that user. Otherwise, a new
        # user is created and associated with the phone number. This method may also be
        # used to link a phone number to an existing user. An [API key](https://cloud.
        # google.com/docs/authentication/api-keys) is required in the request in order
        # to identify the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest] google_cloud_identitytoolkit_v1_sign_in_with_phone_number_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_account_in_with_phone_number(google_cloud_identitytoolkit_v1_sign_in_with_phone_number_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:signInWithPhoneNumber', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_in_with_phone_number_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs up a new email and password user or anonymous user, or upgrades an
        # anonymous user to email and password. For an admin request with a Google OAuth
        # 2.0 credential with the proper [permissions](https://cloud.google.com/identity-
        # platform/docs/access-control), creates a new anonymous, email and password, or
        # phone number user. An [API key](https://cloud.google.com/docs/authentication/
        # api-keys) is required in the request in order to identify the Google Cloud
        # project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpRequest] google_cloud_identitytoolkit_v1_sign_up_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def sign_account_up(google_cloud_identitytoolkit_v1_sign_up_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:signUp', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_up_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates account-related information for the specified user by setting specific
        # fields or applying action codes. Requests from administrators and end users
        # are supported.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoRequest] google_cloud_identitytoolkit_v1_set_account_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_account(google_cloud_identitytoolkit_v1_set_account_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:update', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_set_account_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verifies an iOS client is a real iOS device. If the request is valid, a
        # receipt will be sent in the response and a secret will be sent via Apple Push
        # Notification Service. The client should send both of them back to certain
        # Identity Platform APIs in a later call (for example, /accounts:
        # sendVerificationCode), in order to verify the client. The bundle ID is
        # required in the request header as `x-ios-bundle-identifier`. An [API key](
        # https://cloud.google.com/docs/authentication/api-keys) is required in the
        # request in order to identify the Google Cloud project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1VerifyIosClientRequest] google_cloud_identitytoolkit_v1_verify_ios_client_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1VerifyIosClientResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1VerifyIosClientResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_account_ios_client(google_cloud_identitytoolkit_v1_verify_ios_client_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/accounts:verifyIosClient', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1VerifyIosClientRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_verify_ios_client_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1VerifyIosClientResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1VerifyIosClientResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs up a new email and password user or anonymous user, or upgrades an
        # anonymous user to email and password. For an admin request with a Google OAuth
        # 2.0 credential with the proper [permissions](https://cloud.google.com/identity-
        # platform/docs/access-control), creates a new anonymous, email and password, or
        # phone number user. An [API key](https://cloud.google.com/docs/authentication/
        # api-keys) is required in the request in order to identify the Google Cloud
        # project.
        # @param [String] target_project_id
        #   The project ID of the project which the user should belong to. Specifying this
        #   field requires a Google OAuth 2.0 credential with the proper [permissions](
        #   https://cloud.google.com/identity-platform/docs/access-control). If this is
        #   not set, the target project is inferred from the scope associated to the
        #   Bearer access token.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpRequest] google_cloud_identitytoolkit_v1_sign_up_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accounts_project(target_project_id, google_cloud_identitytoolkit_v1_sign_up_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_up_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session cookie for the given Identity Platform ID token. The session
        # cookie is used by the client to preserve the user's login state.
        # @param [String] target_project_id
        #   The ID of the project that the account belongs to.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest] google_cloud_identitytoolkit_v1_create_session_cookie_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_session_cookie(target_project_id, google_cloud_identitytoolkit_v1_create_session_cookie_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}:createSessionCookie', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_create_session_cookie_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up user accounts within a project or a tenant based on conditions in the
        # request.
        # @param [String] target_project_id
        #   The ID of the project to which the result is scoped.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoRequest] google_cloud_identitytoolkit_v1_query_user_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_accounts(target_project_id, google_cloud_identitytoolkit_v1_query_user_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}:queryAccounts', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_query_user_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads multiple accounts into the Google Cloud project. If there is a problem
        # uploading one or more of the accounts, the rest will be uploaded, and a list
        # of the errors will be returned. To use this method requires a Google OAuth 2.0
        # credential with proper [permissions](https://cloud.google.com/identity-
        # platform/docs/access-control).
        # @param [String] target_project_id
        #   The Project ID of the Identity Platform project which the account belongs to.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountRequest] google_cloud_identitytoolkit_v1_upload_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_account_create(target_project_id, google_cloud_identitytoolkit_v1_upload_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts:batchCreate', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_upload_account_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch deletes multiple accounts. For accounts that fail to be deleted, error
        # info is contained in the response. The method ignores accounts that do not
        # exist or are duplicated in the request. This method requires a Google OAuth 2.
        # 0 credential with proper [permissions] (https://cloud.google.com/identity-
        # platform/docs/access-control).
        # @param [String] target_project_id
        #   If `tenant_id` is specified, the ID of the Google Cloud project that the
        #   Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud
        #   project that accounts belong to.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest] google_cloud_identitytoolkit_v1_batch_delete_accounts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_account_delete(target_project_id, google_cloud_identitytoolkit_v1_batch_delete_accounts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts:batchDelete', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_batch_delete_accounts_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Download account information for all accounts on the project in a paginated
        # manner. To use this method requires a Google OAuth 2.0 credential with proper [
        # permissions](https://cloud.google.com/identity-platform/docs/access-control)..
        # Furthermore, additional permissions are needed to get password hash, password
        # salt, and password version from accounts; otherwise these fields are redacted.
        # @param [String] target_project_id
        #   If `tenant_id` is specified, the ID of the Google Cloud project that the
        #   Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud
        #   project that the accounts belong to.
        # @param [Fixnum] delegated_project_number
        # @param [Fixnum] max_results
        #   The maximum number of results to return. Must be at least 1 and no greater
        #   than 1000. By default, it is 20.
        # @param [String] next_page_token
        #   The pagination token from the response of a previous request.
        # @param [String] tenant_id
        #   The ID of the Identity Platform tenant the accounts belongs to. If not
        #   specified, accounts on the Identity Platform project are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_account_get(target_project_id, delegated_project_number: nil, max_results: nil, next_page_token: nil, tenant_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{+targetProjectId}/accounts:batchGet', options)
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['delegatedProjectNumber'] = delegated_project_number unless delegated_project_number.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['nextPageToken'] = next_page_token unless next_page_token.nil?
          command.query['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user's account.
        # @param [String] target_project_id
        #   The ID of the project which the account belongs to. Should only be specified
        #   in authenticated requests that specify local_id of an account.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountRequest] google_cloud_identitytoolkit_v1_delete_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_account(target_project_id, google_cloud_identitytoolkit_v1_delete_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts:delete', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_delete_account_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets account information for all matched accounts. For an end user request,
        # retrieves the account of the end user. For an admin request with Google OAuth
        # 2.0 credential, retrieves one or multiple account(s) with matching criteria.
        # @param [String] target_project_id
        #   The ID of the Google Cloud project that the account or the Identity Platform
        #   tenant specified by `tenant_id` belongs to. Should only be specified by
        #   authenticated requests bearing a Google OAuth 2.0 credential with proper [
        #   permissions](https://cloud.google.com/identity-platform/docs/access-control).
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoRequest] google_cloud_identitytoolkit_v1_get_account_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_account(target_project_id, google_cloud_identitytoolkit_v1_get_account_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts:lookup', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_get_account_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up user accounts within a project or a tenant based on conditions in the
        # request.
        # @param [String] target_project_id
        #   The ID of the project to which the result is scoped.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoRequest] google_cloud_identitytoolkit_v1_query_user_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_account(target_project_id, google_cloud_identitytoolkit_v1_query_user_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts:query', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_query_user_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends an out-of-band confirmation code for an account. Requests from a
        # authenticated request can optionally return a link including the OOB code
        # instead of sending it.
        # @param [String] target_project_id
        #   The Project ID of the Identity Platform project which the account belongs to.
        #   To specify this field, it requires a Google OAuth 2.0 credential with proper [
        #   permissions](https://cloud.google.com/identity-platform/docs/access-control).
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeRequest] google_cloud_identitytoolkit_v1_get_oob_code_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_project_account_oob_code(target_project_id, google_cloud_identitytoolkit_v1_get_oob_code_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts:sendOobCode', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_get_oob_code_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates account-related information for the specified user by setting specific
        # fields or applying action codes. Requests from administrators and end users
        # are supported.
        # @param [String] target_project_id
        #   The project ID for the project that the account belongs to. Specifying this
        #   field requires Google OAuth 2.0 credential with proper [permissions] (https://
        #   cloud.google.com/identity-platform/docs/access-control). Requests from end
        #   users should pass an Identity Platform ID token instead.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoRequest] google_cloud_identitytoolkit_v1_set_account_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_account(target_project_id, google_cloud_identitytoolkit_v1_set_account_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/accounts:update', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_set_account_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signs up a new email and password user or anonymous user, or upgrades an
        # anonymous user to email and password. For an admin request with a Google OAuth
        # 2.0 credential with the proper [permissions](https://cloud.google.com/identity-
        # platform/docs/access-control), creates a new anonymous, email and password, or
        # phone number user. An [API key](https://cloud.google.com/docs/authentication/
        # api-keys) is required in the request in order to identify the Google Cloud
        # project.
        # @param [String] target_project_id
        #   The project ID of the project which the user should belong to. Specifying this
        #   field requires a Google OAuth 2.0 credential with the proper [permissions](
        #   https://cloud.google.com/identity-platform/docs/access-control). If this is
        #   not set, the target project is inferred from the scope associated to the
        #   Bearer access token.
        # @param [String] tenant_id
        #   The ID of the Identity Platform tenant to create a user under. If not set, the
        #   user will be created under the default Identity Platform project.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpRequest] google_cloud_identitytoolkit_v1_sign_up_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accounts_project_tenant(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_sign_up_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_sign_up_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SignUpResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a session cookie for the given Identity Platform ID token. The session
        # cookie is used by the client to preserve the user's login state.
        # @param [String] target_project_id
        #   The ID of the project that the account belongs to.
        # @param [String] tenant_id
        #   The tenant ID of the Identity Platform tenant the account belongs to.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest] google_cloud_identitytoolkit_v1_create_session_cookie_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_session_cookie(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_create_session_cookie_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}:createSessionCookie', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_create_session_cookie_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads multiple accounts into the Google Cloud project. If there is a problem
        # uploading one or more of the accounts, the rest will be uploaded, and a list
        # of the errors will be returned. To use this method requires a Google OAuth 2.0
        # credential with proper [permissions](https://cloud.google.com/identity-
        # platform/docs/access-control).
        # @param [String] target_project_id
        #   The Project ID of the Identity Platform project which the account belongs to.
        # @param [String] tenant_id
        #   The ID of the Identity Platform tenant the account belongs to.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountRequest] google_cloud_identitytoolkit_v1_upload_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_account_create(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_upload_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:batchCreate', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_upload_account_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UploadAccountResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch deletes multiple accounts. For accounts that fail to be deleted, error
        # info is contained in the response. The method ignores accounts that do not
        # exist or are duplicated in the request. This method requires a Google OAuth 2.
        # 0 credential with proper [permissions] (https://cloud.google.com/identity-
        # platform/docs/access-control).
        # @param [String] target_project_id
        #   If `tenant_id` is specified, the ID of the Google Cloud project that the
        #   Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud
        #   project that accounts belong to.
        # @param [String] tenant_id
        #   If the accounts belong to an Identity Platform tenant, the ID of the tenant.
        #   If the accounts belong to an default Identity Platform project, the field is
        #   not needed.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest] google_cloud_identitytoolkit_v1_batch_delete_accounts_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_account_delete(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_batch_delete_accounts_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:batchDelete', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_batch_delete_accounts_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Download account information for all accounts on the project in a paginated
        # manner. To use this method requires a Google OAuth 2.0 credential with proper [
        # permissions](https://cloud.google.com/identity-platform/docs/access-control)..
        # Furthermore, additional permissions are needed to get password hash, password
        # salt, and password version from accounts; otherwise these fields are redacted.
        # @param [String] target_project_id
        #   If `tenant_id` is specified, the ID of the Google Cloud project that the
        #   Identity Platform tenant belongs to. Otherwise, the ID of the Google Cloud
        #   project that the accounts belong to.
        # @param [String] tenant_id
        #   The ID of the Identity Platform tenant the accounts belongs to. If not
        #   specified, accounts on the Identity Platform project are returned.
        # @param [Fixnum] delegated_project_number
        # @param [Fixnum] max_results
        #   The maximum number of results to return. Must be at least 1 and no greater
        #   than 1000. By default, it is 20.
        # @param [String] next_page_token
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
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_account_get(target_project_id, tenant_id, delegated_project_number: nil, max_results: nil, next_page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:batchGet', options)
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DownloadAccountResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['delegatedProjectNumber'] = delegated_project_number unless delegated_project_number.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['nextPageToken'] = next_page_token unless next_page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user's account.
        # @param [String] target_project_id
        #   The ID of the project which the account belongs to. Should only be specified
        #   in authenticated requests that specify local_id of an account.
        # @param [String] tenant_id
        #   The ID of the tenant that the account belongs to, if applicable. Only require
        #   to be specified for authenticated requests bearing a Google OAuth 2.0
        #   credential that specify local_id of an account that belongs to an Identity
        #   Platform tenant.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountRequest] google_cloud_identitytoolkit_v1_delete_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_account(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_delete_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:delete', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_delete_account_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1DeleteAccountResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets account information for all matched accounts. For an end user request,
        # retrieves the account of the end user. For an admin request with Google OAuth
        # 2.0 credential, retrieves one or multiple account(s) with matching criteria.
        # @param [String] target_project_id
        #   The ID of the Google Cloud project that the account or the Identity Platform
        #   tenant specified by `tenant_id` belongs to. Should only be specified by
        #   authenticated requests bearing a Google OAuth 2.0 credential with proper [
        #   permissions](https://cloud.google.com/identity-platform/docs/access-control).
        # @param [String] tenant_id
        #   The ID of the tenant that the account belongs to. Should only be specified by
        #   authenticated requests from a developer.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoRequest] google_cloud_identitytoolkit_v1_get_account_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_project_tenant_account(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_get_account_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:lookup', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_get_account_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetAccountInfoResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up user accounts within a project or a tenant based on conditions in the
        # request.
        # @param [String] target_project_id
        #   The ID of the project to which the result is scoped.
        # @param [String] tenant_id
        #   The ID of the tenant to which the result is scoped.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoRequest] google_cloud_identitytoolkit_v1_query_user_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_project_tenant_account(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_query_user_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:query', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_query_user_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1QueryUserInfoResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends an out-of-band confirmation code for an account. Requests from a
        # authenticated request can optionally return a link including the OOB code
        # instead of sending it.
        # @param [String] target_project_id
        #   The Project ID of the Identity Platform project which the account belongs to.
        #   To specify this field, it requires a Google OAuth 2.0 credential with proper [
        #   permissions](https://cloud.google.com/identity-platform/docs/access-control).
        # @param [String] tenant_id
        #   The tenant ID of the Identity Platform tenant the account belongs to.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeRequest] google_cloud_identitytoolkit_v1_get_oob_code_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_project_tenant_account_oob_code(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_get_oob_code_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:sendOobCode', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_get_oob_code_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetOobCodeResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates account-related information for the specified user by setting specific
        # fields or applying action codes. Requests from administrators and end users
        # are supported.
        # @param [String] target_project_id
        #   The project ID for the project that the account belongs to. Specifying this
        #   field requires Google OAuth 2.0 credential with proper [permissions] (https://
        #   cloud.google.com/identity-platform/docs/access-control). Requests from end
        #   users should pass an Identity Platform ID token instead.
        # @param [String] tenant_id
        #   The tenant ID of the Identity Platform tenant that the account belongs to.
        #   Requests from end users should pass an Identity Platform ID token rather than
        #   setting this field.
        # @param [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoRequest] google_cloud_identitytoolkit_v1_set_account_info_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_tenant_account(target_project_id, tenant_id, google_cloud_identitytoolkit_v1_set_account_info_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/projects/{+targetProjectId}/tenants/{+tenantId}/accounts:update', options)
          command.request_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoRequest::Representation
          command.request_object = google_cloud_identitytoolkit_v1_set_account_info_request_object
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SetAccountInfoResponse
          command.params['targetProjectId'] = target_project_id unless target_project_id.nil?
          command.params['tenantId'] = tenant_id unless tenant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a project's public Identity Toolkit configuration. (Legacy) This method
        # also supports authenticated calls from a developer to retrieve non-public
        # configuration.
        # @param [String] android_package_name
        #   Android package name to check against the real android package name. If this
        #   field is provided, and sha1_cert_hash is not provided, the action will throw
        #   an error if this does not match the real android package name.
        # @param [String] client_id
        #   The RP OAuth client ID. If set, a check will be performed to ensure that the
        #   OAuth client is valid for the retrieved project and the request rejected with
        #   a client error if not valid.
        # @param [Fixnum] delegated_project_number
        #   Project Number of the delegated project request. This field should only be
        #   used as part of the Firebase V1 migration.
        # @param [String] firebase_app_id
        #   The Firebase app ID, for applications that use Firebase. This can be found in
        #   the Firebase console for your project. If set, a check will be performed to
        #   ensure that the app ID is valid for the retrieved project. If not valid, the
        #   request will be rejected with a client error.
        # @param [String] ios_bundle_id
        #   iOS bundle id to check against the real ios bundle id. If this field is
        #   provided, the action will throw an error if this does not match the real iOS
        #   bundle id.
        # @param [Fixnum] project_number
        #   Project number of the configuration to retrieve. This field is deprecated and
        #   should not be used by new integrations.
        # @param [Boolean] return_dynamic_link
        #   Whether dynamic link should be returned.
        # @param [String] sha1_cert
        #   SHA-1 Android application cert hash. If set, a check will be performed to
        #   ensure that the cert hash is valid for the retrieved project and
        #   android_package_name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetProjectConfigResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetProjectConfigResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_projects(android_package_name: nil, client_id: nil, delegated_project_number: nil, firebase_app_id: nil, ios_bundle_id: nil, project_number: nil, return_dynamic_link: nil, sha1_cert: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/projects', options)
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetProjectConfigResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetProjectConfigResponse
          command.query['androidPackageName'] = android_package_name unless android_package_name.nil?
          command.query['clientId'] = client_id unless client_id.nil?
          command.query['delegatedProjectNumber'] = delegated_project_number unless delegated_project_number.nil?
          command.query['firebaseAppId'] = firebase_app_id unless firebase_app_id.nil?
          command.query['iosBundleId'] = ios_bundle_id unless ios_bundle_id.nil?
          command.query['projectNumber'] = project_number unless project_number.nil?
          command.query['returnDynamicLink'] = return_dynamic_link unless return_dynamic_link.nil?
          command.query['sha1Cert'] = sha1_cert unless sha1_cert.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves public keys of the legacy Identity Toolkit token signer to enable
        # third parties to verify the legacy ID token. For now the X509 pem cert is the
        # only format supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_public_keys(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/publicKeys', options)
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets parameters needed for generating a reCAPTCHA challenge.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_recaptcha_params(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/recaptchaParams', options)
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the set of public keys of the session cookie JSON Web Token (JWT)
        # signer that can be used to validate the session cookie created through
        # createSessionCookie.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_session_cookie_public_keys(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/sessionCookiePublicKeys', options)
          command.response_representation = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse::Representation
          command.response_class = Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
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
