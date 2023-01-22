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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module IdentitytoolkitV1
      
      class GoogleCloudIdentitytoolkitV1Argon2Parameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1AutoRetrievalInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1CreateAuthUriRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1CreateAuthUriResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1DeleteAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1DeleteAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1DownloadAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1EmailTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1ErrorInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1FederatedUserIdentifier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1GetAccountInfoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1GetAccountInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1GetOobCodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1GetOobCodeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1GetProjectConfigResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1IdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1MfaEnrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1MfaFactor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1MfaInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1OpenIdConnectKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1ProviderUserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1QueryUserInfoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1QueryUserInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1ResetPasswordRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1ResetPasswordResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SetAccountInfoRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SetAccountInfoResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithIdpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithIdpResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignUpRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SignUpResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1SqlExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1UploadAccountRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1UploadAccountResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1VerifyIosClientRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1VerifyIosClientResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV1Argon2Parameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :associated_data, :base64 => true, as: 'associatedData'
          property :hash_length_bytes, as: 'hashLengthBytes'
          property :hash_type, as: 'hashType'
          property :iterations, as: 'iterations'
          property :memory_cost_kib, as: 'memoryCostKib'
          property :parallelism, as: 'parallelism'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1AutoRetrievalInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_signature_hash, as: 'appSignatureHash'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :force, as: 'force'
          collection :local_ids, as: 'localIds'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1BatchDeleteAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1BatchDeleteErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :local_id, as: 'localId'
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1CreateAuthUriRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_id, as: 'appId'
          property :auth_flow_type, as: 'authFlowType'
          property :context, as: 'context'
          property :continue_uri, as: 'continueUri'
          hash :custom_parameter, as: 'customParameter'
          property :hosted_domain, as: 'hostedDomain'
          property :identifier, as: 'identifier'
          property :oauth_consumer_key, as: 'oauthConsumerKey'
          property :oauth_scope, as: 'oauthScope'
          property :openid_realm, as: 'openidRealm'
          property :ota_app, as: 'otaApp'
          property :provider_id, as: 'providerId'
          property :session_id, as: 'sessionId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1CreateAuthUriResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :all_providers, as: 'allProviders'
          property :auth_uri, as: 'authUri'
          property :captcha_required, as: 'captchaRequired'
          property :for_existing_provider, as: 'forExistingProvider'
          property :kind, as: 'kind'
          property :provider_id, as: 'providerId'
          property :registered, as: 'registered'
          property :session_id, as: 'sessionId'
          collection :signin_methods, as: 'signinMethods'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1CreateSessionCookieRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :tenant_id, as: 'tenantId'
          property :valid_duration, :numeric_string => true, as: 'validDuration'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1CreateSessionCookieResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_cookie, as: 'sessionCookie'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1DeleteAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delegated_project_number, :numeric_string => true, as: 'delegatedProjectNumber'
          property :id_token, as: 'idToken'
          property :local_id, as: 'localId'
          property :target_project_id, as: 'targetProjectId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1DeleteAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1DownloadAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          collection :users, as: 'users', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1EmailTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :customized, as: 'customized'
          property :disabled, as: 'disabled'
          property :format, as: 'format'
          property :from, as: 'from'
          property :from_display_name, as: 'fromDisplayName'
          property :from_local_part, as: 'fromLocalPart'
          property :locale, as: 'locale'
          property :reply_to, as: 'replyTo'
          property :subject, as: 'subject'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1ErrorInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :index, as: 'index'
          property :message, as: 'message'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1FederatedUserIdentifier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provider_id, as: 'providerId'
          property :raw_id, as: 'rawId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1GetAccountInfoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delegated_project_number, :numeric_string => true, as: 'delegatedProjectNumber'
          collection :email, as: 'email'
          collection :federated_user_id, as: 'federatedUserId', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1FederatedUserIdentifier, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1FederatedUserIdentifier::Representation
      
          property :id_token, as: 'idToken'
          collection :initial_email, as: 'initialEmail'
          collection :local_id, as: 'localId'
          collection :phone_number, as: 'phoneNumber'
          property :target_project_id, as: 'targetProjectId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1GetAccountInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          collection :users, as: 'users', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1GetOobCodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_install_app, as: 'androidInstallApp'
          property :android_minimum_version, as: 'androidMinimumVersion'
          property :android_package_name, as: 'androidPackageName'
          property :can_handle_code_in_app, as: 'canHandleCodeInApp'
          property :captcha_resp, as: 'captchaResp'
          property :challenge, as: 'challenge'
          property :continue_url, as: 'continueUrl'
          property :dynamic_link_domain, as: 'dynamicLinkDomain'
          property :email, as: 'email'
          property :i_os_app_store_id, as: 'iOSAppStoreId'
          property :i_os_bundle_id, as: 'iOSBundleId'
          property :id_token, as: 'idToken'
          property :new_email, as: 'newEmail'
          property :request_type, as: 'requestType'
          property :return_oob_link, as: 'returnOobLink'
          property :target_project_id, as: 'targetProjectId'
          property :tenant_id, as: 'tenantId'
          property :user_ip, as: 'userIp'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1GetOobCodeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :kind, as: 'kind'
          property :oob_code, as: 'oobCode'
          property :oob_link, as: 'oobLink'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1GetProjectConfigResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_password_user, as: 'allowPasswordUser'
          property :api_key, as: 'apiKey'
          collection :authorized_domains, as: 'authorizedDomains'
          property :change_email_template, as: 'changeEmailTemplate', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate::Representation
      
          property :dynamic_links_domain, as: 'dynamicLinksDomain'
          property :enable_anonymous_user, as: 'enableAnonymousUser'
          collection :idp_config, as: 'idpConfig', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IdpConfig, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1IdpConfig::Representation
      
          property :legacy_reset_password_template, as: 'legacyResetPasswordTemplate', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate::Representation
      
          property :project_id, as: 'projectId'
          property :reset_password_template, as: 'resetPasswordTemplate', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate::Representation
      
          property :revert_second_factor_addition_template, as: 'revertSecondFactorAdditionTemplate', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate::Representation
      
          property :use_email_sending, as: 'useEmailSending'
          property :verify_email_template, as: 'verifyEmailTemplate', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1EmailTemplate::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1GetRecaptchaParamResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :producer_project_number, as: 'producerProjectNumber'
          property :recaptcha_site_key, as: 'recaptchaSiteKey'
          property :recaptcha_stoken, as: 'recaptchaStoken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1GetSessionCookiePublicKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1OpenIdConnectKey, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1OpenIdConnectKey::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1IdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :enabled, as: 'enabled'
          property :experiment_percent, as: 'experimentPercent'
          property :provider, as: 'provider'
          property :secret, as: 'secret'
          collection :whitelisted_audiences, as: 'whitelistedAudiences'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1IssueSamlResponseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :rp_id, as: 'rpId'
          property :saml_app_entity_id, as: 'samlAppEntityId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1IssueSamlResponseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acs_endpoint, as: 'acsEndpoint'
          property :email, as: 'email'
          property :first_name, as: 'firstName'
          property :is_new_user, as: 'isNewUser'
          property :last_name, as: 'lastName'
          property :relay_state, as: 'relayState'
          property :saml_response, as: 'samlResponse'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1MfaEnrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :enrolled_at, as: 'enrolledAt'
          property :mfa_enrollment_id, as: 'mfaEnrollmentId'
          property :phone_info, as: 'phoneInfo'
          property :unobfuscated_phone_info, as: 'unobfuscatedPhoneInfo'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1MfaFactor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :phone_info, as: 'phoneInfo'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1MfaInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enrollments, as: 'enrollments', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1OpenIdConnectKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alg, as: 'alg'
          property :e, as: 'e'
          property :kid, as: 'kid'
          property :kty, as: 'kty'
          property :n, as: 'n'
          property :use, as: 'use'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1ProviderUserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :federated_id, as: 'federatedId'
          property :phone_number, as: 'phoneNumber'
          property :photo_url, as: 'photoUrl'
          property :provider_id, as: 'providerId'
          property :raw_id, as: 'rawId'
          property :screen_name, as: 'screenName'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1QueryUserInfoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expression, as: 'expression', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SqlExpression, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1SqlExpression::Representation
      
          property :limit, :numeric_string => true, as: 'limit'
          property :offset, :numeric_string => true, as: 'offset'
          property :order, as: 'order'
          property :return_user_info, as: 'returnUserInfo'
          property :sort_by, as: 'sortBy'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1QueryUserInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :records_count, :numeric_string => true, as: 'recordsCount'
          collection :user_info, as: 'userInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1ResetPasswordRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :new_password, as: 'newPassword'
          property :old_password, as: 'oldPassword'
          property :oob_code, as: 'oobCode'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1ResetPasswordResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :kind, as: 'kind'
          property :mfa_info, as: 'mfaInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment::Representation
      
          property :new_email, as: 'newEmail'
          property :request_type, as: 'requestType'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SendVerificationCodeRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_retrieval_info, as: 'autoRetrievalInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1AutoRetrievalInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1AutoRetrievalInfo::Representation
      
          property :ios_receipt, as: 'iosReceipt'
          property :ios_secret, as: 'iosSecret'
          property :phone_number, as: 'phoneNumber'
          property :recaptcha_token, as: 'recaptchaToken'
          property :safety_net_token, as: 'safetyNetToken'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SendVerificationCodeResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_info, as: 'sessionInfo'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SetAccountInfoRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :captcha_challenge, as: 'captchaChallenge'
          property :captcha_response, as: 'captchaResponse'
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :custom_attributes, as: 'customAttributes'
          property :delegated_project_number, :numeric_string => true, as: 'delegatedProjectNumber'
          collection :delete_attribute, as: 'deleteAttribute'
          collection :delete_provider, as: 'deleteProvider'
          property :disable_user, as: 'disableUser'
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :email_verified, as: 'emailVerified'
          property :id_token, as: 'idToken'
          property :instance_id, as: 'instanceId'
          property :last_login_at, :numeric_string => true, as: 'lastLoginAt'
          property :link_provider_user_info, as: 'linkProviderUserInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo::Representation
      
          property :local_id, as: 'localId'
          property :mfa, as: 'mfa', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaInfo::Representation
      
          property :oob_code, as: 'oobCode'
          property :password, as: 'password'
          property :phone_number, as: 'phoneNumber'
          property :photo_url, as: 'photoUrl'
          collection :provider, as: 'provider'
          property :return_secure_token, as: 'returnSecureToken'
          property :target_project_id, as: 'targetProjectId'
          property :tenant_id, as: 'tenantId'
          property :upgrade_to_federated_login, as: 'upgradeToFederatedLogin'
          property :valid_since, :numeric_string => true, as: 'validSince'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SetAccountInfoResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :email_verified, as: 'emailVerified'
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :id_token, as: 'idToken'
          property :kind, as: 'kind'
          property :local_id, as: 'localId'
          property :new_email, as: 'newEmail'
          property :password_hash, as: 'passwordHash'
          property :photo_url, as: 'photoUrl'
          collection :provider_user_info, as: 'providerUserInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo::Representation
      
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delegated_project_number, :numeric_string => true, as: 'delegatedProjectNumber'
          property :instance_id, as: 'instanceId'
          property :return_secure_token, as: 'returnSecureToken'
          property :tenant_id, as: 'tenantId'
          property :token, as: 'token'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithCustomTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :id_token, as: 'idToken'
          property :is_new_user, as: 'isNewUser'
          property :kind, as: 'kind'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :id_token, as: 'idToken'
          property :oob_code, as: 'oobCode'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithEmailLinkResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :id_token, as: 'idToken'
          property :is_new_user, as: 'isNewUser'
          property :kind, as: 'kind'
          property :local_id, as: 'localId'
          collection :mfa_info, as: 'mfaInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment::Representation
      
          property :mfa_pending_credential, as: 'mfaPendingCredential'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithGameCenterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id_token, as: 'idToken'
          property :player_id, as: 'playerId'
          property :public_key_url, as: 'publicKeyUrl'
          property :salt, as: 'salt'
          property :signature, as: 'signature'
          property :tenant_id, as: 'tenantId'
          property :timestamp, :numeric_string => true, as: 'timestamp'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithGameCenterResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :id_token, as: 'idToken'
          property :is_new_user, as: 'isNewUser'
          property :local_id, as: 'localId'
          property :player_id, as: 'playerId'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithIdpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_create, as: 'autoCreate'
          property :delegated_project_number, :numeric_string => true, as: 'delegatedProjectNumber'
          property :id_token, as: 'idToken'
          property :pending_id_token, as: 'pendingIdToken'
          property :pending_token, as: 'pendingToken'
          property :post_body, as: 'postBody'
          property :request_uri, as: 'requestUri'
          property :return_idp_credential, as: 'returnIdpCredential'
          property :return_refresh_token, as: 'returnRefreshToken'
          property :return_secure_token, as: 'returnSecureToken'
          property :session_id, as: 'sessionId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithIdpResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :date_of_birth, as: 'dateOfBirth'
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :email_recycled, as: 'emailRecycled'
          property :email_verified, as: 'emailVerified'
          property :error_message, as: 'errorMessage'
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :federated_id, as: 'federatedId'
          property :first_name, as: 'firstName'
          property :full_name, as: 'fullName'
          property :id_token, as: 'idToken'
          property :input_email, as: 'inputEmail'
          property :is_new_user, as: 'isNewUser'
          property :kind, as: 'kind'
          property :language, as: 'language'
          property :last_name, as: 'lastName'
          property :local_id, as: 'localId'
          collection :mfa_info, as: 'mfaInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment::Representation
      
          property :mfa_pending_credential, as: 'mfaPendingCredential'
          property :need_confirmation, as: 'needConfirmation'
          property :need_email, as: 'needEmail'
          property :nick_name, as: 'nickName'
          property :oauth_access_token, as: 'oauthAccessToken'
          property :oauth_authorization_code, as: 'oauthAuthorizationCode'
          property :oauth_expire_in, as: 'oauthExpireIn'
          property :oauth_id_token, as: 'oauthIdToken'
          property :oauth_refresh_token, as: 'oauthRefreshToken'
          property :oauth_token_secret, as: 'oauthTokenSecret'
          property :original_email, as: 'originalEmail'
          property :pending_token, as: 'pendingToken'
          property :photo_url, as: 'photoUrl'
          property :provider_id, as: 'providerId'
          property :raw_user_info, as: 'rawUserInfo'
          property :refresh_token, as: 'refreshToken'
          property :screen_name, as: 'screenName'
          property :tenant_id, as: 'tenantId'
          property :time_zone, as: 'timeZone'
          collection :verified_provider, as: 'verifiedProvider'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPasswordRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :captcha_challenge, as: 'captchaChallenge'
          property :captcha_response, as: 'captchaResponse'
          property :delegated_project_number, :numeric_string => true, as: 'delegatedProjectNumber'
          property :email, as: 'email'
          property :id_token, as: 'idToken'
          property :instance_id, as: 'instanceId'
          property :password, as: 'password'
          property :pending_id_token, as: 'pendingIdToken'
          property :return_secure_token, as: 'returnSecureToken'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPasswordResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :id_token, as: 'idToken'
          property :kind, as: 'kind'
          property :local_id, as: 'localId'
          collection :mfa_info, as: 'mfaInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment::Representation
      
          property :mfa_pending_credential, as: 'mfaPendingCredential'
          property :oauth_access_token, as: 'oauthAccessToken'
          property :oauth_authorization_code, as: 'oauthAuthorizationCode'
          property :oauth_expire_in, as: 'oauthExpireIn'
          property :profile_picture, as: 'profilePicture'
          property :refresh_token, as: 'refreshToken'
          property :registered, as: 'registered'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :id_token, as: 'idToken'
          property :operation, as: 'operation'
          property :phone_number, as: 'phoneNumber'
          property :session_info, as: 'sessionInfo'
          property :temporary_proof, as: 'temporaryProof'
          property :tenant_id, as: 'tenantId'
          property :verification_proof, as: 'verificationProof'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignInWithPhoneNumberResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :id_token, as: 'idToken'
          property :is_new_user, as: 'isNewUser'
          property :local_id, as: 'localId'
          property :phone_number, as: 'phoneNumber'
          property :refresh_token, as: 'refreshToken'
          property :temporary_proof, as: 'temporaryProof'
          property :temporary_proof_expires_in, :numeric_string => true, as: 'temporaryProofExpiresIn'
          property :verification_proof, as: 'verificationProof'
          property :verification_proof_expires_in, :numeric_string => true, as: 'verificationProofExpiresIn'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignUpRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :captcha_challenge, as: 'captchaChallenge'
          property :captcha_response, as: 'captchaResponse'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :email_verified, as: 'emailVerified'
          property :id_token, as: 'idToken'
          property :instance_id, as: 'instanceId'
          property :local_id, as: 'localId'
          collection :mfa_info, as: 'mfaInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaFactor, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaFactor::Representation
      
          property :password, as: 'password'
          property :phone_number, as: 'phoneNumber'
          property :photo_url, as: 'photoUrl'
          property :target_project_id, as: 'targetProjectId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SignUpResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :expires_in, :numeric_string => true, as: 'expiresIn'
          property :id_token, as: 'idToken'
          property :kind, as: 'kind'
          property :local_id, as: 'localId'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1SqlExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :phone_number, as: 'phoneNumber'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1UploadAccountRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_overwrite, as: 'allowOverwrite'
          property :argon2_parameters, as: 'argon2Parameters', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1Argon2Parameters, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1Argon2Parameters::Representation
      
          property :block_size, as: 'blockSize'
          property :cpu_mem_cost, as: 'cpuMemCost'
          property :delegated_project_number, :numeric_string => true, as: 'delegatedProjectNumber'
          property :dk_len, as: 'dkLen'
          property :hash_algorithm, as: 'hashAlgorithm'
          property :memory_cost, as: 'memoryCost'
          property :parallelization, as: 'parallelization'
          property :password_hash_order, as: 'passwordHashOrder'
          property :rounds, as: 'rounds'
          property :salt_separator, :base64 => true, as: 'saltSeparator'
          property :sanity_check, as: 'sanityCheck'
          property :signer_key, :base64 => true, as: 'signerKey'
          property :tenant_id, as: 'tenantId'
          collection :users, as: 'users', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1UserInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV1UploadAccountResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error, as: 'error', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ErrorInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ErrorInfo::Representation
      
          property :kind, as: 'kind'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :created_at, :numeric_string => true, as: 'createdAt'
          property :custom_attributes, as: 'customAttributes'
          property :custom_auth, as: 'customAuth'
          property :date_of_birth, as: 'dateOfBirth'
          property :disabled, as: 'disabled'
          property :display_name, as: 'displayName'
          property :email, as: 'email'
          property :email_link_signin, as: 'emailLinkSignin'
          property :email_verified, as: 'emailVerified'
          property :initial_email, as: 'initialEmail'
          property :language, as: 'language'
          property :last_login_at, :numeric_string => true, as: 'lastLoginAt'
          property :last_refresh_at, as: 'lastRefreshAt'
          property :local_id, as: 'localId'
          collection :mfa_info, as: 'mfaInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1MfaEnrollment::Representation
      
          property :password_hash, :base64 => true, as: 'passwordHash'
          property :password_updated_at, as: 'passwordUpdatedAt'
          property :phone_number, as: 'phoneNumber'
          property :photo_url, as: 'photoUrl'
          collection :provider_user_info, as: 'providerUserInfo', class: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo, decorator: Google::Apis::IdentitytoolkitV1::GoogleCloudIdentitytoolkitV1ProviderUserInfo::Representation
      
          property :raw_password, as: 'rawPassword'
          property :salt, :base64 => true, as: 'salt'
          property :screen_name, as: 'screenName'
          property :tenant_id, as: 'tenantId'
          property :time_zone, as: 'timeZone'
          property :valid_since, :numeric_string => true, as: 'validSince'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1VerifyIosClientRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_token, as: 'appToken'
          property :is_sandbox, as: 'isSandbox'
        end
      end
      
      class GoogleCloudIdentitytoolkitV1VerifyIosClientResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :receipt, as: 'receipt'
          property :suggested_timeout, :numeric_string => true, as: 'suggestedTimeout'
        end
      end
    end
  end
end
