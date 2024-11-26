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
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
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
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequestContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksAisafetyV1alphaTextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaCliAnalysis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaCodeAttribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaCodeScan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaGenerateScanRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaListRepoScansResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaPullRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaRepoScan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaScmMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleChecksRepoScanV1alphaSourceCode
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
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
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
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classifier_version, as: 'classifierVersion'
          property :context, as: 'context', class: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestContext, decorator: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestContext::Representation
      
          property :input, as: 'input', class: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent, decorator: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent::Representation
      
          collection :policies, as: 'policies', class: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig, decorator: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig::Representation
      
        end
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequestContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :prompt, as: 'prompt'
        end
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequestInputContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text_input, as: 'textInput', class: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaTextInput, decorator: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaTextInput::Representation
      
        end
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentRequestPolicyConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_type, as: 'policyType'
          property :threshold, as: 'threshold'
        end
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :policy_results, as: 'policyResults', class: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult, decorator: Google::Apis::ChecksV1alpha::GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult::Representation
      
        end
      end
      
      class GoogleChecksAisafetyV1alphaClassifyContentResponsePolicyResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy_type, as: 'policyType'
          property :score, as: 'score'
          property :violation_result, as: 'violationResult'
        end
      end
      
      class GoogleChecksAisafetyV1alphaTextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :language_code, as: 'languageCode'
        end
      end
      
      class GoogleChecksRepoScanV1alphaCliAnalysis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :code_scans, as: 'codeScans', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeScan, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeScan::Representation
      
          collection :sources, as: 'sources', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSource, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSource::Representation
      
        end
      end
      
      class GoogleChecksRepoScanV1alphaCodeAttribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_excerpt, as: 'codeExcerpt'
          property :line_number, as: 'lineNumber'
          property :path, as: 'path'
          property :start_line_number, as: 'startLineNumber'
        end
      end
      
      class GoogleChecksRepoScanV1alphaCodeScan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_type_classifications, as: 'dataTypeClassifications', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification::Representation
      
          property :source_code, as: 'sourceCode', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSourceCode, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSourceCode::Representation
      
        end
      end
      
      class GoogleChecksRepoScanV1alphaCodeScanDataTypeClassification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_type, as: 'dataType'
          property :line_number, as: 'lineNumber'
        end
      end
      
      class GoogleChecksRepoScanV1alphaGenerateScanRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cli_analysis, as: 'cliAnalysis', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCliAnalysis, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCliAnalysis::Representation
      
          property :cli_version, as: 'cliVersion'
          property :local_scan_path, as: 'localScanPath'
          property :scm_metadata, as: 'scmMetadata', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaScmMetadata, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaScmMetadata::Representation
      
        end
      end
      
      class GoogleChecksRepoScanV1alphaListRepoScansResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :repo_scans, as: 'repoScans', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaRepoScan, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaRepoScan::Representation
      
        end
      end
      
      class GoogleChecksRepoScanV1alphaPullRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_branch, as: 'baseBranch'
          property :pr_number, as: 'prNumber'
        end
      end
      
      class GoogleChecksRepoScanV1alphaRepoScan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cli_version, as: 'cliVersion'
          property :local_scan_path, as: 'localScanPath'
          property :name, as: 'name'
          property :results_uri, as: 'resultsUri'
          property :scm_metadata, as: 'scmMetadata', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaScmMetadata, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaScmMetadata::Representation
      
          collection :sources, as: 'sources', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSource, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaSource::Representation
      
        end
      end
      
      class GoogleChecksRepoScanV1alphaScmMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch, as: 'branch'
          property :pull_request, as: 'pullRequest', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaPullRequest, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaPullRequest::Representation
      
          property :remote_uri, as: 'remoteUri'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleChecksRepoScanV1alphaSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code_attribution, as: 'codeAttribution', class: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeAttribution, decorator: Google::Apis::ChecksV1alpha::GoogleChecksRepoScanV1alphaCodeAttribution::Representation
      
          property :data_type, as: 'dataType'
        end
      end
      
      class GoogleChecksRepoScanV1alphaSourceCode
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :end_line, as: 'endLine'
          property :path, as: 'path'
          property :start_line, as: 'startLine'
        end
      end
      
      class GoogleChecksReportV1alphaAnalyzeUploadRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :app_binary_file_type, as: 'appBinaryFileType'
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
