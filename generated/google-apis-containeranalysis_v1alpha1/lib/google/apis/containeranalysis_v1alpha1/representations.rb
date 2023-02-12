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
    module ContaineranalysisV1alpha1
      
      class AnalysisCompleted
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Artifact
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
      
      class AttestationAuthority
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttestationAuthorityHint
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Basis
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildDetails
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
      
      class BuildType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuilderConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cvss
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CisBenchmark
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
      
      class ComplianceNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComplianceVersion
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
      
      class CreateOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsseAttestationNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsseAttestationOccurrence
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DsseHint
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
      
      class FileLocation
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
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetVulnzOccurrencesSummaryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1AliasContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1RepoId
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SourceContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HashProp
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
      
      class Installation
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
      
      class ListScanConfigsResponse
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
      
      class Note
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
      
      class Publisher
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
      
      class RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScanConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SeverityCount
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
      
      class SlsaProvenanceZeroTwo
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
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Subject
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
      
      class Threat
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Uri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeDistribution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpgradeNote
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
      
      class VexAssessment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityAssessmentNote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VulnerabilityType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
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
          property :name, as: 'name'
          collection :names, as: 'names'
        end
      end
      
      class Assessment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cve, as: 'cve'
          property :long_description, as: 'longDescription'
          collection :related_uris, as: 'relatedUris', class: Google::Apis::ContaineranalysisV1alpha1::Uri, decorator: Google::Apis::ContaineranalysisV1alpha1::Uri::Representation
      
          collection :remediations, as: 'remediations', class: Google::Apis::ContaineranalysisV1alpha1::Remediation, decorator: Google::Apis::ContaineranalysisV1alpha1::Remediation::Representation
      
          property :short_description, as: 'shortDescription'
          property :state, as: 'state'
          collection :threats, as: 'threats', class: Google::Apis::ContaineranalysisV1alpha1::Threat, decorator: Google::Apis::ContaineranalysisV1alpha1::Threat::Representation
      
        end
      end
      
      class Attestation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pgp_signed_attestation, as: 'pgpSignedAttestation', class: Google::Apis::ContaineranalysisV1alpha1::PgpSignedAttestation, decorator: Google::Apis::ContaineranalysisV1alpha1::PgpSignedAttestation::Representation
      
        end
      end
      
      class AttestationAuthority
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hint, as: 'hint', class: Google::Apis::ContaineranalysisV1alpha1::AttestationAuthorityHint, decorator: Google::Apis::ContaineranalysisV1alpha1::AttestationAuthorityHint::Representation
      
        end
      end
      
      class AttestationAuthorityHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_readable_name, as: 'humanReadableName'
        end
      end
      
      class Basis
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fingerprint, as: 'fingerprint', class: Google::Apis::ContaineranalysisV1alpha1::Fingerprint, decorator: Google::Apis::ContaineranalysisV1alpha1::Fingerprint::Representation
      
          property :resource_url, as: 'resourceUrl'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ContaineranalysisV1alpha1::Expr, decorator: Google::Apis::ContaineranalysisV1alpha1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BuildDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intoto_provenance, as: 'intotoProvenance', class: Google::Apis::ContaineranalysisV1alpha1::InTotoProvenance, decorator: Google::Apis::ContaineranalysisV1alpha1::InTotoProvenance::Representation
      
          property :intoto_statement, as: 'intotoStatement', class: Google::Apis::ContaineranalysisV1alpha1::InTotoStatement, decorator: Google::Apis::ContaineranalysisV1alpha1::InTotoStatement::Representation
      
          property :provenance, as: 'provenance', class: Google::Apis::ContaineranalysisV1alpha1::BuildProvenance, decorator: Google::Apis::ContaineranalysisV1alpha1::BuildProvenance::Representation
      
          property :provenance_bytes, as: 'provenanceBytes'
        end
      end
      
      class BuildProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :build_options, as: 'buildOptions'
          property :builder_version, as: 'builderVersion'
          collection :built_artifacts, as: 'builtArtifacts', class: Google::Apis::ContaineranalysisV1alpha1::Artifact, decorator: Google::Apis::ContaineranalysisV1alpha1::Artifact::Representation
      
          collection :commands, as: 'commands', class: Google::Apis::ContaineranalysisV1alpha1::Command, decorator: Google::Apis::ContaineranalysisV1alpha1::Command::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :finish_time, as: 'finishTime'
          property :id, as: 'id'
          property :logs_bucket, as: 'logsBucket'
          property :project_id, as: 'projectId'
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::ContaineranalysisV1alpha1::Source, decorator: Google::Apis::ContaineranalysisV1alpha1::Source::Representation
      
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
          property :signature, as: 'signature'
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
          property :pull_timing, as: 'pullTiming', class: Google::Apis::ContaineranalysisV1alpha1::TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1alpha1::TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::ContaineranalysisV1alpha1::Volume, decorator: Google::Apis::ContaineranalysisV1alpha1::Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class BuildType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder_version, as: 'builderVersion'
          property :signature, as: 'signature', class: Google::Apis::ContaineranalysisV1alpha1::BuildSignature, decorator: Google::Apis::ContaineranalysisV1alpha1::BuildSignature::Representation
      
        end
      end
      
      class BuilderConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
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
      
      class CisBenchmark
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile_level, as: 'profileLevel'
          property :severity, as: 'severity'
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
      
      class ComplianceNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cis_benchmark, as: 'cisBenchmark', class: Google::Apis::ContaineranalysisV1alpha1::CisBenchmark, decorator: Google::Apis::ContaineranalysisV1alpha1::CisBenchmark::Representation
      
          property :description, as: 'description'
          property :rationale, as: 'rationale'
          property :remediation, as: 'remediation'
          property :scan_instructions, :base64 => true, as: 'scanInstructions'
          property :title, as: 'title'
          collection :version, as: 'version', class: Google::Apis::ContaineranalysisV1alpha1::ComplianceVersion, decorator: Google::Apis::ContaineranalysisV1alpha1::ComplianceVersion::Representation
      
        end
      end
      
      class ComplianceOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :non_compliance_reason, as: 'nonComplianceReason'
          collection :non_compliant_files, as: 'nonCompliantFiles', class: Google::Apis::ContaineranalysisV1alpha1::NonCompliantFile, decorator: Google::Apis::ContaineranalysisV1alpha1::NonCompliantFile::Representation
      
        end
      end
      
      class ComplianceVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :benchmark_document, as: 'benchmarkDocument'
          property :cpe_uri, as: 'cpeUri'
          property :version, as: 'version'
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
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsMavenArtifact::Representation
      
          property :objects, as: 'objects', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects::Representation
      
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsPythonPackage::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1ArtifactsArtifactObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          collection :paths, as: 'paths'
          property :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
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
          property :approval, as: 'approval', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval::Representation
      
          property :artifacts, as: 'artifacts', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Artifacts::Representation
      
          property :available_secrets, as: 'availableSecrets', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secrets::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :create_time, as: 'createTime'
          property :failure_info, as: 'failureInfo', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildFailureInfo::Representation
      
          property :finish_time, as: 'finishTime'
          property :id, as: 'id'
          collection :images, as: 'images'
          property :log_url, as: 'logUrl'
          property :logs_bucket, as: 'logsBucket'
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptions::Representation
      
          property :project_id, as: 'projectId'
          property :queue_ttl, as: 'queueTtl'
          property :results, as: 'results', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Results, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Results::Representation
      
          collection :secrets, as: 'secrets', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secret, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Secret::Representation
      
          property :service_account, as: 'serviceAccount'
          property :source, as: 'source', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Source, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Source::Representation
      
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_detail, as: 'statusDetail'
          collection :steps, as: 'steps', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildStep::Representation
      
          hash :substitutions, as: 'substitutions'
          collection :tags, as: 'tags'
          property :timeout, as: 'timeout'
          hash :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildWarning::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1BuildApproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalConfig::Representation
      
          property :result, as: 'result', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1ApprovalResult::Representation
      
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
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :dynamic_substitutions, as: 'dynamicSubstitutions'
          collection :env, as: 'env'
          property :log_streaming_option, as: 'logStreamingOption'
          property :logging, as: 'logging'
          property :machine_type, as: 'machineType'
          property :pool, as: 'pool', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuildOptionsPoolOption::Representation
      
          property :requested_verify_option, as: 'requestedVerifyOption'
          collection :secret_env, as: 'secretEnv'
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
          property :substitution_option, as: 'substitutionOption'
          collection :volumes, as: 'volumes', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume::Representation
      
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
          property :pull_timing, as: 'pullTiming', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Volume::Representation
      
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
          property :push_timing, as: 'pushTiming', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Hash, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1Hash::Representation
      
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
          property :artifact_timing, as: 'artifactTiming', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :build_step_images, as: 'buildStepImages'
          collection :build_step_outputs, as: 'buildStepOutputs'
          collection :images, as: 'images', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1BuiltImage::Representation
      
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedMavenArtifact::Representation
      
          property :num_artifacts, :numeric_string => true, as: 'numArtifacts'
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage::Representation
      
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
          collection :inline, as: 'inline', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1InlineSecret::Representation
      
          collection :secret_manager, as: 'secretManager', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1SecretManagerSecret::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :repo_source, as: 'repoSource', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :storage_source_manifest, as: 'storageSourceManifest', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :resolved_storage_source_manifest, as: 'resolvedStorageSourceManifest', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
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
          property :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class ContaineranalysisGoogleDevtoolsCloudbuildV1UploadedPythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::ContaineranalysisV1alpha1::ContaineranalysisGoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
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
      
      class CreateOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation', class: Google::Apis::ContaineranalysisV1alpha1::Operation, decorator: Google::Apis::ContaineranalysisV1alpha1::Operation::Representation
      
          property :operation_id, as: 'operationId'
        end
      end
      
      class DsseAttestationNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hint, as: 'hint', class: Google::Apis::ContaineranalysisV1alpha1::DsseHint, decorator: Google::Apis::ContaineranalysisV1alpha1::DsseHint::Representation
      
        end
      end
      
      class DsseAttestationOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :envelope, as: 'envelope', class: Google::Apis::ContaineranalysisV1alpha1::Envelope, decorator: Google::Apis::ContaineranalysisV1alpha1::Envelope::Representation
      
          property :statement, as: 'statement', class: Google::Apis::ContaineranalysisV1alpha1::InTotoStatement, decorator: Google::Apis::ContaineranalysisV1alpha1::InTotoStatement::Representation
      
        end
      end
      
      class DsseHint
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :human_readable_name, as: 'humanReadableName'
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
          property :fingerprint, as: 'fingerprint', class: Google::Apis::ContaineranalysisV1alpha1::Fingerprint, decorator: Google::Apis::ContaineranalysisV1alpha1::Fingerprint::Representation
      
          collection :layer_info, as: 'layerInfo', class: Google::Apis::ContaineranalysisV1alpha1::Layer, decorator: Google::Apis::ContaineranalysisV1alpha1::Layer::Representation
      
        end
      end
      
      class Detail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          property :fixed_location, as: 'fixedLocation', class: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation, decorator: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation::Representation
      
          property :is_obsolete, as: 'isObsolete'
          property :max_affected_version, as: 'maxAffectedVersion', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
          property :min_affected_version, as: 'minAffectedVersion', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
          property :package, as: 'package'
          property :package_type, as: 'packageType'
          property :severity_name, as: 'severityName'
          property :source, as: 'source'
          property :vendor, as: 'vendor'
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
          property :analysis_completed, as: 'analysisCompleted', class: Google::Apis::ContaineranalysisV1alpha1::AnalysisCompleted, decorator: Google::Apis::ContaineranalysisV1alpha1::AnalysisCompleted::Representation
      
          collection :analysis_error, as: 'analysisError', class: Google::Apis::ContaineranalysisV1alpha1::Status, decorator: Google::Apis::ContaineranalysisV1alpha1::Status::Representation
      
          property :analysis_status, as: 'analysisStatus'
          property :analysis_status_error, as: 'analysisStatusError', class: Google::Apis::ContaineranalysisV1alpha1::Status, decorator: Google::Apis::ContaineranalysisV1alpha1::Status::Representation
      
          property :archive_time, as: 'archiveTime'
          property :continuous_analysis, as: 'continuousAnalysis'
          property :cpe, as: 'cpe'
          property :last_scan_time, as: 'lastScanTime'
          property :operation, as: 'operation', class: Google::Apis::ContaineranalysisV1alpha1::Operation, decorator: Google::Apis::ContaineranalysisV1alpha1::Operation::Representation
      
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
          property :latest_version, as: 'latestVersion', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
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
          collection :signatures, as: 'signatures', class: Google::Apis::ContaineranalysisV1alpha1::EnvelopeSignature, decorator: Google::Apis::ContaineranalysisV1alpha1::EnvelopeSignature::Representation
      
        end
      end
      
      class EnvelopeSignature
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :keyid, as: 'keyid'
          property :sig, :base64 => true, as: 'sig'
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
          collection :file_hash, as: 'fileHash', class: Google::Apis::ContaineranalysisV1alpha1::HashProp, decorator: Google::Apis::ContaineranalysisV1alpha1::HashProp::Representation
      
        end
      end
      
      class FileLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
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
          property :license_concluded, as: 'licenseConcluded', class: Google::Apis::ContaineranalysisV1alpha1::License, decorator: Google::Apis::ContaineranalysisV1alpha1::License::Representation
      
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
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::ContaineranalysisV1alpha1::GetPolicyOptions, decorator: Google::Apis::ContaineranalysisV1alpha1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GetVulnzOccurrencesSummaryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :counts, as: 'counts', class: Google::Apis::ContaineranalysisV1alpha1::SeverityCount, decorator: Google::Apis::ContaineranalysisV1alpha1::SeverityCount::Representation
      
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1AliasContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kind, as: 'kind'
          property :name, as: 'name'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1AliasContext, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1AliasContext::Representation
      
          property :repo_id, as: 'repoId', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1RepoId, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1RepoId::Representation
      
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alias_context, as: 'aliasContext', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1AliasContext, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1AliasContext::Representation
      
          property :gerrit_project, as: 'gerritProject'
          property :host_uri, as: 'hostUri'
          property :revision_id, as: 'revisionId'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext
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
      
      class GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1RepoId
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_repo_id, as: 'projectRepoId', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :environment, as: 'environment'
          property :materials, as: 'materials'
          property :parameters, as: 'parameters'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :digest, as: 'digest'
          property :entry_point, as: 'entryPoint'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_source, as: 'configSource', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaConfigSource::Representation
      
          hash :environment, as: 'environment'
          hash :parameters, as: 'parameters'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :digest, as: 'digest'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build_finished_on, as: 'buildFinishedOn'
          property :build_invocation_id, as: 'buildInvocationId'
          property :build_started_on, as: 'buildStartedOn'
          property :completeness, as: 'completeness', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaCompleteness::Representation
      
          property :reproducible, as: 'reproducible'
        end
      end
      
      class GoogleDevtoolsContaineranalysisV1alpha1SourceContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_repo, as: 'cloudRepo', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext::Representation
      
          property :gerrit, as: 'gerrit', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext::Representation
      
          property :git, as: 'git', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext::Representation
      
          hash :labels, as: 'labels'
        end
      end
      
      class HashProp
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class InTotoProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder_config, as: 'builderConfig', class: Google::Apis::ContaineranalysisV1alpha1::BuilderConfig, decorator: Google::Apis::ContaineranalysisV1alpha1::BuilderConfig::Representation
      
          collection :materials, as: 'materials'
          property :metadata, as: 'metadata', class: Google::Apis::ContaineranalysisV1alpha1::Metadata, decorator: Google::Apis::ContaineranalysisV1alpha1::Metadata::Representation
      
          property :recipe, as: 'recipe', class: Google::Apis::ContaineranalysisV1alpha1::Recipe, decorator: Google::Apis::ContaineranalysisV1alpha1::Recipe::Representation
      
        end
      end
      
      class InTotoStatement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :_type, as: '_type'
          property :predicate_type, as: 'predicateType'
          property :provenance, as: 'provenance', class: Google::Apis::ContaineranalysisV1alpha1::InTotoProvenance, decorator: Google::Apis::ContaineranalysisV1alpha1::InTotoProvenance::Representation
      
          property :slsa_provenance, as: 'slsaProvenance', class: Google::Apis::ContaineranalysisV1alpha1::SlsaProvenance, decorator: Google::Apis::ContaineranalysisV1alpha1::SlsaProvenance::Representation
      
          property :slsa_provenance_zero_two, as: 'slsaProvenanceZeroTwo', class: Google::Apis::ContaineranalysisV1alpha1::SlsaProvenanceZeroTwo, decorator: Google::Apis::ContaineranalysisV1alpha1::SlsaProvenanceZeroTwo::Representation
      
          collection :subject, as: 'subject', class: Google::Apis::ContaineranalysisV1alpha1::Subject, decorator: Google::Apis::ContaineranalysisV1alpha1::Subject::Representation
      
        end
      end
      
      class Installation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :cpe_uri, as: 'cpeUri'
          property :license, as: 'license', class: Google::Apis::ContaineranalysisV1alpha1::License, decorator: Google::Apis::ContaineranalysisV1alpha1::License::Representation
      
          collection :location, as: 'location', class: Google::Apis::ContaineranalysisV1alpha1::Location, decorator: Google::Apis::ContaineranalysisV1alpha1::Location::Representation
      
          property :name, as: 'name'
          property :package_type, as: 'packageType'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
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
      
      class ListNoteOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1alpha1::Occurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::Occurrence::Representation
      
        end
      end
      
      class ListNotesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :notes, as: 'notes', class: Google::Apis::ContaineranalysisV1alpha1::Note, decorator: Google::Apis::ContaineranalysisV1alpha1::Note::Representation
      
        end
      end
      
      class ListOccurrencesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :occurrences, as: 'occurrences', class: Google::Apis::ContaineranalysisV1alpha1::Occurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::Occurrence::Representation
      
        end
      end
      
      class ListScanConfigsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :scan_configs, as: 'scanConfigs', class: Google::Apis::ContaineranalysisV1alpha1::ScanConfig, decorator: Google::Apis::ContaineranalysisV1alpha1::ScanConfig::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          property :path, as: 'path'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
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
          property :completeness, as: 'completeness', class: Google::Apis::ContaineranalysisV1alpha1::Completeness, decorator: Google::Apis::ContaineranalysisV1alpha1::Completeness::Representation
      
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
      
      class Note
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation_authority, as: 'attestationAuthority', class: Google::Apis::ContaineranalysisV1alpha1::AttestationAuthority, decorator: Google::Apis::ContaineranalysisV1alpha1::AttestationAuthority::Representation
      
          property :base_image, as: 'baseImage', class: Google::Apis::ContaineranalysisV1alpha1::Basis, decorator: Google::Apis::ContaineranalysisV1alpha1::Basis::Representation
      
          property :build_type, as: 'buildType', class: Google::Apis::ContaineranalysisV1alpha1::BuildType, decorator: Google::Apis::ContaineranalysisV1alpha1::BuildType::Representation
      
          property :compliance, as: 'compliance', class: Google::Apis::ContaineranalysisV1alpha1::ComplianceNote, decorator: Google::Apis::ContaineranalysisV1alpha1::ComplianceNote::Representation
      
          property :create_time, as: 'createTime'
          property :deployable, as: 'deployable', class: Google::Apis::ContaineranalysisV1alpha1::Deployable, decorator: Google::Apis::ContaineranalysisV1alpha1::Deployable::Representation
      
          property :discovery, as: 'discovery', class: Google::Apis::ContaineranalysisV1alpha1::Discovery, decorator: Google::Apis::ContaineranalysisV1alpha1::Discovery::Representation
      
          property :dsse_attestation, as: 'dsseAttestation', class: Google::Apis::ContaineranalysisV1alpha1::DsseAttestationNote, decorator: Google::Apis::ContaineranalysisV1alpha1::DsseAttestationNote::Representation
      
          property :expiration_time, as: 'expirationTime'
          property :kind, as: 'kind'
          property :long_description, as: 'longDescription'
          property :name, as: 'name'
          property :package, as: 'package', class: Google::Apis::ContaineranalysisV1alpha1::Package, decorator: Google::Apis::ContaineranalysisV1alpha1::Package::Representation
      
          collection :related_url, as: 'relatedUrl', class: Google::Apis::ContaineranalysisV1alpha1::RelatedUrl, decorator: Google::Apis::ContaineranalysisV1alpha1::RelatedUrl::Representation
      
          property :sbom, as: 'sbom', class: Google::Apis::ContaineranalysisV1alpha1::DocumentNote, decorator: Google::Apis::ContaineranalysisV1alpha1::DocumentNote::Representation
      
          property :short_description, as: 'shortDescription'
          property :spdx_file, as: 'spdxFile', class: Google::Apis::ContaineranalysisV1alpha1::FileNote, decorator: Google::Apis::ContaineranalysisV1alpha1::FileNote::Representation
      
          property :spdx_package, as: 'spdxPackage', class: Google::Apis::ContaineranalysisV1alpha1::PackageInfoNote, decorator: Google::Apis::ContaineranalysisV1alpha1::PackageInfoNote::Representation
      
          property :spdx_relationship, as: 'spdxRelationship', class: Google::Apis::ContaineranalysisV1alpha1::RelationshipNote, decorator: Google::Apis::ContaineranalysisV1alpha1::RelationshipNote::Representation
      
          property :update_time, as: 'updateTime'
          property :upgrade, as: 'upgrade', class: Google::Apis::ContaineranalysisV1alpha1::UpgradeNote, decorator: Google::Apis::ContaineranalysisV1alpha1::UpgradeNote::Representation
      
          property :vulnerability_assessment, as: 'vulnerabilityAssessment', class: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityAssessmentNote, decorator: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityAssessmentNote::Representation
      
          property :vulnerability_type, as: 'vulnerabilityType', class: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityType, decorator: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityType::Representation
      
        end
      end
      
      class Occurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :attestation, as: 'attestation', class: Google::Apis::ContaineranalysisV1alpha1::Attestation, decorator: Google::Apis::ContaineranalysisV1alpha1::Attestation::Representation
      
          property :build_details, as: 'buildDetails', class: Google::Apis::ContaineranalysisV1alpha1::BuildDetails, decorator: Google::Apis::ContaineranalysisV1alpha1::BuildDetails::Representation
      
          property :compliance, as: 'compliance', class: Google::Apis::ContaineranalysisV1alpha1::ComplianceOccurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::ComplianceOccurrence::Representation
      
          property :create_time, as: 'createTime'
          property :deployment, as: 'deployment', class: Google::Apis::ContaineranalysisV1alpha1::Deployment, decorator: Google::Apis::ContaineranalysisV1alpha1::Deployment::Representation
      
          property :derived_image, as: 'derivedImage', class: Google::Apis::ContaineranalysisV1alpha1::Derived, decorator: Google::Apis::ContaineranalysisV1alpha1::Derived::Representation
      
          property :discovered, as: 'discovered', class: Google::Apis::ContaineranalysisV1alpha1::Discovered, decorator: Google::Apis::ContaineranalysisV1alpha1::Discovered::Representation
      
          property :dsse_attestation, as: 'dsseAttestation', class: Google::Apis::ContaineranalysisV1alpha1::DsseAttestationOccurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::DsseAttestationOccurrence::Representation
      
          property :envelope, as: 'envelope', class: Google::Apis::ContaineranalysisV1alpha1::Envelope, decorator: Google::Apis::ContaineranalysisV1alpha1::Envelope::Representation
      
          property :installation, as: 'installation', class: Google::Apis::ContaineranalysisV1alpha1::Installation, decorator: Google::Apis::ContaineranalysisV1alpha1::Installation::Representation
      
          property :kind, as: 'kind'
          property :name, as: 'name'
          property :note_name, as: 'noteName'
          property :remediation, as: 'remediation'
          property :resource, as: 'resource', class: Google::Apis::ContaineranalysisV1alpha1::Resource, decorator: Google::Apis::ContaineranalysisV1alpha1::Resource::Representation
      
          property :resource_url, as: 'resourceUrl'
          property :sbom, as: 'sbom', class: Google::Apis::ContaineranalysisV1alpha1::DocumentOccurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::DocumentOccurrence::Representation
      
          property :spdx_file, as: 'spdxFile', class: Google::Apis::ContaineranalysisV1alpha1::FileOccurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::FileOccurrence::Representation
      
          property :spdx_package, as: 'spdxPackage', class: Google::Apis::ContaineranalysisV1alpha1::PackageInfoOccurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::PackageInfoOccurrence::Representation
      
          property :spdx_relationship, as: 'spdxRelationship', class: Google::Apis::ContaineranalysisV1alpha1::RelationshipOccurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::RelationshipOccurrence::Representation
      
          property :update_time, as: 'updateTime'
          property :upgrade, as: 'upgrade', class: Google::Apis::ContaineranalysisV1alpha1::UpgradeOccurrence, decorator: Google::Apis::ContaineranalysisV1alpha1::UpgradeOccurrence::Representation
      
          property :vulnerability_details, as: 'vulnerabilityDetails', class: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityDetails, decorator: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityDetails::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ContaineranalysisV1alpha1::Status, decorator: Google::Apis::ContaineranalysisV1alpha1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Package
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :architecture, as: 'architecture'
          property :cpe_uri, as: 'cpeUri'
          property :description, as: 'description'
          collection :digest, as: 'digest', class: Google::Apis::ContaineranalysisV1alpha1::Digest, decorator: Google::Apis::ContaineranalysisV1alpha1::Digest::Representation
      
          collection :distribution, as: 'distribution', class: Google::Apis::ContaineranalysisV1alpha1::Distribution, decorator: Google::Apis::ContaineranalysisV1alpha1::Distribution::Representation
      
          property :license, as: 'license', class: Google::Apis::ContaineranalysisV1alpha1::License, decorator: Google::Apis::ContaineranalysisV1alpha1::License::Representation
      
          property :maintainer, as: 'maintainer'
          property :name, as: 'name'
          property :package_type, as: 'packageType'
          property :url, as: 'url'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
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
          collection :external_refs, as: 'externalRefs', class: Google::Apis::ContaineranalysisV1alpha1::ExternalRef, decorator: Google::Apis::ContaineranalysisV1alpha1::ExternalRef::Representation
      
          collection :files_license_info, as: 'filesLicenseInfo'
          property :home_page, as: 'homePage'
          property :license_declared, as: 'licenseDeclared', class: Google::Apis::ContaineranalysisV1alpha1::License, decorator: Google::Apis::ContaineranalysisV1alpha1::License::Representation
      
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
          property :license_concluded, as: 'licenseConcluded', class: Google::Apis::ContaineranalysisV1alpha1::License, decorator: Google::Apis::ContaineranalysisV1alpha1::License::Representation
      
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
          property :affected_location, as: 'affectedLocation', class: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation, decorator: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation::Representation
      
          property :effective_severity, as: 'effectiveSeverity'
          property :fixed_location, as: 'fixedLocation', class: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation, decorator: Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation::Representation
      
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
          collection :bindings, as: 'bindings', class: Google::Apis::ContaineranalysisV1alpha1::Binding, decorator: Google::Apis::ContaineranalysisV1alpha1::Binding::Representation
      
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
      
      class Publisher
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :issuing_authority, as: 'issuingAuthority'
          property :name, as: 'name'
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
          property :remediation_time, as: 'remediationTime'
          property :remediation_type, as: 'remediationType'
          property :remediation_uri, as: 'remediationUri', class: Google::Apis::ContaineranalysisV1alpha1::Uri, decorator: Google::Apis::ContaineranalysisV1alpha1::Uri::Representation
      
        end
      end
      
      class RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          property :tag_name, as: 'tagName'
        end
      end
      
      class Resource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content_hash, as: 'contentHash', class: Google::Apis::ContaineranalysisV1alpha1::HashProp, decorator: Google::Apis::ContaineranalysisV1alpha1::HashProp::Representation
      
          property :name, as: 'name'
          property :uri, as: 'uri'
        end
      end
      
      class ScanConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :enabled, as: 'enabled'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ContaineranalysisV1alpha1::Policy, decorator: Google::Apis::ContaineranalysisV1alpha1::Policy::Representation
      
        end
      end
      
      class SeverityCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :severity, as: 'severity'
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
          property :completeness, as: 'completeness', class: Google::Apis::ContaineranalysisV1alpha1::SlsaCompleteness, decorator: Google::Apis::ContaineranalysisV1alpha1::SlsaCompleteness::Representation
      
          property :reproducible, as: 'reproducible'
        end
      end
      
      class SlsaProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :builder, as: 'builder', class: Google::Apis::ContaineranalysisV1alpha1::SlsaBuilder, decorator: Google::Apis::ContaineranalysisV1alpha1::SlsaBuilder::Representation
      
          collection :materials, as: 'materials', class: Google::Apis::ContaineranalysisV1alpha1::Material, decorator: Google::Apis::ContaineranalysisV1alpha1::Material::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::ContaineranalysisV1alpha1::SlsaMetadata, decorator: Google::Apis::ContaineranalysisV1alpha1::SlsaMetadata::Representation
      
          property :recipe, as: 'recipe', class: Google::Apis::ContaineranalysisV1alpha1::SlsaRecipe, decorator: Google::Apis::ContaineranalysisV1alpha1::SlsaRecipe::Representation
      
        end
      end
      
      class SlsaProvenanceZeroTwo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :build_config, as: 'buildConfig'
          property :build_type, as: 'buildType'
          property :builder, as: 'builder', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaBuilder::Representation
      
          property :invocation, as: 'invocation', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaInvocation::Representation
      
          collection :materials, as: 'materials', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMaterial::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SlsaProvenanceZeroTwoSlsaMetadata::Representation
      
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
          collection :additional_contexts, as: 'additionalContexts', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SourceContext, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SourceContext::Representation
      
          property :artifact_storage_source, as: 'artifactStorageSource', class: Google::Apis::ContaineranalysisV1alpha1::StorageSource, decorator: Google::Apis::ContaineranalysisV1alpha1::StorageSource::Representation
      
          property :context, as: 'context', class: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SourceContext, decorator: Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SourceContext::Representation
      
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::ContaineranalysisV1alpha1::FileHashes, decorator: Google::Apis::ContaineranalysisV1alpha1::FileHashes::Representation
      
          property :repo_source, as: 'repoSource', class: Google::Apis::ContaineranalysisV1alpha1::RepoSource, decorator: Google::Apis::ContaineranalysisV1alpha1::RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::ContaineranalysisV1alpha1::StorageSource, decorator: Google::Apis::ContaineranalysisV1alpha1::StorageSource::Representation
      
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
      
      class StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class Subject
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :digest, as: 'digest'
          property :name, as: 'name'
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
      
      class Threat
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :threat_type, as: 'threatType'
        end
      end
      
      class TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class Uri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :label, as: 'label'
          property :uri, as: 'uri'
        end
      end
      
      class UpdateOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation', class: Google::Apis::ContaineranalysisV1alpha1::Operation, decorator: Google::Apis::ContaineranalysisV1alpha1::Operation::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class UpgradeNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :distributions, as: 'distributions', class: Google::Apis::ContaineranalysisV1alpha1::UpgradeDistribution, decorator: Google::Apis::ContaineranalysisV1alpha1::UpgradeDistribution::Representation
      
          property :package, as: 'package'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
        end
      end
      
      class UpgradeOccurrence
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distribution, as: 'distribution', class: Google::Apis::ContaineranalysisV1alpha1::UpgradeDistribution, decorator: Google::Apis::ContaineranalysisV1alpha1::UpgradeDistribution::Representation
      
          property :package, as: 'package'
          property :parsed_version, as: 'parsedVersion', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
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
          property :note_name, as: 'noteName'
          collection :related_uris, as: 'relatedUris', class: Google::Apis::ContaineranalysisV1alpha1::Uri, decorator: Google::Apis::ContaineranalysisV1alpha1::Uri::Representation
      
          collection :remediations, as: 'remediations', class: Google::Apis::ContaineranalysisV1alpha1::Remediation, decorator: Google::Apis::ContaineranalysisV1alpha1::Remediation::Representation
      
          property :state, as: 'state'
          collection :threats, as: 'threats', class: Google::Apis::ContaineranalysisV1alpha1::Threat, decorator: Google::Apis::ContaineranalysisV1alpha1::Threat::Representation
      
        end
      end
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class VulnerabilityAssessmentNote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assessment, as: 'assessment', class: Google::Apis::ContaineranalysisV1alpha1::Assessment, decorator: Google::Apis::ContaineranalysisV1alpha1::Assessment::Representation
      
          property :language_code, as: 'languageCode'
          property :long_description, as: 'longDescription'
          property :product, as: 'product', class: Google::Apis::ContaineranalysisV1alpha1::Product, decorator: Google::Apis::ContaineranalysisV1alpha1::Product::Representation
      
          property :publisher, as: 'publisher', class: Google::Apis::ContaineranalysisV1alpha1::Publisher, decorator: Google::Apis::ContaineranalysisV1alpha1::Publisher::Representation
      
          property :short_description, as: 'shortDescription'
          property :title, as: 'title'
        end
      end
      
      class VulnerabilityDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score, as: 'cvssScore'
          property :cvss_v2, as: 'cvssV2', class: Google::Apis::ContaineranalysisV1alpha1::Cvss, decorator: Google::Apis::ContaineranalysisV1alpha1::Cvss::Representation
      
          property :cvss_v3, as: 'cvssV3', class: Google::Apis::ContaineranalysisV1alpha1::Cvss, decorator: Google::Apis::ContaineranalysisV1alpha1::Cvss::Representation
      
          property :cvss_version, as: 'cvssVersion'
          property :effective_severity, as: 'effectiveSeverity'
          collection :package_issue, as: 'packageIssue', class: Google::Apis::ContaineranalysisV1alpha1::PackageIssue, decorator: Google::Apis::ContaineranalysisV1alpha1::PackageIssue::Representation
      
          property :severity, as: 'severity'
          property :type, as: 'type'
          property :vex_assessment, as: 'vexAssessment', class: Google::Apis::ContaineranalysisV1alpha1::VexAssessment, decorator: Google::Apis::ContaineranalysisV1alpha1::VexAssessment::Representation
      
        end
      end
      
      class VulnerabilityLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpe_uri, as: 'cpeUri'
          collection :file_location, as: 'fileLocation', class: Google::Apis::ContaineranalysisV1alpha1::FileLocation, decorator: Google::Apis::ContaineranalysisV1alpha1::FileLocation::Representation
      
          property :package, as: 'package'
          property :version, as: 'version', class: Google::Apis::ContaineranalysisV1alpha1::Version, decorator: Google::Apis::ContaineranalysisV1alpha1::Version::Representation
      
        end
      end
      
      class VulnerabilityType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cvss_score, as: 'cvssScore'
          property :cvss_v2, as: 'cvssV2', class: Google::Apis::ContaineranalysisV1alpha1::Cvss, decorator: Google::Apis::ContaineranalysisV1alpha1::Cvss::Representation
      
          property :cvss_version, as: 'cvssVersion'
          collection :cwe, as: 'cwe'
          collection :details, as: 'details', class: Google::Apis::ContaineranalysisV1alpha1::Detail, decorator: Google::Apis::ContaineranalysisV1alpha1::Detail::Representation
      
          property :severity, as: 'severity'
        end
      end
    end
  end
end
