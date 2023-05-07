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
    module OndemandscanningV1
      
      # An alias to a repo revision.
      class AliasContext
        include Google::Apis::Core::Hashable
      
        # The alias kind.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The alias name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Indicates which analysis completed successfully. Multiple types of analysis
      # can be performed on a single resource.
      class AnalysisCompleted
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `analysisType`
        # @return [Array<String>]
        attr_accessor :analysis_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_type = args[:analysis_type] if args.key?(:analysis_type)
        end
      end
      
      # AnalyzePackagesMetadata contains metadata for an active scan of a container
      # image.
      class AnalyzePackagesMetadata
        include Google::Apis::Core::Hashable
      
        # When the scan was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource URI of the container image being scanned.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
        end
      end
      
      # AnalyzePackagesMetadata contains metadata for an active scan of a container
      # image.
      class AnalyzePackagesMetadataV1
        include Google::Apis::Core::Hashable
      
        # When the scan was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource URI of the container image being scanned.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
        end
      end
      
      # AnalyzePackagesRequest is the request to analyze a list of packages and create
      # Vulnerability Occurrences for it.
      class AnalyzePackagesRequestV1
        include Google::Apis::Core::Hashable
      
        # [DEPRECATED] Whether to include OSV data in the scan. For backwards
        # compatibility reasons, this field can be neither removed nor renamed.
        # Corresponds to the JSON property `includeOsvData`
        # @return [Boolean]
        attr_accessor :include_osv_data
        alias_method :include_osv_data?, :include_osv_data
      
        # The packages to analyze.
        # Corresponds to the JSON property `packages`
        # @return [Array<Google::Apis::OndemandscanningV1::PackageData>]
        attr_accessor :packages
      
        # Required. The resource URI of the container image being scanned.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_osv_data = args[:include_osv_data] if args.key?(:include_osv_data)
          @packages = args[:packages] if args.key?(:packages)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
        end
      end
      
      # AnalyzePackagesResponse contains the information necessary to find results for
      # the given scan.
      class AnalyzePackagesResponse
        include Google::Apis::Core::Hashable
      
        # The name of the scan resource created by this successful scan.
        # Corresponds to the JSON property `scan`
        # @return [String]
        attr_accessor :scan
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scan = args[:scan] if args.key?(:scan)
        end
      end
      
      # AnalyzePackagesResponse contains the information necessary to find results for
      # the given scan.
      class AnalyzePackagesResponseV1
        include Google::Apis::Core::Hashable
      
        # The name of the scan resource created by this successful scan.
        # Corresponds to the JSON property `scan`
        # @return [String]
        attr_accessor :scan
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scan = args[:scan] if args.key?(:scan)
        end
      end
      
      # Artifact describes a build product.
      class Artifact
        include Google::Apis::Core::Hashable
      
        # Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
        # container.
        # Corresponds to the JSON property `checksum`
        # @return [String]
        attr_accessor :checksum
      
        # Artifact ID, if any; for container images, this will be a URL by digest like `
        # gcr.io/projectID/imagename@sha256:123456`.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Related artifact names. This may be the path to a binary or jar file, or in
        # the case of a container build, the name used to push the container image to
        # Google Container Registry, as presented to `docker push`. Note that a single
        # Artifact ID can have multiple names, for example if two tags are applied to
        # one image.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksum = args[:checksum] if args.key?(:checksum)
          @id = args[:id] if args.key?(:id)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # Occurrence that represents a single "attestation". The authenticity of an
      # attestation can be verified using the attached signature. If the verifier
      # trusts the public key of the signer, then verifying the signature is
      # sufficient to establish trust. In this circumstance, the authority to which
      # this attestation is attached is primarily useful for lookup (how to find this
      # attestation if you already know the authority and artifact to be verified) and
      # intent (for which authority this attestation was intended to sign.
      class AttestationOccurrence
        include Google::Apis::Core::Hashable
      
        # One or more JWTs encoding a self-contained attestation. Each JWT encodes the
        # payload that it verifies within the JWT itself. Verifier implementation SHOULD
        # ignore the `serialized_payload` field when verifying these JWTs. If only JWTs
        # are present on this AttestationOccurrence, then the `serialized_payload`
        # SHOULD be left empty. Each JWT SHOULD encode a claim specific to the `
        # resource_uri` of this Occurrence, but this is not validated by Grafeas
        # metadata API implementations. The JWT itself is opaque to Grafeas.
        # Corresponds to the JSON property `jwts`
        # @return [Array<Google::Apis::OndemandscanningV1::Jwt>]
        attr_accessor :jwts
      
        # Required. The serialized payload that is verified by one or more `signatures`.
        # Corresponds to the JSON property `serializedPayload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :serialized_payload
      
        # One or more signatures over `serialized_payload`. Verifier implementations
        # should consider this attestation message verified if at least one `signature`
        # verifies `serialized_payload`. See `Signature` in common.proto for more
        # details on signature structure and verification.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::OndemandscanningV1::Signature>]
        attr_accessor :signatures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jwts = args[:jwts] if args.key?(:jwts)
          @serialized_payload = args[:serialized_payload] if args.key?(:serialized_payload)
          @signatures = args[:signatures] if args.key?(:signatures)
        end
      end
      
      # Details of a build occurrence.
      class BuildOccurrence
        include Google::Apis::Core::Hashable
      
        # Deprecated. See InTotoStatement for the replacement. In-toto Provenance
        # representation as defined in spec.
        # Corresponds to the JSON property `intotoProvenance`
        # @return [Google::Apis::OndemandscanningV1::InTotoProvenance]
        attr_accessor :intoto_provenance
      
        # Spec defined at https://github.com/in-toto/attestation/tree/main/spec#
        # statement The serialized InTotoStatement will be stored as Envelope.payload.
        # Envelope.payloadType is always "application/vnd.in-toto+json".
        # Corresponds to the JSON property `intotoStatement`
        # @return [Google::Apis::OndemandscanningV1::InTotoStatement]
        attr_accessor :intoto_statement
      
        # Provenance of a build. Contains all information needed to verify the full
        # details about the build from source to completion.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::OndemandscanningV1::BuildProvenance]
        attr_accessor :provenance
      
        # Serialized JSON representation of the provenance, used in generating the build
        # signature in the corresponding build note. After verifying the signature, `
        # provenance_bytes` can be unmarshalled and compared to the provenance to
        # confirm that it is unchanged. A base64-encoded string representation of the
        # provenance bytes is used for the signature in order to interoperate with
        # openssl which expects this format for signature verification. The serialized
        # form is captured both to avoid ambiguity in how the provenance is marshalled
        # to json as well to prevent incompatibilities with future changes.
        # Corresponds to the JSON property `provenanceBytes`
        # @return [String]
        attr_accessor :provenance_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @intoto_provenance = args[:intoto_provenance] if args.key?(:intoto_provenance)
          @intoto_statement = args[:intoto_statement] if args.key?(:intoto_statement)
          @provenance = args[:provenance] if args.key?(:provenance)
          @provenance_bytes = args[:provenance_bytes] if args.key?(:provenance_bytes)
        end
      end
      
      # Provenance of a build. Contains all information needed to verify the full
      # details about the build from source to completion.
      class BuildProvenance
        include Google::Apis::Core::Hashable
      
        # Special options applied to this build. This is a catch-all field where build
        # providers can enter any desired additional details.
        # Corresponds to the JSON property `buildOptions`
        # @return [Hash<String,String>]
        attr_accessor :build_options
      
        # Version string of the builder at the time this build was executed.
        # Corresponds to the JSON property `builderVersion`
        # @return [String]
        attr_accessor :builder_version
      
        # Output of the build.
        # Corresponds to the JSON property `builtArtifacts`
        # @return [Array<Google::Apis::OndemandscanningV1::Artifact>]
        attr_accessor :built_artifacts
      
        # Commands requested by the build.
        # Corresponds to the JSON property `commands`
        # @return [Array<Google::Apis::OndemandscanningV1::Command>]
        attr_accessor :commands
      
        # Time at which the build was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # E-mail address of the user who initiated this build. Note that this was the
        # user's e-mail address at the time the build was initiated; this address may
        # not represent the same end-user for all time.
        # Corresponds to the JSON property `creator`
        # @return [String]
        attr_accessor :creator
      
        # Time at which execution of the build was finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. Unique identifier of the build.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # URI where any logs for this provenance were written.
        # Corresponds to the JSON property `logsUri`
        # @return [String]
        attr_accessor :logs_uri
      
        # ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Source describes the location of the source used for the build.
        # Corresponds to the JSON property `sourceProvenance`
        # @return [Google::Apis::OndemandscanningV1::Source]
        attr_accessor :source_provenance
      
        # Time at which execution of the build was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Trigger identifier if the build was triggered automatically; empty if not.
        # Corresponds to the JSON property `triggerId`
        # @return [String]
        attr_accessor :trigger_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_options = args[:build_options] if args.key?(:build_options)
          @builder_version = args[:builder_version] if args.key?(:builder_version)
          @built_artifacts = args[:built_artifacts] if args.key?(:built_artifacts)
          @commands = args[:commands] if args.key?(:commands)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator = args[:creator] if args.key?(:creator)
          @end_time = args[:end_time] if args.key?(:end_time)
          @id = args[:id] if args.key?(:id)
          @logs_uri = args[:logs_uri] if args.key?(:logs_uri)
          @project_id = args[:project_id] if args.key?(:project_id)
          @source_provenance = args[:source_provenance] if args.key?(:source_provenance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # 
      class BuilderConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Common Vulnerability Scoring System. For details, see https://www.first.org/
      # cvss/specification-document This is a message we will try to use for storing
      # various versions of CVSS rather than making a separate proto for storing a
      # specific version.
      class Cvss
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `attackComplexity`
        # @return [String]
        attr_accessor :attack_complexity
      
        # Base Metrics Represents the intrinsic characteristics of a vulnerability that
        # are constant over time and across user environments.
        # Corresponds to the JSON property `attackVector`
        # @return [String]
        attr_accessor :attack_vector
      
        # 
        # Corresponds to the JSON property `authentication`
        # @return [String]
        attr_accessor :authentication
      
        # 
        # Corresponds to the JSON property `availabilityImpact`
        # @return [String]
        attr_accessor :availability_impact
      
        # The base score is a function of the base metric scores.
        # Corresponds to the JSON property `baseScore`
        # @return [Float]
        attr_accessor :base_score
      
        # 
        # Corresponds to the JSON property `confidentialityImpact`
        # @return [String]
        attr_accessor :confidentiality_impact
      
        # 
        # Corresponds to the JSON property `exploitabilityScore`
        # @return [Float]
        attr_accessor :exploitability_score
      
        # 
        # Corresponds to the JSON property `impactScore`
        # @return [Float]
        attr_accessor :impact_score
      
        # 
        # Corresponds to the JSON property `integrityImpact`
        # @return [String]
        attr_accessor :integrity_impact
      
        # 
        # Corresponds to the JSON property `privilegesRequired`
        # @return [String]
        attr_accessor :privileges_required
      
        # 
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # 
        # Corresponds to the JSON property `userInteraction`
        # @return [String]
        attr_accessor :user_interaction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attack_complexity = args[:attack_complexity] if args.key?(:attack_complexity)
          @attack_vector = args[:attack_vector] if args.key?(:attack_vector)
          @authentication = args[:authentication] if args.key?(:authentication)
          @availability_impact = args[:availability_impact] if args.key?(:availability_impact)
          @base_score = args[:base_score] if args.key?(:base_score)
          @confidentiality_impact = args[:confidentiality_impact] if args.key?(:confidentiality_impact)
          @exploitability_score = args[:exploitability_score] if args.key?(:exploitability_score)
          @impact_score = args[:impact_score] if args.key?(:impact_score)
          @integrity_impact = args[:integrity_impact] if args.key?(:integrity_impact)
          @privileges_required = args[:privileges_required] if args.key?(:privileges_required)
          @scope = args[:scope] if args.key?(:scope)
          @user_interaction = args[:user_interaction] if args.key?(:user_interaction)
        end
      end
      
      # The category to which the update belongs.
      class Category
        include Google::Apis::Core::Hashable
      
        # The identifier of the category.
        # Corresponds to the JSON property `categoryId`
        # @return [String]
        attr_accessor :category_id
      
        # The localized name of the category.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_id = args[:category_id] if args.key?(:category_id)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A CloudRepoSourceContext denotes a particular revision in a Google Cloud
      # Source Repo.
      class CloudRepoSourceContext
        include Google::Apis::Core::Hashable
      
        # An alias to a repo revision.
        # Corresponds to the JSON property `aliasContext`
        # @return [Google::Apis::OndemandscanningV1::AliasContext]
        attr_accessor :alias_context
      
        # A unique identifier for a Cloud Repo.
        # Corresponds to the JSON property `repoId`
        # @return [Google::Apis::OndemandscanningV1::RepoId]
        attr_accessor :repo_id
      
        # A revision ID.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias_context = args[:alias_context] if args.key?(:alias_context)
          @repo_id = args[:repo_id] if args.key?(:repo_id)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # Command describes a step performed as part of the build pipeline.
      class Command
        include Google::Apis::Core::Hashable
      
        # Command-line arguments used when executing this command.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Working directory (relative to project source root) used when running this
        # command.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Environment variables set before running this command.
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Optional unique identifier for this command, used in wait_for to reference
        # this command as a dependency.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. Name of the command, as presented on the command line, or if the
        # command is packaged as a Docker container, as presented to `docker pull`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID(s) of the command(s) that this command depends on.
        # Corresponds to the JSON property `waitFor`
        # @return [Array<String>]
        attr_accessor :wait_for
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @dir = args[:dir] if args.key?(:dir)
          @env = args[:env] if args.key?(:env)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @wait_for = args[:wait_for] if args.key?(:wait_for)
        end
      end
      
      # Indicates that the builder claims certain fields in this message to be
      # complete.
      class Completeness
        include Google::Apis::Core::Hashable
      
        # If true, the builder claims that recipe.arguments is complete, meaning that
        # all external inputs are properly captured in the recipe.
        # Corresponds to the JSON property `arguments`
        # @return [Boolean]
        attr_accessor :arguments
        alias_method :arguments?, :arguments
      
        # If true, the builder claims that recipe.environment is claimed to be complete.
        # Corresponds to the JSON property `environment`
        # @return [Boolean]
        attr_accessor :environment
        alias_method :environment?, :environment
      
        # If true, the builder claims that materials are complete, usually through some
        # controls to prevent network access. Sometimes called "hermetic".
        # Corresponds to the JSON property `materials`
        # @return [Boolean]
        attr_accessor :materials
        alias_method :materials?, :materials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @environment = args[:environment] if args.key?(:environment)
          @materials = args[:materials] if args.key?(:materials)
        end
      end
      
      # An indication that the compliance checks in the associated ComplianceNote were
      # not satisfied for particular resources or a specified reason.
      class ComplianceOccurrence
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `nonComplianceReason`
        # @return [String]
        attr_accessor :non_compliance_reason
      
        # 
        # Corresponds to the JSON property `nonCompliantFiles`
        # @return [Array<Google::Apis::OndemandscanningV1::NonCompliantFile>]
        attr_accessor :non_compliant_files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @non_compliance_reason = args[:non_compliance_reason] if args.key?(:non_compliance_reason)
          @non_compliant_files = args[:non_compliant_files] if args.key?(:non_compliant_files)
        end
      end
      
      # Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at
      # the top level of the Occurrence.
      class DsseAttestationOccurrence
        include Google::Apis::Core::Hashable
      
        # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
        # proto. An authenticated message of arbitrary type.
        # Corresponds to the JSON property `envelope`
        # @return [Google::Apis::OndemandscanningV1::Envelope]
        attr_accessor :envelope
      
        # Spec defined at https://github.com/in-toto/attestation/tree/main/spec#
        # statement The serialized InTotoStatement will be stored as Envelope.payload.
        # Envelope.payloadType is always "application/vnd.in-toto+json".
        # Corresponds to the JSON property `statement`
        # @return [Google::Apis::OndemandscanningV1::InTotoStatement]
        attr_accessor :statement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @envelope = args[:envelope] if args.key?(:envelope)
          @statement = args[:statement] if args.key?(:statement)
        end
      end
      
      # The period during which some deployable was active in a runtime.
      class DeploymentOccurrence
        include Google::Apis::Core::Hashable
      
        # Address of the runtime element hosting this deployment.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Configuration used to create this deployment.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Required. Beginning of the lifetime of this deployment.
        # Corresponds to the JSON property `deployTime`
        # @return [String]
        attr_accessor :deploy_time
      
        # Platform hosting this deployment.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # Output only. Resource URI for the artifact being deployed taken from the
        # deployable field with the same name.
        # Corresponds to the JSON property `resourceUri`
        # @return [Array<String>]
        attr_accessor :resource_uri
      
        # End of the lifetime of this deployment.
        # Corresponds to the JSON property `undeployTime`
        # @return [String]
        attr_accessor :undeploy_time
      
        # Identity of the user that triggered this deployment.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @config = args[:config] if args.key?(:config)
          @deploy_time = args[:deploy_time] if args.key?(:deploy_time)
          @platform = args[:platform] if args.key?(:platform)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @undeploy_time = args[:undeploy_time] if args.key?(:undeploy_time)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Provides information about the analysis status of a discovered resource.
      class DiscoveryOccurrence
        include Google::Apis::Core::Hashable
      
        # Indicates which analysis completed successfully. Multiple types of analysis
        # can be performed on a single resource.
        # Corresponds to the JSON property `analysisCompleted`
        # @return [Google::Apis::OndemandscanningV1::AnalysisCompleted]
        attr_accessor :analysis_completed
      
        # Indicates any errors encountered during analysis of a resource. There could be
        # 0 or more of these errors.
        # Corresponds to the JSON property `analysisError`
        # @return [Array<Google::Apis::OndemandscanningV1::Status>]
        attr_accessor :analysis_error
      
        # The status of discovery for the resource.
        # Corresponds to the JSON property `analysisStatus`
        # @return [String]
        attr_accessor :analysis_status
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `analysisStatusError`
        # @return [Google::Apis::OndemandscanningV1::Status]
        attr_accessor :analysis_status_error
      
        # Output only. The time occurrences related to this discovery occurrence were
        # archived.
        # Corresponds to the JSON property `archiveTime`
        # @return [String]
        attr_accessor :archive_time
      
        # Whether the resource is continuously analyzed.
        # Corresponds to the JSON property `continuousAnalysis`
        # @return [String]
        attr_accessor :continuous_analysis
      
        # The CPE of the resource being scanned.
        # Corresponds to the JSON property `cpe`
        # @return [String]
        attr_accessor :cpe
      
        # The last time this resource was scanned.
        # Corresponds to the JSON property `lastScanTime`
        # @return [String]
        attr_accessor :last_scan_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_completed = args[:analysis_completed] if args.key?(:analysis_completed)
          @analysis_error = args[:analysis_error] if args.key?(:analysis_error)
          @analysis_status = args[:analysis_status] if args.key?(:analysis_status)
          @analysis_status_error = args[:analysis_status_error] if args.key?(:analysis_status_error)
          @archive_time = args[:archive_time] if args.key?(:archive_time)
          @continuous_analysis = args[:continuous_analysis] if args.key?(:continuous_analysis)
          @cpe = args[:cpe] if args.key?(:cpe)
          @last_scan_time = args[:last_scan_time] if args.key?(:last_scan_time)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
      # proto. An authenticated message of arbitrary type.
      class Envelope
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # 
        # Corresponds to the JSON property `payloadType`
        # @return [String]
        attr_accessor :payload_type
      
        # 
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::OndemandscanningV1::EnvelopeSignature>]
        attr_accessor :signatures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @payload_type = args[:payload_type] if args.key?(:payload_type)
          @signatures = args[:signatures] if args.key?(:signatures)
        end
      end
      
      # 
      class EnvelopeSignature
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `keyid`
        # @return [String]
        attr_accessor :keyid
      
        # 
        # Corresponds to the JSON property `sig`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :sig
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @keyid = args[:keyid] if args.key?(:keyid)
          @sig = args[:sig] if args.key?(:sig)
        end
      end
      
      # Container message for hashes of byte content of files, used in source messages
      # to verify integrity of source input to the build.
      class FileHashes
        include Google::Apis::Core::Hashable
      
        # Required. Collection of file hashes.
        # Corresponds to the JSON property `fileHash`
        # @return [Array<Google::Apis::OndemandscanningV1::HashProp>]
        attr_accessor :file_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hash = args[:file_hash] if args.key?(:file_hash)
        end
      end
      
      # Indicates the location at which a package was found.
      class FileLocation
        include Google::Apis::Core::Hashable
      
        # For jars that are contained inside .war files, this filepath can indicate the
        # path to war file combined with the path to jar file.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
        end
      end
      
      # A set of properties that uniquely identify a given Docker image.
      class Fingerprint
        include Google::Apis::Core::Hashable
      
        # Required. The layer ID of the final layer in the Docker image's v1
        # representation.
        # Corresponds to the JSON property `v1Name`
        # @return [String]
        attr_accessor :v1_name
      
        # Required. The ordered list of v2 blobs that represent a given image.
        # Corresponds to the JSON property `v2Blob`
        # @return [Array<String>]
        attr_accessor :v2_blob
      
        # Output only. The name of the image's v2 blobs computed via: [bottom] :=
        # v2_blobbottom := sha256(v2_blob[N] + " " + v2_name[N+1]) Only the name of the
        # final blob is kept.
        # Corresponds to the JSON property `v2Name`
        # @return [String]
        attr_accessor :v2_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @v1_name = args[:v1_name] if args.key?(:v1_name)
          @v2_blob = args[:v2_blob] if args.key?(:v2_blob)
          @v2_name = args[:v2_name] if args.key?(:v2_name)
        end
      end
      
      # A SourceContext referring to a Gerrit project.
      class GerritSourceContext
        include Google::Apis::Core::Hashable
      
        # An alias to a repo revision.
        # Corresponds to the JSON property `aliasContext`
        # @return [Google::Apis::OndemandscanningV1::AliasContext]
        attr_accessor :alias_context
      
        # The full project name within the host. Projects may be nested, so "project/
        # subproject" is a valid project name. The "repo name" is the hostURI/project.
        # Corresponds to the JSON property `gerritProject`
        # @return [String]
        attr_accessor :gerrit_project
      
        # The URI of a running Gerrit instance.
        # Corresponds to the JSON property `hostUri`
        # @return [String]
        attr_accessor :host_uri
      
        # A revision (commit) ID.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alias_context = args[:alias_context] if args.key?(:alias_context)
          @gerrit_project = args[:gerrit_project] if args.key?(:gerrit_project)
          @host_uri = args[:host_uri] if args.key?(:host_uri)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # A GitSourceContext denotes a particular revision in a third party Git
      # repository (e.g., GitHub).
      class GitSourceContext
        include Google::Apis::Core::Hashable
      
        # Git commit hash.
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Git repository URL.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Indicates the location at which a package was found.
      class GrafeasV1FileLocation
        include Google::Apis::Core::Hashable
      
        # For jars that are contained inside .war files, this filepath can indicate the
        # path to war file combined with the path to jar file.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
        end
      end
      
      # Identifies the entity that executed the recipe, which is trusted to have
      # correctly performed the operation and populated this provenance.
      class GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Indicates that the builder claims certain fields in this message to be
      # complete.
      class GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Boolean]
        attr_accessor :environment
        alias_method :environment?, :environment
      
        # 
        # Corresponds to the JSON property `materials`
        # @return [Boolean]
        attr_accessor :materials
        alias_method :materials?, :materials
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Boolean]
        attr_accessor :parameters
        alias_method :parameters?, :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environment = args[:environment] if args.key?(:environment)
          @materials = args[:materials] if args.key?(:materials)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Describes where the config file that kicked off the build came from. This is
      # effectively a pointer to the source where buildConfig came from.
      class GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `digest`
        # @return [Hash<String,String>]
        attr_accessor :digest
      
        # 
        # Corresponds to the JSON property `entryPoint`
        # @return [String]
        attr_accessor :entry_point
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @entry_point = args[:entry_point] if args.key?(:entry_point)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Identifies the event that kicked off the build.
      class GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation
        include Google::Apis::Core::Hashable
      
        # Describes where the config file that kicked off the build came from. This is
        # effectively a pointer to the source where buildConfig came from.
        # Corresponds to the JSON property `configSource`
        # @return [Google::Apis::OndemandscanningV1::GrafeasV1SlsaProvenanceZeroTwoSlsaConfigSource]
        attr_accessor :config_source
      
        # 
        # Corresponds to the JSON property `environment`
        # @return [Hash<String,Object>]
        attr_accessor :environment
      
        # 
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,Object>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_source = args[:config_source] if args.key?(:config_source)
          @environment = args[:environment] if args.key?(:environment)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # The collection of artifacts that influenced the build including sources,
      # dependencies, build tools, base images, and so on.
      class GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `digest`
        # @return [Hash<String,String>]
        attr_accessor :digest
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Other properties of the build.
      class GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buildFinishedOn`
        # @return [String]
        attr_accessor :build_finished_on
      
        # 
        # Corresponds to the JSON property `buildInvocationId`
        # @return [String]
        attr_accessor :build_invocation_id
      
        # 
        # Corresponds to the JSON property `buildStartedOn`
        # @return [String]
        attr_accessor :build_started_on
      
        # Indicates that the builder claims certain fields in this message to be
        # complete.
        # Corresponds to the JSON property `completeness`
        # @return [Google::Apis::OndemandscanningV1::GrafeasV1SlsaProvenanceZeroTwoSlsaCompleteness]
        attr_accessor :completeness
      
        # 
        # Corresponds to the JSON property `reproducible`
        # @return [Boolean]
        attr_accessor :reproducible
        alias_method :reproducible?, :reproducible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_finished_on = args[:build_finished_on] if args.key?(:build_finished_on)
          @build_invocation_id = args[:build_invocation_id] if args.key?(:build_invocation_id)
          @build_started_on = args[:build_started_on] if args.key?(:build_started_on)
          @completeness = args[:completeness] if args.key?(:completeness)
          @reproducible = args[:reproducible] if args.key?(:reproducible)
        end
      end
      
      # Container message for hash values.
      class HashProp
        include Google::Apis::Core::Hashable
      
        # Required. The type of hash that was performed, e.g. "SHA-256".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. The hash value.
        # Corresponds to the JSON property `value`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The unique identifier of the update.
      class Identity
        include Google::Apis::Core::Hashable
      
        # The revision number of the update.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # The revision independent identifier of the update.
        # Corresponds to the JSON property `updateId`
        # @return [String]
        attr_accessor :update_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @revision = args[:revision] if args.key?(:revision)
          @update_id = args[:update_id] if args.key?(:update_id)
        end
      end
      
      # Details of the derived image portion of the DockerImage relationship. This
      # image would be produced from a Dockerfile with FROM .
      class ImageOccurrence
        include Google::Apis::Core::Hashable
      
        # Output only. This contains the base image URL for the derived image occurrence.
        # Corresponds to the JSON property `baseResourceUrl`
        # @return [String]
        attr_accessor :base_resource_url
      
        # Output only. The number of layers by which this image differs from the
        # associated image basis.
        # Corresponds to the JSON property `distance`
        # @return [Fixnum]
        attr_accessor :distance
      
        # A set of properties that uniquely identify a given Docker image.
        # Corresponds to the JSON property `fingerprint`
        # @return [Google::Apis::OndemandscanningV1::Fingerprint]
        attr_accessor :fingerprint
      
        # This contains layer-specific metadata, if populated it has length "distance"
        # and is ordered with [distance] being the layer immediately following the base
        # image and [1] being the final layer.
        # Corresponds to the JSON property `layerInfo`
        # @return [Array<Google::Apis::OndemandscanningV1::Layer>]
        attr_accessor :layer_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_resource_url = args[:base_resource_url] if args.key?(:base_resource_url)
          @distance = args[:distance] if args.key?(:distance)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @layer_info = args[:layer_info] if args.key?(:layer_info)
        end
      end
      
      # 
      class InTotoProvenance
        include Google::Apis::Core::Hashable
      
        # required
        # Corresponds to the JSON property `builderConfig`
        # @return [Google::Apis::OndemandscanningV1::BuilderConfig]
        attr_accessor :builder_config
      
        # The collection of artifacts that influenced the build including sources,
        # dependencies, build tools, base images, and so on. This is considered to be
        # incomplete unless metadata.completeness.materials is true. Unset or null is
        # equivalent to empty.
        # Corresponds to the JSON property `materials`
        # @return [Array<String>]
        attr_accessor :materials
      
        # Other properties of the build.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::OndemandscanningV1::Metadata]
        attr_accessor :metadata
      
        # Steps taken to build the artifact. For a TaskRun, typically each container
        # corresponds to one step in the recipe.
        # Corresponds to the JSON property `recipe`
        # @return [Google::Apis::OndemandscanningV1::Recipe]
        attr_accessor :recipe
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @builder_config = args[:builder_config] if args.key?(:builder_config)
          @materials = args[:materials] if args.key?(:materials)
          @metadata = args[:metadata] if args.key?(:metadata)
          @recipe = args[:recipe] if args.key?(:recipe)
        end
      end
      
      # Spec defined at https://github.com/in-toto/attestation/tree/main/spec#
      # statement The serialized InTotoStatement will be stored as Envelope.payload.
      # Envelope.payloadType is always "application/vnd.in-toto+json".
      class InTotoStatement
        include Google::Apis::Core::Hashable
      
        # Always `https://in-toto.io/Statement/v0.1`.
        # Corresponds to the JSON property `_type`
        # @return [String]
        attr_accessor :_type
      
        # `https://slsa.dev/provenance/v0.1` for SlsaProvenance.
        # Corresponds to the JSON property `predicateType`
        # @return [String]
        attr_accessor :predicate_type
      
        # 
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::OndemandscanningV1::InTotoProvenance]
        attr_accessor :provenance
      
        # 
        # Corresponds to the JSON property `slsaProvenance`
        # @return [Google::Apis::OndemandscanningV1::SlsaProvenance]
        attr_accessor :slsa_provenance
      
        # See full explanation of fields at slsa.dev/provenance/v0.2.
        # Corresponds to the JSON property `slsaProvenanceZeroTwo`
        # @return [Google::Apis::OndemandscanningV1::SlsaProvenanceZeroTwo]
        attr_accessor :slsa_provenance_zero_two
      
        # 
        # Corresponds to the JSON property `subject`
        # @return [Array<Google::Apis::OndemandscanningV1::Subject>]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @_type = args[:_type] if args.key?(:_type)
          @predicate_type = args[:predicate_type] if args.key?(:predicate_type)
          @provenance = args[:provenance] if args.key?(:provenance)
          @slsa_provenance = args[:slsa_provenance] if args.key?(:slsa_provenance)
          @slsa_provenance_zero_two = args[:slsa_provenance_zero_two] if args.key?(:slsa_provenance_zero_two)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # Justification provides the justification when the state of the assessment if
      # NOT_AFFECTED.
      class Justification
        include Google::Apis::Core::Hashable
      
        # Additional details on why this justification was chosen.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The justification type for this vulnerability.
        # Corresponds to the JSON property `justificationType`
        # @return [String]
        attr_accessor :justification_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @justification_type = args[:justification_type] if args.key?(:justification_type)
        end
      end
      
      # 
      class Jwt
        include Google::Apis::Core::Hashable
      
        # The compact encoding of a JWS, which is always three base64 encoded strings
        # joined by periods. For details, see: https://tools.ietf.org/html/rfc7515.html#
        # section-3.1
        # Corresponds to the JSON property `compactJwt`
        # @return [String]
        attr_accessor :compact_jwt
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compact_jwt = args[:compact_jwt] if args.key?(:compact_jwt)
        end
      end
      
      # Indicates a language package available between this package and the customer's
      # resource artifact.
      class LanguagePackageDependency
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @package = args[:package] if args.key?(:package)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Layer holds metadata specific to a layer of a Docker image.
      class Layer
        include Google::Apis::Core::Hashable
      
        # The recovered arguments to the Dockerfile directive.
        # Corresponds to the JSON property `arguments`
        # @return [String]
        attr_accessor :arguments
      
        # Required. The recovered Dockerfile directive used to construct this layer. See
        # https://docs.docker.com/engine/reference/builder/ for more information.
        # Corresponds to the JSON property `directive`
        # @return [String]
        attr_accessor :directive
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @directive = args[:directive] if args.key?(:directive)
        end
      end
      
      # License information.
      class License
        include Google::Apis::Core::Hashable
      
        # Comments
        # Corresponds to the JSON property `comments`
        # @return [String]
        attr_accessor :comments
      
        # Often a single license can be used to represent the licensing terms. Sometimes
        # it is necessary to include a choice of one or more licenses or some
        # combination of license identifiers. Examples: "LGPL-2.1-only OR MIT", "LGPL-2.
        # 1-only AND MIT", "GPL-2.0-or-later WITH Bison-exception-2.2".
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comments = args[:comments] if args.key?(:comments)
          @expression = args[:expression] if args.key?(:expression)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::OndemandscanningV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # ListVulnerabilitiesResponse contains a single page of vulnerabilities
      # resulting from a scan.
      class ListVulnerabilitiesResponseV1
        include Google::Apis::Core::Hashable
      
        # A page token that can be used in a subsequent call to ListVulnerabilities to
        # continue retrieving results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Vulnerability Occurrences resulting from a scan.
        # Corresponds to the JSON property `occurrences`
        # @return [Array<Google::Apis::OndemandscanningV1::Occurrence>]
        attr_accessor :occurrences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @occurrences = args[:occurrences] if args.key?(:occurrences)
        end
      end
      
      # An occurrence of a particular package installation found within a system's
      # filesystem. E.g., glibc was found in `/var/lib/dpkg/status`.
      class Location
        include Google::Apis::Core::Hashable
      
        # Deprecated. The CPE URI in [CPE format](https://cpe.mitre.org/specification/)
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The path from which we gathered that this package/version is installed.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::OndemandscanningV1::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @path = args[:path] if args.key?(:path)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class Maintainer
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class Material
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `digest`
        # @return [Hash<String,String>]
        attr_accessor :digest
      
        # 
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Other properties of the build.
      class Metadata
        include Google::Apis::Core::Hashable
      
        # The timestamp of when the build completed.
        # Corresponds to the JSON property `buildFinishedOn`
        # @return [String]
        attr_accessor :build_finished_on
      
        # Identifies the particular build invocation, which can be useful for finding
        # associated logs or other ad-hoc analysis. The value SHOULD be globally unique,
        # per in-toto Provenance spec.
        # Corresponds to the JSON property `buildInvocationId`
        # @return [String]
        attr_accessor :build_invocation_id
      
        # The timestamp of when the build started.
        # Corresponds to the JSON property `buildStartedOn`
        # @return [String]
        attr_accessor :build_started_on
      
        # Indicates that the builder claims certain fields in this message to be
        # complete.
        # Corresponds to the JSON property `completeness`
        # @return [Google::Apis::OndemandscanningV1::Completeness]
        attr_accessor :completeness
      
        # If true, the builder claims that running the recipe on materials will produce
        # bit-for-bit identical output.
        # Corresponds to the JSON property `reproducible`
        # @return [Boolean]
        attr_accessor :reproducible
        alias_method :reproducible?, :reproducible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_finished_on = args[:build_finished_on] if args.key?(:build_finished_on)
          @build_invocation_id = args[:build_invocation_id] if args.key?(:build_invocation_id)
          @build_started_on = args[:build_started_on] if args.key?(:build_started_on)
          @completeness = args[:completeness] if args.key?(:completeness)
          @reproducible = args[:reproducible] if args.key?(:reproducible)
        end
      end
      
      # Details about files that caused a compliance check to fail. display_command is
      # a single command that can be used to display a list of non compliant files.
      # When there is no such command, we can also iterate a list of non compliant
      # file using 'path'.
      class NonCompliantFile
        include Google::Apis::Core::Hashable
      
        # Command to display the non-compliant files.
        # Corresponds to the JSON property `displayCommand`
        # @return [String]
        attr_accessor :display_command
      
        # Empty if `display_command` is set.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Explains why a file is non compliant for a CIS check.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_command = args[:display_command] if args.key?(:display_command)
          @path = args[:path] if args.key?(:path)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # An instance of an analysis type that has been found on a resource.
      class Occurrence
        include Google::Apis::Core::Hashable
      
        # Occurrence that represents a single "attestation". The authenticity of an
        # attestation can be verified using the attached signature. If the verifier
        # trusts the public key of the signer, then verifying the signature is
        # sufficient to establish trust. In this circumstance, the authority to which
        # this attestation is attached is primarily useful for lookup (how to find this
        # attestation if you already know the authority and artifact to be verified) and
        # intent (for which authority this attestation was intended to sign.
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::OndemandscanningV1::AttestationOccurrence]
        attr_accessor :attestation
      
        # Details of a build occurrence.
        # Corresponds to the JSON property `build`
        # @return [Google::Apis::OndemandscanningV1::BuildOccurrence]
        attr_accessor :build
      
        # An indication that the compliance checks in the associated ComplianceNote were
        # not satisfied for particular resources or a specified reason.
        # Corresponds to the JSON property `compliance`
        # @return [Google::Apis::OndemandscanningV1::ComplianceOccurrence]
        attr_accessor :compliance
      
        # Output only. The time this occurrence was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The period during which some deployable was active in a runtime.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::OndemandscanningV1::DeploymentOccurrence]
        attr_accessor :deployment
      
        # Provides information about the analysis status of a discovered resource.
        # Corresponds to the JSON property `discovery`
        # @return [Google::Apis::OndemandscanningV1::DiscoveryOccurrence]
        attr_accessor :discovery
      
        # Deprecated. Prefer to use a regular Occurrence, and populate the Envelope at
        # the top level of the Occurrence.
        # Corresponds to the JSON property `dsseAttestation`
        # @return [Google::Apis::OndemandscanningV1::DsseAttestationOccurrence]
        attr_accessor :dsse_attestation
      
        # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
        # proto. An authenticated message of arbitrary type.
        # Corresponds to the JSON property `envelope`
        # @return [Google::Apis::OndemandscanningV1::Envelope]
        attr_accessor :envelope
      
        # Details of the derived image portion of the DockerImage relationship. This
        # image would be produced from a Dockerfile with FROM .
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::OndemandscanningV1::ImageOccurrence]
        attr_accessor :image
      
        # Output only. This explicitly denotes which of the occurrence details are
        # specified. This field can be used as a filter in list requests.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The name of the occurrence in the form of `projects/[PROJECT_ID]/
        # occurrences/[OCCURRENCE_ID]`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The analysis note associated with this occurrence, in the
        # form of `projects/[PROVIDER_ID]/notes/[NOTE_ID]`. This field can be used as a
        # filter in list requests.
        # Corresponds to the JSON property `noteName`
        # @return [String]
        attr_accessor :note_name
      
        # Details on how a particular software package was installed on a system.
        # Corresponds to the JSON property `package`
        # @return [Google::Apis::OndemandscanningV1::PackageOccurrence]
        attr_accessor :package
      
        # A description of actions that can be taken to remedy the note.
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Required. Immutable. A URI that represents the resource for which the
        # occurrence applies. For example, `https://gcr.io/project/image@sha256:123abc`
        # for a Docker image.
        # Corresponds to the JSON property `resourceUri`
        # @return [String]
        attr_accessor :resource_uri
      
        # The occurrence representing an SBOM reference as applied to a specific
        # resource. The occurrence follows the DSSE specification. See https://github.
        # com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
        # Corresponds to the JSON property `sbomReference`
        # @return [Google::Apis::OndemandscanningV1::SbomReferenceOccurrence]
        attr_accessor :sbom_reference
      
        # Output only. The time this occurrence was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # An Upgrade Occurrence represents that a specific resource_url could install a
        # specific upgrade. This presence is supplied via local sources (i.e. it is
        # present in the mirror and the running system has noticed its availability).
        # For Windows, both distribution and windows_update contain information for the
        # Windows update.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::OndemandscanningV1::UpgradeOccurrence]
        attr_accessor :upgrade
      
        # An occurrence of a severity vulnerability on a resource.
        # Corresponds to the JSON property `vulnerability`
        # @return [Google::Apis::OndemandscanningV1::VulnerabilityOccurrence]
        attr_accessor :vulnerability
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation = args[:attestation] if args.key?(:attestation)
          @build = args[:build] if args.key?(:build)
          @compliance = args[:compliance] if args.key?(:compliance)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment = args[:deployment] if args.key?(:deployment)
          @discovery = args[:discovery] if args.key?(:discovery)
          @dsse_attestation = args[:dsse_attestation] if args.key?(:dsse_attestation)
          @envelope = args[:envelope] if args.key?(:envelope)
          @image = args[:image] if args.key?(:image)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @note_name = args[:note_name] if args.key?(:note_name)
          @package = args[:package] if args.key?(:package)
          @remediation = args[:remediation] if args.key?(:remediation)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
          @sbom_reference = args[:sbom_reference] if args.key?(:sbom_reference)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
          @vulnerability = args[:vulnerability] if args.key?(:vulnerability)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::OndemandscanningV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # 
      class PackageData
        include Google::Apis::Core::Hashable
      
        # The architecture of the package.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The binary package. This is significant when the source is different than the
        # binary itself. Historically if they've differed, we've stored the name of the
        # source and its version in the package/version fields, but we should also store
        # the binary package info, as that's what's actually installed. See b/175908657#
        # comment15.
        # Corresponds to the JSON property `binaryVersion`
        # @return [Google::Apis::OndemandscanningV1::PackageVersion]
        attr_accessor :binary_version
      
        # The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which
        # the vulnerability may manifest. Examples include distro or storage location
        # for vulnerable jar.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The dependency chain between this package and the user's artifact. List in
        # order from the customer's package under review first, to the current package
        # last. Inclusive of the original package and the current package.
        # Corresponds to the JSON property `dependencyChain`
        # @return [Array<Google::Apis::OndemandscanningV1::LanguagePackageDependency>]
        attr_accessor :dependency_chain
      
        # The path to the jar file / go binary file.
        # Corresponds to the JSON property `fileLocation`
        # @return [Array<Google::Apis::OndemandscanningV1::FileLocation>]
        attr_accessor :file_location
      
        # HashDigest stores the SHA512 hash digest of the jar file if the package is of
        # type Maven. This field will be unset for non Maven packages.
        # Corresponds to the JSON property `hashDigest`
        # @return [String]
        attr_accessor :hash_digest
      
        # The maintainer of the package.
        # Corresponds to the JSON property `maintainer`
        # @return [Google::Apis::OndemandscanningV1::Maintainer]
        attr_accessor :maintainer
      
        # The OS affected by a vulnerability Used to generate the cpe_uri for OS
        # packages
        # Corresponds to the JSON property `os`
        # @return [String]
        attr_accessor :os
      
        # The version of the OS Used to generate the cpe_uri for OS packages
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # The package being analysed for vulnerabilities
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # The type of package: os, maven, go, etc.
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # CVEs that this package is no longer vulnerable to go/drydock-dd-custom-binary-
        # scanning
        # Corresponds to the JSON property `patchedCve`
        # @return [Array<String>]
        attr_accessor :patched_cve
      
        # The source package. Similar to the above, this is significant when the source
        # is different than the binary itself. Since the top-level package/version
        # fields are based on an if/else, we need a separate field for both binary and
        # source if we want to know definitively where the data is coming from.
        # Corresponds to the JSON property `sourceVersion`
        # @return [Google::Apis::OndemandscanningV1::PackageVersion]
        attr_accessor :source_version
      
        # 
        # Corresponds to the JSON property `unused`
        # @return [String]
        attr_accessor :unused
      
        # The version of the package being analysed
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @binary_version = args[:binary_version] if args.key?(:binary_version)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @dependency_chain = args[:dependency_chain] if args.key?(:dependency_chain)
          @file_location = args[:file_location] if args.key?(:file_location)
          @hash_digest = args[:hash_digest] if args.key?(:hash_digest)
          @maintainer = args[:maintainer] if args.key?(:maintainer)
          @os = args[:os] if args.key?(:os)
          @os_version = args[:os_version] if args.key?(:os_version)
          @package = args[:package] if args.key?(:package)
          @package_type = args[:package_type] if args.key?(:package_type)
          @patched_cve = args[:patched_cve] if args.key?(:patched_cve)
          @source_version = args[:source_version] if args.key?(:source_version)
          @unused = args[:unused] if args.key?(:unused)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A detail for a distro and package this vulnerability occurrence was found in
      # and its associated fix (if one is available).
      class PackageIssue
        include Google::Apis::Core::Hashable
      
        # Required. The [CPE URI](https://cpe.mitre.org/specification/) this
        # vulnerability was found in.
        # Corresponds to the JSON property `affectedCpeUri`
        # @return [String]
        attr_accessor :affected_cpe_uri
      
        # Required. The package this vulnerability was found in.
        # Corresponds to the JSON property `affectedPackage`
        # @return [String]
        attr_accessor :affected_package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `affectedVersion`
        # @return [Google::Apis::OndemandscanningV1::Version]
        attr_accessor :affected_version
      
        # Output only. The distro or language system assigned severity for this
        # vulnerability when that is available and note provider assigned severity when
        # it is not available.
        # Corresponds to the JSON property `effectiveSeverity`
        # @return [String]
        attr_accessor :effective_severity
      
        # The location at which this package was found.
        # Corresponds to the JSON property `fileLocation`
        # @return [Array<Google::Apis::OndemandscanningV1::GrafeasV1FileLocation>]
        attr_accessor :file_location
      
        # Output only. Whether a fix is available for this package.
        # Corresponds to the JSON property `fixAvailable`
        # @return [Boolean]
        attr_accessor :fix_available
        alias_method :fix_available?, :fix_available
      
        # The [CPE URI](https://cpe.mitre.org/specification/) this vulnerability was
        # fixed in. It is possible for this to be different from the affected_cpe_uri.
        # Corresponds to the JSON property `fixedCpeUri`
        # @return [String]
        attr_accessor :fixed_cpe_uri
      
        # The package this vulnerability was fixed in. It is possible for this to be
        # different from the affected_package.
        # Corresponds to the JSON property `fixedPackage`
        # @return [String]
        attr_accessor :fixed_package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `fixedVersion`
        # @return [Google::Apis::OndemandscanningV1::Version]
        attr_accessor :fixed_version
      
        # The type of package (e.g. OS, MAVEN, GO).
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_cpe_uri = args[:affected_cpe_uri] if args.key?(:affected_cpe_uri)
          @affected_package = args[:affected_package] if args.key?(:affected_package)
          @affected_version = args[:affected_version] if args.key?(:affected_version)
          @effective_severity = args[:effective_severity] if args.key?(:effective_severity)
          @file_location = args[:file_location] if args.key?(:file_location)
          @fix_available = args[:fix_available] if args.key?(:fix_available)
          @fixed_cpe_uri = args[:fixed_cpe_uri] if args.key?(:fixed_cpe_uri)
          @fixed_package = args[:fixed_package] if args.key?(:fixed_package)
          @fixed_version = args[:fixed_version] if args.key?(:fixed_version)
          @package_type = args[:package_type] if args.key?(:package_type)
        end
      end
      
      # Details on how a particular software package was installed on a system.
      class PackageOccurrence
        include Google::Apis::Core::Hashable
      
        # Output only. The CPU architecture for which packages in this distribution
        # channel were built. Architecture will be blank for language packages.
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # Output only. The cpe_uri in [CPE format](https://cpe.mitre.org/specification/)
        # denoting the package manager version distributing a package. The cpe_uri will
        # be blank for language packages.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # License information.
        # Corresponds to the JSON property `license`
        # @return [Google::Apis::OndemandscanningV1::License]
        attr_accessor :license
      
        # All of the places within the filesystem versions of this package have been
        # found.
        # Corresponds to the JSON property `location`
        # @return [Array<Google::Apis::OndemandscanningV1::Location>]
        attr_accessor :location
      
        # Required. Output only. The name of the installed package.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The type of package; whether native or non native (e.g., ruby
        # gems, node.js packages, etc.).
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::OndemandscanningV1::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @license = args[:license] if args.key?(:license)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @package_type = args[:package_type] if args.key?(:package_type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # 
      class PackageVersion
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # 
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31)
      # and a repo name within that project.
      class ProjectRepoId
        include Google::Apis::Core::Hashable
      
        # The ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The name of the repo. Leave empty for the default repo.
        # Corresponds to the JSON property `repoName`
        # @return [String]
        attr_accessor :repo_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_id = args[:project_id] if args.key?(:project_id)
          @repo_name = args[:repo_name] if args.key?(:repo_name)
        end
      end
      
      # Steps taken to build the artifact. For a TaskRun, typically each container
      # corresponds to one step in the recipe.
      class Recipe
        include Google::Apis::Core::Hashable
      
        # Collection of all external inputs that influenced the build on top of recipe.
        # definedInMaterial and recipe.entryPoint. For example, if the recipe type were "
        # make", then this might be the flags passed to make aside from the target,
        # which is captured in recipe.entryPoint. Since the arguments field can greatly
        # vary in structure, depending on the builder and recipe type, this is of form "
        # Any".
        # Corresponds to the JSON property `arguments`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :arguments
      
        # Index in materials containing the recipe steps that are not implied by recipe.
        # type. For example, if the recipe type were "make", then this would point to
        # the source containing the Makefile, not the make program itself. Set to -1 if
        # the recipe doesn't come from a material, as zero is default unset value for
        # int64.
        # Corresponds to the JSON property `definedInMaterial`
        # @return [Fixnum]
        attr_accessor :defined_in_material
      
        # String identifying the entry point into the build. This is often a path to a
        # configuration file and/or a target label within that file. The syntax and
        # meaning are defined by recipe.type. For example, if the recipe type were "make"
        # , then this would reference the directory in which to run make as well as
        # which target to use.
        # Corresponds to the JSON property `entryPoint`
        # @return [String]
        attr_accessor :entry_point
      
        # Any other builder-controlled inputs necessary for correctly evaluating the
        # recipe. Usually only needed for reproducing the build but not evaluated as
        # part of policy. Since the environment field can greatly vary in structure,
        # depending on the builder and recipe type, this is of form "Any".
        # Corresponds to the JSON property `environment`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :environment
      
        # URI indicating what type of recipe was performed. It determines the meaning of
        # recipe.entryPoint, recipe.arguments, recipe.environment, and materials.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @defined_in_material = args[:defined_in_material] if args.key?(:defined_in_material)
          @entry_point = args[:entry_point] if args.key?(:entry_point)
          @environment = args[:environment] if args.key?(:environment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Metadata for any related URL information.
      class RelatedUrl
        include Google::Apis::Core::Hashable
      
        # Label to describe usage of the URL.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Specific URL associated with the resource.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Specifies details on how to handle (and presumably, fix) a vulnerability.
      class Remediation
        include Google::Apis::Core::Hashable
      
        # Contains a comprehensive human-readable discussion of the remediation.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # The type of remediation that can be applied.
        # Corresponds to the JSON property `remediationType`
        # @return [String]
        attr_accessor :remediation_type
      
        # Metadata for any related URL information.
        # Corresponds to the JSON property `remediationUri`
        # @return [Google::Apis::OndemandscanningV1::RelatedUrl]
        attr_accessor :remediation_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @remediation_type = args[:remediation_type] if args.key?(:remediation_type)
          @remediation_uri = args[:remediation_uri] if args.key?(:remediation_uri)
        end
      end
      
      # A unique identifier for a Cloud Repo.
      class RepoId
        include Google::Apis::Core::Hashable
      
        # Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31)
        # and a repo name within that project.
        # Corresponds to the JSON property `projectRepoId`
        # @return [Google::Apis::OndemandscanningV1::ProjectRepoId]
        attr_accessor :project_repo_id
      
        # A server-assigned, globally unique identifier.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @project_repo_id = args[:project_repo_id] if args.key?(:project_repo_id)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # The occurrence representing an SBOM reference as applied to a specific
      # resource. The occurrence follows the DSSE specification. See https://github.
      # com/secure-systems-lab/dsse/blob/master/envelope.md for more details.
      class SbomReferenceOccurrence
        include Google::Apis::Core::Hashable
      
        # The actual payload that contains the SBOM Reference data. The payload follows
        # the intoto statement specification. See https://github.com/in-toto/attestation/
        # blob/main/spec/v1.0/statement.md for more details.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::OndemandscanningV1::SbomReferenceIntotoPayload]
        attr_accessor :payload
      
        # The kind of payload that SbomReferenceIntotoPayload takes. Since it's in the
        # intoto format, this value is expected to be 'application/vnd.in-toto+json'.
        # Corresponds to the JSON property `payloadType`
        # @return [String]
        attr_accessor :payload_type
      
        # The signatures over the payload.
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::OndemandscanningV1::EnvelopeSignature>]
        attr_accessor :signatures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
          @payload_type = args[:payload_type] if args.key?(:payload_type)
          @signatures = args[:signatures] if args.key?(:signatures)
        end
      end
      
      # The actual payload that contains the SBOM Reference data. The payload follows
      # the intoto statement specification. See https://github.com/in-toto/attestation/
      # blob/main/spec/v1.0/statement.md for more details.
      class SbomReferenceIntotoPayload
        include Google::Apis::Core::Hashable
      
        # Identifier for the schema of the Statement.
        # Corresponds to the JSON property `_type`
        # @return [String]
        attr_accessor :_type
      
        # A predicate which describes the SBOM being referenced.
        # Corresponds to the JSON property `predicate`
        # @return [Google::Apis::OndemandscanningV1::SbomReferenceIntotoPredicate]
        attr_accessor :predicate
      
        # URI identifying the type of the Predicate.
        # Corresponds to the JSON property `predicateType`
        # @return [String]
        attr_accessor :predicate_type
      
        # Set of software artifacts that the attestation applies to. Each element
        # represents a single software artifact.
        # Corresponds to the JSON property `subject`
        # @return [Array<Google::Apis::OndemandscanningV1::Subject>]
        attr_accessor :subject
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @_type = args[:_type] if args.key?(:_type)
          @predicate = args[:predicate] if args.key?(:predicate)
          @predicate_type = args[:predicate_type] if args.key?(:predicate_type)
          @subject = args[:subject] if args.key?(:subject)
        end
      end
      
      # A predicate which describes the SBOM being referenced.
      class SbomReferenceIntotoPredicate
        include Google::Apis::Core::Hashable
      
        # A map of algorithm to digest of the contents of the SBOM.
        # Corresponds to the JSON property `digest`
        # @return [Hash<String,String>]
        attr_accessor :digest
      
        # The location of the SBOM.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The mime type of the SBOM.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        # The person or system referring this predicate to the consumer.
        # Corresponds to the JSON property `referrerId`
        # @return [String]
        attr_accessor :referrer_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @location = args[:location] if args.key?(:location)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
          @referrer_id = args[:referrer_id] if args.key?(:referrer_id)
        end
      end
      
      # Verifiers (e.g. Kritis implementations) MUST verify signatures with respect to
      # the trust anchors defined in policy (e.g. a Kritis policy). Typically this
      # means that the verifier has been configured with a map from `public_key_id` to
      # public key material (and any required parameters, e.g. signing algorithm). In
      # particular, verification implementations MUST NOT treat the signature `
      # public_key_id` as anything more than a key lookup hint. The `public_key_id`
      # DOES NOT validate or authenticate a public key; it only provides a mechanism
      # for quickly selecting a public key ALREADY CONFIGURED on the verifier through
      # a trusted channel. Verification implementations MUST reject signatures in any
      # of the following circumstances: * The `public_key_id` is not recognized by the
      # verifier. * The public key that `public_key_id` refers to does not verify the
      # signature with respect to the payload. The `signature` contents SHOULD NOT be "
      # attached" (where the payload is included with the serialized `signature` bytes)
      # . Verifiers MUST ignore any "attached" payload and only verify signatures with
      # respect to explicitly provided payload (e.g. a `payload` field on the proto
      # message that holds this Signature, or the canonical serialization of the proto
      # message that holds this signature).
      class Signature
        include Google::Apis::Core::Hashable
      
        # The identifier for the public key that verifies this signature. * The `
        # public_key_id` is required. * The `public_key_id` SHOULD be an RFC3986
        # conformant URI. * When possible, the `public_key_id` SHOULD be an immutable
        # reference, such as a cryptographic digest. Examples of valid `public_key_id`s:
        # OpenPGP V4 public key fingerprint: * "openpgp4fpr:
        # 74FAF3B861BDA0870C7B6DEF607E48D2A663AEEA" See https://www.iana.org/assignments/
        # uri-schemes/prov/openpgp4fpr for more details on this scheme. RFC6920 digest-
        # named SubjectPublicKeyInfo (digest of the DER serialization): * "ni:///sha-256;
        # cD9o9Cq6LG3jD0iKXqEi_vdjJGecm_iXkbqVoScViaU" * "nih:///sha-256;
        # 703f68f42aba2c6de30f488a5ea122fef76324679c9bf89791ba95a1271589a5"
        # Corresponds to the JSON property `publicKeyId`
        # @return [String]
        attr_accessor :public_key_id
      
        # The content of the signature, an opaque bytestring. The payload that this
        # signature verifies MUST be unambiguously provided with the Signature during
        # verification. A wrapper message might provide the payload explicitly.
        # Alternatively, a message might have a canonical serialization that can always
        # be unambiguously computed to derive the payload.
        # Corresponds to the JSON property `signature`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @public_key_id = args[:public_key_id] if args.key?(:public_key_id)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # 
      class SlsaBuilder
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Indicates that the builder claims certain fields in this message to be
      # complete.
      class SlsaCompleteness
        include Google::Apis::Core::Hashable
      
        # If true, the builder claims that recipe.arguments is complete, meaning that
        # all external inputs are properly captured in the recipe.
        # Corresponds to the JSON property `arguments`
        # @return [Boolean]
        attr_accessor :arguments
        alias_method :arguments?, :arguments
      
        # If true, the builder claims that recipe.environment is claimed to be complete.
        # Corresponds to the JSON property `environment`
        # @return [Boolean]
        attr_accessor :environment
        alias_method :environment?, :environment
      
        # If true, the builder claims that materials are complete, usually through some
        # controls to prevent network access. Sometimes called "hermetic".
        # Corresponds to the JSON property `materials`
        # @return [Boolean]
        attr_accessor :materials
        alias_method :materials?, :materials
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @environment = args[:environment] if args.key?(:environment)
          @materials = args[:materials] if args.key?(:materials)
        end
      end
      
      # Other properties of the build.
      class SlsaMetadata
        include Google::Apis::Core::Hashable
      
        # The timestamp of when the build completed.
        # Corresponds to the JSON property `buildFinishedOn`
        # @return [String]
        attr_accessor :build_finished_on
      
        # Identifies the particular build invocation, which can be useful for finding
        # associated logs or other ad-hoc analysis. The value SHOULD be globally unique,
        # per in-toto Provenance spec.
        # Corresponds to the JSON property `buildInvocationId`
        # @return [String]
        attr_accessor :build_invocation_id
      
        # The timestamp of when the build started.
        # Corresponds to the JSON property `buildStartedOn`
        # @return [String]
        attr_accessor :build_started_on
      
        # Indicates that the builder claims certain fields in this message to be
        # complete.
        # Corresponds to the JSON property `completeness`
        # @return [Google::Apis::OndemandscanningV1::SlsaCompleteness]
        attr_accessor :completeness
      
        # If true, the builder claims that running the recipe on materials will produce
        # bit-for-bit identical output.
        # Corresponds to the JSON property `reproducible`
        # @return [Boolean]
        attr_accessor :reproducible
        alias_method :reproducible?, :reproducible
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_finished_on = args[:build_finished_on] if args.key?(:build_finished_on)
          @build_invocation_id = args[:build_invocation_id] if args.key?(:build_invocation_id)
          @build_started_on = args[:build_started_on] if args.key?(:build_started_on)
          @completeness = args[:completeness] if args.key?(:completeness)
          @reproducible = args[:reproducible] if args.key?(:reproducible)
        end
      end
      
      # 
      class SlsaProvenance
        include Google::Apis::Core::Hashable
      
        # required
        # Corresponds to the JSON property `builder`
        # @return [Google::Apis::OndemandscanningV1::SlsaBuilder]
        attr_accessor :builder
      
        # The collection of artifacts that influenced the build including sources,
        # dependencies, build tools, base images, and so on. This is considered to be
        # incomplete unless metadata.completeness.materials is true. Unset or null is
        # equivalent to empty.
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::OndemandscanningV1::Material>]
        attr_accessor :materials
      
        # Other properties of the build.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::OndemandscanningV1::SlsaMetadata]
        attr_accessor :metadata
      
        # Steps taken to build the artifact. For a TaskRun, typically each container
        # corresponds to one step in the recipe.
        # Corresponds to the JSON property `recipe`
        # @return [Google::Apis::OndemandscanningV1::SlsaRecipe]
        attr_accessor :recipe
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @builder = args[:builder] if args.key?(:builder)
          @materials = args[:materials] if args.key?(:materials)
          @metadata = args[:metadata] if args.key?(:metadata)
          @recipe = args[:recipe] if args.key?(:recipe)
        end
      end
      
      # See full explanation of fields at slsa.dev/provenance/v0.2.
      class SlsaProvenanceZeroTwo
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `buildConfig`
        # @return [Hash<String,Object>]
        attr_accessor :build_config
      
        # 
        # Corresponds to the JSON property `buildType`
        # @return [String]
        attr_accessor :build_type
      
        # Identifies the entity that executed the recipe, which is trusted to have
        # correctly performed the operation and populated this provenance.
        # Corresponds to the JSON property `builder`
        # @return [Google::Apis::OndemandscanningV1::GrafeasV1SlsaProvenanceZeroTwoSlsaBuilder]
        attr_accessor :builder
      
        # Identifies the event that kicked off the build.
        # Corresponds to the JSON property `invocation`
        # @return [Google::Apis::OndemandscanningV1::GrafeasV1SlsaProvenanceZeroTwoSlsaInvocation]
        attr_accessor :invocation
      
        # 
        # Corresponds to the JSON property `materials`
        # @return [Array<Google::Apis::OndemandscanningV1::GrafeasV1SlsaProvenanceZeroTwoSlsaMaterial>]
        attr_accessor :materials
      
        # Other properties of the build.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::OndemandscanningV1::GrafeasV1SlsaProvenanceZeroTwoSlsaMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @build_config = args[:build_config] if args.key?(:build_config)
          @build_type = args[:build_type] if args.key?(:build_type)
          @builder = args[:builder] if args.key?(:builder)
          @invocation = args[:invocation] if args.key?(:invocation)
          @materials = args[:materials] if args.key?(:materials)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Steps taken to build the artifact. For a TaskRun, typically each container
      # corresponds to one step in the recipe.
      class SlsaRecipe
        include Google::Apis::Core::Hashable
      
        # Collection of all external inputs that influenced the build on top of recipe.
        # definedInMaterial and recipe.entryPoint. For example, if the recipe type were "
        # make", then this might be the flags passed to make aside from the target,
        # which is captured in recipe.entryPoint. Depending on the recipe Type, the
        # structure may be different.
        # Corresponds to the JSON property `arguments`
        # @return [Hash<String,Object>]
        attr_accessor :arguments
      
        # Index in materials containing the recipe steps that are not implied by recipe.
        # type. For example, if the recipe type were "make", then this would point to
        # the source containing the Makefile, not the make program itself. Set to -1 if
        # the recipe doesn't come from a material, as zero is default unset value for
        # int64.
        # Corresponds to the JSON property `definedInMaterial`
        # @return [Fixnum]
        attr_accessor :defined_in_material
      
        # String identifying the entry point into the build. This is often a path to a
        # configuration file and/or a target label within that file. The syntax and
        # meaning are defined by recipe.type. For example, if the recipe type were "make"
        # , then this would reference the directory in which to run make as well as
        # which target to use.
        # Corresponds to the JSON property `entryPoint`
        # @return [String]
        attr_accessor :entry_point
      
        # Any other builder-controlled inputs necessary for correctly evaluating the
        # recipe. Usually only needed for reproducing the build but not evaluated as
        # part of policy. Depending on the recipe Type, the structure may be different.
        # Corresponds to the JSON property `environment`
        # @return [Hash<String,Object>]
        attr_accessor :environment
      
        # URI indicating what type of recipe was performed. It determines the meaning of
        # recipe.entryPoint, recipe.arguments, recipe.environment, and materials.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arguments = args[:arguments] if args.key?(:arguments)
          @defined_in_material = args[:defined_in_material] if args.key?(:defined_in_material)
          @entry_point = args[:entry_point] if args.key?(:entry_point)
          @environment = args[:environment] if args.key?(:environment)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Source describes the location of the source used for the build.
      class Source
        include Google::Apis::Core::Hashable
      
        # If provided, some of the source code used for the build may be found in these
        # locations, in the case where the source repository had multiple remotes or
        # submodules. This list will not include the context specified in the context
        # field.
        # Corresponds to the JSON property `additionalContexts`
        # @return [Array<Google::Apis::OndemandscanningV1::SourceContext>]
        attr_accessor :additional_contexts
      
        # If provided, the input binary artifacts for the build came from this location.
        # Corresponds to the JSON property `artifactStorageSourceUri`
        # @return [String]
        attr_accessor :artifact_storage_source_uri
      
        # A SourceContext is a reference to a tree of files. A SourceContext together
        # with a path point to a unique revision of a single file or directory.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::OndemandscanningV1::SourceContext]
        attr_accessor :context
      
        # Hash(es) of the build source, which can be used to verify that the original
        # source integrity was maintained in the build. The keys to this map are file
        # paths used as build source and the values contain the hash values for those
        # files. If the build source came in a single package such as a gzipped tarfile (
        # .tar.gz), the FileHash will be for the single path to that file.
        # Corresponds to the JSON property `fileHashes`
        # @return [Hash<String,Google::Apis::OndemandscanningV1::FileHashes>]
        attr_accessor :file_hashes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_contexts = args[:additional_contexts] if args.key?(:additional_contexts)
          @artifact_storage_source_uri = args[:artifact_storage_source_uri] if args.key?(:artifact_storage_source_uri)
          @context = args[:context] if args.key?(:context)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
        end
      end
      
      # A SourceContext is a reference to a tree of files. A SourceContext together
      # with a path point to a unique revision of a single file or directory.
      class SourceContext
        include Google::Apis::Core::Hashable
      
        # A CloudRepoSourceContext denotes a particular revision in a Google Cloud
        # Source Repo.
        # Corresponds to the JSON property `cloudRepo`
        # @return [Google::Apis::OndemandscanningV1::CloudRepoSourceContext]
        attr_accessor :cloud_repo
      
        # A SourceContext referring to a Gerrit project.
        # Corresponds to the JSON property `gerrit`
        # @return [Google::Apis::OndemandscanningV1::GerritSourceContext]
        attr_accessor :gerrit
      
        # A GitSourceContext denotes a particular revision in a third party Git
        # repository (e.g., GitHub).
        # Corresponds to the JSON property `git`
        # @return [Google::Apis::OndemandscanningV1::GitSourceContext]
        attr_accessor :git
      
        # Labels with user defined metadata.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_repo = args[:cloud_repo] if args.key?(:cloud_repo)
          @gerrit = args[:gerrit] if args.key?(:gerrit)
          @git = args[:git] if args.key?(:git)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # 
      class Subject
        include Google::Apis::Core::Hashable
      
        # `"": ""` Algorithms can be e.g. sha256, sha512 See https://github.com/in-toto/
        # attestation/blob/main/spec/field_types.md#DigestSet
        # Corresponds to the JSON property `digest`
        # @return [Hash<String,String>]
        attr_accessor :digest
      
        # 
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The Upgrade Distribution represents metadata about the Upgrade for each
      # operating system (CPE). Some distributions have additional metadata around
      # updates, classifying them into various categories and severities.
      class UpgradeDistribution
        include Google::Apis::Core::Hashable
      
        # The operating system classification of this Upgrade, as specified by the
        # upstream operating system upgrade feed. For Windows the classification is one
        # of the category_ids listed at https://docs.microsoft.com/en-us/previous-
        # versions/windows/desktop/ff357803(v=vs.85)
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # Required - The specific operating system this metadata applies to. See https://
        # cpe.mitre.org/specification/.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The cve tied to this Upgrade.
        # Corresponds to the JSON property `cve`
        # @return [Array<String>]
        attr_accessor :cve
      
        # The severity as specified by the upstream operating system.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @classification = args[:classification] if args.key?(:classification)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @cve = args[:cve] if args.key?(:cve)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # An Upgrade Occurrence represents that a specific resource_url could install a
      # specific upgrade. This presence is supplied via local sources (i.e. it is
      # present in the mirror and the running system has noticed its availability).
      # For Windows, both distribution and windows_update contain information for the
      # Windows update.
      class UpgradeOccurrence
        include Google::Apis::Core::Hashable
      
        # The Upgrade Distribution represents metadata about the Upgrade for each
        # operating system (CPE). Some distributions have additional metadata around
        # updates, classifying them into various categories and severities.
        # Corresponds to the JSON property `distribution`
        # @return [Google::Apis::OndemandscanningV1::UpgradeDistribution]
        attr_accessor :distribution
      
        # Required for non-Windows OS. The package this Upgrade is for.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # Version contains structured information about the version of a package.
        # Corresponds to the JSON property `parsedVersion`
        # @return [Google::Apis::OndemandscanningV1::Version]
        attr_accessor :parsed_version
      
        # Windows Update represents the metadata about the update for the Windows
        # operating system. The fields in this message come from the Windows Update API
        # documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-
        # wuapi-iupdate.
        # Corresponds to the JSON property `windowsUpdate`
        # @return [Google::Apis::OndemandscanningV1::WindowsUpdate]
        attr_accessor :windows_update
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution = args[:distribution] if args.key?(:distribution)
          @package = args[:package] if args.key?(:package)
          @parsed_version = args[:parsed_version] if args.key?(:parsed_version)
          @windows_update = args[:windows_update] if args.key?(:windows_update)
        end
      end
      
      # Version contains structured information about the version of a package.
      class Version
        include Google::Apis::Core::Hashable
      
        # Used to correct mistakes in the version numbering scheme.
        # Corresponds to the JSON property `epoch`
        # @return [Fixnum]
        attr_accessor :epoch
      
        # Human readable version string. This string is of the form :- and is only set
        # when kind is NORMAL.
        # Corresponds to the JSON property `fullName`
        # @return [String]
        attr_accessor :full_name
      
        # Whether this version is specifying part of an inclusive range. Grafeas does
        # not have the capability to specify version ranges; instead we have fields that
        # specify start version and end versions. At times this is insufficient - we
        # also need to specify whether the version is included in the range or is
        # excluded from the range. This boolean is expected to be set to true when the
        # version is included in a range.
        # Corresponds to the JSON property `inclusive`
        # @return [Boolean]
        attr_accessor :inclusive
        alias_method :inclusive?, :inclusive
      
        # Required. Distinguishes between sentinel MIN/MAX versions and normal versions.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Required only when version kind is NORMAL. The main part of the version name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The iteration of the package build from the above version.
        # Corresponds to the JSON property `revision`
        # @return [String]
        attr_accessor :revision
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @epoch = args[:epoch] if args.key?(:epoch)
          @full_name = args[:full_name] if args.key?(:full_name)
          @inclusive = args[:inclusive] if args.key?(:inclusive)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # VexAssessment provides all publisher provided Vex information that is related
      # to this vulnerability.
      class VexAssessment
        include Google::Apis::Core::Hashable
      
        # Holds the MITRE standard Common Vulnerabilities and Exposures (CVE) tracking
        # number for the vulnerability.
        # Corresponds to the JSON property `cve`
        # @return [String]
        attr_accessor :cve
      
        # Contains information about the impact of this vulnerability, this will change
        # with time.
        # Corresponds to the JSON property `impacts`
        # @return [Array<String>]
        attr_accessor :impacts
      
        # Justification provides the justification when the state of the assessment if
        # NOT_AFFECTED.
        # Corresponds to the JSON property `justification`
        # @return [Google::Apis::OndemandscanningV1::Justification]
        attr_accessor :justification
      
        # The VulnerabilityAssessment note from which this VexAssessment was generated.
        # This will be of the form: `projects/[PROJECT_ID]/notes/[NOTE_ID]`.
        # Corresponds to the JSON property `noteName`
        # @return [String]
        attr_accessor :note_name
      
        # Holds a list of references associated with this vulnerability item and
        # assessment.
        # Corresponds to the JSON property `relatedUris`
        # @return [Array<Google::Apis::OndemandscanningV1::RelatedUrl>]
        attr_accessor :related_uris
      
        # Specifies details on how to handle (and presumably, fix) a vulnerability.
        # Corresponds to the JSON property `remediations`
        # @return [Array<Google::Apis::OndemandscanningV1::Remediation>]
        attr_accessor :remediations
      
        # Provides the state of this Vulnerability assessment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cve = args[:cve] if args.key?(:cve)
          @impacts = args[:impacts] if args.key?(:impacts)
          @justification = args[:justification] if args.key?(:justification)
          @note_name = args[:note_name] if args.key?(:note_name)
          @related_uris = args[:related_uris] if args.key?(:related_uris)
          @remediations = args[:remediations] if args.key?(:remediations)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # An occurrence of a severity vulnerability on a resource.
      class VulnerabilityOccurrence
        include Google::Apis::Core::Hashable
      
        # Output only. The CVSS score of this vulnerability. CVSS score is on a scale of
        # 0 - 10 where 0 indicates low severity and 10 indicates high severity.
        # Corresponds to the JSON property `cvssScore`
        # @return [Float]
        attr_accessor :cvss_score
      
        # Common Vulnerability Scoring System. For details, see https://www.first.org/
        # cvss/specification-document This is a message we will try to use for storing
        # various versions of CVSS rather than making a separate proto for storing a
        # specific version.
        # Corresponds to the JSON property `cvssV2`
        # @return [Google::Apis::OndemandscanningV1::Cvss]
        attr_accessor :cvss_v2
      
        # Output only. CVSS version used to populate cvss_score and severity.
        # Corresponds to the JSON property `cvssVersion`
        # @return [String]
        attr_accessor :cvss_version
      
        # Common Vulnerability Scoring System. For details, see https://www.first.org/
        # cvss/specification-document This is a message we will try to use for storing
        # various versions of CVSS rather than making a separate proto for storing a
        # specific version.
        # Corresponds to the JSON property `cvssv3`
        # @return [Google::Apis::OndemandscanningV1::Cvss]
        attr_accessor :cvssv3
      
        # The distro assigned severity for this vulnerability when it is available,
        # otherwise this is the note provider assigned severity. When there are multiple
        # PackageIssues for this vulnerability, they can have different effective
        # severities because some might be provided by the distro while others are
        # provided by the language ecosystem for a language pack. For this reason, it is
        # advised to use the effective severity on the PackageIssue level. In the case
        # where multiple PackageIssues have differing effective severities, this field
        # should be the highest severity for any of the PackageIssues.
        # Corresponds to the JSON property `effectiveSeverity`
        # @return [String]
        attr_accessor :effective_severity
      
        # Output only. Whether at least one of the affected packages has a fix available.
        # Corresponds to the JSON property `fixAvailable`
        # @return [Boolean]
        attr_accessor :fix_available
        alias_method :fix_available?, :fix_available
      
        # Output only. A detailed description of this vulnerability.
        # Corresponds to the JSON property `longDescription`
        # @return [String]
        attr_accessor :long_description
      
        # Required. The set of affected locations and their fixes (if available) within
        # the associated resource.
        # Corresponds to the JSON property `packageIssue`
        # @return [Array<Google::Apis::OndemandscanningV1::PackageIssue>]
        attr_accessor :package_issue
      
        # Output only. URLs related to this vulnerability.
        # Corresponds to the JSON property `relatedUrls`
        # @return [Array<Google::Apis::OndemandscanningV1::RelatedUrl>]
        attr_accessor :related_urls
      
        # Output only. The note provider assigned severity of this vulnerability.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Output only. A one sentence description of this vulnerability.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # The type of package; whether native or non native (e.g., ruby gems, node.js
        # packages, etc.).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # VexAssessment provides all publisher provided Vex information that is related
        # to this vulnerability.
        # Corresponds to the JSON property `vexAssessment`
        # @return [Google::Apis::OndemandscanningV1::VexAssessment]
        attr_accessor :vex_assessment
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvss_score = args[:cvss_score] if args.key?(:cvss_score)
          @cvss_v2 = args[:cvss_v2] if args.key?(:cvss_v2)
          @cvss_version = args[:cvss_version] if args.key?(:cvss_version)
          @cvssv3 = args[:cvssv3] if args.key?(:cvssv3)
          @effective_severity = args[:effective_severity] if args.key?(:effective_severity)
          @fix_available = args[:fix_available] if args.key?(:fix_available)
          @long_description = args[:long_description] if args.key?(:long_description)
          @package_issue = args[:package_issue] if args.key?(:package_issue)
          @related_urls = args[:related_urls] if args.key?(:related_urls)
          @severity = args[:severity] if args.key?(:severity)
          @short_description = args[:short_description] if args.key?(:short_description)
          @type = args[:type] if args.key?(:type)
          @vex_assessment = args[:vex_assessment] if args.key?(:vex_assessment)
        end
      end
      
      # Windows Update represents the metadata about the update for the Windows
      # operating system. The fields in this message come from the Windows Update API
      # documented at https://docs.microsoft.com/en-us/windows/win32/api/wuapi/nn-
      # wuapi-iupdate.
      class WindowsUpdate
        include Google::Apis::Core::Hashable
      
        # The list of categories to which the update belongs.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::OndemandscanningV1::Category>]
        attr_accessor :categories
      
        # The localized description of the update.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The unique identifier of the update.
        # Corresponds to the JSON property `identity`
        # @return [Google::Apis::OndemandscanningV1::Identity]
        attr_accessor :identity
      
        # The Microsoft Knowledge Base article IDs that are associated with the update.
        # Corresponds to the JSON property `kbArticleIds`
        # @return [Array<String>]
        attr_accessor :kb_article_ids
      
        # The last published timestamp of the update.
        # Corresponds to the JSON property `lastPublishedTimestamp`
        # @return [String]
        attr_accessor :last_published_timestamp
      
        # The hyperlink to the support information for the update.
        # Corresponds to the JSON property `supportUrl`
        # @return [String]
        attr_accessor :support_url
      
        # The localized title of the update.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @description = args[:description] if args.key?(:description)
          @identity = args[:identity] if args.key?(:identity)
          @kb_article_ids = args[:kb_article_ids] if args.key?(:kb_article_ids)
          @last_published_timestamp = args[:last_published_timestamp] if args.key?(:last_published_timestamp)
          @support_url = args[:support_url] if args.key?(:support_url)
          @title = args[:title] if args.key?(:title)
        end
      end
    end
  end
end
