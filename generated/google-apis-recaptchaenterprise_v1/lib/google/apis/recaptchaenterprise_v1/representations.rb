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
    module RecaptchaenterpriseV1
      
      class GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1Assessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1Bot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1Event
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1IosKeySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1IpOverrideData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1Key
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListKeysResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1Metrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1RiskAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ScoreDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1ScoreMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TestingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TokenProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataItem
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataUser
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1UserId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1UserInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1WafSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1WebKeySettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :labels, as: 'labels'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoints, as: 'endpoints', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo::Representation
      
          property :language_code, as: 'languageCode'
          property :latest_verification_result, as: 'latestVerificationResult'
          property :username, as: 'username'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AddIpOverrideRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_override_data, as: 'ipOverrideData', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AddIpOverrideResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AndroidKeySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_all_package_names, as: 'allowAllPackageNames'
          collection :allowed_package_names, as: 'allowedPackageNames'
          property :support_non_google_app_store_distribution, as: 'supportNonGoogleAppStoreDistribution'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :annotation, as: 'annotation'
          property :hashed_account_id, :base64 => true, as: 'hashedAccountId'
          collection :reasons, as: 'reasons'
          property :transaction_event, as: 'transactionEvent', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionEvent, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionEvent::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AnnotateAssessmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AppleDeveloperId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :private_key, as: 'privateKey'
          property :team_id, as: 'teamId'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1Assessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_defender_assessment, as: 'accountDefenderAssessment', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AccountDefenderAssessment::Representation
      
          property :account_verification, as: 'accountVerification', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AccountVerificationInfo::Representation
      
          property :assessment_environment, as: 'assessmentEnvironment', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment::Representation
      
          property :event, as: 'event', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Event, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Event::Representation
      
          property :firewall_policy_assessment, as: 'firewallPolicyAssessment', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment::Representation
      
          property :fraud_prevention_assessment, as: 'fraudPreventionAssessment', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment::Representation
      
          property :fraud_signals, as: 'fraudSignals', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignals, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignals::Representation
      
          property :name, as: 'name'
          property :phone_fraud_assessment, as: 'phoneFraudAssessment', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment::Representation
      
          property :private_password_leak_verification, as: 'privatePasswordLeakVerification', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification::Representation
      
          property :risk_analysis, as: 'riskAnalysis', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RiskAnalysis, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RiskAnalysis::Representation
      
          property :token_properties, as: 'tokenProperties', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TokenProperties, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TokenProperties::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1AssessmentEnvironment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client, as: 'client'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1Bot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bot_type, as: 'botType'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ChallengeMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failed_count, :numeric_string => true, as: 'failedCount'
          property :nocaptcha_count, :numeric_string => true, as: 'nocaptchaCount'
          property :pageload_count, :numeric_string => true, as: 'pageloadCount'
          property :passed_count, :numeric_string => true, as: 'passedCount'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1EndpointVerificationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :last_verification_time, as: 'lastVerificationTime'
          property :phone_number, as: 'phoneNumber'
          property :request_token, as: 'requestToken'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1Event
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :expected_action, as: 'expectedAction'
          property :express, as: 'express'
          property :firewall_policy_evaluation, as: 'firewallPolicyEvaluation'
          property :fraud_prevention, as: 'fraudPrevention'
          property :hashed_account_id, :base64 => true, as: 'hashedAccountId'
          collection :headers, as: 'headers'
          property :ja3, as: 'ja3'
          property :ja4, as: 'ja4'
          property :requested_uri, as: 'requestedUri'
          property :site_key, as: 'siteKey'
          property :token, as: 'token'
          property :transaction_data, as: 'transactionData', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionData, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionData::Representation
      
          property :user_agent, as: 'userAgent'
          property :user_info, as: 'userInfo', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1UserInfo, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1UserInfo::Representation
      
          property :user_ip_address, as: 'userIpAddress'
          property :waf_token_assessment, as: 'wafTokenAssessment'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ExpressKeySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow, as: 'allow', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction::Representation
      
          property :block, as: 'block', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction::Representation
      
          property :include_recaptcha_script, as: 'includeRecaptchaScript', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction::Representation
      
          property :redirect, as: 'redirect', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction::Representation
      
          property :set_header, as: 'setHeader', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction::Representation
      
          property :substitute, as: 'substitute', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionAllowAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionBlockAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionIncludeRecaptchaScriptAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionRedirectAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionSetHeaderAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallActionSubstituteAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :actions, as: 'actions', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallAction, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallAction::Representation
      
          property :condition, as: 'condition'
          property :description, as: 'description'
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FirewallPolicyAssessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::RecaptchaenterpriseV1::GoogleRpcStatus, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleRpcStatus::Representation
      
          property :firewall_policy, as: 'firewallPolicy', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :behavioral_trust_verdict, as: 'behavioralTrustVerdict', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict::Representation
      
          property :card_testing_verdict, as: 'cardTestingVerdict', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict::Representation
      
          collection :risk_reasons, as: 'riskReasons', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason::Representation
      
          property :stolen_instrument_verdict, as: 'stolenInstrumentVerdict', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict::Representation
      
          property :transaction_risk, as: 'transactionRisk'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentBehavioralTrustVerdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :trust_prop, as: 'trust'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentCardTestingVerdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :risk, as: 'risk'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentRiskReason
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reason, as: 'reason'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudPreventionAssessmentStolenInstrumentVerdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :risk, as: 'risk'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :card_signals, as: 'cardSignals', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals::Representation
      
          property :user_signals, as: 'userSignals', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudSignalsCardSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :card_labels, as: 'cardLabels'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1FraudSignalsUserSignals
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :active_days_lower_bound, as: 'activeDaysLowerBound'
          property :synthetic_risk, as: 'syntheticRisk'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1IosKeySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_all_bundle_ids, as: 'allowAllBundleIds'
          collection :allowed_bundle_ids, as: 'allowedBundleIds'
          property :apple_developer_id, as: 'appleDeveloperId', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AppleDeveloperId, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AppleDeveloperId::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1IpOverrideData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip, as: 'ip'
          property :override_type, as: 'overrideType'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1Key
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_settings, as: 'androidSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AndroidKeySettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1AndroidKeySettings::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :express_settings, as: 'expressSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ExpressKeySettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ExpressKeySettings::Representation
      
          property :ios_settings, as: 'iosSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IosKeySettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IosKeySettings::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :testing_options, as: 'testingOptions', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TestingOptions, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TestingOptions::Representation
      
          property :waf_settings, as: 'wafSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WafSettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WafSettings::Representation
      
          property :web_settings, as: 'webSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettings::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListFirewallPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firewall_policies, as: 'firewallPolicies', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1FirewallPolicy::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListIpOverridesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ip_overrides, as: 'ipOverrides', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListKeysResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :keys, as: 'keys', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Key::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :related_account_group_memberships, as: 'relatedAccountGroupMemberships', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ListRelatedAccountGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :related_account_groups, as: 'relatedAccountGroups', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1Metrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :challenge_metrics, as: 'challengeMetrics', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ChallengeMetrics, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ChallengeMetrics::Representation
      
          property :name, as: 'name'
          collection :score_metrics, as: 'scoreMetrics', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreMetrics, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreMetrics::Representation
      
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1MigrateKeyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :skip_billing_check, as: 'skipBillingCheck'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1PhoneFraudAssessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sms_toll_fraud_verdict, as: 'smsTollFraudVerdict', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1PrivatePasswordLeakVerification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :encrypted_leak_match_prefixes, as: 'encryptedLeakMatchPrefixes'
          property :encrypted_user_credentials_hash, :base64 => true, as: 'encryptedUserCredentialsHash'
          property :lookup_hash_prefix, :base64 => true, as: 'lookupHashPrefix'
          property :reencrypted_user_credentials_hash, :base64 => true, as: 'reencryptedUserCredentialsHash'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :hashed_account_id, :base64 => true, as: 'hashedAccountId'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ip_override_data, as: 'ipOverrideData', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1IpOverrideData::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1RemoveIpOverrideResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ReorderFirewallPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1RetrieveLegacySecretKeyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :legacy_secret_key, as: 'legacySecretKey'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1RiskAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :challenge, as: 'challenge'
          collection :extended_verdict_reasons, as: 'extendedVerdictReasons'
          collection :reasons, as: 'reasons'
          property :score, as: 'score'
          collection :verified_bots, as: 'verifiedBots', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Bot, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1Bot::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ScoreDistribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :score_buckets, as: 'scoreBuckets'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1ScoreMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_metrics, as: 'actionMetrics', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution::Representation
      
          property :overall_metrics, as: 'overallMetrics', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1ScoreDistribution::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :hashed_account_id, :base64 => true, as: 'hashedAccountId'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1SearchRelatedAccountGroupMembershipsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :related_account_group_memberships, as: 'relatedAccountGroupMemberships', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1RelatedAccountGroupMembership::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1SmsTollFraudVerdict
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :reasons, as: 'reasons'
          property :risk, as: 'risk'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TestingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :testing_challenge, as: 'testingChallenge'
          property :testing_score, as: 'testingScore'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TokenProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :android_package_name, as: 'androidPackageName'
          property :create_time, as: 'createTime'
          property :hostname, as: 'hostname'
          property :invalid_reason, as: 'invalidReason'
          property :ios_bundle_id, as: 'iosBundleId'
          property :valid, as: 'valid'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :billing_address, as: 'billingAddress', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataAddress, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataAddress::Representation
      
          property :card_bin, as: 'cardBin'
          property :card_last_four, as: 'cardLastFour'
          property :currency_code, as: 'currencyCode'
          property :gateway_info, as: 'gatewayInfo', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo::Representation
      
          collection :items, as: 'items', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataItem, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataItem::Representation
      
          collection :merchants, as: 'merchants', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataUser, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataUser::Representation
      
          property :payment_method, as: 'paymentMethod'
          property :shipping_address, as: 'shippingAddress', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataAddress, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataAddress::Representation
      
          property :shipping_value, as: 'shippingValue'
          property :transaction_id, as: 'transactionId'
          property :user, as: 'user', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataUser, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1TransactionDataUser::Representation
      
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address, as: 'address'
          property :administrative_area, as: 'administrativeArea'
          property :locality, as: 'locality'
          property :postal_code, as: 'postalCode'
          property :recipient, as: 'recipient'
          property :region_code, as: 'regionCode'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataGatewayInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avs_response_code, as: 'avsResponseCode'
          property :cvv_response_code, as: 'cvvResponseCode'
          property :gateway_response_code, as: 'gatewayResponseCode'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataItem
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :merchant_account_id, as: 'merchantAccountId'
          property :name, as: 'name'
          property :quantity, :numeric_string => true, as: 'quantity'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionDataUser
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :creation_ms, :numeric_string => true, as: 'creationMs'
          property :email, as: 'email'
          property :email_verified, as: 'emailVerified'
          property :phone_number, as: 'phoneNumber'
          property :phone_verified, as: 'phoneVerified'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1TransactionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_time, as: 'eventTime'
          property :event_type, as: 'eventType'
          property :reason, as: 'reason'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1UserId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
          property :phone_number, as: 'phoneNumber'
          property :username, as: 'username'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1UserInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          property :create_account_time, as: 'createAccountTime'
          collection :user_ids, as: 'userIds', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1UserId, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1UserId::Representation
      
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1WafSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :waf_feature, as: 'wafFeature'
          property :waf_service, as: 'wafService'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1WebKeySettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_all_domains, as: 'allowAllDomains'
          property :allow_amp_traffic, as: 'allowAmpTraffic'
          collection :allowed_domains, as: 'allowedDomains'
          property :challenge_security_preference, as: 'challengeSecurityPreference'
          property :challenge_settings, as: 'challengeSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings::Representation
      
          property :integration_type, as: 'integrationType'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :score_threshold, as: 'scoreThreshold'
        end
      end
      
      class GoogleCloudRecaptchaenterpriseV1WebKeySettingsChallengeSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :action_settings, as: 'actionSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings::Representation
      
          property :default_settings, as: 'defaultSettings', class: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings, decorator: Google::Apis::RecaptchaenterpriseV1::GoogleCloudRecaptchaenterpriseV1WebKeySettingsActionSettings::Representation
      
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
    end
  end
end
