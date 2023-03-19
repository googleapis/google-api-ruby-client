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
    module ContaineranalysisV1beta1
      
      class AliasContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalysisCompleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Artifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ArtifactRule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Assessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Attestation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Authority
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Basis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateNotesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateNotesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateOccurrencesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateOccurrencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ByProducts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cvss
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CvsSv3
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
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Results
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deployment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Derived
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Detail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Details
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Digest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Discovered
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Discovery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DocumentOccurrence
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
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExternalRef
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fingerprint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixableTotalByDigest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenericSignedAttestation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GerritSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GitSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1BuildDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1DeploymentDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1DiscoveryDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1ImageDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1IntotoArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1IntotoDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1IntotoSignature
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1PackageDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GrafeasV1beta1VulnerabilityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Hint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InToto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Installation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Justification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KnowledgeBase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Layer
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class License
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Link
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNoteOccurrencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListNotesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOccurrencesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Note
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Occurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Package
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageInfoNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageInfoOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PgpSignedAttestation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Product
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProjectRepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publisher
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelatedUrl
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelationshipNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RelationshipOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Remediation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
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
      
      class SigningKey
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
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Version
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VexAssessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Vulnerability
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityAssessmentNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityOccurrencesSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WindowsDetail
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
      
      class AnalysisCompleted
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :analysis_type, as: 'analysisType'
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
      
      class ArtifactHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256, as: 'sha256'
        end
      end
      
      class ArtifactRule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :artifact_rule, as: 'artifactRule'
        end
      end
      
      class Assessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve'
          collection :impacts, as: 'impacts'
          property :justification, as: 'justification', class: Google::Apis::ContaineranalysisV1beta1::Justification, decorator: Google::Apis::ContaineranalysisV1beta1::Justification::Representation
      
          property :long_description, as: 'longDescription'
          collection :related_uris, as: 'relatedUris', class: Google::Apis::ContaineranalysisV1beta1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1beta1::RelatedUrl::Representation
      
          collection :remediations, as: 'remediations', class: Google::Apis::ContaineranalysisV1beta1::Remediation, decorator: Google::Apis::ContaineranalysisV1beta1::Remediation::Representation
      
          property :short_description, as: 'shortDescription'
          property :state, as: 'state'
        end
      end
      
      class Attestation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_signed_attestation, as: 'genericSignedAttestation', class: Google::Apis::ContaineranalysisV1beta1::GenericSignedAttestation, decorator: Google::Apis::ContaineranalysisV1beta1::GenericSignedAttestation::Representation
      
          property :pgp_signed_attestation, as: 'pgpSignedAttestation', class: Google::Apis::ContaineranalysisV1beta1::PgpSignedAttestation, decorator: Google::Apis::ContaineranalysisV1beta1::PgpSignedAttestation::Representation
      
        end
      end
      
      class Authority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hint, as: 'hint', class: Google::Apis::ContaineranalysisV1beta1::Hint, decorator: Google::Apis::ContaineranalysisV1beta1::Hint::Representation
      
        end
      end
      
      class Basis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, as: 'fingerprint', class: Google::Apis::ContaineranalysisV1beta1::Fingerprint, decorator: Google::Apis::ContaineranalysisV1beta1::Fingerprint::Representation
      
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class BatchCreateNotesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :notes, as: 'notes', class: Google::Apis::ContaineranalysisV1beta1::Note, decorator: Google::Apis::ContaineranalysisV1beta1::Note::Representation
      
        end
      end
      
      class BatchCreateNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :notes, as: 'notes', class: Google::Apis::ContaineranalysisV1beta1::Note, decorator: Google::Apis::ContaineranalysisV1beta1::Note::Representation
      
        end
      end
      
      class BatchCreateOccurrencesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1beta1::Occurrence, decorator: Google::Apis::ContaineranalysisV1beta1::Occurrence::Representation
      
        end
      end
      
      class BatchCreateOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1beta1::Occurrence, decorator: Google::Apis::ContaineranalysisV1beta1::Occurrence::Representation
      
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ContaineranalysisV1beta1::Expr, decorator: Google::Apis::ContaineranalysisV1beta1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder_version, as: 'builderVersion'
          property :signature, as: 'signature', class: Google::Apis::ContaineranalysisV1beta1::BuildSignature, decorator: Google::Apis::ContaineranalysisV1beta1::BuildSignature::Representation
      
        end
      end
      
      class BuildProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :build_options, as: 'buildOptions'
          property :builder_version, as: 'builderVersion'
          collection :built_artifacts, as: 'builtArtifacts', class: Google::Apis::ContaineranalysisV1beta1::Artifact, decorator: Google::Apis::ContaineranalysisV1beta1::Artifact::Representation
      
          collection :commands, as: 'commands', class: Google::Apis::ContaineranalysisV1beta1::Command, decorator: Google::Apis::ContaineranalysisV1beta1::Command::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :end_time, as: 'endTime'
          property :id, as: 'id'
          property :logs_uri, as: 'logsUri'
          property :project_id, as: 'projectId'
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::ContaineranalysisV1beta1::Source, decorator: Google::Apis::ContaineranalysisV1beta1::Source::Representation
      
          property :start_time, as: 'startTime'
          property :trigger_id, as: 'triggerId'
        end
      end
      
      class BuildSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :key_type, as: 'keyType'
          property :public_key, as: 'publicKey'
          property :signature, :base64 => true, as: 'signature'
        end
      end
      
      class BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_exit_codes, as: 'allowExitCodes'
          property :allow_failure, as: 'allowFailure'
          collection :args, as: 'args'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :exit_code, as: 'exitCode'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::ContaineranalysisV1beta1::TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1beta1::TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::ContaineranalysisV1beta1::Volume, decorator: Google::Apis::ContaineranalysisV1beta1::Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class ByProducts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_values, as: 'customValues'
        end
      end
      
      class Cvss
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_complexity, as: 'attackComplexity'
          property :attack_vector, as: 'attackVector'
          property :authentication, as: 'authentication'
          property :availability_impact, as: 'availabilityImpact'
          property :base_score, as: 'baseScore'
          property :confidentiality_impact, as: 'confidentialityImpact'
          property :exploitability_score, as: 'exploitabilityScore'
          property :impact_score, as: 'impactScore'
          property :integrity_impact, as: 'integrityImpact'
          property :privileges_required, as: 'privilegesRequired'
          property :scope, as: 'scope'
          property :user_interaction, as: 'userInteraction'
        end
      end
      
      class CvsSv3
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attack_complexity, as: 'attackComplexity'
          property :attack_vector, as: 'attackVector'
          property :availability_impact, as: 'availabilityImpact'
          property :base_score, as: 'baseScore'
          property :confidentiality_impact, as: 'confidentialityImpact'
          property :exploitability_score, as: 'exploitabilityScore'
          property :impact_score, as: 'impactScore'
          property :integrity_impact, as: 'integrityImpact'
          property :privileges_required, as: 'privilegesRequired'
          property :scope, as: 'scope'
          property :user_interaction, as: 'userInteraction'
        end
      end
      
      class CloudRepoSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::ContaineranalysisV1beta1::AliasContext, decorator: Google::Apis::ContaineranalysisV1beta1::AliasContext::Representation
      
          property :repo_id, as: 'repoId', class: Google::Apis::ContaineranalysisV1beta1::RepoId, decorator: Google::Apis::ContaineranalysisV1beta1::RepoId::Representation
      
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
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_required, as: 'approvalRequired'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_time, as: 'approvalTime'
          property :approver_account, as: 'approverAccount'
          property :comment, as: 'comment'
          property :decision, as: 'decision'
          property :url, as: 'url'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :images, as: 'images'
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact::Representation
      
          property :objects, as: 'objects', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects::Representation
      
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          collection :paths, as: 'paths'
          property :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :group_id, as: 'groupId'
          property :path, as: 'path'
          property :repository, as: 'repository'
          property :version, as: 'version'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
          property :repository, as: 'repository'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval, as: 'approval', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval::Representation
      
          property :artifacts, as: 'artifacts', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts::Representation
      
          property :available_secrets, as: 'availableSecrets', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :create_time, as: 'createTime'
          property :failure_info, as: 'failureInfo', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo::Representation
      
          property :finish_time, as: 'finishTime'
          property :id, as: 'id'
          collection :images, as: 'images'
          property :log_url, as: 'logUrl'
          property :logs_bucket, as: 'logsBucket'
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions::Representation
      
          property :project_id, as: 'projectId'
          property :queue_ttl, as: 'queueTtl'
          property :results, as: 'results', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Results, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Results::Representation
      
          collection :secrets, as: 'secrets', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secret, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secret::Representation
      
          property :service_account, as: 'serviceAccount'
          property :source, as: 'source', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Source, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Source::Representation
      
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_detail, as: 'statusDetail'
          collection :steps, as: 'steps', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep::Representation
      
          hash :substitutions, as: 'substitutions'
          collection :tags, as: 'tags'
          property :timeout, as: 'timeout'
          hash :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig::Representation
      
          property :result, as: 'result', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult::Representation
      
          property :state, as: 'state'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :type, as: 'type'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_logs_bucket_behavior, as: 'defaultLogsBucketBehavior'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :dynamic_substitutions, as: 'dynamicSubstitutions'
          collection :env, as: 'env'
          property :log_streaming_option, as: 'logStreamingOption'
          property :logging, as: 'logging'
          property :machine_type, as: 'machineType'
          property :pool, as: 'pool', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption::Representation
      
          property :requested_verify_option, as: 'requestedVerifyOption'
          collection :secret_env, as: 'secretEnv'
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
          property :substitution_option, as: 'substitutionOption'
          collection :volumes, as: 'volumes', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume::Representation
      
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_exit_codes, as: 'allowExitCodes'
          property :allow_failure, as: 'allowFailure'
          collection :args, as: 'args'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :exit_code, as: 'exitCode'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
          property :text, as: 'text'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :name, as: 'name'
          property :push_timing, as: 'pushTiming', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Hash, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1Hash::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Hash
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :env_map, as: 'envMap'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
          property :dir, as: 'dir'
          property :invert_regex, as: 'invertRegex'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          hash :substitutions, as: 'substitutions'
          property :tag_name, as: 'tagName'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Results
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_manifest, as: 'artifactManifest'
          property :artifact_timing, as: 'artifactTiming', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :build_step_images, as: 'buildStepImages'
          collection :build_step_outputs, as: 'buildStepOutputs'
          collection :images, as: 'images', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage::Representation
      
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact::Representation
      
          property :num_artifacts, :numeric_string => true, as: 'numArtifacts'
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          hash :secret_env, as: 'secretEnv'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :env, as: 'env'
          property :version_name, as: 'versionName'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inline, as: 'inline', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret::Representation
      
          collection :secret_manager, as: 'secretManager', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repo_source, as: 'repoSource', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :storage_source_manifest, as: 'storageSourceManifest', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :resolved_storage_source_manifest, as: 'resolvedStorageSourceManifest', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1beta1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class Deployable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :resource_uri, as: 'resourceUri'
        end
      end
      
      class Deployment
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
      
      class Derived
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_resource_url, as: 'baseResourceUrl'
          property :distance, as: 'distance'
          property :fingerprint, as: 'fingerprint', class: Google::Apis::ContaineranalysisV1beta1::Fingerprint, decorator: Google::Apis::ContaineranalysisV1beta1::Fingerprint::Representation
      
          collection :layer_info, as: 'layerInfo', class: Google::Apis::ContaineranalysisV1beta1::Layer, decorator: Google::Apis::ContaineranalysisV1beta1::Layer::Representation
      
        end
      end
      
      class Detail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          property :fixed_location, as: 'fixedLocation', class: Google::Apis::ContaineranalysisV1beta1::VulnerabilityLocation, decorator: Google::Apis::ContaineranalysisV1beta1::VulnerabilityLocation::Representation
      
          property :is_obsolete, as: 'isObsolete'
          property :max_affected_version, as: 'maxAffectedVersion', class: Google::Apis::ContaineranalysisV1beta1::Version, decorator: Google::Apis::ContaineranalysisV1beta1::Version::Representation
      
          property :min_affected_version, as: 'minAffectedVersion', class: Google::Apis::ContaineranalysisV1beta1::Version, decorator: Google::Apis::ContaineranalysisV1beta1::Version::Representation
      
          property :package, as: 'package'
          property :package_type, as: 'packageType'
          property :severity_name, as: 'severityName'
          property :source, as: 'source'
          property :source_update_time, as: 'sourceUpdateTime'
          property :vendor, as: 'vendor'
        end
      end
      
      class Details
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::ContaineranalysisV1beta1::Attestation, decorator: Google::Apis::ContaineranalysisV1beta1::Attestation::Representation
      
        end
      end
      
      class Digest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :algo, as: 'algo'
          property :digest_bytes, :base64 => true, as: 'digestBytes'
        end
      end
      
      class Discovered
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_completed, as: 'analysisCompleted', class: Google::Apis::ContaineranalysisV1beta1::AnalysisCompleted, decorator: Google::Apis::ContaineranalysisV1beta1::AnalysisCompleted::Representation
      
          collection :analysis_error, as: 'analysisError', class: Google::Apis::ContaineranalysisV1beta1::Status, decorator: Google::Apis::ContaineranalysisV1beta1::Status::Representation
      
          property :analysis_status, as: 'analysisStatus'
          property :analysis_status_error, as: 'analysisStatusError', class: Google::Apis::ContaineranalysisV1beta1::Status, decorator: Google::Apis::ContaineranalysisV1beta1::Status::Representation
      
          property :continuous_analysis, as: 'continuousAnalysis'
          property :last_analysis_time, as: 'lastAnalysisTime'
        end
      end
      
      class Discovery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analysis_kind, as: 'analysisKind'
        end
      end
      
      class Distribution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          property :latest_version, as: 'latestVersion', class: Google::Apis::ContaineranalysisV1beta1::Version, decorator: Google::Apis::ContaineranalysisV1beta1::Version::Representation
      
          property :maintainer, as: 'maintainer'
          property :url, as: 'url'
        end
      end
      
      class DocumentNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_licence, as: 'dataLicence'
          property :spdx_version, as: 'spdxVersion'
        end
      end
      
      class DocumentOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :creator_comment, as: 'creatorComment'
          collection :creators, as: 'creators'
          property :document_comment, as: 'documentComment'
          collection :external_document_refs, as: 'externalDocumentRefs'
          property :id, as: 'id'
          property :license_list_version, as: 'licenseListVersion'
          property :namespace, as: 'namespace'
          property :title, as: 'title'
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
          collection :signatures, as: 'signatures', class: Google::Apis::ContaineranalysisV1beta1::EnvelopeSignature, decorator: Google::Apis::ContaineranalysisV1beta1::EnvelopeSignature::Representation
      
        end
      end
      
      class EnvelopeSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyid, as: 'keyid'
          property :sig, :base64 => true, as: 'sig'
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :custom_values, as: 'customValues'
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
      
      class ExternalRef
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :category, as: 'category'
          property :comment, as: 'comment'
          property :locator, as: 'locator'
          property :type, as: 'type'
        end
      end
      
      class FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::ContaineranalysisV1beta1::HashProp, decorator: Google::Apis::ContaineranalysisV1beta1::HashProp::Representation
      
        end
      end
      
      class FileNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :checksum, as: 'checksum'
          property :file_type, as: 'fileType'
          property :title, as: 'title'
        end
      end
      
      class FileOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :attributions, as: 'attributions'
          property :comment, as: 'comment'
          collection :contributors, as: 'contributors'
          property :copyright, as: 'copyright'
          collection :files_license_info, as: 'filesLicenseInfo'
          property :id, as: 'id'
          property :license_concluded, as: 'licenseConcluded', class: Google::Apis::ContaineranalysisV1beta1::License, decorator: Google::Apis::ContaineranalysisV1beta1::License::Representation
      
          property :notice, as: 'notice'
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
      
      class FixableTotalByDigest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixable_count, :numeric_string => true, as: 'fixableCount'
          property :resource, as: 'resource', class: Google::Apis::ContaineranalysisV1beta1::Resource, decorator: Google::Apis::ContaineranalysisV1beta1::Resource::Representation
      
          property :severity, as: 'severity'
          property :total_count, :numeric_string => true, as: 'totalCount'
        end
      end
      
      class GenericSignedAttestation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :serialized_payload, :base64 => true, as: 'serializedPayload'
          collection :signatures, as: 'signatures', class: Google::Apis::ContaineranalysisV1beta1::Signature, decorator: Google::Apis::ContaineranalysisV1beta1::Signature::Representation
      
        end
      end
      
      class GerritSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::ContaineranalysisV1beta1::AliasContext, decorator: Google::Apis::ContaineranalysisV1beta1::AliasContext::Representation
      
          property :gerrit_project, as: 'gerritProject'
          property :host_uri, as: 'hostUri'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::ContaineranalysisV1beta1::GetPolicyOptions, decorator: Google::Apis::ContaineranalysisV1beta1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GitSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision_id, as: 'revisionId'
          property :url, as: 'url'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
        end
      end
      
      class GrafeasV1beta1BuildDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :provenance, as: 'provenance', class: Google::Apis::ContaineranalysisV1beta1::BuildProvenance, decorator: Google::Apis::ContaineranalysisV1beta1::BuildProvenance::Representation
      
          property :provenance_bytes, as: 'provenanceBytes'
        end
      end
      
      class GrafeasV1beta1DeploymentDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment, as: 'deployment', class: Google::Apis::ContaineranalysisV1beta1::Deployment, decorator: Google::Apis::ContaineranalysisV1beta1::Deployment::Representation
      
        end
      end
      
      class GrafeasV1beta1DiscoveryDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :discovered, as: 'discovered', class: Google::Apis::ContaineranalysisV1beta1::Discovered, decorator: Google::Apis::ContaineranalysisV1beta1::Discovered::Representation
      
        end
      end
      
      class GrafeasV1beta1ImageDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :derived_image, as: 'derivedImage', class: Google::Apis::ContaineranalysisV1beta1::Derived, decorator: Google::Apis::ContaineranalysisV1beta1::Derived::Representation
      
        end
      end
      
      class GrafeasV1beta1IntotoArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hashes, as: 'hashes', class: Google::Apis::ContaineranalysisV1beta1::ArtifactHashes, decorator: Google::Apis::ContaineranalysisV1beta1::ArtifactHashes::Representation
      
          property :resource_uri, as: 'resourceUri'
        end
      end
      
      class GrafeasV1beta1IntotoDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :signatures, as: 'signatures', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoSignature, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoSignature::Representation
      
          property :signed, as: 'signed', class: Google::Apis::ContaineranalysisV1beta1::Link, decorator: Google::Apis::ContaineranalysisV1beta1::Link::Representation
      
        end
      end
      
      class GrafeasV1beta1IntotoSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyid, as: 'keyid'
          property :sig, as: 'sig'
        end
      end
      
      class GrafeasV1beta1PackageDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :installation, as: 'installation', class: Google::Apis::ContaineranalysisV1beta1::Installation, decorator: Google::Apis::ContaineranalysisV1beta1::Installation::Representation
      
        end
      end
      
      class GrafeasV1beta1VulnerabilityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score, as: 'cvssScore'
          property :cvss_v2, as: 'cvssV2', class: Google::Apis::ContaineranalysisV1beta1::Cvss, decorator: Google::Apis::ContaineranalysisV1beta1::Cvss::Representation
      
          property :cvss_v3, as: 'cvssV3', class: Google::Apis::ContaineranalysisV1beta1::Cvss, decorator: Google::Apis::ContaineranalysisV1beta1::Cvss::Representation
      
          property :cvss_version, as: 'cvssVersion'
          property :effective_severity, as: 'effectiveSeverity'
          property :long_description, as: 'longDescription'
          collection :package_issue, as: 'packageIssue', class: Google::Apis::ContaineranalysisV1beta1::PackageIssue, decorator: Google::Apis::ContaineranalysisV1beta1::PackageIssue::Representation
      
          collection :related_urls, as: 'relatedUrls', class: Google::Apis::ContaineranalysisV1beta1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1beta1::RelatedUrl::Representation
      
          property :severity, as: 'severity'
          property :short_description, as: 'shortDescription'
          property :type, as: 'type'
          property :vex_assessment, as: 'vexAssessment', class: Google::Apis::ContaineranalysisV1beta1::VexAssessment, decorator: Google::Apis::ContaineranalysisV1beta1::VexAssessment::Representation
      
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class Hint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_readable_name, as: 'humanReadableName'
        end
      end
      
      class InToto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expected_command, as: 'expectedCommand'
          collection :expected_materials, as: 'expectedMaterials', class: Google::Apis::ContaineranalysisV1beta1::ArtifactRule, decorator: Google::Apis::ContaineranalysisV1beta1::ArtifactRule::Representation
      
          collection :expected_products, as: 'expectedProducts', class: Google::Apis::ContaineranalysisV1beta1::ArtifactRule, decorator: Google::Apis::ContaineranalysisV1beta1::ArtifactRule::Representation
      
          collection :signing_keys, as: 'signingKeys', class: Google::Apis::ContaineranalysisV1beta1::SigningKey, decorator: Google::Apis::ContaineranalysisV1beta1::SigningKey::Representation
      
          property :step_name, as: 'stepName'
          property :threshold, :numeric_string => true, as: 'threshold'
        end
      end
      
      class Installation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :cpe_uri, as: 'cpeUri'
          property :license, as: 'license', class: Google::Apis::ContaineranalysisV1beta1::License, decorator: Google::Apis::ContaineranalysisV1beta1::License::Representation
      
          collection :location, as: 'location', class: Google::Apis::ContaineranalysisV1beta1::Location, decorator: Google::Apis::ContaineranalysisV1beta1::Location::Representation
      
          property :name, as: 'name'
          property :package_type, as: 'packageType'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1beta1::Version, decorator: Google::Apis::ContaineranalysisV1beta1::Version::Representation
      
        end
      end
      
      class Justification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :justification_type, as: 'justificationType'
        end
      end
      
      class KnowledgeBase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class Layer
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :arguments, as: 'arguments'
          property :directive, as: 'directive'
        end
      end
      
      class License
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comments, as: 'comments'
          property :expression, as: 'expression'
        end
      end
      
      class Link
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :byproducts, as: 'byproducts', class: Google::Apis::ContaineranalysisV1beta1::ByProducts, decorator: Google::Apis::ContaineranalysisV1beta1::ByProducts::Representation
      
          collection :command, as: 'command'
          property :environment, as: 'environment', class: Google::Apis::ContaineranalysisV1beta1::Environment, decorator: Google::Apis::ContaineranalysisV1beta1::Environment::Representation
      
          collection :materials, as: 'materials', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoArtifact, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoArtifact::Representation
      
          collection :products, as: 'products', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoArtifact, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoArtifact::Representation
      
        end
      end
      
      class ListNoteOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1beta1::Occurrence, decorator: Google::Apis::ContaineranalysisV1beta1::Occurrence::Representation
      
        end
      end
      
      class ListNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notes, as: 'notes', class: Google::Apis::ContaineranalysisV1beta1::Note, decorator: Google::Apis::ContaineranalysisV1beta1::Note::Representation
      
        end
      end
      
      class ListOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1beta1::Occurrence, decorator: Google::Apis::ContaineranalysisV1beta1::Occurrence::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :path, as: 'path'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1beta1::Version, decorator: Google::Apis::ContaineranalysisV1beta1::Version::Representation
      
        end
      end
      
      class Note
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_authority, as: 'attestationAuthority', class: Google::Apis::ContaineranalysisV1beta1::Authority, decorator: Google::Apis::ContaineranalysisV1beta1::Authority::Representation
      
          property :base_image, as: 'baseImage', class: Google::Apis::ContaineranalysisV1beta1::Basis, decorator: Google::Apis::ContaineranalysisV1beta1::Basis::Representation
      
          property :build, as: 'build', class: Google::Apis::ContaineranalysisV1beta1::Build, decorator: Google::Apis::ContaineranalysisV1beta1::Build::Representation
      
          property :create_time, as: 'createTime'
          property :deployable, as: 'deployable', class: Google::Apis::ContaineranalysisV1beta1::Deployable, decorator: Google::Apis::ContaineranalysisV1beta1::Deployable::Representation
      
          property :discovery, as: 'discovery', class: Google::Apis::ContaineranalysisV1beta1::Discovery, decorator: Google::Apis::ContaineranalysisV1beta1::Discovery::Representation
      
          property :expiration_time, as: 'expirationTime'
          property :intoto, as: 'intoto', class: Google::Apis::ContaineranalysisV1beta1::InToto, decorator: Google::Apis::ContaineranalysisV1beta1::InToto::Representation
      
          property :kind, as: 'kind'
          property :long_description, as: 'longDescription'
          property :name, as: 'name'
          property :package, as: 'package', class: Google::Apis::ContaineranalysisV1beta1::Package, decorator: Google::Apis::ContaineranalysisV1beta1::Package::Representation
      
          collection :related_note_names, as: 'relatedNoteNames'
          collection :related_url, as: 'relatedUrl', class: Google::Apis::ContaineranalysisV1beta1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1beta1::RelatedUrl::Representation
      
          property :sbom, as: 'sbom', class: Google::Apis::ContaineranalysisV1beta1::DocumentNote, decorator: Google::Apis::ContaineranalysisV1beta1::DocumentNote::Representation
      
          property :short_description, as: 'shortDescription'
          property :spdx_file, as: 'spdxFile', class: Google::Apis::ContaineranalysisV1beta1::FileNote, decorator: Google::Apis::ContaineranalysisV1beta1::FileNote::Representation
      
          property :spdx_package, as: 'spdxPackage', class: Google::Apis::ContaineranalysisV1beta1::PackageInfoNote, decorator: Google::Apis::ContaineranalysisV1beta1::PackageInfoNote::Representation
      
          property :spdx_relationship, as: 'spdxRelationship', class: Google::Apis::ContaineranalysisV1beta1::RelationshipNote, decorator: Google::Apis::ContaineranalysisV1beta1::RelationshipNote::Representation
      
          property :update_time, as: 'updateTime'
          property :vulnerability, as: 'vulnerability', class: Google::Apis::ContaineranalysisV1beta1::Vulnerability, decorator: Google::Apis::ContaineranalysisV1beta1::Vulnerability::Representation
      
          property :vulnerability_assessment, as: 'vulnerabilityAssessment', class: Google::Apis::ContaineranalysisV1beta1::VulnerabilityAssessmentNote, decorator: Google::Apis::ContaineranalysisV1beta1::VulnerabilityAssessmentNote::Representation
      
        end
      end
      
      class Occurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::ContaineranalysisV1beta1::Details, decorator: Google::Apis::ContaineranalysisV1beta1::Details::Representation
      
          property :build, as: 'build', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1BuildDetails, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1BuildDetails::Representation
      
          property :create_time, as: 'createTime'
          property :deployment, as: 'deployment', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1DeploymentDetails, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1DeploymentDetails::Representation
      
          property :derived_image, as: 'derivedImage', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1ImageDetails, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1ImageDetails::Representation
      
          property :discovered, as: 'discovered', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1DiscoveryDetails, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1DiscoveryDetails::Representation
      
          property :envelope, as: 'envelope', class: Google::Apis::ContaineranalysisV1beta1::Envelope, decorator: Google::Apis::ContaineranalysisV1beta1::Envelope::Representation
      
          property :installation, as: 'installation', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1PackageDetails, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1PackageDetails::Representation
      
          property :intoto, as: 'intoto', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoDetails, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1IntotoDetails::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :note_name, as: 'noteName'
          property :remediation, as: 'remediation'
          property :resource, as: 'resource', class: Google::Apis::ContaineranalysisV1beta1::Resource, decorator: Google::Apis::ContaineranalysisV1beta1::Resource::Representation
      
          property :sbom, as: 'sbom', class: Google::Apis::ContaineranalysisV1beta1::DocumentOccurrence, decorator: Google::Apis::ContaineranalysisV1beta1::DocumentOccurrence::Representation
      
          property :spdx_file, as: 'spdxFile', class: Google::Apis::ContaineranalysisV1beta1::FileOccurrence, decorator: Google::Apis::ContaineranalysisV1beta1::FileOccurrence::Representation
      
          property :spdx_package, as: 'spdxPackage', class: Google::Apis::ContaineranalysisV1beta1::PackageInfoOccurrence, decorator: Google::Apis::ContaineranalysisV1beta1::PackageInfoOccurrence::Representation
      
          property :spdx_relationship, as: 'spdxRelationship', class: Google::Apis::ContaineranalysisV1beta1::RelationshipOccurrence, decorator: Google::Apis::ContaineranalysisV1beta1::RelationshipOccurrence::Representation
      
          property :update_time, as: 'updateTime'
          property :vulnerability, as: 'vulnerability', class: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1VulnerabilityDetails, decorator: Google::Apis::ContaineranalysisV1beta1::GrafeasV1beta1VulnerabilityDetails::Representation
      
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          collection :digest, as: 'digest', class: Google::Apis::ContaineranalysisV1beta1::Digest, decorator: Google::Apis::ContaineranalysisV1beta1::Digest::Representation
      
          collection :distribution, as: 'distribution', class: Google::Apis::ContaineranalysisV1beta1::Distribution, decorator: Google::Apis::ContaineranalysisV1beta1::Distribution::Representation
      
          property :license, as: 'license', class: Google::Apis::ContaineranalysisV1beta1::License, decorator: Google::Apis::ContaineranalysisV1beta1::License::Representation
      
          property :maintainer, as: 'maintainer'
          property :name, as: 'name'
          property :package_type, as: 'packageType'
          property :url, as: 'url'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1beta1::Version, decorator: Google::Apis::ContaineranalysisV1beta1::Version::Representation
      
        end
      end
      
      class PackageInfoNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyzed, as: 'analyzed'
          property :attribution, as: 'attribution'
          property :checksum, as: 'checksum'
          property :copyright, as: 'copyright'
          property :detailed_description, as: 'detailedDescription'
          property :download_location, as: 'downloadLocation'
          collection :external_refs, as: 'externalRefs', class: Google::Apis::ContaineranalysisV1beta1::ExternalRef, decorator: Google::Apis::ContaineranalysisV1beta1::ExternalRef::Representation
      
          collection :files_license_info, as: 'filesLicenseInfo'
          property :home_page, as: 'homePage'
          property :license_declared, as: 'licenseDeclared', class: Google::Apis::ContaineranalysisV1beta1::License, decorator: Google::Apis::ContaineranalysisV1beta1::License::Representation
      
          property :originator, as: 'originator'
          property :package_type, as: 'packageType'
          property :summary_description, as: 'summaryDescription'
          property :supplier, as: 'supplier'
          property :title, as: 'title'
          property :verification_code, as: 'verificationCode'
          property :version, as: 'version'
        end
      end
      
      class PackageInfoOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :filename, as: 'filename'
          property :home_page, as: 'homePage'
          property :id, as: 'id'
          property :license_concluded, as: 'licenseConcluded', class: Google::Apis::ContaineranalysisV1beta1::License, decorator: Google::Apis::ContaineranalysisV1beta1::License::Representation
      
          property :package_type, as: 'packageType'
          property :source_info, as: 'sourceInfo'
          property :summary_description, as: 'summaryDescription'
          property :title, as: 'title'
          property :version, as: 'version'
        end
      end
      
      class PackageIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :affected_location, as: 'affectedLocation', class: Google::Apis::ContaineranalysisV1beta1::VulnerabilityLocation, decorator: Google::Apis::ContaineranalysisV1beta1::VulnerabilityLocation::Representation
      
          property :effective_severity, as: 'effectiveSeverity'
          property :fixed_location, as: 'fixedLocation', class: Google::Apis::ContaineranalysisV1beta1::VulnerabilityLocation, decorator: Google::Apis::ContaineranalysisV1beta1::VulnerabilityLocation::Representation
      
          property :package_type, as: 'packageType'
          property :severity_name, as: 'severityName'
        end
      end
      
      class PgpSignedAttestation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_type, as: 'contentType'
          property :pgp_key_id, as: 'pgpKeyId'
          property :signature, as: 'signature'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::ContaineranalysisV1beta1::Binding, decorator: Google::Apis::ContaineranalysisV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class Product
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :generic_uri, as: 'genericUri'
          property :id, as: 'id'
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
      
      class Publisher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issuing_authority, as: 'issuingAuthority'
          property :name, as: 'name'
          property :publisher_namespace, as: 'publisherNamespace'
        end
      end
      
      class RelatedUrl
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :url, as: 'url'
        end
      end
      
      class RelationshipNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
        end
      end
      
      class RelationshipOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :comment, as: 'comment'
          property :source, as: 'source'
          property :target, as: 'target'
          property :type, as: 'type'
        end
      end
      
      class Remediation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :remediation_type, as: 'remediationType'
          property :remediation_uri, as: 'remediationUri', class: Google::Apis::ContaineranalysisV1beta1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1beta1::RelatedUrl::Representation
      
        end
      end
      
      class RepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_repo_id, as: 'projectRepoId', class: Google::Apis::ContaineranalysisV1beta1::ProjectRepoId, decorator: Google::Apis::ContaineranalysisV1beta1::ProjectRepoId::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_hash, as: 'contentHash', class: Google::Apis::ContaineranalysisV1beta1::HashProp, decorator: Google::Apis::ContaineranalysisV1beta1::HashProp::Representation
      
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ContaineranalysisV1beta1::Policy, decorator: Google::Apis::ContaineranalysisV1beta1::Policy::Representation
      
        end
      end
      
      class Signature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :public_key_id, as: 'publicKeyId'
          property :signature, :base64 => true, as: 'signature'
        end
      end
      
      class SigningKey
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :key_scheme, as: 'keyScheme'
          property :key_type, as: 'keyType'
          property :public_key_value, as: 'publicKeyValue'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :additional_contexts, as: 'additionalContexts', class: Google::Apis::ContaineranalysisV1beta1::SourceContext, decorator: Google::Apis::ContaineranalysisV1beta1::SourceContext::Representation
      
          property :artifact_storage_source_uri, as: 'artifactStorageSourceUri'
          property :context, as: 'context', class: Google::Apis::ContaineranalysisV1beta1::SourceContext, decorator: Google::Apis::ContaineranalysisV1beta1::SourceContext::Representation
      
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1beta1::FileHashes, decorator: Google::Apis::ContaineranalysisV1beta1::FileHashes::Representation
      
        end
      end
      
      class SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_repo, as: 'cloudRepo', class: Google::Apis::ContaineranalysisV1beta1::CloudRepoSourceContext, decorator: Google::Apis::ContaineranalysisV1beta1::CloudRepoSourceContext::Representation
      
          property :gerrit, as: 'gerrit', class: Google::Apis::ContaineranalysisV1beta1::GerritSourceContext, decorator: Google::Apis::ContaineranalysisV1beta1::GerritSourceContext::Representation
      
          property :git, as: 'git', class: Google::Apis::ContaineranalysisV1beta1::GitSourceContext, decorator: Google::Apis::ContaineranalysisV1beta1::GitSourceContext::Representation
      
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
      
      class TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class Version
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :epoch, as: 'epoch'
          property :inclusive, as: 'inclusive'
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :revision, as: 'revision'
        end
      end
      
      class VexAssessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve'
          collection :impacts, as: 'impacts'
          property :justification, as: 'justification', class: Google::Apis::ContaineranalysisV1beta1::Justification, decorator: Google::Apis::ContaineranalysisV1beta1::Justification::Representation
      
          property :note_name, as: 'noteName'
          collection :related_uris, as: 'relatedUris', class: Google::Apis::ContaineranalysisV1beta1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1beta1::RelatedUrl::Representation
      
          collection :remediations, as: 'remediations', class: Google::Apis::ContaineranalysisV1beta1::Remediation, decorator: Google::Apis::ContaineranalysisV1beta1::Remediation::Representation
      
          property :state, as: 'state'
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class Vulnerability
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score, as: 'cvssScore'
          property :cvss_v2, as: 'cvssV2', class: Google::Apis::ContaineranalysisV1beta1::Cvss, decorator: Google::Apis::ContaineranalysisV1beta1::Cvss::Representation
      
          property :cvss_v3, as: 'cvssV3', class: Google::Apis::ContaineranalysisV1beta1::CvsSv3, decorator: Google::Apis::ContaineranalysisV1beta1::CvsSv3::Representation
      
          property :cvss_version, as: 'cvssVersion'
          collection :cwe, as: 'cwe'
          collection :details, as: 'details', class: Google::Apis::ContaineranalysisV1beta1::Detail, decorator: Google::Apis::ContaineranalysisV1beta1::Detail::Representation
      
          property :severity, as: 'severity'
          property :source_update_time, as: 'sourceUpdateTime'
          collection :windows_details, as: 'windowsDetails', class: Google::Apis::ContaineranalysisV1beta1::WindowsDetail, decorator: Google::Apis::ContaineranalysisV1beta1::WindowsDetail::Representation
      
        end
      end
      
      class VulnerabilityAssessmentNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assessment, as: 'assessment', class: Google::Apis::ContaineranalysisV1beta1::Assessment, decorator: Google::Apis::ContaineranalysisV1beta1::Assessment::Representation
      
          property :language_code, as: 'languageCode'
          property :long_description, as: 'longDescription'
          property :product, as: 'product', class: Google::Apis::ContaineranalysisV1beta1::Product, decorator: Google::Apis::ContaineranalysisV1beta1::Product::Representation
      
          property :publisher, as: 'publisher', class: Google::Apis::ContaineranalysisV1beta1::Publisher, decorator: Google::Apis::ContaineranalysisV1beta1::Publisher::Representation
      
          property :short_description, as: 'shortDescription'
          property :title, as: 'title'
        end
      end
      
      class VulnerabilityLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :package, as: 'package'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1beta1::Version, decorator: Google::Apis::ContaineranalysisV1beta1::Version::Representation
      
        end
      end
      
      class VulnerabilityOccurrencesSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :counts, as: 'counts', class: Google::Apis::ContaineranalysisV1beta1::FixableTotalByDigest, decorator: Google::Apis::ContaineranalysisV1beta1::FixableTotalByDigest::Representation
      
        end
      end
      
      class WindowsDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          collection :fixing_kbs, as: 'fixingKbs', class: Google::Apis::ContaineranalysisV1beta1::KnowledgeBase, decorator: Google::Apis::ContaineranalysisV1beta1::KnowledgeBase::Representation
      
          property :name, as: 'name'
        end
      end
    end
  end
end
