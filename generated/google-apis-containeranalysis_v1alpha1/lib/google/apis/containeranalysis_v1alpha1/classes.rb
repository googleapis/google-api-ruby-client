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
      
      # Artifact describes a build product.
      class Artifact
        include Google::Apis::Core::Hashable
      
        # Hash or checksum value of a binary, or Docker Registry 2.0 digest of a
        # container.
        # Corresponds to the JSON property `checksum`
        # @return [String]
        attr_accessor :checksum
      
        # Artifact ID, if any; for container images, this will be a URL by digest like
        # gcr.io/projectID/imagename@sha256:123456
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the artifact. This may be the path to a binary or jar file, or in the
        # case of a container build, the name used to push the container image to Google
        # Container Registry, as presented to `docker push`. This field is deprecated in
        # favor of the plural `names` field; it continues to exist here to allow
        # existing BuildProvenance serialized to json in google.devtools.
        # containeranalysis.v1alpha1.BuildDetails.provenance_bytes to deserialize back
        # into proto.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
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
          @name = args[:name] if args.key?(:name)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # Occurrence that represents a single "attestation". The authenticity of an
      # Attestation can be verified using the attached signature. If the verifier
      # trusts the public key of the signer, then verifying the signature is
      # sufficient to establish trust. In this circumstance, the AttestationAuthority
      # to which this Attestation is attached is primarily useful for look-up (how to
      # find this Attestation if you already know the Authority and artifact to be
      # verified) and intent (which authority was this attestation intended to sign
      # for).
      class Attestation
        include Google::Apis::Core::Hashable
      
        # An attestation wrapper with a PGP-compatible signature. This message only
        # supports `ATTACHED` signatures, where the payload that is signed is included
        # alongside the signature itself in the same file.
        # Corresponds to the JSON property `pgpSignedAttestation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::PgpSignedAttestation]
        attr_accessor :pgp_signed_attestation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pgp_signed_attestation = args[:pgp_signed_attestation] if args.key?(:pgp_signed_attestation)
        end
      end
      
      # Note kind that represents a logical attestation "role" or "authority". For
      # example, an organization might have one `AttestationAuthority` for "QA" and
      # one for "build". This Note is intended to act strictly as a grouping mechanism
      # for the attached Occurrences (Attestations). This grouping mechanism also
      # provides a security boundary, since IAM ACLs gate the ability for a principle
      # to attach an Occurrence to a given Note. It also provides a single point of
      # lookup to find all attached Attestation Occurrences, even if they don't all
      # live in the same project.
      class AttestationAuthority
        include Google::Apis::Core::Hashable
      
        # This submessage provides human-readable hints about the purpose of the
        # AttestationAuthority. Because the name of a Note acts as its resource
        # reference, it is important to disambiguate the canonical name of the Note (
        # which might be a UUID for security purposes) from "readable" names more
        # suitable for debug output. Note that these hints should NOT be used to look up
        # AttestationAuthorities in security sensitive contexts, such as when looking up
        # Attestations to verify.
        # Corresponds to the JSON property `hint`
        # @return [Google::Apis::ContaineranalysisV1alpha1::AttestationAuthorityHint]
        attr_accessor :hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hint = args[:hint] if args.key?(:hint)
        end
      end
      
      # This submessage provides human-readable hints about the purpose of the
      # AttestationAuthority. Because the name of a Note acts as its resource
      # reference, it is important to disambiguate the canonical name of the Note (
      # which might be a UUID for security purposes) from "readable" names more
      # suitable for debug output. Note that these hints should NOT be used to look up
      # AttestationAuthorities in security sensitive contexts, such as when looking up
      # Attestations to verify.
      class AttestationAuthorityHint
        include Google::Apis::Core::Hashable
      
        # The human readable name of this Attestation Authority, for example "qa".
        # Corresponds to the JSON property `humanReadableName`
        # @return [String]
        attr_accessor :human_readable_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_readable_name = args[:human_readable_name] if args.key?(:human_readable_name)
        end
      end
      
      # Basis describes the base image portion (Note) of the DockerImage relationship.
      # Linked occurrences are derived from this or an equivalent image via: FROM Or
      # an equivalent reference, e.g. a tag of the resource_url.
      class Basis
        include Google::Apis::Core::Hashable
      
        # A set of properties that uniquely identify a given Docker image.
        # Corresponds to the JSON property `fingerprint`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Fingerprint]
        attr_accessor :fingerprint
      
        # The resource_url for the resource representing the basis of associated
        # occurrence images.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fingerprint = args[:fingerprint] if args.key?(:fingerprint)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
        end
      end
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Expr]
        attr_accessor :condition
      
        # Specifies the identities requesting access for a Cloud Platform resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. * `
        # user:`emailid``: An email address that represents a specific Google account.
        # For example, `alice@example.com` . * `serviceAccount:`emailid``: An email
        # address that represents a service account. For example, `my-other-app@appspot.
        # gserviceaccount.com`. * `group:`emailid``: An email address that represents a
        # Google group. For example, `admins@example.com`. * `deleted:user:`emailid`?uid=
        # `uniqueid``: An email address (plus unique identifier) representing a user
        # that has been recently deleted. For example, `alice@example.com?uid=
        # 123456789012345678901`. If the user is recovered, this value reverts to `user:`
        # emailid`` and the recovered user retains the role in the binding. * `deleted:
        # serviceAccount:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, `my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901`.
        # If the service account is undeleted, this value reverts to `serviceAccount:`
        # emailid`` and the undeleted service account retains the role in the binding. *
        # `deleted:group:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, `admins@example.com?uid=123456789012345678901`. If the group is
        # recovered, this value reverts to `group:`emailid`` and the recovered group
        # retains the role in the binding. * `domain:`domain``: The G Suite domain (
        # primary) that represents all the users of that domain. For example, `google.
        # com` or `example.com`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to `members`. For example, `roles/viewer`, `roles/editor`
        # , or `roles/owner`.
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
        end
      end
      
      # Message encapsulating build provenance details.
      class BuildDetails
        include Google::Apis::Core::Hashable
      
        # In-toto Provenance representation as defined in spec.
        # Corresponds to the JSON property `intotoProvenance`
        # @return [Google::Apis::ContaineranalysisV1alpha1::InTotoProvenance]
        attr_accessor :intoto_provenance
      
        # Provenance of a build. Contains all information needed to verify the full
        # details about the build from source to completion.
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContaineranalysisV1alpha1::BuildProvenance]
        attr_accessor :provenance
      
        # Serialized JSON representation of the provenance, used in generating the `
        # BuildSignature` in the corresponding Result. After verifying the signature, `
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
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Artifact>]
        attr_accessor :built_artifacts
      
        # Commands requested by the build.
        # Corresponds to the JSON property `commands`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Command>]
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
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Unique identifier of the build.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Google Cloud Storage bucket where logs were written.
        # Corresponds to the JSON property `logsBucket`
        # @return [String]
        attr_accessor :logs_bucket
      
        # ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Source describes the location of the source used for the build.
        # Corresponds to the JSON property `sourceProvenance`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Source]
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
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @id = args[:id] if args.key?(:id)
          @logs_bucket = args[:logs_bucket] if args.key?(:logs_bucket)
          @project_id = args[:project_id] if args.key?(:project_id)
          @source_provenance = args[:source_provenance] if args.key?(:source_provenance)
          @start_time = args[:start_time] if args.key?(:start_time)
          @trigger_id = args[:trigger_id] if args.key?(:trigger_id)
        end
      end
      
      # Message encapsulating the signature of the verified build.
      class BuildSignature
        include Google::Apis::Core::Hashable
      
        # An Id for the key used to sign. This could be either an Id for the key stored
        # in `public_key` (such as the Id or fingerprint for a PGP key, or the CN for a
        # cert), or a reference to an external key (such as a reference to a key in
        # Cloud Key Management Service).
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # The type of the key, either stored in `public_key` or referenced in `key_id`
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # Public key of the builder which can be used to verify that the related
        # findings are valid and unchanged. If `key_type` is empty, this defaults to PEM
        # encoded public keys. This field may be empty if `key_id` references an
        # external key. For Cloud Build based signatures, this is a PEM encoded public
        # key. To verify the Cloud Build signature, place the contents of this field
        # into a file (public.pem). The signature field is base64-decoded into its
        # binary representation in signature.bin, and the provenance bytes from `
        # BuildDetails` are base64-decoded into a binary representation in signed.bin.
        # OpenSSL can then verify the signature: `openssl sha256 -verify public.pem -
        # signature signature.bin signed.bin`
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # Signature of the related `BuildProvenance`, encoded in a base64 string.
        # Corresponds to the JSON property `signature`
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @key_type = args[:key_type] if args.key?(:key_type)
          @public_key = args[:public_key] if args.key?(:public_key)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # Note holding the version of the provider's builder and the signature of the
      # provenance message in linked BuildDetails.
      class BuildType
        include Google::Apis::Core::Hashable
      
        # Version of the builder which produced this Note.
        # Corresponds to the JSON property `builderVersion`
        # @return [String]
        attr_accessor :builder_version
      
        # Message encapsulating the signature of the verified build.
        # Corresponds to the JSON property `signature`
        # @return [Google::Apis::ContaineranalysisV1alpha1::BuildSignature]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @builder_version = args[:builder_version] if args.key?(:builder_version)
          @signature = args[:signature] if args.key?(:signature)
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
      
      # A compliance check that is a CIS benchmark.
      class CisBenchmark
        include Google::Apis::Core::Hashable
      
        # The profile level of this CIS benchmark check.
        # Corresponds to the JSON property `profileLevel`
        # @return [Fixnum]
        attr_accessor :profile_level
      
        # The severity level of this CIS benchmark check.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile_level = args[:profile_level] if args.key?(:profile_level)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Command describes a step performed as part of the build pipeline.
      class Command
        include Google::Apis::Core::Hashable
      
        # Command-line arguments used when executing this Command.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # Working directory (relative to project source root) used when running this
        # Command.
        # Corresponds to the JSON property `dir`
        # @return [String]
        attr_accessor :dir
      
        # Environment variables set before running this Command.
        # Corresponds to the JSON property `env`
        # @return [Array<String>]
        attr_accessor :env
      
        # Optional unique identifier for this Command, used in wait_for to reference
        # this Command as a dependency.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Name of the command, as presented on the command line, or if the command is
        # packaged as a Docker container, as presented to `docker pull`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ID(s) of the Command(s) that this Command depends on.
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
      
      # ComplianceNote encapsulates all information about a specific compliance check.
      class ComplianceNote
        include Google::Apis::Core::Hashable
      
        # A compliance check that is a CIS benchmark.
        # Corresponds to the JSON property `cisBenchmark`
        # @return [Google::Apis::ContaineranalysisV1alpha1::CisBenchmark]
        attr_accessor :cis_benchmark
      
        # A description about this compliance check.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A rationale for the existence of this compliance check.
        # Corresponds to the JSON property `rationale`
        # @return [String]
        attr_accessor :rationale
      
        # A description of remediation steps if the compliance check fails.
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Serialized scan instructions with a predefined format.
        # Corresponds to the JSON property `scanInstructions`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :scan_instructions
      
        # The title that identifies this compliance check.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # The OS and config versions the benchmark applies to.
        # Corresponds to the JSON property `version`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::ComplianceVersion>]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cis_benchmark = args[:cis_benchmark] if args.key?(:cis_benchmark)
          @description = args[:description] if args.key?(:description)
          @rationale = args[:rationale] if args.key?(:rationale)
          @remediation = args[:remediation] if args.key?(:remediation)
          @scan_instructions = args[:scan_instructions] if args.key?(:scan_instructions)
          @title = args[:title] if args.key?(:title)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # An indication that the compliance checks in the associated ComplianceNote were
      # not satisfied for particular resources or a specified reason.
      class ComplianceOccurrence
        include Google::Apis::Core::Hashable
      
        # The reason for non compliance of these files.
        # Corresponds to the JSON property `nonComplianceReason`
        # @return [String]
        attr_accessor :non_compliance_reason
      
        # A list of files which are violating compliance checks.
        # Corresponds to the JSON property `nonCompliantFiles`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::NonCompliantFile>]
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
      
      # Describes the CIS benchmark version that is applicable to a given OS and os
      # version.
      class ComplianceVersion
        include Google::Apis::Core::Hashable
      
        # The CPE URI (https://cpe.mitre.org/specification/) this benchmark is
        # applicable to.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The version of the benchmark. This is set to the version of the OS-specific
        # CIS document the benchmark is defined in.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request for creating an operation
      class CreateOperationRequest
        include Google::Apis::Core::Hashable
      
        # This resource represents a long-running operation that is the result of a
        # network API call.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Operation]
        attr_accessor :operation
      
        # The ID to use for this operation.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # A note describing an attestation
      class DsseAttestationNote
        include Google::Apis::Core::Hashable
      
        # This submessage provides human-readable hints about the purpose of the
        # authority. Because the name of a note acts as its resource reference, it is
        # important to disambiguate the canonical name of the Note (which might be a
        # UUID for security purposes) from "readable" names more suitable for debug
        # output. Note that these hints should not be used to look up authorities in
        # security sensitive contexts, such as when looking up attestations to verify.
        # Corresponds to the JSON property `hint`
        # @return [Google::Apis::ContaineranalysisV1alpha1::DsseHint]
        attr_accessor :hint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hint = args[:hint] if args.key?(:hint)
        end
      end
      
      # An occurrence describing an attestation on a resource
      class DsseAttestationOccurrence
        include Google::Apis::Core::Hashable
      
        # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
        # proto. An authenticated message of arbitrary type.
        # Corresponds to the JSON property `envelope`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Envelope]
        attr_accessor :envelope
      
        # Spec defined at https://github.com/in-toto/attestation/tree/main/spec#
        # statement The serialized InTotoStatement will be stored as Envelope.payload.
        # Envelope.payloadType is always "application/vnd.in-toto+json".
        # Corresponds to the JSON property `statement`
        # @return [Google::Apis::ContaineranalysisV1alpha1::InTotoStatement]
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
      
      # This submessage provides human-readable hints about the purpose of the
      # authority. Because the name of a note acts as its resource reference, it is
      # important to disambiguate the canonical name of the Note (which might be a
      # UUID for security purposes) from "readable" names more suitable for debug
      # output. Note that these hints should not be used to look up authorities in
      # security sensitive contexts, such as when looking up attestations to verify.
      class DsseHint
        include Google::Apis::Core::Hashable
      
        # Required. The human readable name of this attestation authority, for example "
        # cloudbuild-prod".
        # Corresponds to the JSON property `humanReadableName`
        # @return [String]
        attr_accessor :human_readable_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @human_readable_name = args[:human_readable_name] if args.key?(:human_readable_name)
        end
      end
      
      # An artifact that can be deployed in some runtime.
      class Deployable
        include Google::Apis::Core::Hashable
      
        # Resource URI for the artifact being deployed.
        # Corresponds to the JSON property `resourceUri`
        # @return [Array<String>]
        attr_accessor :resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource_uri = args[:resource_uri] if args.key?(:resource_uri)
        end
      end
      
      # The period during which some deployable was active in a runtime.
      class Deployment
        include Google::Apis::Core::Hashable
      
        # Address of the runtime element hosting this deployment.
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # Configuration used to create this deployment.
        # Corresponds to the JSON property `config`
        # @return [String]
        attr_accessor :config
      
        # Beginning of the lifetime of this deployment.
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
      
      # Derived describes the derived image portion (Occurrence) of the DockerImage
      # relationship. This image would be produced from a Dockerfile with FROM .
      class Derived
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
        # @return [Google::Apis::ContaineranalysisV1alpha1::Fingerprint]
        attr_accessor :fingerprint
      
        # This contains layer-specific metadata, if populated it has length "distance"
        # and is ordered with [distance] being the layer immediately following the base
        # image and [1] being the final layer.
        # Corresponds to the JSON property `layerInfo`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Layer>]
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
      
      # Identifies all occurrences of this vulnerability in the package for a specific
      # distro/location For example: glibc in cpe:/o:debian:debian_linux:8 for
      # versions 2.1 - 2.2
      class Detail
        include Google::Apis::Core::Hashable
      
        # The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) in which
        # the vulnerability manifests. Examples include distro or storage location for
        # vulnerable jar. This field can be used as a filter in list requests.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # A vendor-specific description of this note.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The location of the vulnerability
        # Corresponds to the JSON property `fixedLocation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation]
        attr_accessor :fixed_location
      
        # Whether this Detail is obsolete. Occurrences are expected not to point to
        # obsolete details.
        # Corresponds to the JSON property `isObsolete`
        # @return [Boolean]
        attr_accessor :is_obsolete
        alias_method :is_obsolete?, :is_obsolete
      
        # Version contains structured information about the version of the package. For
        # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
        # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
        # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
        # Corresponds to the JSON property `maxAffectedVersion`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Version]
        attr_accessor :max_affected_version
      
        # Version contains structured information about the version of the package. For
        # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
        # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
        # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
        # Corresponds to the JSON property `minAffectedVersion`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Version]
        attr_accessor :min_affected_version
      
        # The name of the package where the vulnerability was found. This field can be
        # used as a filter in list requests.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # The type of package; whether native or non native(ruby gems, node.js packages
        # etc)
        # Corresponds to the JSON property `packageType`
        # @return [String]
        attr_accessor :package_type
      
        # The severity (eg: distro assigned severity) for this vulnerability.
        # Corresponds to the JSON property `severityName`
        # @return [String]
        attr_accessor :severity_name
      
        # The source from which the information in this Detail was obtained.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The vendor of the product. e.g. "google"
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @description = args[:description] if args.key?(:description)
          @fixed_location = args[:fixed_location] if args.key?(:fixed_location)
          @is_obsolete = args[:is_obsolete] if args.key?(:is_obsolete)
          @max_affected_version = args[:max_affected_version] if args.key?(:max_affected_version)
          @min_affected_version = args[:min_affected_version] if args.key?(:min_affected_version)
          @package = args[:package] if args.key?(:package)
          @package_type = args[:package_type] if args.key?(:package_type)
          @severity_name = args[:severity_name] if args.key?(:severity_name)
          @source = args[:source] if args.key?(:source)
          @vendor = args[:vendor] if args.key?(:vendor)
        end
      end
      
      # Provides information about the scan status of a discovered resource.
      class Discovered
        include Google::Apis::Core::Hashable
      
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
        # @return [Google::Apis::ContaineranalysisV1alpha1::Status]
        attr_accessor :analysis_status_error
      
        # Whether the resource is continuously analyzed.
        # Corresponds to the JSON property `continuousAnalysis`
        # @return [String]
        attr_accessor :continuous_analysis
      
        # The CPE of the resource being scanned.
        # Corresponds to the JSON property `cpe`
        # @return [String]
        attr_accessor :cpe
      
        # This resource represents a long-running operation that is the result of a
        # network API call.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Operation]
        attr_accessor :operation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_status = args[:analysis_status] if args.key?(:analysis_status)
          @analysis_status_error = args[:analysis_status_error] if args.key?(:analysis_status_error)
          @continuous_analysis = args[:continuous_analysis] if args.key?(:continuous_analysis)
          @cpe = args[:cpe] if args.key?(:cpe)
          @operation = args[:operation] if args.key?(:operation)
        end
      end
      
      # A note that indicates a type of analysis a provider would perform. This note
      # exists in a provider's project. A `Discovery` occurrence is created in a
      # consumer's project at the start of analysis. The occurrence's operation will
      # indicate the status of the analysis. Absence of an occurrence linked to this
      # note for a resource indicates that analysis hasn't started.
      class Discovery
        include Google::Apis::Core::Hashable
      
        # The kind of analysis that is handled by this discovery.
        # Corresponds to the JSON property `analysisKind`
        # @return [String]
        attr_accessor :analysis_kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analysis_kind = args[:analysis_kind] if args.key?(:analysis_kind)
        end
      end
      
      # This represents a particular channel of distribution for a given package. e.g.
      # Debian's jessie-backports dpkg mirror
      class Distribution
        include Google::Apis::Core::Hashable
      
        # The CPU architecture for which packages in this distribution channel were
        # built
        # Corresponds to the JSON property `architecture`
        # @return [String]
        attr_accessor :architecture
      
        # The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the
        # package manager version distributing a package.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The distribution channel-specific description of this package.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Version contains structured information about the version of the package. For
        # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
        # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
        # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
        # Corresponds to the JSON property `latestVersion`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Version]
        attr_accessor :latest_version
      
        # A freeform string denoting the maintainer of this package.
        # Corresponds to the JSON property `maintainer`
        # @return [String]
        attr_accessor :maintainer
      
        # The distribution channel-specific homepage for this package.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @architecture = args[:architecture] if args.key?(:architecture)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @description = args[:description] if args.key?(:description)
          @latest_version = args[:latest_version] if args.key?(:latest_version)
          @maintainer = args[:maintainer] if args.key?(:maintainer)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # DocumentNote represents an SPDX Document Creation Infromation section: https://
      # spdx.github.io/spdx-spec/2-document-creation-information/
      class DocumentNote
        include Google::Apis::Core::Hashable
      
        # Compliance with the SPDX specification includes populating the SPDX fields
        # therein with data related to such fields ("SPDX-Metadata")
        # Corresponds to the JSON property `dataLicence`
        # @return [String]
        attr_accessor :data_licence
      
        # Provide a reference number that can be used to understand how to parse and
        # interpret the rest of the file
        # Corresponds to the JSON property `spdxVersion`
        # @return [String]
        attr_accessor :spdx_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_licence = args[:data_licence] if args.key?(:data_licence)
          @spdx_version = args[:spdx_version] if args.key?(:spdx_version)
        end
      end
      
      # DocumentOccurrence represents an SPDX Document Creation Information section:
      # https://spdx.github.io/spdx-spec/2-document-creation-information/
      class DocumentOccurrence
        include Google::Apis::Core::Hashable
      
        # Identify when the SPDX file was originally created. The date is to be
        # specified according to combined date and time in UTC format as specified in
        # ISO 8601 standard
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A field for creators of the SPDX file to provide general comments about the
        # creation of the SPDX file or any other relevant comment not included in the
        # other fields
        # Corresponds to the JSON property `creatorComment`
        # @return [String]
        attr_accessor :creator_comment
      
        # Identify who (or what, in the case of a tool) created the SPDX file. If the
        # SPDX file was created by an individual, indicate the person's name
        # Corresponds to the JSON property `creators`
        # @return [Array<String>]
        attr_accessor :creators
      
        # A field for creators of the SPDX file content to provide comments to the
        # consumers of the SPDX document
        # Corresponds to the JSON property `documentComment`
        # @return [String]
        attr_accessor :document_comment
      
        # Identify any external SPDX documents referenced within this SPDX document
        # Corresponds to the JSON property `externalDocumentRefs`
        # @return [Array<String>]
        attr_accessor :external_document_refs
      
        # Identify the current SPDX document which may be referenced in relationships by
        # other files, packages internally and documents externally
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A field for creators of the SPDX file to provide the version of the SPDX
        # License List used when the SPDX file was created
        # Corresponds to the JSON property `licenseListVersion`
        # @return [String]
        attr_accessor :license_list_version
      
        # Provide an SPDX document specific namespace as a unique absolute Uniform
        # Resource Identifier (URI) as specified in RFC-3986, with the exception of the ‘
        # #’ delimiter
        # Corresponds to the JSON property `namespace`
        # @return [String]
        attr_accessor :namespace
      
        # Identify name of this document as designated by creator
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @creator_comment = args[:creator_comment] if args.key?(:creator_comment)
          @creators = args[:creators] if args.key?(:creators)
          @document_comment = args[:document_comment] if args.key?(:document_comment)
          @external_document_refs = args[:external_document_refs] if args.key?(:external_document_refs)
          @id = args[:id] if args.key?(:id)
          @license_list_version = args[:license_list_version] if args.key?(:license_list_version)
          @namespace = args[:namespace] if args.key?(:namespace)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
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
      
        # The bytes being signed
        # Corresponds to the JSON property `payload`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :payload
      
        # The type of payload being signed
        # Corresponds to the JSON property `payloadType`
        # @return [String]
        attr_accessor :payload_type
      
        # The signatures over the payload
        # Corresponds to the JSON property `signatures`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::EnvelopeSignature>]
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
      
      # A DSSE signature
      class EnvelopeSignature
        include Google::Apis::Core::Hashable
      
        # A reference id to the key being used for signing
        # Corresponds to the JSON property `keyid`
        # @return [String]
        attr_accessor :keyid
      
        # The signature itself
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # An External Reference allows a Package to reference an external source of
      # additional information, metadata, enumerations, asset identifiers, or
      # downloadable content believed to be relevant to the Package
      class ExternalRef
        include Google::Apis::Core::Hashable
      
        # An External Reference allows a Package to reference an external source of
        # additional information, metadata, enumerations, asset identifiers, or
        # downloadable content believed to be relevant to the Package
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Human-readable information about the purpose and target of the reference
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # The unique string with no spaces necessary to access the package-specific
        # information, metadata, or content within the target location
        # Corresponds to the JSON property `locator`
        # @return [String]
        attr_accessor :locator
      
        # Type of category (e.g. 'npm' for the PACKAGE_MANAGER category)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] if args.key?(:category)
          @comment = args[:comment] if args.key?(:comment)
          @locator = args[:locator] if args.key?(:locator)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Container message for hashes of byte content of files, used in Source messages
      # to verify integrity of source input to the build.
      class FileHashes
        include Google::Apis::Core::Hashable
      
        # Collection of file hashes.
        # Corresponds to the JSON property `fileHash`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::HashProp>]
        attr_accessor :file_hash
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_hash = args[:file_hash] if args.key?(:file_hash)
        end
      end
      
      # FileNote represents an SPDX File Information section: https://spdx.github.io/
      # spdx-spec/4-file-information/
      class FileNote
        include Google::Apis::Core::Hashable
      
        # Provide a unique identifier to match analysis information on each specific
        # file in a package
        # Corresponds to the JSON property `checksum`
        # @return [Array<String>]
        attr_accessor :checksum
      
        # This field provides information about the type of file identified
        # Corresponds to the JSON property `fileType`
        # @return [String]
        attr_accessor :file_type
      
        # Identify the full path and filename that corresponds to the file information
        # in this section
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @checksum = args[:checksum] if args.key?(:checksum)
          @file_type = args[:file_type] if args.key?(:file_type)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # FileOccurrence represents an SPDX File Information section: https://spdx.
      # github.io/spdx-spec/4-file-information/
      class FileOccurrence
        include Google::Apis::Core::Hashable
      
        # This field provides a place for the SPDX data creator to record, at the file
        # level, acknowledgements that may be needed to be communicated in some contexts
        # Corresponds to the JSON property `attributions`
        # @return [Array<String>]
        attr_accessor :attributions
      
        # This field provides a place for the SPDX file creator to record any general
        # comments about the file
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # This field provides a place for the SPDX file creator to record file
        # contributors
        # Corresponds to the JSON property `contributors`
        # @return [Array<String>]
        attr_accessor :contributors
      
        # Identify the copyright holder of the file, as well as any dates present
        # Corresponds to the JSON property `copyright`
        # @return [String]
        attr_accessor :copyright
      
        # This field contains the license information actually found in the file, if any
        # Corresponds to the JSON property `filesLicenseInfo`
        # @return [Array<String>]
        attr_accessor :files_license_info
      
        # Uniquely identify any element in an SPDX document which may be referenced by
        # other elements
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This field provides a place for the SPDX file creator to record any relevant
        # background references or analysis that went in to arriving at the Concluded
        # License for a file
        # Corresponds to the JSON property `licenseComments`
        # @return [String]
        attr_accessor :license_comments
      
        # This field contains the license the SPDX file creator has concluded as
        # governing the file or alternative values if the governing license cannot be
        # determined
        # Corresponds to the JSON property `licenseConcluded`
        # @return [String]
        attr_accessor :license_concluded
      
        # This field provides a place for the SPDX file creator to record license
        # notices or other such related notices found in the file
        # Corresponds to the JSON property `notice`
        # @return [String]
        attr_accessor :notice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributions = args[:attributions] if args.key?(:attributions)
          @comment = args[:comment] if args.key?(:comment)
          @contributors = args[:contributors] if args.key?(:contributors)
          @copyright = args[:copyright] if args.key?(:copyright)
          @files_license_info = args[:files_license_info] if args.key?(:files_license_info)
          @id = args[:id] if args.key?(:id)
          @license_comments = args[:license_comments] if args.key?(:license_comments)
          @license_concluded = args[:license_concluded] if args.key?(:license_concluded)
          @notice = args[:notice] if args.key?(:notice)
        end
      end
      
      # A set of properties that uniquely identify a given Docker image.
      class Fingerprint
        include Google::Apis::Core::Hashable
      
        # The layer-id of the final layer in the Docker image's v1 representation. This
        # field can be used as a filter in list requests.
        # Corresponds to the JSON property `v1Name`
        # @return [String]
        attr_accessor :v1_name
      
        # The ordered list of v2 blobs that represent a given image.
        # Corresponds to the JSON property `v2Blob`
        # @return [Array<String>]
        attr_accessor :v2_blob
      
        # Output only. The name of the image's v2 blobs computed via: [bottom] :=
        # v2_blobbottom := sha256(v2_blob[N] + " " + v2_name[N+1]) Only the name of the
        # final blob is kept. This field can be used as a filter in list requests.
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GetPolicyOptions]
        attr_accessor :options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @options = args[:options] if args.key?(:options)
        end
      end
      
      # Encapsulates settings provided to GetIamPolicy.
      class GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The policy format version to be returned. Valid values are 0, 1, and
        # 3. Requests specifying an invalid value will be rejected. Requests for
        # policies with any conditional bindings must specify version 3. Policies
        # without any conditional bindings may specify any valid value or leave the
        # field unset. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies).
        # Corresponds to the JSON property `requestedPolicyVersion`
        # @return [Fixnum]
        attr_accessor :requested_policy_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requested_policy_version = args[:requested_policy_version] if args.key?(:requested_policy_version)
        end
      end
      
      # A summary of how many vulnz occurrences there are per severity type. counts by
      # groups, or if we should have different summary messages like this.
      class GetVulnzOccurrencesSummaryResponse
        include Google::Apis::Core::Hashable
      
        # A map of how many occurrences were found for each severity.
        # Corresponds to the JSON property `counts`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::SeverityCount>]
        attr_accessor :counts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @counts = args[:counts] if args.key?(:counts)
        end
      end
      
      # An alias to a repo revision.
      class GoogleDevtoolsContaineranalysisV1alpha1AliasContext
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
      
      # A CloudRepoSourceContext denotes a particular revision in a Google Cloud
      # Source Repo.
      class GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext
        include Google::Apis::Core::Hashable
      
        # An alias to a repo revision.
        # Corresponds to the JSON property `aliasContext`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1AliasContext]
        attr_accessor :alias_context
      
        # A unique identifier for a Cloud Repo.
        # Corresponds to the JSON property `repoId`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1RepoId]
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
      
      # A SourceContext referring to a Gerrit project.
      class GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext
        include Google::Apis::Core::Hashable
      
        # An alias to a repo revision.
        # Corresponds to the JSON property `aliasContext`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1AliasContext]
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
      class GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext
        include Google::Apis::Core::Hashable
      
        # Required. Git commit hash.
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
      
      # Metadata for all operations used and required for all operations that created
      # by Container Analysis Providers
      class GoogleDevtoolsContaineranalysisV1alpha1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The time this operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time that this operation was marked completed or failed.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
        end
      end
      
      # Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31)
      # and a repo name within that project.
      class GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId
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
      
      # A unique identifier for a Cloud Repo.
      class GoogleDevtoolsContaineranalysisV1alpha1RepoId
        include Google::Apis::Core::Hashable
      
        # Selects a repo using a Google Cloud Platform project ID (e.g., winged-cargo-31)
        # and a repo name within that project.
        # Corresponds to the JSON property `projectRepoId`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1ProjectRepoId]
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
      
      # A SourceContext is a reference to a tree of files. A SourceContext together
      # with a path point to a unique revision of a single file or directory.
      class GoogleDevtoolsContaineranalysisV1alpha1SourceContext
        include Google::Apis::Core::Hashable
      
        # A CloudRepoSourceContext denotes a particular revision in a Google Cloud
        # Source Repo.
        # Corresponds to the JSON property `cloudRepo`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1CloudRepoSourceContext]
        attr_accessor :cloud_repo
      
        # A SourceContext referring to a Gerrit project.
        # Corresponds to the JSON property `gerrit`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1GerritSourceContext]
        attr_accessor :gerrit
      
        # A GitSourceContext denotes a particular revision in a third party Git
        # repository (e.g., GitHub).
        # Corresponds to the JSON property `git`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1GitSourceContext]
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
      
      # Container message for hash values.
      class HashProp
        include Google::Apis::Core::Hashable
      
        # The type of hash that was performed.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The hash value.
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
      
      # 
      class InTotoProvenance
        include Google::Apis::Core::Hashable
      
        # required
        # Corresponds to the JSON property `builderConfig`
        # @return [Google::Apis::ContaineranalysisV1alpha1::BuilderConfig]
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
        # @return [Google::Apis::ContaineranalysisV1alpha1::Metadata]
        attr_accessor :metadata
      
        # Steps taken to build the artifact. For a TaskRun, typically each container
        # corresponds to one step in the recipe.
        # Corresponds to the JSON property `recipe`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Recipe]
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
      
        # "https://in-toto.io/Provenance/v0.1" for InTotoProvenance.
        # Corresponds to the JSON property `predicateType`
        # @return [String]
        attr_accessor :predicate_type
      
        # 
        # Corresponds to the JSON property `provenance`
        # @return [Google::Apis::ContaineranalysisV1alpha1::InTotoProvenance]
        attr_accessor :provenance
      
        # 
        # Corresponds to the JSON property `subject`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Subject>]
        attr_accessor :subject
      
        # Always "https://in-toto.io/Statement/v0.1".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @predicate_type = args[:predicate_type] if args.key?(:predicate_type)
          @provenance = args[:provenance] if args.key?(:provenance)
          @subject = args[:subject] if args.key?(:subject)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # This represents how a particular software package may be installed on a system.
      class Installation
        include Google::Apis::Core::Hashable
      
        # All of the places within the filesystem versions of this package have been
        # found.
        # Corresponds to the JSON property `location`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Location>]
        attr_accessor :location
      
        # Output only. The name of the installed package.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Layer holds metadata specific to a layer of a Docker image.
      class Layer
        include Google::Apis::Core::Hashable
      
        # The recovered arguments to the Dockerfile directive.
        # Corresponds to the JSON property `arguments`
        # @return [String]
        attr_accessor :arguments
      
        # The recovered Dockerfile directive used to construct this layer.
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
      
      # Response including listed occurrences for a note.
      class ListNoteOccurrencesResponse
        include Google::Apis::Core::Hashable
      
        # Token to receive the next page of notes.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The occurrences attached to the specified note.
        # Corresponds to the JSON property `occurrences`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Occurrence>]
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
      
      # Response including listed notes.
      class ListNotesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the list response. It should be used as
        # page_token for the following request. An empty value means no more result.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The occurrences requested
        # Corresponds to the JSON property `notes`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Note>]
        attr_accessor :notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @notes = args[:notes] if args.key?(:notes)
        end
      end
      
      # Response including listed active occurrences.
      class ListOccurrencesResponse
        include Google::Apis::Core::Hashable
      
        # The next pagination token in the list response. It should be used as `
        # page_token` for the following request. An empty value means no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The occurrences requested.
        # Corresponds to the JSON property `occurrences`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Occurrence>]
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
      
      # A list of scan configs for the project.
      class ListScanConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A page token to pass in order to get more scan configs.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The set of scan configs.
        # Corresponds to the JSON property `scanConfigs`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::ScanConfig>]
        attr_accessor :scan_configs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @scan_configs = args[:scan_configs] if args.key?(:scan_configs)
        end
      end
      
      # An occurrence of a particular package installation found within a system's
      # filesystem. e.g. glibc was found in /var/lib/dpkg/status
      class Location
        include Google::Apis::Core::Hashable
      
        # The cpe_uri in [cpe format](https://cpe.mitre.org/specification/) denoting the
        # package manager version distributing a package.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The path from which we gathered that this package/version is installed.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Version contains structured information about the version of the package. For
        # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
        # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
        # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Version]
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
        # @return [Google::Apis::ContaineranalysisV1alpha1::Completeness]
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
      
      # Details about files that caused a compliance check to fail.
      class NonCompliantFile
        include Google::Apis::Core::Hashable
      
        # Command to display the non-compliant files.
        # Corresponds to the JSON property `displayCommand`
        # @return [String]
        attr_accessor :display_command
      
        # display_command is a single command that can be used to display a list of non
        # compliant files. When there is no such command, we can also iterate a list of
        # non compliant file using 'path'. Empty if `display_command` is set.
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
      
      # Provides a detailed description of a `Note`.
      class Note
        include Google::Apis::Core::Hashable
      
        # Note kind that represents a logical attestation "role" or "authority". For
        # example, an organization might have one `AttestationAuthority` for "QA" and
        # one for "build". This Note is intended to act strictly as a grouping mechanism
        # for the attached Occurrences (Attestations). This grouping mechanism also
        # provides a security boundary, since IAM ACLs gate the ability for a principle
        # to attach an Occurrence to a given Note. It also provides a single point of
        # lookup to find all attached Attestation Occurrences, even if they don't all
        # live in the same project.
        # Corresponds to the JSON property `attestationAuthority`
        # @return [Google::Apis::ContaineranalysisV1alpha1::AttestationAuthority]
        attr_accessor :attestation_authority
      
        # Basis describes the base image portion (Note) of the DockerImage relationship.
        # Linked occurrences are derived from this or an equivalent image via: FROM Or
        # an equivalent reference, e.g. a tag of the resource_url.
        # Corresponds to the JSON property `baseImage`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Basis]
        attr_accessor :base_image
      
        # Note holding the version of the provider's builder and the signature of the
        # provenance message in linked BuildDetails.
        # Corresponds to the JSON property `buildType`
        # @return [Google::Apis::ContaineranalysisV1alpha1::BuildType]
        attr_accessor :build_type
      
        # ComplianceNote encapsulates all information about a specific compliance check.
        # Corresponds to the JSON property `compliance`
        # @return [Google::Apis::ContaineranalysisV1alpha1::ComplianceNote]
        attr_accessor :compliance
      
        # Output only. The time this note was created. This field can be used as a
        # filter in list requests.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # An artifact that can be deployed in some runtime.
        # Corresponds to the JSON property `deployable`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Deployable]
        attr_accessor :deployable
      
        # A note that indicates a type of analysis a provider would perform. This note
        # exists in a provider's project. A `Discovery` occurrence is created in a
        # consumer's project at the start of analysis. The occurrence's operation will
        # indicate the status of the analysis. Absence of an occurrence linked to this
        # note for a resource indicates that analysis hasn't started.
        # Corresponds to the JSON property `discovery`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Discovery]
        attr_accessor :discovery
      
        # A note describing an attestation
        # Corresponds to the JSON property `dsseAttestation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::DsseAttestationNote]
        attr_accessor :dsse_attestation
      
        # Time of expiration for this note, null if note does not expire.
        # Corresponds to the JSON property `expirationTime`
        # @return [String]
        attr_accessor :expiration_time
      
        # Output only. This explicitly denotes which kind of note is specified. This
        # field can be used as a filter in list requests.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A detailed description of this `Note`.
        # Corresponds to the JSON property `longDescription`
        # @return [String]
        attr_accessor :long_description
      
        # The name of the note in the form "projects/`provider_project_id`/notes/`
        # NOTE_ID`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # This represents a particular package that is distributed over various channels.
        # e.g. glibc (aka libc6) is distributed by many, at various versions.
        # Corresponds to the JSON property `package`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Package]
        attr_accessor :package
      
        # URLs associated with this note
        # Corresponds to the JSON property `relatedUrl`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::RelatedUrl>]
        attr_accessor :related_url
      
        # DocumentNote represents an SPDX Document Creation Infromation section: https://
        # spdx.github.io/spdx-spec/2-document-creation-information/
        # Corresponds to the JSON property `sbom`
        # @return [Google::Apis::ContaineranalysisV1alpha1::DocumentNote]
        attr_accessor :sbom
      
        # A one sentence description of this `Note`.
        # Corresponds to the JSON property `shortDescription`
        # @return [String]
        attr_accessor :short_description
      
        # FileNote represents an SPDX File Information section: https://spdx.github.io/
        # spdx-spec/4-file-information/
        # Corresponds to the JSON property `spdxFile`
        # @return [Google::Apis::ContaineranalysisV1alpha1::FileNote]
        attr_accessor :spdx_file
      
        # PackageNote represents an SPDX Package Information section: https://spdx.
        # github.io/spdx-spec/3-package-information/
        # Corresponds to the JSON property `spdxPackage`
        # @return [Google::Apis::ContaineranalysisV1alpha1::PackageNote]
        attr_accessor :spdx_package
      
        # RelationshipNote represents an SPDX Relationship section: https://spdx.github.
        # io/spdx-spec/7-relationships-between-SPDX-elements/
        # Corresponds to the JSON property `spdxRelationship`
        # @return [Google::Apis::ContaineranalysisV1alpha1::RelationshipNote]
        attr_accessor :spdx_relationship
      
        # Output only. The time this note was last updated. This field can be used as a
        # filter in list requests.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # An Upgrade Note represents a potential upgrade of a package to a given version.
        # For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2),
        # there will be a Upgrade Note.
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::ContaineranalysisV1alpha1::UpgradeNote]
        attr_accessor :upgrade
      
        # VulnerabilityType provides metadata about a security vulnerability.
        # Corresponds to the JSON property `vulnerabilityType`
        # @return [Google::Apis::ContaineranalysisV1alpha1::VulnerabilityType]
        attr_accessor :vulnerability_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation_authority = args[:attestation_authority] if args.key?(:attestation_authority)
          @base_image = args[:base_image] if args.key?(:base_image)
          @build_type = args[:build_type] if args.key?(:build_type)
          @compliance = args[:compliance] if args.key?(:compliance)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployable = args[:deployable] if args.key?(:deployable)
          @discovery = args[:discovery] if args.key?(:discovery)
          @dsse_attestation = args[:dsse_attestation] if args.key?(:dsse_attestation)
          @expiration_time = args[:expiration_time] if args.key?(:expiration_time)
          @kind = args[:kind] if args.key?(:kind)
          @long_description = args[:long_description] if args.key?(:long_description)
          @name = args[:name] if args.key?(:name)
          @package = args[:package] if args.key?(:package)
          @related_url = args[:related_url] if args.key?(:related_url)
          @sbom = args[:sbom] if args.key?(:sbom)
          @short_description = args[:short_description] if args.key?(:short_description)
          @spdx_file = args[:spdx_file] if args.key?(:spdx_file)
          @spdx_package = args[:spdx_package] if args.key?(:spdx_package)
          @spdx_relationship = args[:spdx_relationship] if args.key?(:spdx_relationship)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
          @vulnerability_type = args[:vulnerability_type] if args.key?(:vulnerability_type)
        end
      end
      
      # `Occurrence` includes information about analysis occurrences for an image.
      class Occurrence
        include Google::Apis::Core::Hashable
      
        # Occurrence that represents a single "attestation". The authenticity of an
        # Attestation can be verified using the attached signature. If the verifier
        # trusts the public key of the signer, then verifying the signature is
        # sufficient to establish trust. In this circumstance, the AttestationAuthority
        # to which this Attestation is attached is primarily useful for look-up (how to
        # find this Attestation if you already know the Authority and artifact to be
        # verified) and intent (which authority was this attestation intended to sign
        # for).
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Attestation]
        attr_accessor :attestation
      
        # Message encapsulating build provenance details.
        # Corresponds to the JSON property `buildDetails`
        # @return [Google::Apis::ContaineranalysisV1alpha1::BuildDetails]
        attr_accessor :build_details
      
        # An indication that the compliance checks in the associated ComplianceNote were
        # not satisfied for particular resources or a specified reason.
        # Corresponds to the JSON property `compliance`
        # @return [Google::Apis::ContaineranalysisV1alpha1::ComplianceOccurrence]
        attr_accessor :compliance
      
        # Output only. The time this `Occurrence` was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The period during which some deployable was active in a runtime.
        # Corresponds to the JSON property `deployment`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Deployment]
        attr_accessor :deployment
      
        # Derived describes the derived image portion (Occurrence) of the DockerImage
        # relationship. This image would be produced from a Dockerfile with FROM .
        # Corresponds to the JSON property `derivedImage`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Derived]
        attr_accessor :derived_image
      
        # Provides information about the scan status of a discovered resource.
        # Corresponds to the JSON property `discovered`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Discovered]
        attr_accessor :discovered
      
        # An occurrence describing an attestation on a resource
        # Corresponds to the JSON property `dsseAttestation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::DsseAttestationOccurrence]
        attr_accessor :dsse_attestation
      
        # MUST match https://github.com/secure-systems-lab/dsse/blob/master/envelope.
        # proto. An authenticated message of arbitrary type.
        # Corresponds to the JSON property `envelope`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Envelope]
        attr_accessor :envelope
      
        # This represents how a particular software package may be installed on a system.
        # Corresponds to the JSON property `installation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Installation]
        attr_accessor :installation
      
        # Output only. This explicitly denotes which of the `Occurrence` details are
        # specified. This field can be used as a filter in list requests.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Output only. The name of the `Occurrence` in the form "projects/`project_id`/
        # occurrences/`OCCURRENCE_ID`"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # An analysis note associated with this image, in the form "providers/`
        # provider_id`/notes/`NOTE_ID`" This field can be used as a filter in list
        # requests.
        # Corresponds to the JSON property `noteName`
        # @return [String]
        attr_accessor :note_name
      
        # A description of actions that can be taken to remedy the `Note`
        # Corresponds to the JSON property `remediation`
        # @return [String]
        attr_accessor :remediation
      
        # Resource is an entity that can have metadata. E.g., a Docker image.
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Resource]
        attr_accessor :resource
      
        # The unique URL of the image or the container for which the `Occurrence`
        # applies. For example, https://gcr.io/project/image@sha256:foo This field can
        # be used as a filter in list requests.
        # Corresponds to the JSON property `resourceUrl`
        # @return [String]
        attr_accessor :resource_url
      
        # DocumentOccurrence represents an SPDX Document Creation Information section:
        # https://spdx.github.io/spdx-spec/2-document-creation-information/
        # Corresponds to the JSON property `sbom`
        # @return [Google::Apis::ContaineranalysisV1alpha1::DocumentOccurrence]
        attr_accessor :sbom
      
        # FileOccurrence represents an SPDX File Information section: https://spdx.
        # github.io/spdx-spec/4-file-information/
        # Corresponds to the JSON property `spdxFile`
        # @return [Google::Apis::ContaineranalysisV1alpha1::FileOccurrence]
        attr_accessor :spdx_file
      
        # PackageOccurrence represents an SPDX Package Information section: https://spdx.
        # github.io/spdx-spec/3-package-information/
        # Corresponds to the JSON property `spdxPackage`
        # @return [Google::Apis::ContaineranalysisV1alpha1::PackageOccurrence]
        attr_accessor :spdx_package
      
        # RelationshipOccurrence represents an SPDX Relationship section: https://spdx.
        # github.io/spdx-spec/7-relationships-between-SPDX-elements/
        # Corresponds to the JSON property `spdxRelationship`
        # @return [Google::Apis::ContaineranalysisV1alpha1::RelationshipOccurrence]
        attr_accessor :spdx_relationship
      
        # Output only. The time this `Occurrence` was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # An Upgrade Occurrence represents that a specific resource_url could install a
        # specific upgrade. This presence is supplied via local sources (i.e. it is
        # present in the mirror and the running system has noticed its availability).
        # Corresponds to the JSON property `upgrade`
        # @return [Google::Apis::ContaineranalysisV1alpha1::UpgradeOccurrence]
        attr_accessor :upgrade
      
        # Used by Occurrence to point to where the vulnerability exists and how to fix
        # it.
        # Corresponds to the JSON property `vulnerabilityDetails`
        # @return [Google::Apis::ContaineranalysisV1alpha1::VulnerabilityDetails]
        attr_accessor :vulnerability_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation = args[:attestation] if args.key?(:attestation)
          @build_details = args[:build_details] if args.key?(:build_details)
          @compliance = args[:compliance] if args.key?(:compliance)
          @create_time = args[:create_time] if args.key?(:create_time)
          @deployment = args[:deployment] if args.key?(:deployment)
          @derived_image = args[:derived_image] if args.key?(:derived_image)
          @discovered = args[:discovered] if args.key?(:discovered)
          @dsse_attestation = args[:dsse_attestation] if args.key?(:dsse_attestation)
          @envelope = args[:envelope] if args.key?(:envelope)
          @installation = args[:installation] if args.key?(:installation)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @note_name = args[:note_name] if args.key?(:note_name)
          @remediation = args[:remediation] if args.key?(:remediation)
          @resource = args[:resource] if args.key?(:resource)
          @resource_url = args[:resource_url] if args.key?(:resource_url)
          @sbom = args[:sbom] if args.key?(:sbom)
          @spdx_file = args[:spdx_file] if args.key?(:spdx_file)
          @spdx_package = args[:spdx_package] if args.key?(:spdx_package)
          @spdx_relationship = args[:spdx_relationship] if args.key?(:spdx_relationship)
          @update_time = args[:update_time] if args.key?(:update_time)
          @upgrade = args[:upgrade] if args.key?(:upgrade)
          @vulnerability_details = args[:vulnerability_details] if args.key?(:vulnerability_details)
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
        # @return [Google::Apis::ContaineranalysisV1alpha1::Status]
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
      
      # This represents a particular package that is distributed over various channels.
      # e.g. glibc (aka libc6) is distributed by many, at various versions.
      class Package
        include Google::Apis::Core::Hashable
      
        # The various channels by which a package is distributed.
        # Corresponds to the JSON property `distribution`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Distribution>]
        attr_accessor :distribution
      
        # The name of the package.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution = args[:distribution] if args.key?(:distribution)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # This message wraps a location affected by a vulnerability and its associated
      # fix (if one is available).
      class PackageIssue
        include Google::Apis::Core::Hashable
      
        # The location of the vulnerability
        # Corresponds to the JSON property `affectedLocation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation]
        attr_accessor :affected_location
      
        # The location of the vulnerability
        # Corresponds to the JSON property `fixedLocation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::VulnerabilityLocation]
        attr_accessor :fixed_location
      
        # 
        # Corresponds to the JSON property `severityName`
        # @return [String]
        attr_accessor :severity_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @affected_location = args[:affected_location] if args.key?(:affected_location)
          @fixed_location = args[:fixed_location] if args.key?(:fixed_location)
          @severity_name = args[:severity_name] if args.key?(:severity_name)
        end
      end
      
      # PackageNote represents an SPDX Package Information section: https://spdx.
      # github.io/spdx-spec/3-package-information/
      class PackageNote
        include Google::Apis::Core::Hashable
      
        # Indicates whether the file content of this package has been available for or
        # subjected to analysis when creating the SPDX document
        # Corresponds to the JSON property `analyzed`
        # @return [Boolean]
        attr_accessor :analyzed
        alias_method :analyzed?, :analyzed
      
        # A place for the SPDX data creator to record, at the package level,
        # acknowledgements that may be needed to be communicated in some contexts
        # Corresponds to the JSON property `attribution`
        # @return [String]
        attr_accessor :attribution
      
        # Provide an independently reproducible mechanism that permits unique
        # identification of a specific package that correlates to the data in this SPDX
        # file
        # Corresponds to the JSON property `checksum`
        # @return [String]
        attr_accessor :checksum
      
        # Identify the copyright holders of the package, as well as any dates present
        # Corresponds to the JSON property `copyright`
        # @return [String]
        attr_accessor :copyright
      
        # A more detailed description of the package
        # Corresponds to the JSON property `detailedDescription`
        # @return [String]
        attr_accessor :detailed_description
      
        # This section identifies the download Universal Resource Locator (URL), or a
        # specific location within a version control system (VCS) for the package at the
        # time that the SPDX file was created
        # Corresponds to the JSON property `downloadLocation`
        # @return [String]
        attr_accessor :download_location
      
        # ExternalRef
        # Corresponds to the JSON property `externalRefs`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::ExternalRef>]
        attr_accessor :external_refs
      
        # Contain the license the SPDX file creator has concluded as governing the This
        # field is to contain a list of all licenses found in the package. The
        # relationship between licenses (i.e., conjunctive, disjunctive) is not
        # specified in this field – it is simply a listing of all licenses found
        # Corresponds to the JSON property `filesLicenseInfo`
        # @return [Array<String>]
        attr_accessor :files_license_info
      
        # Provide a place for the SPDX file creator to record a web site that serves as
        # the package's home page
        # Corresponds to the JSON property `homePage`
        # @return [String]
        attr_accessor :home_page
      
        # List the licenses that have been declared by the authors of the package
        # Corresponds to the JSON property `licenseDeclared`
        # @return [String]
        attr_accessor :license_declared
      
        # If the package identified in the SPDX file originated from a different person
        # or organization than identified as Package Supplier, this field identifies
        # from where or whom the package originally came
        # Corresponds to the JSON property `originator`
        # @return [String]
        attr_accessor :originator
      
        # A short description of the package
        # Corresponds to the JSON property `summaryDescription`
        # @return [String]
        attr_accessor :summary_description
      
        # Identify the actual distribution source for the package/directory identified
        # in the SPDX file
        # Corresponds to the JSON property `supplier`
        # @return [String]
        attr_accessor :supplier
      
        # Identify the full name of the package as given by the Package Originator
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # This field provides an independently reproducible mechanism identifying
        # specific contents of a package based on the actual files (except the SPDX file
        # itself, if it is included in the package) that make up each package and that
        # correlates to the data in this SPDX file
        # Corresponds to the JSON property `verificationCode`
        # @return [String]
        attr_accessor :verification_code
      
        # Identify the version of the package
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyzed = args[:analyzed] if args.key?(:analyzed)
          @attribution = args[:attribution] if args.key?(:attribution)
          @checksum = args[:checksum] if args.key?(:checksum)
          @copyright = args[:copyright] if args.key?(:copyright)
          @detailed_description = args[:detailed_description] if args.key?(:detailed_description)
          @download_location = args[:download_location] if args.key?(:download_location)
          @external_refs = args[:external_refs] if args.key?(:external_refs)
          @files_license_info = args[:files_license_info] if args.key?(:files_license_info)
          @home_page = args[:home_page] if args.key?(:home_page)
          @license_declared = args[:license_declared] if args.key?(:license_declared)
          @originator = args[:originator] if args.key?(:originator)
          @summary_description = args[:summary_description] if args.key?(:summary_description)
          @supplier = args[:supplier] if args.key?(:supplier)
          @title = args[:title] if args.key?(:title)
          @verification_code = args[:verification_code] if args.key?(:verification_code)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # PackageOccurrence represents an SPDX Package Information section: https://spdx.
      # github.io/spdx-spec/3-package-information/
      class PackageOccurrence
        include Google::Apis::Core::Hashable
      
        # A place for the SPDX file creator to record any general comments about the
        # package being described
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Provide the actual file name of the package, or path of the directory being
        # treated as a package
        # Corresponds to the JSON property `filename`
        # @return [String]
        attr_accessor :filename
      
        # Uniquely identify any element in an SPDX document which may be referenced by
        # other elements
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # This field provides a place for the SPDX file creator to record any relevant
        # background information or analysis that went in to arriving at the Concluded
        # License for a package
        # Corresponds to the JSON property `licenseComments`
        # @return [String]
        attr_accessor :license_comments
      
        # package or alternative values, if the governing license cannot be determined
        # Corresponds to the JSON property `licenseConcluded`
        # @return [String]
        attr_accessor :license_concluded
      
        # Provide a place for the SPDX file creator to record any relevant background
        # information or additional comments about the origin of the package
        # Corresponds to the JSON property `sourceInfo`
        # @return [String]
        attr_accessor :source_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comment = args[:comment] if args.key?(:comment)
          @filename = args[:filename] if args.key?(:filename)
          @id = args[:id] if args.key?(:id)
          @license_comments = args[:license_comments] if args.key?(:license_comments)
          @license_concluded = args[:license_concluded] if args.key?(:license_concluded)
          @source_info = args[:source_info] if args.key?(:source_info)
        end
      end
      
      # An attestation wrapper with a PGP-compatible signature. This message only
      # supports `ATTACHED` signatures, where the payload that is signed is included
      # alongside the signature itself in the same file.
      class PgpSignedAttestation
        include Google::Apis::Core::Hashable
      
        # Type (for example schema) of the attestation payload that was signed. The
        # verifier must ensure that the provided type is one that the verifier supports,
        # and that the attestation payload is a valid instantiation of that type (for
        # example by validating a JSON schema).
        # Corresponds to the JSON property `contentType`
        # @return [String]
        attr_accessor :content_type
      
        # The cryptographic fingerprint of the key used to generate the signature, as
        # output by, e.g. `gpg --list-keys`. This should be the version 4, full 160-bit
        # fingerprint, expressed as a 40 character hexadecimal string. See https://tools.
        # ietf.org/html/rfc4880#section-12.2 for details. Implementations may choose to
        # acknowledge "LONG", "SHORT", or other abbreviated key IDs, but only the full
        # fingerprint is guaranteed to work. In gpg, the full fingerprint can be
        # retrieved from the `fpr` field returned when calling --list-keys with --with-
        # colons. For example: ``` gpg --with-colons --with-fingerprint --force-v4-certs
        # \ --list-keys attester@example.com tru::1:1513631572:0:3:1:5 pub:...... fpr::::
        # :::::24FF6481B76AC91E66A00AC657A93A81EF3AE6FB: ``` Above, the fingerprint is `
        # 24FF6481B76AC91E66A00AC657A93A81EF3AE6FB`.
        # Corresponds to the JSON property `pgpKeyId`
        # @return [String]
        attr_accessor :pgp_key_id
      
        # The raw content of the signature, as output by GNU Privacy Guard (GPG) or
        # equivalent. Since this message only supports attached signatures, the payload
        # that was signed must be attached. While the signature format supported is
        # dependent on the verification implementation, currently only ASCII-armored (`--
        # armor` to gpg), non-clearsigned (`--sign` rather than `--clearsign` to gpg)
        # are supported. Concretely, `gpg --sign --armor --output=signature.gpg payload.
        # json` will create the signature content expected in this field in `signature.
        # gpg` for the `payload.json` attestation payload.
        # Corresponds to the JSON property `signature`
        # @return [String]
        attr_accessor :signature
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_type = args[:content_type] if args.key?(:content_type)
          @pgp_key_id = args[:pgp_key_id] if args.key?(:pgp_key_id)
          @signature = args[:signature] if args.key?(:signature)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members` to a single `role`. Members can be
      # user accounts, service accounts, Google groups, and domains (such as G Suite).
      # A `role` is a named list of permissions; each `role` can be an IAM predefined
      # role or a user-created custom role. For some types of Google Cloud resources,
      # a `binding` can also specify a `condition`, which is a logical expression that
      # allows access to a resource only if the expression evaluates to `true`. A
      # condition can add constraints based on attributes of the request, the resource,
      # or both. To learn which resources support conditions in their IAM policies,
      # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
      # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
      # members: - user:mike@example.com - group:admins@example.com - domain:google.
      # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
      # description of IAM and its features, see the [IAM documentation](https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members` to a `role`. Optionally, may specify a `
        # condition` that determines how and when the `bindings` are applied. Each of
        # the `bindings` must contain at least one member.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Steps taken to build the artifact. For a TaskRun, typically each container
      # corresponds to one step in the recipe.
      class Recipe
        include Google::Apis::Core::Hashable
      
        # Collection of all external inputs that influenced the build on top of recipe.
        # definedInMaterial and recipe.entryPoint. For example, if the recipe type were "
        # make", then this might be the flags passed to make aside from the target,
        # which is captured in recipe.entryPoint.
        # Corresponds to the JSON property `arguments`
        # @return [Array<String>]
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
        # part of policy.
        # Corresponds to the JSON property `environment`
        # @return [Hash<String,String>]
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
      
      # Metadata for any related URL information
      class RelatedUrl
        include Google::Apis::Core::Hashable
      
        # Label to describe usage of the URL
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # Specific URL to associate with the note
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
      
      # RelationshipNote represents an SPDX Relationship section: https://spdx.github.
      # io/spdx-spec/7-relationships-between-SPDX-elements/
      class RelationshipNote
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # RelationshipOccurrence represents an SPDX Relationship section: https://spdx.
      # github.io/spdx-spec/7-relationships-between-SPDX-elements/
      class RelationshipOccurrence
        include Google::Apis::Core::Hashable
      
        # A place for the SPDX file creator to record any general comments about the
        # relationship
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # Also referred to as SPDXRef-A The source SPDX element (file, package, etc)
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # Also referred to as SPDXRef-B The target SPDC element (file, package, etc) In
        # cases where there are "known unknowns", the use of the keyword NOASSERTION can
        # be used The keywords NONE can be used to indicate that an SPDX element (
        # package/file/snippet) has no other elements connected by some relationship to
        # it
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # The type of relationship between the source and target SPDX elements
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @comment = args[:comment] if args.key?(:comment)
          @source = args[:source] if args.key?(:source)
          @target = args[:target] if args.key?(:target)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # RepoSource describes the location of the source in a Google Cloud Source
      # Repository.
      class RepoSource
        include Google::Apis::Core::Hashable
      
        # Name of the branch to build.
        # Corresponds to the JSON property `branchName`
        # @return [String]
        attr_accessor :branch_name
      
        # Explicit commit SHA to build.
        # Corresponds to the JSON property `commitSha`
        # @return [String]
        attr_accessor :commit_sha
      
        # ID of the project that owns the repo.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Name of the repo.
        # Corresponds to the JSON property `repoName`
        # @return [String]
        attr_accessor :repo_name
      
        # Name of the tag to build.
        # Corresponds to the JSON property `tagName`
        # @return [String]
        attr_accessor :tag_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @branch_name = args[:branch_name] if args.key?(:branch_name)
          @commit_sha = args[:commit_sha] if args.key?(:commit_sha)
          @project_id = args[:project_id] if args.key?(:project_id)
          @repo_name = args[:repo_name] if args.key?(:repo_name)
          @tag_name = args[:tag_name] if args.key?(:tag_name)
        end
      end
      
      # Resource is an entity that can have metadata. E.g., a Docker image.
      class Resource
        include Google::Apis::Core::Hashable
      
        # Container message for hash values.
        # Corresponds to the JSON property `contentHash`
        # @return [Google::Apis::ContaineranalysisV1alpha1::HashProp]
        attr_accessor :content_hash
      
        # The name of the resource. E.g., the name of a Docker image - "Debian".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique URI of the resource. E.g., "https://gcr.io/project/image@sha256:foo"
        # for a Docker image.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content_hash = args[:content_hash] if args.key?(:content_hash)
          @name = args[:name] if args.key?(:name)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Indicates various scans and whether they are turned on or off.
      class ScanConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The time this scan config was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. A human-readable description of what the `ScanConfig` does.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Indicates whether the Scan is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Output only. The name of the ScanConfig in the form “projects/`project_id`/
        # scanConfigs/`scan_config_id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time this scan config was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @enabled = args[:enabled] if args.key?(:enabled)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members` to a single `role`. Members can be
        # user accounts, service accounts, Google groups, and domains (such as G Suite).
        # A `role` is a named list of permissions; each `role` can be an IAM predefined
        # role or a user-created custom role. For some types of Google Cloud resources,
        # a `binding` can also specify a `condition`, which is a logical expression that
        # allows access to a resource only if the expression evaluates to `true`. A
        # condition can add constraints based on attributes of the request, the resource,
        # or both. To learn which resources support conditions in their IAM policies,
        # see the [IAM documentation](https://cloud.google.com/iam/help/conditions/
        # resource-policies). **JSON example:** ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:** bindings: -
        # members: - user:mike@example.com - group:admins@example.com - domain:google.
        # com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') - etag: BwWWja0YfJA= - version: 3 For a
        # description of IAM and its features, see the [IAM documentation](https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # The number of occurrences created for a specific severity.
      class SeverityCount
        include Google::Apis::Core::Hashable
      
        # The number of occurrences with the severity.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # The severity of the occurrences.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @severity = args[:severity] if args.key?(:severity)
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
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SourceContext>]
        attr_accessor :additional_contexts
      
        # StorageSource describes the location of the source in an archive file in
        # Google Cloud Storage.
        # Corresponds to the JSON property `artifactStorageSource`
        # @return [Google::Apis::ContaineranalysisV1alpha1::StorageSource]
        attr_accessor :artifact_storage_source
      
        # A SourceContext is a reference to a tree of files. A SourceContext together
        # with a path point to a unique revision of a single file or directory.
        # Corresponds to the JSON property `context`
        # @return [Google::Apis::ContaineranalysisV1alpha1::GoogleDevtoolsContaineranalysisV1alpha1SourceContext]
        attr_accessor :context
      
        # Hash(es) of the build source, which can be used to verify that the original
        # source integrity was maintained in the build. The keys to this map are file
        # paths used as build source and the values contain the hash values for those
        # files. If the build source came in a single package such as a gzipped tarfile (
        # .tar.gz), the FileHash will be for the single path to that file.
        # Corresponds to the JSON property `fileHashes`
        # @return [Hash<String,Google::Apis::ContaineranalysisV1alpha1::FileHashes>]
        attr_accessor :file_hashes
      
        # RepoSource describes the location of the source in a Google Cloud Source
        # Repository.
        # Corresponds to the JSON property `repoSource`
        # @return [Google::Apis::ContaineranalysisV1alpha1::RepoSource]
        attr_accessor :repo_source
      
        # StorageSource describes the location of the source in an archive file in
        # Google Cloud Storage.
        # Corresponds to the JSON property `storageSource`
        # @return [Google::Apis::ContaineranalysisV1alpha1::StorageSource]
        attr_accessor :storage_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_contexts = args[:additional_contexts] if args.key?(:additional_contexts)
          @artifact_storage_source = args[:artifact_storage_source] if args.key?(:artifact_storage_source)
          @context = args[:context] if args.key?(:context)
          @file_hashes = args[:file_hashes] if args.key?(:file_hashes)
          @repo_source = args[:repo_source] if args.key?(:repo_source)
          @storage_source = args[:storage_source] if args.key?(:storage_source)
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
      
      # StorageSource describes the location of the source in an archive file in
      # Google Cloud Storage.
      class StorageSource
        include Google::Apis::Core::Hashable
      
        # Google Cloud Storage bucket containing source (see [Bucket Name Requirements] (
        # https://cloud.google.com/storage/docs/bucket-naming#requirements)).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Google Cloud Storage generation for the object.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Google Cloud Storage object containing source.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # 
      class Subject
        include Google::Apis::Core::Hashable
      
        # "": ""
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as '*' or 'storage.*') are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Request for updating an existing operation
      class UpdateOperationRequest
        include Google::Apis::Core::Hashable
      
        # This resource represents a long-running operation that is the result of a
        # network API call.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Operation]
        attr_accessor :operation
      
        # The fields to update.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation = args[:operation] if args.key?(:operation)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The Upgrade Distribution represents metadata about the Upgrade for each
      # operating system (CPE). Some distributions have additional metadata around
      # updates, classifying them into various categories and severities.
      class UpgradeDistribution
        include Google::Apis::Core::Hashable
      
        # The operating system classification of this Upgrade, as specified by the
        # upstream operating system upgrade feed.
        # Corresponds to the JSON property `classification`
        # @return [String]
        attr_accessor :classification
      
        # Required - The specific operating system this metadata applies to. See https://
        # cpe.mitre.org/specification/.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The cve that would be resolved by this upgrade.
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
      
      # An Upgrade Note represents a potential upgrade of a package to a given version.
      # For each package version combination (i.e. bash 4.0, bash 4.1, bash 4.1.2),
      # there will be a Upgrade Note.
      class UpgradeNote
        include Google::Apis::Core::Hashable
      
        # Metadata about the upgrade for each specific operating system.
        # Corresponds to the JSON property `distributions`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::UpgradeDistribution>]
        attr_accessor :distributions
      
        # Required - The package this Upgrade is for.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # Version contains structured information about the version of the package. For
        # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
        # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
        # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distributions = args[:distributions] if args.key?(:distributions)
          @package = args[:package] if args.key?(:package)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # An Upgrade Occurrence represents that a specific resource_url could install a
      # specific upgrade. This presence is supplied via local sources (i.e. it is
      # present in the mirror and the running system has noticed its availability).
      class UpgradeOccurrence
        include Google::Apis::Core::Hashable
      
        # The Upgrade Distribution represents metadata about the Upgrade for each
        # operating system (CPE). Some distributions have additional metadata around
        # updates, classifying them into various categories and severities.
        # Corresponds to the JSON property `distribution`
        # @return [Google::Apis::ContaineranalysisV1alpha1::UpgradeDistribution]
        attr_accessor :distribution
      
        # Required - The package this Upgrade is for.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # Version contains structured information about the version of the package. For
        # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
        # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
        # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
        # Corresponds to the JSON property `parsedVersion`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Version]
        attr_accessor :parsed_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distribution = args[:distribution] if args.key?(:distribution)
          @package = args[:package] if args.key?(:package)
          @parsed_version = args[:parsed_version] if args.key?(:parsed_version)
        end
      end
      
      # Version contains structured information about the version of the package. For
      # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
      # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
      # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
      class Version
        include Google::Apis::Core::Hashable
      
        # Used to correct mistakes in the version numbering scheme.
        # Corresponds to the JSON property `epoch`
        # @return [Fixnum]
        attr_accessor :epoch
      
        # Whether this version is vulnerable, when defining the version bounds. For
        # example, if the minimum version is 2.0, inclusive=true would say 2.0 is
        # vulnerable, while inclusive=false would say it's not
        # Corresponds to the JSON property `inclusive`
        # @return [Boolean]
        attr_accessor :inclusive
        alias_method :inclusive?, :inclusive
      
        # Distinguish between sentinel MIN/MAX versions and normal versions. If kind is
        # not NORMAL, then the other fields are ignored.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The main part of the version name.
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
          @inclusive = args[:inclusive] if args.key?(:inclusive)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @revision = args[:revision] if args.key?(:revision)
        end
      end
      
      # Used by Occurrence to point to where the vulnerability exists and how to fix
      # it.
      class VulnerabilityDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The CVSS score of this vulnerability. CVSS score is on a scale of
        # 0-10 where 0 indicates low severity and 10 indicates high severity.
        # Corresponds to the JSON property `cvssScore`
        # @return [Float]
        attr_accessor :cvss_score
      
        # The distro assigned severity for this vulnerability when that is available and
        # note provider assigned severity when distro has not yet assigned a severity
        # for this vulnerability.
        # Corresponds to the JSON property `effectiveSeverity`
        # @return [String]
        attr_accessor :effective_severity
      
        # The set of affected locations and their fixes (if available) within the
        # associated resource.
        # Corresponds to the JSON property `packageIssue`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::PackageIssue>]
        attr_accessor :package_issue
      
        # Output only. The note provider assigned Severity of the vulnerability.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # The type of package; whether native or non native(ruby gems, node.js packages
        # etc)
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvss_score = args[:cvss_score] if args.key?(:cvss_score)
          @effective_severity = args[:effective_severity] if args.key?(:effective_severity)
          @package_issue = args[:package_issue] if args.key?(:package_issue)
          @severity = args[:severity] if args.key?(:severity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The location of the vulnerability
      class VulnerabilityLocation
        include Google::Apis::Core::Hashable
      
        # The cpe_uri in [cpe format] (https://cpe.mitre.org/specification/) format.
        # Examples include distro or storage location for vulnerable jar. This field can
        # be used as a filter in list requests.
        # Corresponds to the JSON property `cpeUri`
        # @return [String]
        attr_accessor :cpe_uri
      
        # The package being described.
        # Corresponds to the JSON property `package`
        # @return [String]
        attr_accessor :package
      
        # Version contains structured information about the version of the package. For
        # a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/
        # debian-packages-version-convention For a discussion of this in Redhat/Fedora/
        # Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::ContaineranalysisV1alpha1::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpe_uri = args[:cpe_uri] if args.key?(:cpe_uri)
          @package = args[:package] if args.key?(:package)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # VulnerabilityType provides metadata about a security vulnerability.
      class VulnerabilityType
        include Google::Apis::Core::Hashable
      
        # The CVSS score for this Vulnerability.
        # Corresponds to the JSON property `cvssScore`
        # @return [Float]
        attr_accessor :cvss_score
      
        # All information about the package to specifically identify this vulnerability.
        # One entry per (version range and cpe_uri) the package vulnerability has
        # manifested in.
        # Corresponds to the JSON property `details`
        # @return [Array<Google::Apis::ContaineranalysisV1alpha1::Detail>]
        attr_accessor :details
      
        # Note provider assigned impact of the vulnerability
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cvss_score = args[:cvss_score] if args.key?(:cvss_score)
          @details = args[:details] if args.key?(:details)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
    end
  end
end
