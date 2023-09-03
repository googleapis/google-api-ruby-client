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
    module ChecksV1alpha
      
      class AnalyzePrivacyPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePrivacyPolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FindPrivacyPolicyResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAccountV1alphaApp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAccountV1alphaListAppsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaAnalyzeUploadRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaAppBundle
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheck
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckCitation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckDataSecurityEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckDataTypeEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckEndpointEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckPermissionEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckSdkEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckSdkIssueEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaCheckStateMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataMonitoring
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataMonitoringDataTypeResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataMonitoringEndpointResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataMonitoringPermissionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataMonitoringResultMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataMonitoringSdkResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataTypeEndpointEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataTypeEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataTypePermissionEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaEndpoint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaPermission
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaPolicyFragment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksReportV1alphaSdk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LastUpdatedDate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyDataTypeAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicyPurposeOfUseAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PolicySectionAnnotation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WaitOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePrivacyPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :privacy_policy_page_content, as: 'privacyPolicyPageContent'
          property :privacy_policy_uri, as: 'privacyPolicyUri'
        end
      end
      
      class AnalyzePrivacyPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_purpose_annotations, as: 'dataPurposeAnnotations', class: Google::Apis::ChecksV1alpha::PolicyPurposeOfUseAnnotation, decorator: Google::Apis::ChecksV1alpha::PolicyPurposeOfUseAnnotation::Representation
      
          collection :data_type_annotations, as: 'dataTypeAnnotations', class: Google::Apis::ChecksV1alpha::PolicyDataTypeAnnotation, decorator: Google::Apis::ChecksV1alpha::PolicyDataTypeAnnotation::Representation
      
          property :html_content, as: 'htmlContent'
          property :last_updated_date_info, as: 'lastUpdatedDateInfo', class: Google::Apis::ChecksV1alpha::LastUpdatedDate, decorator: Google::Apis::ChecksV1alpha::LastUpdatedDate::Representation
      
          collection :section_annotations, as: 'sectionAnnotations', class: Google::Apis::ChecksV1alpha::PolicySectionAnnotation, decorator: Google::Apis::ChecksV1alpha::PolicySectionAnnotation::Representation
      
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FindPrivacyPolicyResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :privacy_policy, as: 'privacyPolicy'
        end
      end
      
      class GoogleChecksAccountV1alphaApp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :title, as: 'title'
        end
      end
      
      class GoogleChecksAccountV1alphaListAppsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :apps, as: 'apps', class: Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaApp, decorator: Google::Apis::ChecksV1alpha::GoogleChecksAccountV1alphaApp::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleChecksReportV1alphaAnalyzeUploadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_reference_id, as: 'codeReferenceId'
        end
      end
      
      class GoogleChecksReportV1alphaAppBundle
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_id, as: 'bundleId'
          property :code_reference_id, as: 'codeReferenceId'
          property :release_type, as: 'releaseType'
          property :version, as: 'version'
          property :version_id, as: 'versionId'
        end
      end
      
      class GoogleChecksReportV1alphaCheck
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :citations, as: 'citations', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckCitation, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckCitation::Representation
      
          property :evidence, as: 'evidence', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEvidence::Representation
      
          collection :region_codes, as: 'regionCodes'
          property :severity, as: 'severity'
          property :state, as: 'state'
          property :state_metadata, as: 'stateMetadata', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckStateMetadata, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckStateMetadata::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleChecksReportV1alphaCheckCitation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class GoogleChecksReportV1alphaCheckDataSecurityEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_in_transit_info, as: 'dataInTransitInfo', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckDataSecurityEvidenceDataInTransitInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class GoogleChecksReportV1alphaCheckDataTypeEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :data_type_evidence, as: 'dataTypeEvidence', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEvidence::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckEndpointEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoint_details, as: 'endpointDetails', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidenceEndpointDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_security, as: 'dataSecurity', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataSecurityEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataSecurityEvidence::Representation
      
          collection :data_types, as: 'dataTypes', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataTypeEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckDataTypeEvidence::Representation
      
          collection :endpoint_restriction_violations, as: 'endpointRestrictionViolations', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointRestrictionViolationEvidence::Representation
      
          collection :endpoints, as: 'endpoints', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckEndpointEvidence::Representation
      
          collection :permission_restriction_violations, as: 'permissionRestrictionViolations', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence::Representation
      
          collection :permissions, as: 'permissions', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionEvidence::Representation
      
          collection :privacy_policy_texts, as: 'privacyPolicyTexts', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence::Representation
      
          collection :sdk_issues, as: 'sdkIssues', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkIssueEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkIssueEvidence::Representation
      
          collection :sdk_restriction_violations, as: 'sdkRestrictionViolations', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence::Representation
      
          collection :sdks, as: 'sdks', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkEvidence::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckPermissionEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission, as: 'permission', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permission_details, as: 'permissionDetails', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckPermissionRestrictionViolationEvidencePermissionDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission, as: 'permission', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckPrivacyPolicyTextEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_fragment, as: 'policyFragment', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPolicyFragment, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPolicyFragment::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckSdkEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdk, as: 'sdk', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckSdkIssueEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdk, as: 'sdk', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk::Representation
      
          property :sdk_version, as: 'sdkVersion'
        end
      end
      
      class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sdk_details, as: 'sdkDetails', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckSdkRestrictionViolationEvidenceSdkDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdk, as: 'sdk', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaCheckStateMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :badges, as: 'badges'
          property :first_failing_time, as: 'firstFailingTime'
          property :last_failing_time, as: 'lastFailingTime'
        end
      end
      
      class GoogleChecksReportV1alphaDataMonitoring
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_types, as: 'dataTypes', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringDataTypeResult, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringDataTypeResult::Representation
      
          collection :endpoints, as: 'endpoints', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringEndpointResult, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringEndpointResult::Representation
      
          collection :permissions, as: 'permissions', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringPermissionResult, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringPermissionResult::Representation
      
          collection :sdks, as: 'sdks', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringSdkResult, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringSdkResult::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataMonitoringDataTypeResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :data_type_evidence, as: 'dataTypeEvidence', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEvidence::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataMonitoringEndpointResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint::Representation
      
          property :hit_count, as: 'hitCount'
          property :metadata, as: 'metadata', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataMonitoringPermissionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata::Representation
      
          property :permission, as: 'permission', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataMonitoringResultMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :badges, as: 'badges'
          property :first_detected_time, as: 'firstDetectedTime'
          property :last_detected_app_version, as: 'lastDetectedAppVersion'
          property :last_detected_time, as: 'lastDetectedTime'
        end
      end
      
      class GoogleChecksReportV1alphaDataMonitoringSdkResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoringResultMetadata::Representation
      
          property :sdk, as: 'sdk', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataTypeEndpointEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributed_sdks, as: 'attributedSdks', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk::Representation
      
          collection :endpoint_details, as: 'endpointDetails', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails::Representation
      
          property :exfiltrated_data_type, as: 'exfiltratedDataType'
        end
      end
      
      class GoogleChecksReportV1alphaDataTypeEndpointEvidenceAttributedSdk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sdk, as: 'sdk', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaSdk::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataTypeEndpointEvidenceEndpointDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :endpoint, as: 'endpoint', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaEndpoint::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataTypeEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :endpoints, as: 'endpoints', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypeEndpointEvidence::Representation
      
          collection :permissions, as: 'permissions', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypePermissionEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypePermissionEvidence::Representation
      
          collection :privacy_policy_texts, as: 'privacyPolicyTexts', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataTypePermissionEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission, as: 'permission', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPermission::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaDataTypePrivacyPolicyTextEvidence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_fragment, as: 'policyFragment', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPolicyFragment, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaPolicyFragment::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaEndpoint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
        end
      end
      
      class GoogleChecksReportV1alphaListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaReport, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaReport::Representation
      
        end
      end
      
      class GoogleChecksReportV1alphaPermission
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleChecksReportV1alphaPolicyFragment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :html_content, as: 'htmlContent'
          property :source_uri, as: 'sourceUri'
        end
      end
      
      class GoogleChecksReportV1alphaReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_bundle, as: 'appBundle', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaAppBundle, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaAppBundle::Representation
      
          property :base_report, as: 'baseReport'
          collection :checks, as: 'checks', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheck, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaCheck::Representation
      
          property :data_monitoring, as: 'dataMonitoring', class: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoring, decorator: Google::Apis::ChecksV1alpha::GoogleChecksReportV1alphaDataMonitoring::Representation
      
          property :name, as: 'name'
          property :results_uri, as: 'resultsUri'
        end
      end
      
      class GoogleChecksReportV1alphaSdk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class LastUpdatedDate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :last_updated_date, as: 'lastUpdatedDate', class: Google::Apis::ChecksV1alpha::Date, decorator: Google::Apis::ChecksV1alpha::Date::Representation
      
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ChecksV1alpha::Operation, decorator: Google::Apis::ChecksV1alpha::Operation::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ChecksV1alpha::Status, decorator: Google::Apis::ChecksV1alpha::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PolicyDataTypeAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :score, as: 'score'
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class PolicyPurposeOfUseAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :purpose_of_use, as: 'purposeOfUse'
          property :score, as: 'score'
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class PolicySectionAnnotation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_offset, :numeric_string => true, as: 'endOffset'
          property :score, as: 'score'
          property :section_type, as: 'sectionType'
          property :start_offset, :numeric_string => true, as: 'startOffset'
          property :text_content, as: 'textContent'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class WaitOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout, as: 'timeout'
        end
      end
    end
  end
end
