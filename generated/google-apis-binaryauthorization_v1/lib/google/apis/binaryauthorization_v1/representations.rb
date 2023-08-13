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
    module BinaryauthorizationV1
      
      class AdmissionRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdmissionWhitelistPattern
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestationAuthenticator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestationOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestationSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attestor
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestorPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Check
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CheckSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IamPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageAllowlist
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageFreshnessCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Jwt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAttestorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListPlatformPoliciesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PkixPublicKey
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PkixPublicKeySet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlatformPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Scope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Signature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SimpleSigningAttestationCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlsaCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrustedDirectoryCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UserOwnedGrafeasNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateAttestationOccurrenceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateAttestationOccurrenceResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerificationRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdmissionRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforcement_mode, as: 'enforcementMode'
          property :evaluation_mode, as: 'evaluationMode'
          collection :require_attestations_by, as: 'requireAttestationsBy'
        end
      end
      
      class AdmissionWhitelistPattern
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name_pattern, as: 'namePattern'
        end
      end
      
      class AttestationAuthenticator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :pkix_public_key_set, as: 'pkixPublicKeySet', class: Google::Apis::BinaryauthorizationV1::PkixPublicKeySet, decorator: Google::Apis::BinaryauthorizationV1::PkixPublicKeySet::Representation
      
        end
      end
      
      class AttestationOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jwts, as: 'jwts', class: Google::Apis::BinaryauthorizationV1::Jwt, decorator: Google::Apis::BinaryauthorizationV1::Jwt::Representation
      
          property :serialized_payload, :base64 => true, as: 'serializedPayload'
          collection :signatures, as: 'signatures', class: Google::Apis::BinaryauthorizationV1::Signature, decorator: Google::Apis::BinaryauthorizationV1::Signature::Representation
      
        end
      end
      
      class AttestationSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :container_analysis_attestation_projects, as: 'containerAnalysisAttestationProjects'
        end
      end
      
      class Attestor
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
          property :user_owned_grafeas_note, as: 'userOwnedGrafeasNote', class: Google::Apis::BinaryauthorizationV1::UserOwnedGrafeasNote, decorator: Google::Apis::BinaryauthorizationV1::UserOwnedGrafeasNote::Representation
      
        end
      end
      
      class AttestorPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ascii_armored_pgp_public_key, as: 'asciiArmoredPgpPublicKey'
          property :comment, as: 'comment'
          property :id, as: 'id'
          property :pkix_public_key, as: 'pkixPublicKey', class: Google::Apis::BinaryauthorizationV1::PkixPublicKey, decorator: Google::Apis::BinaryauthorizationV1::PkixPublicKey::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BinaryauthorizationV1::Expr, decorator: Google::Apis::BinaryauthorizationV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Check
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :always_deny, as: 'alwaysDeny'
          property :display_name, as: 'displayName'
          property :image_allowlist, as: 'imageAllowlist', class: Google::Apis::BinaryauthorizationV1::ImageAllowlist, decorator: Google::Apis::BinaryauthorizationV1::ImageAllowlist::Representation
      
          property :image_freshness_check, as: 'imageFreshnessCheck', class: Google::Apis::BinaryauthorizationV1::ImageFreshnessCheck, decorator: Google::Apis::BinaryauthorizationV1::ImageFreshnessCheck::Representation
      
          property :simple_signing_attestation_check, as: 'simpleSigningAttestationCheck', class: Google::Apis::BinaryauthorizationV1::SimpleSigningAttestationCheck, decorator: Google::Apis::BinaryauthorizationV1::SimpleSigningAttestationCheck::Representation
      
          property :slsa_check, as: 'slsaCheck', class: Google::Apis::BinaryauthorizationV1::SlsaCheck, decorator: Google::Apis::BinaryauthorizationV1::SlsaCheck::Representation
      
          property :trusted_directory_check, as: 'trustedDirectoryCheck', class: Google::Apis::BinaryauthorizationV1::TrustedDirectoryCheck, decorator: Google::Apis::BinaryauthorizationV1::TrustedDirectoryCheck::Representation
      
          property :vulnerability_check, as: 'vulnerabilityCheck', class: Google::Apis::BinaryauthorizationV1::VulnerabilityCheck, decorator: Google::Apis::BinaryauthorizationV1::VulnerabilityCheck::Representation
      
        end
      end
      
      class CheckSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :checks, as: 'checks', class: Google::Apis::BinaryauthorizationV1::Check, decorator: Google::Apis::BinaryauthorizationV1::Check::Representation
      
          property :display_name, as: 'displayName'
          property :image_allowlist, as: 'imageAllowlist', class: Google::Apis::BinaryauthorizationV1::ImageAllowlist, decorator: Google::Apis::BinaryauthorizationV1::ImageAllowlist::Representation
      
          property :scope, as: 'scope', class: Google::Apis::BinaryauthorizationV1::Scope, decorator: Google::Apis::BinaryauthorizationV1::Scope::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GkePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :check_sets, as: 'checkSets', class: Google::Apis::BinaryauthorizationV1::CheckSet, decorator: Google::Apis::BinaryauthorizationV1::CheckSet::Representation
      
          property :image_allowlist, as: 'imageAllowlist', class: Google::Apis::BinaryauthorizationV1::ImageAllowlist, decorator: Google::Apis::BinaryauthorizationV1::ImageAllowlist::Representation
      
        end
      end
      
      class IamPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::BinaryauthorizationV1::Binding, decorator: Google::Apis::BinaryauthorizationV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ImageAllowlist
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_pattern, as: 'allowPattern'
        end
      end
      
      class ImageFreshnessCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_upload_age_days, as: 'maxUploadAgeDays'
        end
      end
      
      class Jwt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compact_jwt, as: 'compactJwt'
        end
      end
      
      class ListAttestorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attestors, as: 'attestors', class: Google::Apis::BinaryauthorizationV1::Attestor, decorator: Google::Apis::BinaryauthorizationV1::Attestor::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListPlatformPoliciesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :platform_policies, as: 'platformPolicies', class: Google::Apis::BinaryauthorizationV1::PlatformPolicy, decorator: Google::Apis::BinaryauthorizationV1::PlatformPolicy::Representation
      
        end
      end
      
      class PkixPublicKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key_pem, as: 'publicKeyPem'
          property :signature_algorithm, as: 'signatureAlgorithm'
        end
      end
      
      class PkixPublicKeySet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :pkix_public_keys, as: 'pkixPublicKeys', class: Google::Apis::BinaryauthorizationV1::PkixPublicKey, decorator: Google::Apis::BinaryauthorizationV1::PkixPublicKey::Representation
      
        end
      end
      
      class PlatformPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :gke_policy, as: 'gkePolicy', class: Google::Apis::BinaryauthorizationV1::GkePolicy, decorator: Google::Apis::BinaryauthorizationV1::GkePolicy::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :admission_whitelist_patterns, as: 'admissionWhitelistPatterns', class: Google::Apis::BinaryauthorizationV1::AdmissionWhitelistPattern, decorator: Google::Apis::BinaryauthorizationV1::AdmissionWhitelistPattern::Representation
      
          hash :cluster_admission_rules, as: 'clusterAdmissionRules', class: Google::Apis::BinaryauthorizationV1::AdmissionRule, decorator: Google::Apis::BinaryauthorizationV1::AdmissionRule::Representation
      
          property :default_admission_rule, as: 'defaultAdmissionRule', class: Google::Apis::BinaryauthorizationV1::AdmissionRule, decorator: Google::Apis::BinaryauthorizationV1::AdmissionRule::Representation
      
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :global_policy_evaluation_mode, as: 'globalPolicyEvaluationMode'
          hash :istio_service_identity_admission_rules, as: 'istioServiceIdentityAdmissionRules', class: Google::Apis::BinaryauthorizationV1::AdmissionRule, decorator: Google::Apis::BinaryauthorizationV1::AdmissionRule::Representation
      
          hash :kubernetes_namespace_admission_rules, as: 'kubernetesNamespaceAdmissionRules', class: Google::Apis::BinaryauthorizationV1::AdmissionRule, decorator: Google::Apis::BinaryauthorizationV1::AdmissionRule::Representation
      
          hash :kubernetes_service_account_admission_rules, as: 'kubernetesServiceAccountAdmissionRules', class: Google::Apis::BinaryauthorizationV1::AdmissionRule, decorator: Google::Apis::BinaryauthorizationV1::AdmissionRule::Representation
      
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Scope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kubernetes_namespace, as: 'kubernetesNamespace'
          property :kubernetes_service_account, as: 'kubernetesServiceAccount'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BinaryauthorizationV1::IamPolicy, decorator: Google::Apis::BinaryauthorizationV1::IamPolicy::Representation
      
        end
      end
      
      class Signature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key_id, as: 'publicKeyId'
          property :signature, :base64 => true, as: 'signature'
        end
      end
      
      class SimpleSigningAttestationCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attestation_authenticators, as: 'attestationAuthenticators', class: Google::Apis::BinaryauthorizationV1::AttestationAuthenticator, decorator: Google::Apis::BinaryauthorizationV1::AttestationAuthenticator::Representation
      
          collection :container_analysis_attestation_projects, as: 'containerAnalysisAttestationProjects'
        end
      end
      
      class SlsaCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :rules, as: 'rules', class: Google::Apis::BinaryauthorizationV1::VerificationRule, decorator: Google::Apis::BinaryauthorizationV1::VerificationRule::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TrustedDirectoryCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :trusted_dir_patterns, as: 'trustedDirPatterns'
        end
      end
      
      class UserOwnedGrafeasNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delegation_service_account_email, as: 'delegationServiceAccountEmail'
          property :note_reference, as: 'noteReference'
          collection :public_keys, as: 'publicKeys', class: Google::Apis::BinaryauthorizationV1::AttestorPublicKey, decorator: Google::Apis::BinaryauthorizationV1::AttestorPublicKey::Representation
      
        end
      end
      
      class ValidateAttestationOccurrenceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::BinaryauthorizationV1::AttestationOccurrence, decorator: Google::Apis::BinaryauthorizationV1::AttestationOccurrence::Representation
      
          property :occurrence_note, as: 'occurrenceNote'
          property :occurrence_resource_uri, as: 'occurrenceResourceUri'
        end
      end
      
      class ValidateAttestationOccurrenceResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :denial_reason, as: 'denialReason'
          property :result, as: 'result'
        end
      end
      
      class VerificationRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_source, as: 'attestationSource', class: Google::Apis::BinaryauthorizationV1::AttestationSource, decorator: Google::Apis::BinaryauthorizationV1::AttestationSource::Representation
      
          property :config_based_build_required, as: 'configBasedBuildRequired'
          property :trusted_builder, as: 'trustedBuilder'
          collection :trusted_source_repo_patterns, as: 'trustedSourceRepoPatterns'
        end
      end
      
      class VulnerabilityCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_cves, as: 'allowedCves'
          collection :blocked_cves, as: 'blockedCves'
          collection :container_analysis_vulnerability_projects, as: 'containerAnalysisVulnerabilityProjects'
          property :maximum_fixable_severity, as: 'maximumFixableSeverity'
          property :maximum_unfixable_severity, as: 'maximumUnfixableSeverity'
        end
      end
    end
  end
end
