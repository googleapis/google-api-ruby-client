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
    module BinaryauthorizationV1beta1
      
      # An admission rule specifies either that all container images used in a pod
      # creation request must be attested to by one or more attestors, that all pod
      # creations will be allowed, or that all pod creations will be denied. Images
      # matching an admission allowlist pattern are exempted from admission rules and
      # will never block a pod creation.
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
      
        # 
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
      
      # An admission allowlist pattern exempts images from checks by admission rules.
      class AdmissionWhitelistPattern
        include Google::Apis::Core::Hashable
      
        # An image name pattern to allowlist, in the form `registry/path/to/image`. This
        # supports a trailing `*` as a wildcard, but this is allowed only in text after
        # the `registry/` part. `*` wildcard does not match `/`, i.e., `gcr.io/nginx*`
        # matches `gcr.io/nginx@latest`, but it does not match `gcr.io/nginx/image`.
        # This also supports a trailing `**` wildcard which matches subdirectories, i.e.,
        # `gcr.io/nginx**` matches `gcr.io/nginx/image`.
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
        # @return [Array<Google::Apis::BinaryauthorizationV1beta1::Jwt>]
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
        # @return [Array<Google::Apis::BinaryauthorizationV1beta1::Signature>]
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
      
      # An attestor that attests to container image artifacts. An existing attestor
      # cannot be modified except where indicated.
      class Attestor
        include Google::Apis::Core::Hashable
      
        # Optional. A descriptive comment. This field may be updated. The field may be
        # displayed in chooser dialogs.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A checksum, returned by the server, that can be sent on update
        # requests to ensure the attestor has an up-to-date value before attempting to
        # update it. See https://google.aip.dev/154.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. The resource name, in the format: `projects/*/attestors/*`. This
        # field may not be updated.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Time when the attestor was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # An user owned drydock note references a Drydock ATTESTATION_AUTHORITY Note
        # created by the user.
        # Corresponds to the JSON property `userOwnedDrydockNote`
        # @return [Google::Apis::BinaryauthorizationV1beta1::UserOwnedDrydockNote]
        attr_accessor :user_owned_drydock_note
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_owned_drydock_note = args[:user_owned_drydock_note] if args.key?(:user_owned_drydock_note)
        end
      end
      
      # An attestor public key that will be used to verify attestations signed by this
      # attestor.
      class AttestorPublicKey
        include Google::Apis::Core::Hashable
      
        # ASCII-armored representation of a PGP public key, as the entire output by the
        # command `gpg --export --armor foo@example.com` (either LF or CRLF line endings)
        # . When using this field, `id` should be left blank. The BinAuthz API handlers
        # will calculate the ID and fill it in automatically. BinAuthz computes this ID
        # as the OpenPGP RFC4880 V4 fingerprint, represented as upper-case hex. If `id`
        # is provided by the caller, it will be overwritten by the API-calculated ID.
        # Corresponds to the JSON property `asciiArmoredPgpPublicKey`
        # @return [String]
        attr_accessor :ascii_armored_pgp_public_key
      
        # Optional. A descriptive comment. This field may be updated.
        # Corresponds to the JSON property `comment`
        # @return [String]
        attr_accessor :comment
      
        # The ID of this public key. Signatures verified by BinAuthz must include the ID
        # of the public key that can be used to verify them, and that ID must match the
        # contents of this field exactly. Additional restrictions on this field can be
        # imposed based on which public key type is encapsulated. See the documentation
        # on `public_key` cases below for details.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A public key in the PkixPublicKey format (see https://tools.ietf.org/html/
        # rfc5280#section-4.1.2.7 for details). Public keys of this type are typically
        # textually encoded using the PEM format.
        # Corresponds to the JSON property `pkixPublicKey`
        # @return [Google::Apis::BinaryauthorizationV1beta1::PkixPublicKey]
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
      
      # Associates `members`, or principals, with a `role`.
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
        # @return [Google::Apis::BinaryauthorizationV1beta1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class IamPolicy
        include Google::Apis::Core::Hashable
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::BinaryauthorizationV1beta1::Binding>]
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
      
      # Response message for BinauthzManagementService.ListAttestors.
      class ListAttestorsResponse
        include Google::Apis::Core::Hashable
      
        # The list of attestors.
        # Corresponds to the JSON property `attestors`
        # @return [Array<Google::Apis::BinaryauthorizationV1beta1::Attestor>]
        attr_accessor :attestors
      
        # A token to retrieve the next page of results. Pass this value in the
        # ListAttestorsRequest.page_token field in the subsequent call to the `
        # ListAttestors` method to retrieve the next page of results.
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
      
      # A public key in the PkixPublicKey format (see https://tools.ietf.org/html/
      # rfc5280#section-4.1.2.7 for details). Public keys of this type are typically
      # textually encoded using the PEM format.
      class PkixPublicKey
        include Google::Apis::Core::Hashable
      
        # A PEM-encoded public key, as described in https://tools.ietf.org/html/rfc7468#
        # section-13
        # Corresponds to the JSON property `publicKeyPem`
        # @return [String]
        attr_accessor :public_key_pem
      
        # The signature algorithm used to verify a message against a signature using
        # this key. These signature algorithm must match the structure and any object
        # identifiers encoded in `public_key_pem` (i.e. this algorithm must match that
        # of the public key).
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
      
      # A policy for Binary Authorization.
      class Policy
        include Google::Apis::Core::Hashable
      
        # Optional. Admission policy allowlisting. A matching admission request will
        # always be permitted. This feature is typically used to exclude Google or third-
        # party infrastructure images from Binary Authorization policies.
        # Corresponds to the JSON property `admissionWhitelistPatterns`
        # @return [Array<Google::Apis::BinaryauthorizationV1beta1::AdmissionWhitelistPattern>]
        attr_accessor :admission_whitelist_patterns
      
        # Optional. Per-cluster admission rules. Cluster spec format: `location.
        # clusterId`. There can be at most one admission rule per cluster spec. A `
        # location` is either a compute zone (e.g. us-central1-a) or a region (e.g. us-
        # central1). For `clusterId` syntax restrictions see https://cloud.google.com/
        # container-engine/reference/rest/v1/projects.zones.clusters.
        # Corresponds to the JSON property `clusterAdmissionRules`
        # @return [Hash<String,Google::Apis::BinaryauthorizationV1beta1::AdmissionRule>]
        attr_accessor :cluster_admission_rules
      
        # An admission rule specifies either that all container images used in a pod
        # creation request must be attested to by one or more attestors, that all pod
        # creations will be allowed, or that all pod creations will be denied. Images
        # matching an admission allowlist pattern are exempted from admission rules and
        # will never block a pod creation.
        # Corresponds to the JSON property `defaultAdmissionRule`
        # @return [Google::Apis::BinaryauthorizationV1beta1::AdmissionRule]
        attr_accessor :default_admission_rule
      
        # Optional. A descriptive comment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A checksum, returned by the server, that can be sent on update
        # requests to ensure the policy has an up-to-date value before attempting to
        # update it. See https://google.aip.dev/154.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Controls the evaluation of a Google-maintained global admission
        # policy for common system-level images. Images not covered by the global policy
        # will be subject to the project admission policy. This setting has no effect
        # when specified inside a global admission policy.
        # Corresponds to the JSON property `globalPolicyEvaluationMode`
        # @return [String]
        attr_accessor :global_policy_evaluation_mode
      
        # Optional. Per-istio-service-identity admission rules. Istio service identity
        # spec format: `spiffe:///ns//sa/` or `/ns//sa/` e.g. `spiffe://example.com/ns/
        # test-ns/sa/default`
        # Corresponds to the JSON property `istioServiceIdentityAdmissionRules`
        # @return [Hash<String,Google::Apis::BinaryauthorizationV1beta1::AdmissionRule>]
        attr_accessor :istio_service_identity_admission_rules
      
        # Optional. Per-kubernetes-namespace admission rules. K8s namespace spec format:
        # `[a-z.-]+`, e.g. `some-namespace`
        # Corresponds to the JSON property `kubernetesNamespaceAdmissionRules`
        # @return [Hash<String,Google::Apis::BinaryauthorizationV1beta1::AdmissionRule>]
        attr_accessor :kubernetes_namespace_admission_rules
      
        # Optional. Per-kubernetes-service-account admission rules. Service account spec
        # format: `namespace:serviceaccount`. e.g. `test-ns:default`
        # Corresponds to the JSON property `kubernetesServiceAccountAdmissionRules`
        # @return [Hash<String,Google::Apis::BinaryauthorizationV1beta1::AdmissionRule>]
        attr_accessor :kubernetes_service_account_admission_rules
      
        # Output only. The resource name, in the format `projects/*/policy`. There is at
        # most one policy per project.
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
          @etag = args[:etag] if args.key?(:etag)
          @global_policy_evaluation_mode = args[:global_policy_evaluation_mode] if args.key?(:global_policy_evaluation_mode)
          @istio_service_identity_admission_rules = args[:istio_service_identity_admission_rules] if args.key?(:istio_service_identity_admission_rules)
          @kubernetes_namespace_admission_rules = args[:kubernetes_namespace_admission_rules] if args.key?(:kubernetes_namespace_admission_rules)
          @kubernetes_service_account_admission_rules = args[:kubernetes_service_account_admission_rules] if args.key?(:kubernetes_service_account_admission_rules)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::BinaryauthorizationV1beta1::IamPolicy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
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
      
      # An user owned drydock note references a Drydock ATTESTATION_AUTHORITY Note
      # created by the user.
      class UserOwnedDrydockNote
        include Google::Apis::Core::Hashable
      
        # Output only. This field will contain the service account email address that
        # this Attestor will use as the principal when querying Container Analysis.
        # Attestor administrators must grant this service account the IAM role needed to
        # read attestations from the note_reference in Container Analysis (`
        # containeranalysis.notes.occurrences.viewer`). This email address is fixed for
        # the lifetime of the Attestor, but callers should not make any other
        # assumptions about the service account email; future versions may use an email
        # based on a different naming pattern.
        # Corresponds to the JSON property `delegationServiceAccountEmail`
        # @return [String]
        attr_accessor :delegation_service_account_email
      
        # Required. The Drydock resource name of a ATTESTATION_AUTHORITY Note, created
        # by the user, in the format: `projects/*/notes/*` (or the legacy `providers/*/
        # notes/*`). This field may not be updated. An attestation by this attestor is
        # stored as a Drydock ATTESTATION_AUTHORITY Occurrence that names a container
        # image and that links to this Note. Drydock is an external dependency.
        # Corresponds to the JSON property `noteReference`
        # @return [String]
        attr_accessor :note_reference
      
        # Optional. Public keys that verify attestations signed by this attestor. This
        # field may be updated. If this field is non-empty, one of the specified public
        # keys must verify that an attestation was signed by this attestor for the image
        # specified in the admission request. If this field is empty, this attestor
        # always returns that no valid attestations exist.
        # Corresponds to the JSON property `publicKeys`
        # @return [Array<Google::Apis::BinaryauthorizationV1beta1::AttestorPublicKey>]
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
      
      # Request message for ValidationHelperV1.ValidateAttestationOccurrence.
      class ValidateAttestationOccurrenceRequest
        include Google::Apis::Core::Hashable
      
        # Occurrence that represents a single "attestation". The authenticity of an
        # attestation can be verified using the attached signature. If the verifier
        # trusts the public key of the signer, then verifying the signature is
        # sufficient to establish trust. In this circumstance, the authority to which
        # this attestation is attached is primarily useful for lookup (how to find this
        # attestation if you already know the authority and artifact to be verified) and
        # intent (for which authority this attestation was intended to sign.
        # Corresponds to the JSON property `attestation`
        # @return [Google::Apis::BinaryauthorizationV1beta1::AttestationOccurrence]
        attr_accessor :attestation
      
        # Required. The resource name of the Note to which the containing Occurrence is
        # associated.
        # Corresponds to the JSON property `occurrenceNote`
        # @return [String]
        attr_accessor :occurrence_note
      
        # Required. The URI of the artifact (e.g. container image) that is the subject
        # of the containing Occurrence.
        # Corresponds to the JSON property `occurrenceResourceUri`
        # @return [String]
        attr_accessor :occurrence_resource_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attestation = args[:attestation] if args.key?(:attestation)
          @occurrence_note = args[:occurrence_note] if args.key?(:occurrence_note)
          @occurrence_resource_uri = args[:occurrence_resource_uri] if args.key?(:occurrence_resource_uri)
        end
      end
      
      # Response message for ValidationHelperV1.ValidateAttestationOccurrence.
      class ValidateAttestationOccurrenceResponse
        include Google::Apis::Core::Hashable
      
        # The reason for denial if the Attestation couldn't be validated.
        # Corresponds to the JSON property `denialReason`
        # @return [String]
        attr_accessor :denial_reason
      
        # The result of the Attestation validation.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @denial_reason = args[:denial_reason] if args.key?(:denial_reason)
          @result = args[:result] if args.key?(:result)
        end
      end
    end
  end
end
