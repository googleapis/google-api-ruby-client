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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module IdentitytoolkitV3
      
      # Response of creating the IDP authentication URL.
      class CreateAuthUriResponse
        include Google::Apis::Core::Hashable
      
        # The URI used by the IDP to authenticate the user.
        # Corresponds to the JSON property `authUri`
        # @return [String]
        attr_accessor :auth_uri
      
        # True if captcha is required.
        # Corresponds to the JSON property `captchaRequired`
        # @return [Boolean]
        attr_accessor :captcha_required
        alias_method :captcha_required?, :captcha_required
      
        # True if the authUri is for user's existing provider.
        # Corresponds to the JSON property `forExistingProvider`
        # @return [Boolean]
        attr_accessor :for_existing_provider
        alias_method :for_existing_provider?, :for_existing_provider
      
        # The fixed string identitytoolkit#CreateAuthUriResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The provider ID of the auth URI.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        # Whether the user is registered if the identifier is an email.
        # Corresponds to the JSON property `registered`
        # @return [Boolean]
        attr_accessor :registered
        alias_method :registered?, :registered
      
        # Session ID which should be passed in the following verifyAssertion request.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auth_uri = args[:auth_uri] unless args[:auth_uri].nil?
          @captcha_required = args[:captcha_required] unless args[:captcha_required].nil?
          @for_existing_provider = args[:for_existing_provider] unless args[:for_existing_provider].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @provider_id = args[:provider_id] unless args[:provider_id].nil?
          @registered = args[:registered] unless args[:registered].nil?
          @session_id = args[:session_id] unless args[:session_id].nil?
        end
      end
      
      # Respone of deleting account.
      class DeleteAccountResponse
        include Google::Apis::Core::Hashable
      
        # The fixed string "identitytoolkit#DeleteAccountResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Respone of downloading accounts in batch.
      class DownloadAccountResponse
        include Google::Apis::Core::Hashable
      
        # The fixed string "identitytoolkit#DownloadAccountResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The next page token. To be used in a subsequent request to return the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The user accounts data.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::IdentitytoolkitV3::UserInfo>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
          @users = args[:users] unless args[:users].nil?
        end
      end
      
      # Response of getting account information.
      class GetAccountInfoResponse
        include Google::Apis::Core::Hashable
      
        # The fixed string "identitytoolkit#GetAccountInfoResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The info of the users.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::IdentitytoolkitV3::UserInfo>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @users = args[:users] unless args[:users].nil?
        end
      end
      
      # Response of getting a code for user confirmation (reset password, change email
      # etc.).
      class GetOobConfirmationCodeResponse
        include Google::Apis::Core::Hashable
      
        # The email address that the email is sent to.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The fixed string "identitytoolkit#GetOobConfirmationCodeResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The code to be send to the user.
        # Corresponds to the JSON property `oobCode`
        # @return [String]
        attr_accessor :oob_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @oob_code = args[:oob_code] unless args[:oob_code].nil?
        end
      end
      
      # Response of getting recaptcha param.
      class GetRecaptchaParamResponse
        include Google::Apis::Core::Hashable
      
        # The fixed string "identitytoolkit#GetRecaptchaParamResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Site key registered at recaptcha.
        # Corresponds to the JSON property `recaptchaSiteKey`
        # @return [String]
        attr_accessor :recaptcha_site_key
      
        # The stoken field for the recaptcha widget, used to request captcha challenge.
        # Corresponds to the JSON property `recaptchaStoken`
        # @return [String]
        attr_accessor :recaptcha_stoken
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @recaptcha_site_key = args[:recaptcha_site_key] unless args[:recaptcha_site_key].nil?
          @recaptcha_stoken = args[:recaptcha_stoken] unless args[:recaptcha_stoken].nil?
        end
      end
      
      # Request to get the IDP authentication URL.
      class CreateAuthUriRequest
        include Google::Apis::Core::Hashable
      
        # The app ID of the mobile app, base64(CERT_SHA1):PACKAGE_NAME for Android,
        # BUNDLE_ID for iOS.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # The relying party OAuth client ID.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # The opaque value used by the client to maintain context info between the
        # authentication request and the IDP callback.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # The URI to which the IDP redirects the user after the federated login flow.
        # Corresponds to the JSON property `continueUri`
        # @return [String]
        attr_accessor :continue_uri
      
        # The email or federated ID of the user.
        # Corresponds to the JSON property `identifier`
        # @return [String]
        attr_accessor :identifier
      
        # The developer's consumer key for OpenId OAuth Extension
        # Corresponds to the JSON property `oauthConsumerKey`
        # @return [String]
        attr_accessor :oauth_consumer_key
      
        # Additional oauth scopes, beyond the basid user profile, that the user would be
        # prompted to grant
        # Corresponds to the JSON property `oauthScope`
        # @return [String]
        attr_accessor :oauth_scope
      
        # Optional realm for OpenID protocol. The sub string "scheme://domain:port" of
        # the param "continueUri" is used if this is not set.
        # Corresponds to the JSON property `openidRealm`
        # @return [String]
        attr_accessor :openid_realm
      
        # The native app package for OTA installation.
        # Corresponds to the JSON property `otaApp`
        # @return [String]
        attr_accessor :ota_app
      
        # The IdP ID. For white listed IdPs it's a short domain name e.g. google.com,
        # aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_id = args[:app_id] unless args[:app_id].nil?
          @client_id = args[:client_id] unless args[:client_id].nil?
          @context = args[:context] unless args[:context].nil?
          @continue_uri = args[:continue_uri] unless args[:continue_uri].nil?
          @identifier = args[:identifier] unless args[:identifier].nil?
          @oauth_consumer_key = args[:oauth_consumer_key] unless args[:oauth_consumer_key].nil?
          @oauth_scope = args[:oauth_scope] unless args[:oauth_scope].nil?
          @openid_realm = args[:openid_realm] unless args[:openid_realm].nil?
          @ota_app = args[:ota_app] unless args[:ota_app].nil?
          @provider_id = args[:provider_id] unless args[:provider_id].nil?
        end
      end
      
      # Request to delete account.
      class DeleteAccountRequest
        include Google::Apis::Core::Hashable
      
        # The local ID of the user.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_id = args[:local_id] unless args[:local_id].nil?
        end
      end
      
      # Request to download user account in batch.
      class DownloadAccountRequest
        include Google::Apis::Core::Hashable
      
        # The max number of results to return in the response.
        # Corresponds to the JSON property `maxResults`
        # @return [Fixnum]
        attr_accessor :max_results
      
        # The token for the next page. This should be taken from the previous response.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_results = args[:max_results] unless args[:max_results].nil?
          @next_page_token = args[:next_page_token] unless args[:next_page_token].nil?
        end
      end
      
      # Request to get the account information.
      class GetAccountInfoRequest
        include Google::Apis::Core::Hashable
      
        # The list of emails of the users to inquiry.
        # Corresponds to the JSON property `email`
        # @return [Array<String>]
        attr_accessor :email
      
        # The GITKit token of the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The list of local ID's of the users to inquiry.
        # Corresponds to the JSON property `localId`
        # @return [Array<String>]
        attr_accessor :local_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @id_token = args[:id_token] unless args[:id_token].nil?
          @local_id = args[:local_id] unless args[:local_id].nil?
        end
      end
      
      # Response of getting the project configuration.
      class GetProjectConfigResponse
        include Google::Apis::Core::Hashable
      
        # Whether to allow password user sign in or sign up.
        # Corresponds to the JSON property `allowPasswordUser`
        # @return [Boolean]
        attr_accessor :allow_password_user
        alias_method :allow_password_user?, :allow_password_user
      
        # Browser API key, needed when making http request to Apiary.
        # Corresponds to the JSON property `apiKey`
        # @return [String]
        attr_accessor :api_key
      
        # OAuth2 provider configuration.
        # Corresponds to the JSON property `idpConfig`
        # @return [Array<Google::Apis::IdentitytoolkitV3::IdpConfig>]
        attr_accessor :idp_config
      
        # Project ID of the relying party.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_password_user = args[:allow_password_user] unless args[:allow_password_user].nil?
          @api_key = args[:api_key] unless args[:api_key].nil?
          @idp_config = args[:idp_config] unless args[:idp_config].nil?
          @project_id = args[:project_id] unless args[:project_id].nil?
        end
      end
      
      # Request to reset the password.
      class ResetPasswordRequest
        include Google::Apis::Core::Hashable
      
        # The email address of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The new password inputted by the user.
        # Corresponds to the JSON property `newPassword`
        # @return [String]
        attr_accessor :new_password
      
        # The old password inputted by the user.
        # Corresponds to the JSON property `oldPassword`
        # @return [String]
        attr_accessor :old_password
      
        # The confirmation code.
        # Corresponds to the JSON property `oobCode`
        # @return [String]
        attr_accessor :oob_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @new_password = args[:new_password] unless args[:new_password].nil?
          @old_password = args[:old_password] unless args[:old_password].nil?
          @oob_code = args[:oob_code] unless args[:oob_code].nil?
        end
      end
      
      # Request to set the account information.
      class SetAccountInfoRequest
        include Google::Apis::Core::Hashable
      
        # The captcha challenge.
        # Corresponds to the JSON property `captchaChallenge`
        # @return [String]
        attr_accessor :captcha_challenge
      
        # Response to the captcha.
        # Corresponds to the JSON property `captchaResponse`
        # @return [String]
        attr_accessor :captcha_response
      
        # Whether to disable the user.
        # Corresponds to the JSON property `disableUser`
        # @return [Boolean]
        attr_accessor :disable_user
        alias_method :disable_user?, :disable_user
      
        # The name of the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Mark the email as verified or not.
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # The GITKit token of the authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # Instance id token of the app.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The local ID of the user.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The out-of-band code of the change email request.
        # Corresponds to the JSON property `oobCode`
        # @return [String]
        attr_accessor :oob_code
      
        # The new password of the user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The associated IDPs of the user.
        # Corresponds to the JSON property `provider`
        # @return [Array<String>]
        attr_accessor :provider
      
        # Mark the user to upgrade to federated login.
        # Corresponds to the JSON property `upgradeToFederatedLogin`
        # @return [Boolean]
        attr_accessor :upgrade_to_federated_login
        alias_method :upgrade_to_federated_login?, :upgrade_to_federated_login
      
        # Timestamp in seconds for valid login token.
        # Corresponds to the JSON property `validSince`
        # @return [String]
        attr_accessor :valid_since
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @captcha_challenge = args[:captcha_challenge] unless args[:captcha_challenge].nil?
          @captcha_response = args[:captcha_response] unless args[:captcha_response].nil?
          @disable_user = args[:disable_user] unless args[:disable_user].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @email = args[:email] unless args[:email].nil?
          @email_verified = args[:email_verified] unless args[:email_verified].nil?
          @id_token = args[:id_token] unless args[:id_token].nil?
          @instance_id = args[:instance_id] unless args[:instance_id].nil?
          @local_id = args[:local_id] unless args[:local_id].nil?
          @oob_code = args[:oob_code] unless args[:oob_code].nil?
          @password = args[:password] unless args[:password].nil?
          @provider = args[:provider] unless args[:provider].nil?
          @upgrade_to_federated_login = args[:upgrade_to_federated_login] unless args[:upgrade_to_federated_login].nil?
          @valid_since = args[:valid_since] unless args[:valid_since].nil?
        end
      end
      
      # Request to sign out user.
      class SignOutUserRequest
        include Google::Apis::Core::Hashable
      
        # Instance id token of the app.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The local ID of the user.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] unless args[:instance_id].nil?
          @local_id = args[:local_id] unless args[:local_id].nil?
        end
      end
      
      # Response of signing out user.
      class SignOutUserResponse
        include Google::Apis::Core::Hashable
      
        # The local ID of the user.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_id = args[:local_id] unless args[:local_id].nil?
        end
      end
      
      # Request to upload user account in batch.
      class UploadAccountRequest
        include Google::Apis::Core::Hashable
      
        # The password hash algorithm.
        # Corresponds to the JSON property `hashAlgorithm`
        # @return [String]
        attr_accessor :hash_algorithm
      
        # Memory cost for hash calculation. Used by scrypt similar algorithms.
        # Corresponds to the JSON property `memoryCost`
        # @return [Fixnum]
        attr_accessor :memory_cost
      
        # Rounds for hash calculation. Used by scrypt and similar algorithms.
        # Corresponds to the JSON property `rounds`
        # @return [Fixnum]
        attr_accessor :rounds
      
        # The salt separator.
        # Corresponds to the JSON property `saltSeparator`
        # @return [String]
        attr_accessor :salt_separator
      
        # The key for to hash the password.
        # Corresponds to the JSON property `signerKey`
        # @return [String]
        attr_accessor :signer_key
      
        # The account info to be stored.
        # Corresponds to the JSON property `users`
        # @return [Array<Google::Apis::IdentitytoolkitV3::UserInfo>]
        attr_accessor :users
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hash_algorithm = args[:hash_algorithm] unless args[:hash_algorithm].nil?
          @memory_cost = args[:memory_cost] unless args[:memory_cost].nil?
          @rounds = args[:rounds] unless args[:rounds].nil?
          @salt_separator = args[:salt_separator] unless args[:salt_separator].nil?
          @signer_key = args[:signer_key] unless args[:signer_key].nil?
          @users = args[:users] unless args[:users].nil?
        end
      end
      
      # Request to verify the IDP assertion.
      class VerifyAssertionRequest
        include Google::Apis::Core::Hashable
      
        # Instance id token of the app.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The GITKit token for the non-trusted IDP pending to be confirmed by the user.
        # Corresponds to the JSON property `pendingIdToken`
        # @return [String]
        attr_accessor :pending_id_token
      
        # The post body if the request is a HTTP POST.
        # Corresponds to the JSON property `postBody`
        # @return [String]
        attr_accessor :post_body
      
        # The URI to which the IDP redirects the user back. It may contain federated
        # login result params added by the IDP.
        # Corresponds to the JSON property `requestUri`
        # @return [String]
        attr_accessor :request_uri
      
        # Whether to return refresh tokens.
        # Corresponds to the JSON property `returnRefreshToken`
        # @return [Boolean]
        attr_accessor :return_refresh_token
        alias_method :return_refresh_token?, :return_refresh_token
      
        # Session ID, which should match the one in previous createAuthUri request.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] unless args[:instance_id].nil?
          @pending_id_token = args[:pending_id_token] unless args[:pending_id_token].nil?
          @post_body = args[:post_body] unless args[:post_body].nil?
          @request_uri = args[:request_uri] unless args[:request_uri].nil?
          @return_refresh_token = args[:return_refresh_token] unless args[:return_refresh_token].nil?
          @session_id = args[:session_id] unless args[:session_id].nil?
        end
      end
      
      # Request to verify a custom token
      class VerifyCustomTokenRequest
        include Google::Apis::Core::Hashable
      
        # Instance id token of the app.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The custom token to verify
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_id = args[:instance_id] unless args[:instance_id].nil?
          @token = args[:token] unless args[:token].nil?
        end
      end
      
      # Request to verify the password.
      class VerifyPasswordRequest
        include Google::Apis::Core::Hashable
      
        # The captcha challenge.
        # Corresponds to the JSON property `captchaChallenge`
        # @return [String]
        attr_accessor :captcha_challenge
      
        # Response to the captcha.
        # Corresponds to the JSON property `captchaResponse`
        # @return [String]
        attr_accessor :captcha_response
      
        # The email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Instance id token of the app.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # The password inputed by the user.
        # Corresponds to the JSON property `password`
        # @return [String]
        attr_accessor :password
      
        # The GITKit token for the non-trusted IDP, which is to be confirmed by the user.
        # Corresponds to the JSON property `pendingIdToken`
        # @return [String]
        attr_accessor :pending_id_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @captcha_challenge = args[:captcha_challenge] unless args[:captcha_challenge].nil?
          @captcha_response = args[:captcha_response] unless args[:captcha_response].nil?
          @email = args[:email] unless args[:email].nil?
          @instance_id = args[:instance_id] unless args[:instance_id].nil?
          @password = args[:password] unless args[:password].nil?
          @pending_id_token = args[:pending_id_token] unless args[:pending_id_token].nil?
        end
      end
      
      # Template for a single idp configuration.
      class IdpConfig
        include Google::Apis::Core::Hashable
      
        # OAuth2 client ID.
        # Corresponds to the JSON property `clientId`
        # @return [String]
        attr_accessor :client_id
      
        # Whether this IDP is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Percent of users who will be prompted/redirected federated login for this IDP.
        # Corresponds to the JSON property `experimentPercent`
        # @return [Fixnum]
        attr_accessor :experiment_percent
      
        # OAuth2 provider.
        # Corresponds to the JSON property `provider`
        # @return [String]
        attr_accessor :provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_id = args[:client_id] unless args[:client_id].nil?
          @enabled = args[:enabled] unless args[:enabled].nil?
          @experiment_percent = args[:experiment_percent] unless args[:experiment_percent].nil?
          @provider = args[:provider] unless args[:provider].nil?
        end
      end
      
      # Request of getting a code for user confirmation (reset password, change email
      # etc.)
      class Relyingparty
        include Google::Apis::Core::Hashable
      
        # The recaptcha response from the user.
        # Corresponds to the JSON property `captchaResp`
        # @return [String]
        attr_accessor :captcha_resp
      
        # The recaptcha challenge presented to the user.
        # Corresponds to the JSON property `challenge`
        # @return [String]
        attr_accessor :challenge
      
        # The email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The user's Gitkit login token for email change.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The fixed string "identitytoolkit#relyingparty".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The new email if the code is for email change.
        # Corresponds to the JSON property `newEmail`
        # @return [String]
        attr_accessor :new_email
      
        # The request type.
        # Corresponds to the JSON property `requestType`
        # @return [String]
        attr_accessor :request_type
      
        # The IP address of the user.
        # Corresponds to the JSON property `userIp`
        # @return [String]
        attr_accessor :user_ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @captcha_resp = args[:captcha_resp] unless args[:captcha_resp].nil?
          @challenge = args[:challenge] unless args[:challenge].nil?
          @email = args[:email] unless args[:email].nil?
          @id_token = args[:id_token] unless args[:id_token].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @new_email = args[:new_email] unless args[:new_email].nil?
          @request_type = args[:request_type] unless args[:request_type].nil?
          @user_ip = args[:user_ip] unless args[:user_ip].nil?
        end
      end
      
      # Response of resetting the password.
      class ResetPasswordResponse
        include Google::Apis::Core::Hashable
      
        # The user's email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The fixed string "identitytoolkit#ResetPasswordResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] unless args[:email].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Respone of setting the account information.
      class SetAccountInfoResponse
        include Google::Apis::Core::Hashable
      
        # The name of the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The Gitkit id token to login the newly sign up user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The fixed string "identitytoolkit#SetAccountInfoResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The new email the user attempts to change to.
        # Corresponds to the JSON property `newEmail`
        # @return [String]
        attr_accessor :new_email
      
        # The user's profiles at the associated IdPs.
        # Corresponds to the JSON property `providerUserInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV3::SetAccountInfoResponse::ProviderUserInfo>]
        attr_accessor :provider_user_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] unless args[:display_name].nil?
          @email = args[:email] unless args[:email].nil?
          @id_token = args[:id_token] unless args[:id_token].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @new_email = args[:new_email] unless args[:new_email].nil?
          @provider_user_info = args[:provider_user_info] unless args[:provider_user_info].nil?
        end
        
        # 
        class ProviderUserInfo
          include Google::Apis::Core::Hashable
        
          # The user's display name at the IDP.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # The user's photo url at the IDP.
          # Corresponds to the JSON property `photoUrl`
          # @return [String]
          attr_accessor :photo_url
        
          # The IdP ID. For whitelisted IdPs it's a short domain name, e.g., google.com,
          # aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
          # Corresponds to the JSON property `providerId`
          # @return [String]
          attr_accessor :provider_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_name = args[:display_name] unless args[:display_name].nil?
            @photo_url = args[:photo_url] unless args[:photo_url].nil?
            @provider_id = args[:provider_id] unless args[:provider_id].nil?
          end
        end
      end
      
      # Respone of uploading accounts in batch.
      class UploadAccountResponse
        include Google::Apis::Core::Hashable
      
        # The error encountered while processing the account info.
        # Corresponds to the JSON property `error`
        # @return [Array<Google::Apis::IdentitytoolkitV3::UploadAccountResponse::Error>]
        attr_accessor :error
      
        # The fixed string "identitytoolkit#UploadAccountResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] unless args[:error].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
        
        # 
        class Error
          include Google::Apis::Core::Hashable
        
          # The index of the malformed account, starting from 0.
          # Corresponds to the JSON property `index`
          # @return [Fixnum]
          attr_accessor :index
        
          # Detailed error message for the account info.
          # Corresponds to the JSON property `message`
          # @return [String]
          attr_accessor :message
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @index = args[:index] unless args[:index].nil?
            @message = args[:message] unless args[:message].nil?
          end
        end
      end
      
      # Template for an individual account info.
      class UserInfo
        include Google::Apis::Core::Hashable
      
        # Whether the user is disabled.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # The name of the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email of the user.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # Whether the email has been verified.
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # The local ID of the user.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The user's hashed password.
        # Corresponds to the JSON property `passwordHash`
        # @return [String]
        attr_accessor :password_hash
      
        # The timestamp when the password was last updated.
        # Corresponds to the JSON property `passwordUpdatedAt`
        # @return [Float]
        attr_accessor :password_updated_at
      
        # The URL of the user profile photo.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The IDP of the user.
        # Corresponds to the JSON property `providerUserInfo`
        # @return [Array<Google::Apis::IdentitytoolkitV3::UserInfo::ProviderUserInfo>]
        attr_accessor :provider_user_info
      
        # The user's password salt.
        # Corresponds to the JSON property `salt`
        # @return [String]
        attr_accessor :salt
      
        # Timestamp in seconds for valid login token.
        # Corresponds to the JSON property `validSince`
        # @return [String]
        attr_accessor :valid_since
      
        # Version of the user's password.
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] unless args[:disabled].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @email = args[:email] unless args[:email].nil?
          @email_verified = args[:email_verified] unless args[:email_verified].nil?
          @local_id = args[:local_id] unless args[:local_id].nil?
          @password_hash = args[:password_hash] unless args[:password_hash].nil?
          @password_updated_at = args[:password_updated_at] unless args[:password_updated_at].nil?
          @photo_url = args[:photo_url] unless args[:photo_url].nil?
          @provider_user_info = args[:provider_user_info] unless args[:provider_user_info].nil?
          @salt = args[:salt] unless args[:salt].nil?
          @valid_since = args[:valid_since] unless args[:valid_since].nil?
          @version = args[:version] unless args[:version].nil?
        end
        
        # 
        class ProviderUserInfo
          include Google::Apis::Core::Hashable
        
          # The user's display name at the IDP.
          # Corresponds to the JSON property `displayName`
          # @return [String]
          attr_accessor :display_name
        
          # User's identifier at IDP.
          # Corresponds to the JSON property `federatedId`
          # @return [String]
          attr_accessor :federated_id
        
          # The user's photo url at the IDP.
          # Corresponds to the JSON property `photoUrl`
          # @return [String]
          attr_accessor :photo_url
        
          # The IdP ID. For white listed IdPs it's a short domain name, e.g., google.com,
          # aol.com, live.net and yahoo.com. For other OpenID IdPs it's the OP identifier.
          # Corresponds to the JSON property `providerId`
          # @return [String]
          attr_accessor :provider_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @display_name = args[:display_name] unless args[:display_name].nil?
            @federated_id = args[:federated_id] unless args[:federated_id].nil?
            @photo_url = args[:photo_url] unless args[:photo_url].nil?
            @provider_id = args[:provider_id] unless args[:provider_id].nil?
          end
        end
      end
      
      # Response of verifying the IDP assertion.
      class VerifyAssertionResponse
        include Google::Apis::Core::Hashable
      
        # The action code.
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # URL for OTA app installation.
        # Corresponds to the JSON property `appInstallationUrl`
        # @return [String]
        attr_accessor :app_installation_url
      
        # The custom scheme used by mobile app.
        # Corresponds to the JSON property `appScheme`
        # @return [String]
        attr_accessor :app_scheme
      
        # The opaque value used by the client to maintain context info between the
        # authentication request and the IDP callback.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # The birth date of the IdP account.
        # Corresponds to the JSON property `dateOfBirth`
        # @return [String]
        attr_accessor :date_of_birth
      
        # The display name of the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email returned by the IdP. NOTE: The federated login user may not own the
        # email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # It's true if the email is recycled.
        # Corresponds to the JSON property `emailRecycled`
        # @return [Boolean]
        attr_accessor :email_recycled
        alias_method :email_recycled?, :email_recycled
      
        # The value is true if the IDP is also the email provider. It means the user
        # owns the email.
        # Corresponds to the JSON property `emailVerified`
        # @return [Boolean]
        attr_accessor :email_verified
        alias_method :email_verified?, :email_verified
      
        # The unique ID identifies the IdP account.
        # Corresponds to the JSON property `federatedId`
        # @return [String]
        attr_accessor :federated_id
      
        # The first name of the user.
        # Corresponds to the JSON property `firstName`
        # @return [String]
        attr_accessor :first_name
      
        # The full name of the user.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # The ID token.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # It's the identifier param in the createAuthUri request if the identifier is an
        # email. It can be used to check whether the user input email is different from
        # the asserted email.
        # Corresponds to the JSON property `inputEmail`
        # @return [String]
        attr_accessor :input_email
      
        # The fixed string "identitytoolkit#VerifyAssertionResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The language preference of the user.
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # The last name of the user.
        # Corresponds to the JSON property `lastName`
        # @return [String]
        attr_accessor :last_name
      
        # The RP local ID if it's already been mapped to the IdP account identified by
        # the federated ID.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # Whether the assertion is from a non-trusted IDP and need account linking
        # confirmation.
        # Corresponds to the JSON property `needConfirmation`
        # @return [Boolean]
        attr_accessor :need_confirmation
        alias_method :need_confirmation?, :need_confirmation
      
        # Whether need client to supply email to complete the federated login flow.
        # Corresponds to the JSON property `needEmail`
        # @return [Boolean]
        attr_accessor :need_email
        alias_method :need_email?, :need_email
      
        # The nick name of the user.
        # Corresponds to the JSON property `nickName`
        # @return [String]
        attr_accessor :nick_name
      
        # The OAuth2 access token.
        # Corresponds to the JSON property `oauthAccessToken`
        # @return [String]
        attr_accessor :oauth_access_token
      
        # The OAuth2 authorization code.
        # Corresponds to the JSON property `oauthAuthorizationCode`
        # @return [String]
        attr_accessor :oauth_authorization_code
      
        # The lifetime in seconds of the OAuth2 access token.
        # Corresponds to the JSON property `oauthExpireIn`
        # @return [Fixnum]
        attr_accessor :oauth_expire_in
      
        # The user approved request token for the OpenID OAuth extension.
        # Corresponds to the JSON property `oauthRequestToken`
        # @return [String]
        attr_accessor :oauth_request_token
      
        # The scope for the OpenID OAuth extension.
        # Corresponds to the JSON property `oauthScope`
        # @return [String]
        attr_accessor :oauth_scope
      
        # The original email stored in the mapping storage. It's returned when the
        # federated ID is associated to a different email.
        # Corresponds to the JSON property `originalEmail`
        # @return [String]
        attr_accessor :original_email
      
        # The URI of the public accessible profiel picture.
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # The IdP ID. For white listed IdPs it's a short domain name e.g. google.com,
        # aol.com, live.net and yahoo.com. If the "providerId" param is set to OpenID OP
        # identifer other than the whilte listed IdPs the OP identifier is returned. If
        # the "identifier" param is federated ID in the createAuthUri request. The
        # domain part of the federated ID is returned.
        # Corresponds to the JSON property `providerId`
        # @return [String]
        attr_accessor :provider_id
      
        # The timezone of the user.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # When action is 'map', contains the idps which can be used for confirmation.
        # Corresponds to the JSON property `verifiedProvider`
        # @return [Array<String>]
        attr_accessor :verified_provider
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] unless args[:action].nil?
          @app_installation_url = args[:app_installation_url] unless args[:app_installation_url].nil?
          @app_scheme = args[:app_scheme] unless args[:app_scheme].nil?
          @context = args[:context] unless args[:context].nil?
          @date_of_birth = args[:date_of_birth] unless args[:date_of_birth].nil?
          @display_name = args[:display_name] unless args[:display_name].nil?
          @email = args[:email] unless args[:email].nil?
          @email_recycled = args[:email_recycled] unless args[:email_recycled].nil?
          @email_verified = args[:email_verified] unless args[:email_verified].nil?
          @federated_id = args[:federated_id] unless args[:federated_id].nil?
          @first_name = args[:first_name] unless args[:first_name].nil?
          @full_name = args[:full_name] unless args[:full_name].nil?
          @id_token = args[:id_token] unless args[:id_token].nil?
          @input_email = args[:input_email] unless args[:input_email].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @language = args[:language] unless args[:language].nil?
          @last_name = args[:last_name] unless args[:last_name].nil?
          @local_id = args[:local_id] unless args[:local_id].nil?
          @need_confirmation = args[:need_confirmation] unless args[:need_confirmation].nil?
          @need_email = args[:need_email] unless args[:need_email].nil?
          @nick_name = args[:nick_name] unless args[:nick_name].nil?
          @oauth_access_token = args[:oauth_access_token] unless args[:oauth_access_token].nil?
          @oauth_authorization_code = args[:oauth_authorization_code] unless args[:oauth_authorization_code].nil?
          @oauth_expire_in = args[:oauth_expire_in] unless args[:oauth_expire_in].nil?
          @oauth_request_token = args[:oauth_request_token] unless args[:oauth_request_token].nil?
          @oauth_scope = args[:oauth_scope] unless args[:oauth_scope].nil?
          @original_email = args[:original_email] unless args[:original_email].nil?
          @photo_url = args[:photo_url] unless args[:photo_url].nil?
          @provider_id = args[:provider_id] unless args[:provider_id].nil?
          @time_zone = args[:time_zone] unless args[:time_zone].nil?
          @verified_provider = args[:verified_provider] unless args[:verified_provider].nil?
        end
      end
      
      # Response from verifying a custom token
      class VerifyCustomTokenResponse
        include Google::Apis::Core::Hashable
      
        # The GITKit token for authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The fixed string "identitytoolkit#VerifyCustomTokenResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id_token = args[:id_token] unless args[:id_token].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # Request of verifying the password.
      class VerifyPasswordResponse
        include Google::Apis::Core::Hashable
      
        # The name of the user.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The email returned by the IdP. NOTE: The federated login user may not own the
        # email.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # The GITKit token for authenticated user.
        # Corresponds to the JSON property `idToken`
        # @return [String]
        attr_accessor :id_token
      
        # The fixed string "identitytoolkit#VerifyPasswordResponse".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The RP local ID if it's already been mapped to the IdP account identified by
        # the federated ID.
        # Corresponds to the JSON property `localId`
        # @return [String]
        attr_accessor :local_id
      
        # The OAuth2 access token.
        # Corresponds to the JSON property `oauthAccessToken`
        # @return [String]
        attr_accessor :oauth_access_token
      
        # The OAuth2 authorization code.
        # Corresponds to the JSON property `oauthAuthorizationCode`
        # @return [String]
        attr_accessor :oauth_authorization_code
      
        # The lifetime in seconds of the OAuth2 access token.
        # Corresponds to the JSON property `oauthExpireIn`
        # @return [Fixnum]
        attr_accessor :oauth_expire_in
      
        # The URI of the user's photo at IdP
        # Corresponds to the JSON property `photoUrl`
        # @return [String]
        attr_accessor :photo_url
      
        # Whether the email is registered.
        # Corresponds to the JSON property `registered`
        # @return [Boolean]
        attr_accessor :registered
        alias_method :registered?, :registered
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] unless args[:display_name].nil?
          @email = args[:email] unless args[:email].nil?
          @id_token = args[:id_token] unless args[:id_token].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @local_id = args[:local_id] unless args[:local_id].nil?
          @oauth_access_token = args[:oauth_access_token] unless args[:oauth_access_token].nil?
          @oauth_authorization_code = args[:oauth_authorization_code] unless args[:oauth_authorization_code].nil?
          @oauth_expire_in = args[:oauth_expire_in] unless args[:oauth_expire_in].nil?
          @photo_url = args[:photo_url] unless args[:photo_url].nil?
          @registered = args[:registered] unless args[:registered].nil?
        end
      end
    end
  end
end
