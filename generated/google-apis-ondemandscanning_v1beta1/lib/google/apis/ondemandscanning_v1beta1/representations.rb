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
    module OndemandscanningV1beta1
      
      class AliasContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePackagesMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePackagesMetadataV1
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePackagesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePackagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyzePackagesResponseV1
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Artifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestationOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuilderConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Category
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRepoSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Command
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Completeness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsseAttestationOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiscoveryOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Envelope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnvelopeSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fingerprint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GerritSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Identity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImageOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InTotoProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InTotoStatement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Jwt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Layer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListVulnerabilitiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Material
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NonCompliantFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Occurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectRepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Recipe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelatedUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Signature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlsaBuilder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlsaCompleteness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlsaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlsaProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SlsaRecipe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subject
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsUpdate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AliasContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class AnalyzePackagesMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class AnalyzePackagesMetadataV1
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class AnalyzePackagesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :packages, as: 'packages', class: Google::Apis::OndemandscanningV1beta1::PackageData, decorator: Google::Apis::OndemandscanningV1beta1::PackageData::Representation
      
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class AnalyzePackagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scan, as: 'scan'
        end
      end
      
      class AnalyzePackagesResponseV1
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :scan, as: 'scan'
        end
      end
      
      class Artifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :checksum, as: 'checksum'
          property :id, as: 'id'
          collection :names, as: 'names'
        end
      end
      
      class AttestationOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jwts, as: 'jwts', class: Google::Apis::OndemandscanningV1beta1::Jwt, decorator: Google::Apis::OndemandscanningV1beta1::Jwt::Representation
      
          property :serialized_payload, :base64 => true, as: 'serializedPayload'
          collection :signatures, as: 'signatures', class: Google::Apis::OndemandscanningV1beta1::Signature, decorator: Google::Apis::OndemandscanningV1beta1::Signature::Representation
      
        end
      end
      
      class BuildOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intoto_provenance, as: 'intotoProvenance', class: Google::Apis::OndemandscanningV1beta1::InTotoProvenance, decorator: Google::Apis::OndemandscanningV1beta1::InTotoProvenance::Representation
      
          property :intoto_statement, as: 'intotoStatement', class: Google::Apis::OndemandscanningV1beta1::InTotoStatement, decorator: Google::Apis::OndemandscanningV1beta1::InTotoStatement::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::OndemandscanningV1beta1::BuildProvenance, decorator: Google::Apis::OndemandscanningV1beta1::BuildProvenance::Representation
      
          property :provenance_bytes, as: 'provenanceBytes'
        end
      end
      
      class BuildProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :build_options, as: 'buildOptions'
          property :builder_version, as: 'builderVersion'
          collection :built_artifacts, as: 'builtArtifacts', class: Google::Apis::OndemandscanningV1beta1::Artifact, decorator: Google::Apis::OndemandscanningV1beta1::Artifact::Representation
      
          collection :commands, as: 'commands', class: Google::Apis::OndemandscanningV1beta1::Command, decorator: Google::Apis::OndemandscanningV1beta1::Command::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :end_time, as: 'endTime'
          property :id, as: 'id'
          property :logs_uri, as: 'logsUri'
          property :project_id, as: 'projectId'
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::OndemandscanningV1beta1::Source, decorator: Google::Apis::OndemandscanningV1beta1::Source::Representation
      
          property :start_time, as: 'startTime'
          property :trigger_id, as: 'triggerId'
        end
      end
      
      class BuilderConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class Category
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category_id, as: 'categoryId'
          property :name, as: 'name'
        end
      end
      
      class CloudRepoSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::OndemandscanningV1beta1::AliasContext, decorator: Google::Apis::OndemandscanningV1beta1::AliasContext::Representation
      
          property :repo_id, as: 'repoId', class: Google::Apis::OndemandscanningV1beta1::RepoId, decorator: Google::Apis::OndemandscanningV1beta1::RepoId::Representation
      
          property :revision_id, as: 'revisionId'
        end
      end
      
      class Command
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :dir, as: 'dir'
          collection :env, as: 'env'
          property :id, as: 'id'
          property :name, as: 'name'
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class Completeness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arguments, as: 'arguments'
          property :environment, as: 'environment'
          property :materials, as: 'materials'
        end
      end
      
      class ComplianceOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :non_compliance_reason, as: 'nonComplianceReason'
          collection :non_compliant_files, as: 'nonCompliantFiles', class: Google::Apis::OndemandscanningV1beta1::NonCompliantFile, decorator: Google::Apis::OndemandscanningV1beta1::NonCompliantFile::Representation
      
        end
      end
      
      class DsseAttestationOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :envelope, as: 'envelope', class: Google::Apis::OndemandscanningV1beta1::Envelope, decorator: Google::Apis::OndemandscanningV1beta1::Envelope::Representation
      
          property :statement, as: 'statement', class: Google::Apis::OndemandscanningV1beta1::InTotoStatement, decorator: Google::Apis::OndemandscanningV1beta1::InTotoStatement::Representation
      
        end
      end
      
      class DeploymentOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :config, as: 'config'
          property :deploy_time, as: 'deployTime'
          property :platform, as: 'platform'
          collection :resource_uri, as: 'resourceUri'
          property :undeploy_time, as: 'undeployTime'
          property :user_email, as: 'userEmail'
        end
      end
      
      class DiscoveryOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_status, as: 'analysisStatus'
          property :analysis_status_error, as: 'analysisStatusError', class: Google::Apis::OndemandscanningV1beta1::Status, decorator: Google::Apis::OndemandscanningV1beta1::Status::Representation
      
          property :continuous_analysis, as: 'continuousAnalysis'
          property :cpe, as: 'cpe'
          property :last_scan_time, as: 'lastScanTime'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Envelope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :payload, :base64 => true, as: 'payload'
          property :payload_type, as: 'payloadType'
          collection :signatures, as: 'signatures', class: Google::Apis::OndemandscanningV1beta1::EnvelopeSignature, decorator: Google::Apis::OndemandscanningV1beta1::EnvelopeSignature::Representation
      
        end
      end
      
      class EnvelopeSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyid, as: 'keyid'
          property :sig, :base64 => true, as: 'sig'
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::OndemandscanningV1beta1::HashProp, decorator: Google::Apis::OndemandscanningV1beta1::HashProp::Representation
      
        end
      end
      
      class Fingerprint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :v1_name, as: 'v1Name'
          collection :v2_blob, as: 'v2Blob'
          property :v2_name, as: 'v2Name'
        end
      end
      
      class GerritSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::OndemandscanningV1beta1::AliasContext, decorator: Google::Apis::OndemandscanningV1beta1::AliasContext::Representation
      
          property :gerrit_project, as: 'gerritProject'
          property :host_uri, as: 'hostUri'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GitSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
          property :url, as: 'url'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class Identity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision, as: 'revision'
          property :update_id, as: 'updateId'
        end
      end
      
      class ImageOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_resource_url, as: 'baseResourceUrl'
          property :distance, as: 'distance'
          property :fingerprint, as: 'fingerprint', class: Google::Apis::OndemandscanningV1beta1::Fingerprint, decorator: Google::Apis::OndemandscanningV1beta1::Fingerprint::Representation
      
          collection :layer_info, as: 'layerInfo', class: Google::Apis::OndemandscanningV1beta1::Layer, decorator: Google::Apis::OndemandscanningV1beta1::Layer::Representation
      
        end
      end
      
      class InTotoProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder_config, as: 'builderConfig', class: Google::Apis::OndemandscanningV1beta1::BuilderConfig, decorator: Google::Apis::OndemandscanningV1beta1::BuilderConfig::Representation
      
          collection :materials, as: 'materials'
          property :metadata, as: 'metadata', class: Google::Apis::OndemandscanningV1beta1::Metadata, decorator: Google::Apis::OndemandscanningV1beta1::Metadata::Representation
      
          property :recipe, as: 'recipe', class: Google::Apis::OndemandscanningV1beta1::Recipe, decorator: Google::Apis::OndemandscanningV1beta1::Recipe::Representation
      
        end
      end
      
      class InTotoStatement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :_type, as: '_type'
          property :predicate_type, as: 'predicateType'
          property :provenance, as: 'provenance', class: Google::Apis::OndemandscanningV1beta1::InTotoProvenance, decorator: Google::Apis::OndemandscanningV1beta1::InTotoProvenance::Representation
      
          property :slsa_provenance, as: 'slsaProvenance', class: Google::Apis::OndemandscanningV1beta1::SlsaProvenance, decorator: Google::Apis::OndemandscanningV1beta1::SlsaProvenance::Representation
      
          collection :subject, as: 'subject', class: Google::Apis::OndemandscanningV1beta1::Subject, decorator: Google::Apis::OndemandscanningV1beta1::Subject::Representation
      
        end
      end
      
      class Jwt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compact_jwt, as: 'compactJwt'
        end
      end
      
      class Layer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arguments, as: 'arguments'
          property :directive, as: 'directive'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::OndemandscanningV1beta1::Operation, decorator: Google::Apis::OndemandscanningV1beta1::Operation::Representation
      
        end
      end
      
      class ListVulnerabilitiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :occurrences, as: 'occurrences', class: Google::Apis::OndemandscanningV1beta1::Occurrence, decorator: Google::Apis::OndemandscanningV1beta1::Occurrence::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :path, as: 'path'
          property :version, as: 'version', class: Google::Apis::OndemandscanningV1beta1::Version, decorator: Google::Apis::OndemandscanningV1beta1::Version::Representation
      
        end
      end
      
      class Material
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :digest, as: 'digest'
          property :uri, as: 'uri'
        end
      end
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_finished_on, as: 'buildFinishedOn'
          property :build_invocation_id, as: 'buildInvocationId'
          property :build_started_on, as: 'buildStartedOn'
          property :completeness, as: 'completeness', class: Google::Apis::OndemandscanningV1beta1::Completeness, decorator: Google::Apis::OndemandscanningV1beta1::Completeness::Representation
      
          property :reproducible, as: 'reproducible'
        end
      end
      
      class NonCompliantFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_command, as: 'displayCommand'
          property :path, as: 'path'
          property :reason, as: 'reason'
        end
      end
      
      class Occurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::OndemandscanningV1beta1::AttestationOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::AttestationOccurrence::Representation
      
          property :build, as: 'build', class: Google::Apis::OndemandscanningV1beta1::BuildOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::BuildOccurrence::Representation
      
          property :compliance, as: 'compliance', class: Google::Apis::OndemandscanningV1beta1::ComplianceOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::ComplianceOccurrence::Representation
      
          property :create_time, as: 'createTime'
          property :deployment, as: 'deployment', class: Google::Apis::OndemandscanningV1beta1::DeploymentOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::DeploymentOccurrence::Representation
      
          property :discovery, as: 'discovery', class: Google::Apis::OndemandscanningV1beta1::DiscoveryOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::DiscoveryOccurrence::Representation
      
          property :dsse_attestation, as: 'dsseAttestation', class: Google::Apis::OndemandscanningV1beta1::DsseAttestationOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::DsseAttestationOccurrence::Representation
      
          property :envelope, as: 'envelope', class: Google::Apis::OndemandscanningV1beta1::Envelope, decorator: Google::Apis::OndemandscanningV1beta1::Envelope::Representation
      
          property :image, as: 'image', class: Google::Apis::OndemandscanningV1beta1::ImageOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::ImageOccurrence::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :note_name, as: 'noteName'
          property :package, as: 'package', class: Google::Apis::OndemandscanningV1beta1::PackageOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::PackageOccurrence::Representation
      
          property :remediation, as: 'remediation'
          property :resource_uri, as: 'resourceUri'
          property :update_time, as: 'updateTime'
          property :upgrade, as: 'upgrade', class: Google::Apis::OndemandscanningV1beta1::UpgradeOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::UpgradeOccurrence::Representation
      
          property :vulnerability, as: 'vulnerability', class: Google::Apis::OndemandscanningV1beta1::VulnerabilityOccurrence, decorator: Google::Apis::OndemandscanningV1beta1::VulnerabilityOccurrence::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::OndemandscanningV1beta1::Status, decorator: Google::Apis::OndemandscanningV1beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PackageData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :os, as: 'os'
          property :os_version, as: 'osVersion'
          property :package, as: 'package'
          property :package_type, as: 'packageType'
          property :unused, as: 'unused'
          property :version, as: 'version'
        end
      end
      
      class PackageIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affected_cpe_uri, as: 'affectedCpeUri'
          property :affected_package, as: 'affectedPackage'
          property :affected_version, as: 'affectedVersion', class: Google::Apis::OndemandscanningV1beta1::Version, decorator: Google::Apis::OndemandscanningV1beta1::Version::Representation
      
          property :effective_severity, as: 'effectiveSeverity'
          property :fix_available, as: 'fixAvailable'
          property :fixed_cpe_uri, as: 'fixedCpeUri'
          property :fixed_package, as: 'fixedPackage'
          property :fixed_version, as: 'fixedVersion', class: Google::Apis::OndemandscanningV1beta1::Version, decorator: Google::Apis::OndemandscanningV1beta1::Version::Representation
      
          property :package_type, as: 'packageType'
        end
      end
      
      class PackageOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :location, as: 'location', class: Google::Apis::OndemandscanningV1beta1::Location, decorator: Google::Apis::OndemandscanningV1beta1::Location::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ProjectRepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
        end
      end
      
      class Recipe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :arguments, as: 'arguments'
          property :defined_in_material, :numeric_string => true, as: 'definedInMaterial'
          property :entry_point, as: 'entryPoint'
          collection :environment, as: 'environment'
          property :type, as: 'type'
        end
      end
      
      class RelatedUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :url, as: 'url'
        end
      end
      
      class RepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_repo_id, as: 'projectRepoId', class: Google::Apis::OndemandscanningV1beta1::ProjectRepoId, decorator: Google::Apis::OndemandscanningV1beta1::ProjectRepoId::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class Signature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key_id, as: 'publicKeyId'
          property :signature, :base64 => true, as: 'signature'
        end
      end
      
      class SlsaBuilder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class SlsaCompleteness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arguments, as: 'arguments'
          property :environment, as: 'environment'
          property :materials, as: 'materials'
        end
      end
      
      class SlsaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_finished_on, as: 'buildFinishedOn'
          property :build_invocation_id, as: 'buildInvocationId'
          property :build_started_on, as: 'buildStartedOn'
          property :completeness, as: 'completeness', class: Google::Apis::OndemandscanningV1beta1::SlsaCompleteness, decorator: Google::Apis::OndemandscanningV1beta1::SlsaCompleteness::Representation
      
          property :reproducible, as: 'reproducible'
        end
      end
      
      class SlsaProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder, as: 'builder', class: Google::Apis::OndemandscanningV1beta1::SlsaBuilder, decorator: Google::Apis::OndemandscanningV1beta1::SlsaBuilder::Representation
      
          collection :materials, as: 'materials', class: Google::Apis::OndemandscanningV1beta1::Material, decorator: Google::Apis::OndemandscanningV1beta1::Material::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::OndemandscanningV1beta1::SlsaMetadata, decorator: Google::Apis::OndemandscanningV1beta1::SlsaMetadata::Representation
      
          property :recipe, as: 'recipe', class: Google::Apis::OndemandscanningV1beta1::SlsaRecipe, decorator: Google::Apis::OndemandscanningV1beta1::SlsaRecipe::Representation
      
        end
      end
      
      class SlsaRecipe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :arguments, as: 'arguments'
          property :defined_in_material, :numeric_string => true, as: 'definedInMaterial'
          property :entry_point, as: 'entryPoint'
          hash :environment, as: 'environment'
          property :type, as: 'type'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_contexts, as: 'additionalContexts', class: Google::Apis::OndemandscanningV1beta1::SourceContext, decorator: Google::Apis::OndemandscanningV1beta1::SourceContext::Representation
      
          property :artifact_storage_source_uri, as: 'artifactStorageSourceUri'
          property :context, as: 'context', class: Google::Apis::OndemandscanningV1beta1::SourceContext, decorator: Google::Apis::OndemandscanningV1beta1::SourceContext::Representation
      
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::OndemandscanningV1beta1::FileHashes, decorator: Google::Apis::OndemandscanningV1beta1::FileHashes::Representation
      
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_repo, as: 'cloudRepo', class: Google::Apis::OndemandscanningV1beta1::CloudRepoSourceContext, decorator: Google::Apis::OndemandscanningV1beta1::CloudRepoSourceContext::Representation
      
          property :gerrit, as: 'gerrit', class: Google::Apis::OndemandscanningV1beta1::GerritSourceContext, decorator: Google::Apis::OndemandscanningV1beta1::GerritSourceContext::Representation
      
          property :git, as: 'git', class: Google::Apis::OndemandscanningV1beta1::GitSourceContext, decorator: Google::Apis::OndemandscanningV1beta1::GitSourceContext::Representation
      
          hash :labels, as: 'labels'
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
      
      class Subject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :digest, as: 'digest'
          property :name, as: 'name'
        end
      end
      
      class UpgradeDistribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :classification, as: 'classification'
          property :cpe_uri, as: 'cpeUri'
          collection :cve, as: 'cve'
          property :severity, as: 'severity'
        end
      end
      
      class UpgradeOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distribution, as: 'distribution', class: Google::Apis::OndemandscanningV1beta1::UpgradeDistribution, decorator: Google::Apis::OndemandscanningV1beta1::UpgradeDistribution::Representation
      
          property :package, as: 'package'
          property :parsed_version, as: 'parsedVersion', class: Google::Apis::OndemandscanningV1beta1::Version, decorator: Google::Apis::OndemandscanningV1beta1::Version::Representation
      
          property :windows_update, as: 'windowsUpdate', class: Google::Apis::OndemandscanningV1beta1::WindowsUpdate, decorator: Google::Apis::OndemandscanningV1beta1::WindowsUpdate::Representation
      
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :epoch, as: 'epoch'
          property :full_name, as: 'fullName'
          property :inclusive, as: 'inclusive'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :revision, as: 'revision'
        end
      end
      
      class VulnerabilityOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score, as: 'cvssScore'
          property :effective_severity, as: 'effectiveSeverity'
          property :fix_available, as: 'fixAvailable'
          property :long_description, as: 'longDescription'
          collection :package_issue, as: 'packageIssue', class: Google::Apis::OndemandscanningV1beta1::PackageIssue, decorator: Google::Apis::OndemandscanningV1beta1::PackageIssue::Representation
      
          collection :related_urls, as: 'relatedUrls', class: Google::Apis::OndemandscanningV1beta1::RelatedUrl, decorator: Google::Apis::OndemandscanningV1beta1::RelatedUrl::Representation
      
          property :severity, as: 'severity'
          property :short_description, as: 'shortDescription'
          property :type, as: 'type'
        end
      end
      
      class WindowsUpdate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :categories, as: 'categories', class: Google::Apis::OndemandscanningV1beta1::Category, decorator: Google::Apis::OndemandscanningV1beta1::Category::Representation
      
          property :description, as: 'description'
          property :identity, as: 'identity', class: Google::Apis::OndemandscanningV1beta1::Identity, decorator: Google::Apis::OndemandscanningV1beta1::Identity::Representation
      
          collection :kb_article_ids, as: 'kbArticleIds'
          property :last_published_timestamp, as: 'lastPublishedTimestamp'
          property :support_url, as: 'supportUrl'
          property :title, as: 'title'
        end
      end
    end
  end
end
