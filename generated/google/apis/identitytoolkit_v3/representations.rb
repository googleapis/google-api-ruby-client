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
      
      class CreateAuthUriResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DeleteAccountResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DownloadAccountResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GetAccountInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GetOobConfirmationCodeResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GetRecaptchaParamResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class CreateAuthUriRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DeleteAccountRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class DownloadAccountRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class GetAccountInfoRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ResetPasswordRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SetAccountInfoRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UploadAccountRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VerifyAssertionRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VerifyPasswordRequestRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class RelyingpartyRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class ResetPasswordResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SetAccountInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ProviderUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class UploadAccountResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class UserInfoRepresentation < Google::Apis::Core::JsonRepresentation
        
        class ProviderUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
          
        end
      end
      
      class VerifyAssertionResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class VerifyPasswordResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class CreateAuthUriResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :auth_uri, as: 'authUri'
        property :captcha_required, as: 'captchaRequired'
        property :for_existing_provider, as: 'forExistingProvider'
        property :kind, as: 'kind'
        property :provider_id, as: 'providerId'
        property :registered, as: 'registered'
      end

      # @private
      class DeleteAccountResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
      end

      # @private
      class DownloadAccountResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        collection :users, as: 'users', class: Google::Apis::IdentitytoolkitV3::UserInfo, decorator: Google::Apis::IdentitytoolkitV3::UserInfoRepresentation
      end

      # @private
      class GetAccountInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :users, as: 'users', class: Google::Apis::IdentitytoolkitV3::UserInfo, decorator: Google::Apis::IdentitytoolkitV3::UserInfoRepresentation
      end

      # @private
      class GetOobConfirmationCodeResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :oob_code, as: 'oobCode'
      end

      # @private
      class GetRecaptchaParamResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :recaptcha_site_key, as: 'recaptchaSiteKey'
        property :recaptcha_stoken, as: 'recaptchaStoken'
      end

      # @private
      class CreateAuthUriRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :app_id, as: 'appId'
        property :client_id, as: 'clientId'
        property :context, as: 'context'
        property :continue_uri, as: 'continueUri'
        property :identifier, as: 'identifier'
        property :oauth_consumer_key, as: 'oauthConsumerKey'
        property :oauth_scope, as: 'oauthScope'
        property :openid_realm, as: 'openidRealm'
        property :ota_app, as: 'otaApp'
        property :provider_id, as: 'providerId'
      end

      # @private
      class DeleteAccountRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :local_id, as: 'localId'
      end

      # @private
      class DownloadAccountRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :max_results, as: 'maxResults'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class GetAccountInfoRequestRepresentation < Google::Apis::Core::JsonRepresentation
        collection :email, as: 'email'
        
        property :id_token, as: 'idToken'
        collection :local_id, as: 'localId'
      end

      # @private
      class ResetPasswordRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :email, as: 'email'
        property :new_password, as: 'newPassword'
        property :old_password, as: 'oldPassword'
        property :oob_code, as: 'oobCode'
      end

      # @private
      class SetAccountInfoRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :captcha_challenge, as: 'captchaChallenge'
        property :captcha_response, as: 'captchaResponse'
        property :display_name, as: 'displayName'
        property :email, as: 'email'
        property :email_verified, as: 'emailVerified'
        property :id_token, as: 'idToken'
        property :local_id, as: 'localId'
        property :oob_code, as: 'oobCode'
        property :password, as: 'password'
        collection :provider, as: 'provider'
        
        property :upgrade_to_federated_login, as: 'upgradeToFederatedLogin'
      end

      # @private
      class UploadAccountRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :hash_algorithm, as: 'hashAlgorithm'
        property :memory_cost, as: 'memoryCost'
        property :rounds, as: 'rounds'
        property :salt_separator, as: 'saltSeparator'
        property :signer_key, as: 'signerKey'
        collection :users, as: 'users', class: Google::Apis::IdentitytoolkitV3::UserInfo, decorator: Google::Apis::IdentitytoolkitV3::UserInfoRepresentation
      end

      # @private
      class VerifyAssertionRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :pending_id_token, as: 'pendingIdToken'
        property :post_body, as: 'postBody'
        property :request_uri, as: 'requestUri'
        property :return_refresh_token, as: 'returnRefreshToken'
      end

      # @private
      class VerifyPasswordRequestRepresentation < Google::Apis::Core::JsonRepresentation
        property :captcha_challenge, as: 'captchaChallenge'
        property :captcha_response, as: 'captchaResponse'
        property :email, as: 'email'
        property :password, as: 'password'
        property :pending_id_token, as: 'pendingIdToken'
      end

      # @private
      class RelyingpartyRepresentation < Google::Apis::Core::JsonRepresentation
        property :captcha_resp, as: 'captchaResp'
        property :challenge, as: 'challenge'
        property :email, as: 'email'
        property :id_token, as: 'idToken'
        property :kind, as: 'kind'
        property :new_email, as: 'newEmail'
        property :request_type, as: 'requestType'
        property :user_ip, as: 'userIp'
      end

      # @private
      class ResetPasswordResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :email, as: 'email'
        property :kind, as: 'kind'
      end

      # @private
      class SetAccountInfoResponseRepresentation < Google::Apis::Core::JsonRepresentation
        class ProviderUserInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :display_name, as: 'displayName'
        property :email, as: 'email'
        property :id_token, as: 'idToken'
        property :kind, as: 'kind'
        collection :provider_user_info, as: 'providerUserInfo', class: Google::Apis::IdentitytoolkitV3::SetAccountInfoResponse::ProviderUserInfo, decorator: Google::Apis::IdentitytoolkitV3::SetAccountInfoResponseRepresentation::ProviderUserInfoRepresentation
        
        
        
        # @private
        class ProviderUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :photo_url, as: 'photoUrl'
          property :provider_id, as: 'providerId'
        end
      end

      # @private
      class UploadAccountResponseRepresentation < Google::Apis::Core::JsonRepresentation
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation; end
        collection :error, as: 'error', class: Google::Apis::IdentitytoolkitV3::UploadAccountResponse::Error, decorator: Google::Apis::IdentitytoolkitV3::UploadAccountResponseRepresentation::ErrorRepresentation
        
        
        property :kind, as: 'kind'
        
        # @private
        class ErrorRepresentation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :message, as: 'message'
        end
      end

      # @private
      class UserInfoRepresentation < Google::Apis::Core::JsonRepresentation
        class ProviderUserInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
        property :display_name, as: 'displayName'
        property :email, as: 'email'
        property :email_verified, as: 'emailVerified'
        property :local_id, as: 'localId'
        property :password_hash, as: 'passwordHash'
        property :password_updated_at, as: 'passwordUpdatedAt'
        property :photo_url, as: 'photoUrl'
        collection :provider_user_info, as: 'providerUserInfo', class: Google::Apis::IdentitytoolkitV3::UserInfo::ProviderUserInfo, decorator: Google::Apis::IdentitytoolkitV3::UserInfoRepresentation::ProviderUserInfoRepresentation
        
        
        property :salt, as: 'salt'
        property :version, as: 'version'
        
        # @private
        class ProviderUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :federated_id, as: 'federatedId'
          property :photo_url, as: 'photoUrl'
          property :provider_id, as: 'providerId'
        end
      end

      # @private
      class VerifyAssertionResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :action, as: 'action'
        property :app_installation_url, as: 'appInstallationUrl'
        property :app_scheme, as: 'appScheme'
        property :context, as: 'context'
        property :date_of_birth, as: 'dateOfBirth'
        property :display_name, as: 'displayName'
        property :email, as: 'email'
        property :email_recycled, as: 'emailRecycled'
        property :email_verified, as: 'emailVerified'
        property :federated_id, as: 'federatedId'
        property :first_name, as: 'firstName'
        property :full_name, as: 'fullName'
        property :id_token, as: 'idToken'
        property :input_email, as: 'inputEmail'
        property :kind, as: 'kind'
        property :language, as: 'language'
        property :last_name, as: 'lastName'
        property :local_id, as: 'localId'
        property :need_confirmation, as: 'needConfirmation'
        property :nick_name, as: 'nickName'
        property :oauth_access_token, as: 'oauthAccessToken'
        property :oauth_authorization_code, as: 'oauthAuthorizationCode'
        property :oauth_expire_in, as: 'oauthExpireIn'
        property :oauth_request_token, as: 'oauthRequestToken'
        property :oauth_scope, as: 'oauthScope'
        property :original_email, as: 'originalEmail'
        property :photo_url, as: 'photoUrl'
        property :provider_id, as: 'providerId'
        property :time_zone, as: 'timeZone'
        collection :verified_provider, as: 'verifiedProvider'
      end

      # @private
      class VerifyPasswordResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :display_name, as: 'displayName'
        property :email, as: 'email'
        property :id_token, as: 'idToken'
        property :kind, as: 'kind'
        property :local_id, as: 'localId'
        property :photo_url, as: 'photoUrl'
        property :registered, as: 'registered'
      end
    end
  end
end
