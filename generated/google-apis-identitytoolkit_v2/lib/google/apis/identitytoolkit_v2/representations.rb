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
    module IdentitytoolkitV2
      
      class GoogleCloudIdentitytoolkitAdminV2AllowByDefault
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2AllowlistOnly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Anonymous
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ClientConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ClientPermissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2DnsInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Email
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2EmailTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2HashConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2IdpCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2IdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Inheritance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2NotificationConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2OAuthResponseType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Permissions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2PhoneNumber
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ProviderConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2QuotaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RecaptchaKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RequestLogging
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SendEmail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SendSms
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SignInConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SmsTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Smtp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SpCertificate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SpConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2TemporaryQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Tenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Trigger
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorAssertionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorAttestationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorAuthenticationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorRegistrationResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorSelectionCriteria
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2AutoRetrievalInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeyEnrollmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeyEnrollmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeySignInRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeySignInResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialCreationOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialDescriptor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialParameters
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialRequestOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2RecaptchaConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2RevokeTokenRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2RevokeTokenResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2RpEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaSignInRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaSignInResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeyEnrollmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeyEnrollmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeySignInRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeySignInResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2UserEntity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2WithdrawMfaRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitV2WithdrawMfaResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudIdentitytoolkitAdminV2AllowByDefault
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :disallowed_regions, as: 'disallowedRegions'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2AllowlistOnly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_regions, as: 'allowedRegions'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Anonymous
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bundle_ids, as: 'bundleIds'
          property :code_flow_config, as: 'codeFlowConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :forward_inbound_credentials, as: 'forwardInboundCredentials', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials::Representation
      
          hash :triggers, as: 'triggers', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Trigger, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Trigger::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ClientConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_key, as: 'apiKey'
          property :firebase_subdomain, as: 'firebaseSubdomain'
          property :permissions, as: 'permissions', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Permissions, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Permissions::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permissions, as: 'permissions', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientPermissions, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientPermissions::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ClientPermissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_user_deletion, as: 'disabledUserDeletion'
          property :disabled_user_signup, as: 'disabledUserSignup'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2CodeFlowConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :private_key, as: 'privateKey'
          property :team_id, as: 'teamId'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authorized_domains, as: 'authorizedDomains'
          property :autodelete_anonymous_users, as: 'autodeleteAnonymousUsers'
          property :blocking_functions, as: 'blockingFunctions', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2BlockingFunctionsConfig::Representation
      
          property :client, as: 'client', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientConfig::Representation
      
          property :email_privacy_config, as: 'emailPrivacyConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig::Representation
      
          property :mfa, as: 'mfa', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig::Representation
      
          property :monitoring, as: 'monitoring', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MonitoringConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MonitoringConfig::Representation
      
          property :multi_tenant, as: 'multiTenant', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig::Representation
      
          property :name, as: 'name'
          property :notification, as: 'notification', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2NotificationConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2NotificationConfig::Representation
      
          property :quota, as: 'quota', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2QuotaConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2QuotaConfig::Representation
      
          property :recaptcha_config, as: 'recaptchaConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig::Representation
      
          property :sign_in, as: 'signIn', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SignInConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SignInConfig::Representation
      
          property :sms_region_config, as: 'smsRegionConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig::Representation
      
          property :subtype, as: 'subtype'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :idp_id, as: 'idpId'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apple_sign_in_config, as: 'appleSignInConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AppleSignInConfig::Representation
      
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :enabled, as: 'enabled'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2DnsInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_domain, as: 'customDomain'
          property :custom_domain_state, as: 'customDomainState'
          property :domain_verification_request_time, as: 'domainVerificationRequestTime'
          property :pending_custom_domain, as: 'pendingCustomDomain'
          property :use_custom_domain, as: 'useCustomDomain'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Email
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :password_required, as: 'passwordRequired'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enable_improved_email_privacy, as: 'enableImprovedEmailPrivacy'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2EmailTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :body, as: 'body'
          property :body_format, as: 'bodyFormat'
          property :customized, as: 'customized'
          property :reply_to, as: 'replyTo'
          property :sender_display_name, as: 'senderDisplayName'
          property :sender_local_part, as: 'senderLocalPart'
          property :subject, as: 'subject'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ForwardInboundCredentials
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_token, as: 'accessToken'
          property :id_token, as: 'idToken'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2HashConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algorithm, as: 'algorithm'
          property :memory_cost, as: 'memoryCost'
          property :rounds, as: 'rounds'
          property :salt_separator, as: 'saltSeparator'
          property :signer_key, as: 'signerKey'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2IdpCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x509_certificate, as: 'x509Certificate'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2IdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :idp_certificates, as: 'idpCertificates', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2IdpCertificate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2IdpCertificate::Representation
      
          property :idp_entity_id, as: 'idpEntityId'
          property :sign_request, as: 'signRequest'
          property :sso_url, as: 'ssoUrl'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :enabled, as: 'enabled'
          property :idp_config, as: 'idpConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2IdpConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2IdpConfig::Representation
      
          property :name, as: 'name'
          property :sp_config, as: 'spConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SpConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SpConfig::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Inheritance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_sending_config, as: 'emailSendingConfig'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2InitializeIdentityPlatformResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_supported_idp_configs, as: 'defaultSupportedIdpConfigs', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdpConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListDefaultSupportedIdpsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :default_supported_idps, as: 'defaultSupportedIdps', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DefaultSupportedIdp::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListInboundSamlConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inbound_saml_configs, as: 'inboundSamlConfigs', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2InboundSamlConfig::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListOAuthIdpConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :oauth_idp_configs, as: 'oauthIdpConfigs', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ListTenantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tenants, as: 'tenants', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Tenant::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2MonitoringConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_logging, as: 'requestLogging', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RequestLogging, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RequestLogging::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :enabled_providers, as: 'enabledProviders'
          collection :provider_configs, as: 'providerConfigs', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ProviderConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ProviderConfig::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2MultiTenantConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_tenants, as: 'allowTenants'
          property :default_tenant_location, as: 'defaultTenantLocation'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2NotificationConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_locale, as: 'defaultLocale'
          property :send_email, as: 'sendEmail', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SendEmail, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SendEmail::Representation
      
          property :send_sms, as: 'sendSms', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SendSms, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SendSms::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2OAuthIdpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_id, as: 'clientId'
          property :client_secret, as: 'clientSecret'
          property :display_name, as: 'displayName'
          property :enabled, as: 'enabled'
          property :issuer, as: 'issuer'
          property :name, as: 'name'
          property :response_type, as: 'responseType', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthResponseType, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2OAuthResponseType::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2OAuthResponseType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :id_token, as: 'idToken'
          property :token, as: 'token'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Permissions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disabled_user_deletion, as: 'disabledUserDeletion'
          property :disabled_user_signup, as: 'disabledUserSignup'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2PhoneNumber
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          hash :test_phone_numbers, as: 'testPhoneNumbers'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2ProviderConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :totp_provider_config, as: 'totpProviderConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2QuotaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sign_up_quota_config, as: 'signUpQuotaConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2TemporaryQuota, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2TemporaryQuota::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_password_enforcement_state, as: 'emailPasswordEnforcementState'
          collection :managed_rules, as: 'managedRules', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule::Representation
      
          collection :recaptcha_keys, as: 'recaptchaKeys', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaKey, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaKey::Representation
      
          property :use_account_defender, as: 'useAccountDefender'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RecaptchaKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RecaptchaManagedRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :end_score, as: 'endScore'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2RequestLogging
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SendEmail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :callback_uri, as: 'callbackUri'
          property :change_email_template, as: 'changeEmailTemplate', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate::Representation
      
          property :dns_info, as: 'dnsInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DnsInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2DnsInfo::Representation
      
          property :legacy_reset_password_template, as: 'legacyResetPasswordTemplate', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate::Representation
      
          property :method_prop, as: 'method'
          property :reset_password_template, as: 'resetPasswordTemplate', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate::Representation
      
          property :revert_second_factor_addition_template, as: 'revertSecondFactorAdditionTemplate', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate::Representation
      
          property :smtp, as: 'smtp', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Smtp, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Smtp::Representation
      
          property :verify_email_template, as: 'verifyEmailTemplate', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailTemplate::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SendSms
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sms_template, as: 'smsTemplate', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsTemplate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsTemplate::Representation
      
          property :use_device_locale, as: 'useDeviceLocale'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SignInConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_duplicate_emails, as: 'allowDuplicateEmails'
          property :anonymous, as: 'anonymous', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Anonymous, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Anonymous::Representation
      
          property :email, as: 'email', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Email, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Email::Representation
      
          property :hash_config, as: 'hashConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2HashConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2HashConfig::Representation
      
          property :phone_number, as: 'phoneNumber', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2PhoneNumber, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2PhoneNumber::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_by_default, as: 'allowByDefault', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AllowByDefault, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AllowByDefault::Representation
      
          property :allowlist_only, as: 'allowlistOnly', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AllowlistOnly, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2AllowlistOnly::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SmsTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Smtp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :host, as: 'host'
          property :password, as: 'password'
          property :port, as: 'port'
          property :security_mode, as: 'securityMode'
          property :sender_email, as: 'senderEmail'
          property :username, as: 'username'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SpCertificate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expires_at, as: 'expiresAt'
          property :x509_certificate, as: 'x509Certificate'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2SpConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :callback_uri, as: 'callbackUri'
          collection :sp_certificates, as: 'spCertificates', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SpCertificate, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SpCertificate::Representation
      
          property :sp_entity_id, as: 'spEntityId'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2TemporaryQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :quota, :numeric_string => true, as: 'quota'
          property :quota_duration, as: 'quotaDuration'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Tenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_password_signup, as: 'allowPasswordSignup'
          property :autodelete_anonymous_users, as: 'autodeleteAnonymousUsers'
          property :client, as: 'client', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2ClientPermissionConfig::Representation
      
          property :disable_auth, as: 'disableAuth'
          property :display_name, as: 'displayName'
          property :email_privacy_config, as: 'emailPrivacyConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2EmailPrivacyConfig::Representation
      
          property :enable_anonymous_user, as: 'enableAnonymousUser'
          property :enable_email_link_signin, as: 'enableEmailLinkSignin'
          property :hash_config, as: 'hashConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2HashConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2HashConfig::Representation
      
          property :inheritance, as: 'inheritance', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Inheritance, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2Inheritance::Representation
      
          property :mfa_config, as: 'mfaConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MultiFactorAuthConfig::Representation
      
          property :monitoring, as: 'monitoring', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MonitoringConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2MonitoringConfig::Representation
      
          property :name, as: 'name'
          property :recaptcha_config, as: 'recaptchaConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2RecaptchaConfig::Representation
      
          property :sms_region_config, as: 'smsRegionConfig', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitAdminV2SmsRegionConfig::Representation
      
          hash :test_phone_numbers, as: 'testPhoneNumbers'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2TotpMfaProviderConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adjacent_intervals, as: 'adjacentIntervals'
        end
      end
      
      class GoogleCloudIdentitytoolkitAdminV2Trigger
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :function_uri, as: 'functionUri'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorAssertionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authenticator_data, :base64 => true, as: 'authenticatorData'
          property :client_data_json, :base64 => true, as: 'clientDataJson'
          property :signature, :base64 => true, as: 'signature'
          property :user_handle, :base64 => true, as: 'userHandle'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorAttestationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_object, :base64 => true, as: 'attestationObject'
          property :client_data_json, :base64 => true, as: 'clientDataJson'
          collection :transports, as: 'transports'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorAuthenticationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authenticator_assertion_response, as: 'authenticatorAssertionResponse', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorAssertionResponse, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorAssertionResponse::Representation
      
          property :credential_id, :base64 => true, as: 'credentialId'
          property :credential_type, as: 'credentialType'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorRegistrationResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authenticator_attestation_response, as: 'authenticatorAttestationResponse', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorAttestationResponse, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorAttestationResponse::Representation
      
          property :credential_id, :base64 => true, as: 'credentialId'
          property :credential_type, as: 'credentialType'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2AuthenticatorSelectionCriteria
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authenticator_attachment, as: 'authenticatorAttachment'
          property :require_resident_key, as: 'requireResidentKey'
          property :user_verification, as: 'userVerification'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2AutoRetrievalInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_signature_hash, as: 'appSignatureHash'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :id_token, as: 'idToken'
          property :phone_verification_info, as: 'phoneVerificationInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo::Representation
      
          property :tenant_id, as: 'tenantId'
          property :totp_verification_info, as: 'totpVerificationInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaEnrollmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :phone_auth_info, as: 'phoneAuthInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo::Representation
      
          property :refresh_token, as: 'refreshToken'
          property :totp_auth_info, as: 'totpAuthInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_verification_proof, as: 'androidVerificationProof'
          property :code, as: 'code'
          property :phone_number, as: 'phoneNumber'
          property :session_info, as: 'sessionInfo'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_verification_proof, as: 'androidVerificationProof'
          property :android_verification_proof_expire_time, as: 'androidVerificationProofExpireTime'
          property :phone_number, as: 'phoneNumber'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mfa_enrollment_id, as: 'mfaEnrollmentId'
          property :mfa_pending_credential, as: 'mfaPendingCredential'
          property :phone_verification_info, as: 'phoneVerificationInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneRequestInfo::Representation
      
          property :tenant_id, as: 'tenantId'
          property :totp_verification_info, as: 'totpVerificationInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaSignInResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :phone_auth_info, as: 'phoneAuthInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2FinalizeMfaPhoneResponseInfo::Representation
      
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_info, as: 'sessionInfo'
          property :verification_code, as: 'verificationCode'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizeMfaTotpEnrollmentResponseInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeyEnrollmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authenticator_registration_response, as: 'authenticatorRegistrationResponse', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorRegistrationResponse, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorRegistrationResponse::Representation
      
          property :id_token, as: 'idToken'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeyEnrollmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeySignInRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authenticator_authentication_response, as: 'authenticatorAuthenticationResponse', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorAuthenticationResponse, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorAuthenticationResponse::Representation
      
          property :session_id, :base64 => true, as: 'sessionId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2FinalizePasskeySignInResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2MfaTotpSignInRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verification_code, as: 'verificationCode'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialCreationOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :authenticator_selection, as: 'authenticatorSelection', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorSelectionCriteria, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AuthenticatorSelectionCriteria::Representation
      
          property :challenge, :base64 => true, as: 'challenge'
          collection :exclude_credentials, as: 'excludeCredentials', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialDescriptor, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialDescriptor::Representation
      
          collection :pub_key_cred_params, as: 'pubKeyCredParams', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialParameters, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialParameters::Representation
      
          property :rp, as: 'rp', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RpEntity, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RpEntity::Representation
      
          property :user, as: 'user', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2UserEntity, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2UserEntity::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialDescriptor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential_id, :base64 => true, as: 'credentialId'
          property :credential_type, as: 'credentialType'
          collection :transports, as: 'transports'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialParameters
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alg, :numeric_string => true, as: 'alg'
          property :credential_type, as: 'credentialType'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2PublicKeyCredentialRequestOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge, :base64 => true, as: 'challenge'
          property :rp_id, as: 'rpId'
          property :user_verification, as: 'userVerification'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2RecaptchaConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :recaptcha_enforcement_state, as: 'recaptchaEnforcementState', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState::Representation
      
          property :recaptcha_key, as: 'recaptchaKey'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2RecaptchaEnforcementState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_state, as: 'enforcementState'
          property :provider, as: 'provider'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2RevokeTokenRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :provider_id, as: 'providerId'
          property :redirect_uri, as: 'redirectUri'
          property :tenant_id, as: 'tenantId'
          property :token, as: 'token'
          property :token_type, as: 'tokenType'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2RevokeTokenResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudIdentitytoolkitV2RpEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :phone_enrollment_info, as: 'phoneEnrollmentInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo::Representation
      
          property :tenant_id, as: 'tenantId'
          property :totp_enrollment_info, as: 'totpEnrollmentInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaEnrollmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_session_info, as: 'phoneSessionInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo::Representation
      
          property :totp_session_info, as: 'totpSessionInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :auto_retrieval_info, as: 'autoRetrievalInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AutoRetrievalInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2AutoRetrievalInfo::Representation
      
          property :ios_receipt, as: 'iosReceipt'
          property :ios_secret, as: 'iosSecret'
          property :phone_number, as: 'phoneNumber'
          property :play_integrity_token, as: 'playIntegrityToken'
          property :recaptcha_token, as: 'recaptchaToken'
          property :safety_net_token, as: 'safetyNetToken'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_info, as: 'sessionInfo'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaSignInRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mfa_enrollment_id, as: 'mfaEnrollmentId'
          property :mfa_pending_credential, as: 'mfaPendingCredential'
          property :phone_sign_in_info, as: 'phoneSignInInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneRequestInfo::Representation
      
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaSignInResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :phone_response_info, as: 'phoneResponseInfo', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2StartMfaPhoneResponseInfo::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentRequestInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartMfaTotpEnrollmentResponseInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finalize_enrollment_time, as: 'finalizeEnrollmentTime'
          property :hashing_algorithm, as: 'hashingAlgorithm'
          property :period_sec, as: 'periodSec'
          property :session_info, as: 'sessionInfo'
          property :shared_secret_key, as: 'sharedSecretKey'
          property :verification_code_length, as: 'verificationCodeLength'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeyEnrollmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeyEnrollmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential_creation_options, as: 'credentialCreationOptions', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialCreationOptions, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialCreationOptions::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeySignInRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :session_id, :base64 => true, as: 'sessionId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2StartPasskeySignInResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :credential_request_options, as: 'credentialRequestOptions', class: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialRequestOptions, decorator: Google::Apis::IdentitytoolkitV2::GoogleCloudIdentitytoolkitV2PublicKeyCredentialRequestOptions::Representation
      
        end
      end
      
      class GoogleCloudIdentitytoolkitV2UserEntity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, :base64 => true, as: 'id'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2WithdrawMfaRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :mfa_enrollment_id, as: 'mfaEnrollmentId'
          property :tenant_id, as: 'tenantId'
        end
      end
      
      class GoogleCloudIdentitytoolkitV2WithdrawMfaResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id_token, as: 'idToken'
          property :refresh_token, as: 'refreshToken'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::IdentitytoolkitV2::GoogleIamV1AuditLogConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::IdentitytoolkitV2::GoogleTypeExpr, decorator: Google::Apis::IdentitytoolkitV2::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::IdentitytoolkitV2::GoogleIamV1GetPolicyOptions, decorator: Google::Apis::IdentitytoolkitV2::GoogleIamV1GetPolicyOptions::Representation
      
        end
      end
      
      class GoogleIamV1GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::IdentitytoolkitV2::GoogleIamV1AuditConfig, decorator: Google::Apis::IdentitytoolkitV2::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::IdentitytoolkitV2::GoogleIamV1Binding, decorator: Google::Apis::IdentitytoolkitV2::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy, decorator: Google::Apis::IdentitytoolkitV2::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
    end
  end
end
