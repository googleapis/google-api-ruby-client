# Copyright 2015 Google Inc.
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
      
      # An admission rule specifies either that all container images
      # used in a pod creation request must be attested to by one or more
      # attestors, that all pod creations will be allowed, or that all
      # pod creations will be denied.
      # Images matching an admission whitelist pattern
      # are exempted from admission rules and will never block a pod creation.
      class AdmissionRule
        include Google::Apis::Core::Hashable
      
        # Required. The action when a pod creation is denied by the admission rule.
        # Corresponds to the JSON property `enforcementMode`
        # @return [String]
        attr_accessor :enforcement_mode
      
        # Required. How this admission rule will be evaluated.
        # Corresponds to the JSON property `evaluationMode`
        # @return [String]
        attr_accessor :evaluation_mode
      
        # Optional. The resource names of the attestors that must attest to
        # a container image, in the format `projects/*/attestors/*`. Each
        # attestor must exist before a policy can reference it.  To add an attestor
        # to a policy the principal issuing the policy change request must be able
        # to read the attestor resource.
        # Note: this field must be non-empty when the evaluation_mode field specifies
        # REQUIRE_ATTESTATION, otherwise it must be empty.
        # Corresponds to the JSON property `requireAttestationsBy`
        # @return [Array<String>]
        attr_accessor :require_attestations_by
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforcement_mode = args[:enforcement_mode] if args.key?(:enforcement_mode)
          @evaluation_mode = args[:evaluation_mode] if args.key?(:evaluation_mode)
          @require_attestations_by = args[:require_attestations_by] if args.key?(:require_attestations_by)
        end
      end
      
      # An admission whitelist pattern exempts images
      # from checks by admission rules.
      class AdmissionWhitelistPattern
        include Google::Apis::Core::Hashable
      
        # An image name pattern to whitelist, in the form `registry/path/to/image`.
        # This supports a trailing `*` as a wildcard, but this is allowed only in
        # text after the `registry/` part.
        # Corresponds to the JSON property `namePattern`
        # @return [String]
        attr_accessor :name_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name_pattern = args[:name_pattern] if args.key?(:name_pattern)
        end
      end
      
      # An attestor that attests to container image
      # artifacts. An existing attestor cannot be modified except where
      # indicated.
      class Attestor
        include Google::Apis::Core::Hashable
      
        # Optional. A descriptive comment.  This field may be updated.
        # The field may be displayed in chooser dialogs.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The resource name, in the format:
        # `projects/*/attestors/*`. This field may not be updated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when the attestor was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # An user owned Grafeas note references a Grafeas
        # Attestation.Authority Note created by the user.
        # Corresponds to the JSON property `userOwnedGrafeasNote`
        # @return [Google::Apis::BinaryauthorizationV1::UserOwnedGrafeasNote]
        attr_accessor :user_owned_grafeas_note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_owned_grafeas_note = args[:user_owned_grafeas_note] if args.key?(:user_owned_grafeas_note)
        end
      end
      
      # An attestor public key that will be used to verify
      # attestations signed by this attestor.
      class AttestorPublicKey
        include Google::Apis::Core::Hashable
      
        # ASCII-armored representation of a PGP public key, as the entire output by
        # the command `gpg --export --armor foo@example.com` (either LF or CRLF
        # line endings).
        # When using this field, `id` should be left blank.  The BinAuthz API
        # handlers will calculate the ID and fill it in automatically.  BinAuthz
        # computes this ID as the OpenPGP RFC4880 V4 fingerprint, represented as
        # upper-case hex.  If `id` is provided by the caller, it will be
        # overwritten by the API-calculated ID.
        # Corresponds to the JSON property `asciiArmoredPgpPublicKey`
        # @return [String]
        attr_accessor :ascii_armored_pgp_public_key
      
        # Optional. A descriptive comment. This field may be updated.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # The ID of this public key.
        # Signatures verified by BinAuthz must include the ID of the public key that
        # can be used to verify them, and that ID must match the contents of this
        # field exactly.
        # Additional restrictions on this field can be imposed based on which public
        # key type is encapsulated. See the documentation on `public_key` cases below
        # for details.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A public key in the PkixPublicKey format (see
        # https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details).
        # Public keys of this type are typically textually encoded using the PEM
        # format.
        # Corresponds to the JSON property `pkixPublicKey`
        # @return [Google::Apis::BinaryauthorizationV1::PkixPublicKey]
        attr_accessor :pkix_public_key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ascii_armored_pgp_public_key = args[:ascii_armored_pgp_public_key] if args.key?(:ascii_armored_pgp_public_key)
          @comment = args[:comment] if args.key?(:comment)
          @id = args[:id] if args.key?(:id)
          @pkix_public_key = args[:pkix_public_key] if args.key?(:pkix_public_key)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for BinauthzManagementService.ListAttestors.
      class ListAttestorsResponse
        include Google::Apis::Core::Hashable
      
        # The list of attestors.
        # Corresponds to the JSON property `attestors`
        # @return [Array<Google::Apis::BinaryauthorizationV1::Attestor>]
        attr_accessor :attestors
      
        # A token to retrieve the next page of results. Pass this value in the
        # ListAttestorsRequest.page_token field in the subsequent call to the
        # `ListAttestors` method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestors = args[:attestors] if args.key?(:attestors)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A public key in the PkixPublicKey format (see
      # https://tools.ietf.org/html/rfc5280#section-4.1.2.7 for details).
      # Public keys of this type are typically textually encoded using the PEM
      # format.
      class PkixPublicKey
        include Google::Apis::Core::Hashable
      
        # A PEM-encoded public key, as described in
        # https://tools.ietf.org/html/rfc7468#section-13
        # Corresponds to the JSON property `publicKeyPem`
        # @return [String]
        attr_accessor :public_key_pem
      
        # The signature algorithm used to verify a message against a signature using
        # this key.
        # These signature algorithm must match the structure and any object
        # identifiers encoded in `public_key_pem` (i.e. this algorithm must match
        # that of the public key).
        # Corresponds to the JSON property `signatureAlgorithm`
        # @return [String]
        attr_accessor :signature_algorithm
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @public_key_pem = args[:public_key_pem] if args.key?(:public_key_pem)
          @signature_algorithm = args[:signature_algorithm] if args.key?(:signature_algorithm)
        end
      end
      
      # A policy for container image binary authorization.
      class Policy
        include Google::Apis::Core::Hashable
      
        # Optional. Admission policy whitelisting. A matching admission request will
        # always be permitted. This feature is typically used to exclude Google or
        # third-party infrastructure images from Binary Authorization policies.
        # Corresponds to the JSON property `admissionWhitelistPatterns`
        # @return [Array<Google::Apis::BinaryauthorizationV1::AdmissionWhitelistPattern>]
        attr_accessor :admission_whitelist_patterns
      
        # Optional. Per-cluster admission rules. Cluster spec format:
        # `location.clusterId`. There can be at most one admission rule per cluster
        # spec.
        # A `location` is either a compute zone (e.g. us-central1-a) or a region
        # (e.g. us-central1).
        # For `clusterId` syntax restrictions see
        # https://cloud.google.com/container-engine/reference/rest/v1/projects.zones.
        # clusters.
        # Corresponds to the JSON property `clusterAdmissionRules`
        # @return [Hash<String,Google::Apis::BinaryauthorizationV1::AdmissionRule>]
        attr_accessor :cluster_admission_rules
      
        # An admission rule specifies either that all container images
        # used in a pod creation request must be attested to by one or more
        # attestors, that all pod creations will be allowed, or that all
        # pod creations will be denied.
        # Images matching an admission whitelist pattern
        # are exempted from admission rules and will never block a pod creation.
        # Corresponds to the JSON property `defaultAdmissionRule`
        # @return [Google::Apis::BinaryauthorizationV1::AdmissionRule]
        attr_accessor :default_admission_rule
      
        # Optional. A descriptive comment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Controls the evaluation of a Google-maintained global admission
        # policy for common system-level images. Images not covered by the global
        # policy will be subject to the project admission policy. This setting
        # has no effect when specified inside a global admission policy.
        # Corresponds to the JSON property `globalPolicyEvaluationMode`
        # @return [String]
        attr_accessor :global_policy_evaluation_mode
      
        # Output only. The resource name, in the format `projects/*/policy`. There is
        # at most one policy per project.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when the policy was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admission_whitelist_patterns = args[:admission_whitelist_patterns] if args.key?(:admission_whitelist_patterns)
          @cluster_admission_rules = args[:cluster_admission_rules] if args.key?(:cluster_admission_rules)
          @default_admission_rule = args[:default_admission_rule] if args.key?(:default_admission_rule)
          @description = args[:description] if args.key?(:description)
          @global_policy_evaluation_mode = args[:global_policy_evaluation_mode] if args.key?(:global_policy_evaluation_mode)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An user owned Grafeas note references a Grafeas
      # Attestation.Authority Note created by the user.
      class UserOwnedGrafeasNote
        include Google::Apis::Core::Hashable
      
        # Output only. This field will contain the service account email address
        # that this Attestor will use as the principal when querying Container
        # Analysis. Attestor administrators must grant this service account the
        # IAM role needed to read attestations from the note_reference in
        # Container Analysis (`containeranalysis.notes.occurrences.viewer`).
        # This email address is fixed for the lifetime of the Attestor, but callers
        # should not make any other assumptions about the service account email;
        # future versions may use an email based on a different naming pattern.
        # Corresponds to the JSON property `delegationServiceAccountEmail`
        # @return [String]
        attr_accessor :delegation_service_account_email
      
        # Required. The Grafeas resource name of a Attestation.Authority Note,
        # created by the user, in the format: `projects/*/notes/*`. This field may
        # not be updated.
        # An attestation by this attestor is stored as a Grafeas
        # Attestation.Authority Occurrence that names a container image and that
        # links to this Note. Grafeas is an external dependency.
        # Corresponds to the JSON property `noteReference`
        # @return [String]
        attr_accessor :note_reference
      
        # Optional. Public keys that verify attestations signed by this
        # attestor.  This field may be updated.
        # If this field is non-empty, one of the specified public keys must
        # verify that an attestation was signed by this attestor for the
        # image specified in the admission request.
        # If this field is empty, this attestor always returns that no
        # valid attestations exist.
        # Corresponds to the JSON property `publicKeys`
        # @return [Array<Google::Apis::BinaryauthorizationV1::AttestorPublicKey>]
        attr_accessor :public_keys
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delegation_service_account_email = args[:delegation_service_account_email] if args.key?(:delegation_service_account_email)
          @note_reference = args[:note_reference] if args.key?(:note_reference)
          @public_keys = args[:public_keys] if args.key?(:public_keys)
        end
      end
    end
  end
end
