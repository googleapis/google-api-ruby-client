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
    module DnsV1
      
      # A Change represents a set of ResourceRecordSet additions and deletions applied
      # atomically to a ManagedZone. ResourceRecordSets within a ManagedZone are
      # modified by creating a new Change element in the Changes collection. In turn
      # the Changes collection also records the past modifications to the
      # ResourceRecordSets in a ManagedZone. The current state of the ManagedZone is
      # the sum effect of applying all Change elements in the Changes collection in
      # sequence.
      class Change
        include Google::Apis::Core::Hashable
      
        # Which ResourceRecordSets to add?
        # Corresponds to the JSON property `additions`
        # @return [Array<Google::Apis::DnsV1::ResourceRecordSet>]
        attr_accessor :additions
      
        # Which ResourceRecordSets to remove? Must match existing data exactly.
        # Corresponds to the JSON property `deletions`
        # @return [Array<Google::Apis::DnsV1::ResourceRecordSet>]
        attr_accessor :deletions
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # If the DNS queries for the zone will be served.
        # Corresponds to the JSON property `isServing`
        # @return [Boolean]
        attr_accessor :is_serving
        alias_method :is_serving?, :is_serving
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time that this operation was started by the server (output only). This is
        # in RFC3339 text format.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Status of the operation (output only). A status of "done" means that the
        # request to update the authoritative servers has been sent, but the servers
        # might not be updated yet.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additions = args[:additions] if args.key?(:additions)
          @deletions = args[:deletions] if args.key?(:deletions)
          @id = args[:id] if args.key?(:id)
          @is_serving = args[:is_serving] if args.key?(:is_serving)
          @kind = args[:kind] if args.key?(:kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # The response to a request to enumerate Changes to a ResourceRecordSets
      # collection.
      class ListChangesResponse
        include Google::Apis::Core::Hashable
      
        # The requested changes.
        # Corresponds to the JSON property `changes`
        # @return [Array<Google::Apis::DnsV1::Change>]
        attr_accessor :changes
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your pagination token. This lets you retrieve
        # the complete contents of even very large collections one page at a time.
        # However, if the contents of the collection change between the first and last
        # paginated list request, the set of all elements returned are an inconsistent
        # view of the collection. You cannot retrieve a "snapshot" of collections larger
        # than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @changes = args[:changes] if args.key?(:changes)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A DNSSEC key pair.
      class DnsKey
        include Google::Apis::Core::Hashable
      
        # String mnemonic specifying the DNSSEC algorithm of this key. Immutable after
        # creation time.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # The time that this resource was created in the control plane. This is in
        # RFC3339 text format. Output only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # A mutable string of at most 1024 characters associated with this resource for
        # the user's convenience. Has no effect on the resource's function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Cryptographic hashes of the DNSKEY resource record associated with this DnsKey.
        # These digests are needed to construct a DS record that points at this DNS key.
        # Output only.
        # Corresponds to the JSON property `digests`
        # @return [Array<Google::Apis::DnsV1::DnsKeyDigest>]
        attr_accessor :digests
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Active keys are used to sign subsequent changes to the ManagedZone. Inactive
        # keys are still present as DNSKEY Resource Records for the use of resolvers
        # validating existing signatures.
        # Corresponds to the JSON property `isActive`
        # @return [Boolean]
        attr_accessor :is_active
        alias_method :is_active?, :is_active
      
        # Length of the key in bits. Specified at creation time, and then immutable.
        # Corresponds to the JSON property `keyLength`
        # @return [Fixnum]
        attr_accessor :key_length
      
        # The key tag is a non-cryptographic hash of the a DNSKEY resource record
        # associated with this DnsKey. The key tag can be used to identify a DNSKEY more
        # quickly (but it is not a unique identifier). In particular, the key tag is
        # used in a parent zone's DS record to point at the DNSKEY in this child
        # ManagedZone. The key tag is a number in the range [0, 65535] and the algorithm
        # to calculate it is specified in RFC4034 Appendix B. Output only.
        # Corresponds to the JSON property `keyTag`
        # @return [Fixnum]
        attr_accessor :key_tag
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Base64 encoded public half of this key. Output only.
        # Corresponds to the JSON property `publicKey`
        # @return [String]
        attr_accessor :public_key
      
        # One of "KEY_SIGNING" or "ZONE_SIGNING". Keys of type KEY_SIGNING have the
        # Secure Entry Point flag set and, when active, are used to sign only resource
        # record sets of type DNSKEY. Otherwise, the Secure Entry Point flag is cleared,
        # and this key is used to sign only resource record sets of other types.
        # Immutable after creation time.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @digests = args[:digests] if args.key?(:digests)
          @id = args[:id] if args.key?(:id)
          @is_active = args[:is_active] if args.key?(:is_active)
          @key_length = args[:key_length] if args.key?(:key_length)
          @key_tag = args[:key_tag] if args.key?(:key_tag)
          @kind = args[:kind] if args.key?(:kind)
          @public_key = args[:public_key] if args.key?(:public_key)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class DnsKeyDigest
        include Google::Apis::Core::Hashable
      
        # The base-16 encoded bytes of this digest. Suitable for use in a DS resource
        # record.
        # Corresponds to the JSON property `digest`
        # @return [String]
        attr_accessor :digest
      
        # Specifies the algorithm used to calculate this digest.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @digest = args[:digest] if args.key?(:digest)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Parameters for DnsKey key generation. Used for generating initial keys for a
      # new ManagedZone and as default when adding a new DnsKey.
      class DnsKeySpec
        include Google::Apis::Core::Hashable
      
        # String mnemonic specifying the DNSSEC algorithm of this key.
        # Corresponds to the JSON property `algorithm`
        # @return [String]
        attr_accessor :algorithm
      
        # Length of the keys in bits.
        # Corresponds to the JSON property `keyLength`
        # @return [Fixnum]
        attr_accessor :key_length
      
        # Specifies whether this is a key signing key (KSK) or a zone signing key (ZSK).
        # Key signing keys have the Secure Entry Point flag set and, when active, are
        # only used to sign resource record sets of type DNSKEY. Zone signing keys do
        # not have the Secure Entry Point flag set and are used to sign all other types
        # of resource record sets.
        # Corresponds to the JSON property `keyType`
        # @return [String]
        attr_accessor :key_type
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @algorithm = args[:algorithm] if args.key?(:algorithm)
          @key_length = args[:key_length] if args.key?(:key_length)
          @key_type = args[:key_type] if args.key?(:key_type)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # The response to a request to enumerate DnsKeys in a ManagedZone.
      class DnsKeysListResponse
        include Google::Apis::Core::Hashable
      
        # The requested resources.
        # Corresponds to the JSON property `dnsKeys`
        # @return [Array<Google::Apis::DnsV1::DnsKey>]
        attr_accessor :dns_keys
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your pagination token. In this way you can
        # retrieve the complete contents of even very large collections one page at a
        # time. However, if the contents of the collection change between the first and
        # last paginated list request, the set of all elements returned are an
        # inconsistent view of the collection. There is no way to retrieve a "snapshot"
        # of collections larger than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_keys = args[:dns_keys] if args.key?(:dns_keys)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::DnsV1::GoogleIamV1AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class GoogleIamV1AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
        end
      end
      
      # Associates `members`, or principals, with a `role`.
      class GoogleIamV1Binding
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
        # @return [Google::Apis::DnsV1::Expr]
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
        # users of that domain. For example, `google.com` or `example.com`. * `deleted:
        # user:`emailid`?uid=`uniqueid``: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, `alice@
        # example.com?uid=123456789012345678901`. If the user is recovered, this value
        # reverts to `user:`emailid`` and the recovered user retains the role in the
        # binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email address
        # (plus unique identifier) representing a service account that has been recently
        # deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`.
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
      
      # Request message for `GetIamPolicy` method.
      class GoogleIamV1GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DnsV1::GoogleIamV1GetPolicyOptions]
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
      class GoogleIamV1GetPolicyOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected. Requests for policies with any conditional role bindings must
        # specify version 3. Policies with no conditional role bindings may specify any
        # valid value or leave the field unset. The policy in the response might use the
        # policy version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies).
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
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
      # bindings: - members: - user:mike@example.com - group:admins@example.com -
      # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
      # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
      # com role: roles/resourcemanager.organizationViewer condition: title: expirable
      # access description: Does not grant access after Sep 2020 expression: request.
      # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
      # a description of IAM and its features, see the [IAM documentation](https://
      # cloud.google.com/iam/docs/).
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::DnsV1::GoogleIamV1AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DnsV1::GoogleIamV1Binding>]
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
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for `SetIamPolicy` method.
      class GoogleIamV1SetIamPolicyRequest
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
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` **YAML example:**
        # bindings: - members: - user:mike@example.com - group:admins@example.com -
        # domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com
        # role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.
        # com role: roles/resourcemanager.organizationViewer condition: title: expirable
        # access description: Does not grant access after Sep 2020 expression: request.
        # time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For
        # a description of IAM and its features, see the [IAM documentation](https://
        # cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DnsV1::GoogleIamV1Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request message for `TestIamPermissions` method.
      class GoogleIamV1TestIamPermissionsRequest
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
      class GoogleIamV1TestIamPermissionsResponse
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
      
      # A zone is a subtree of the DNS namespace under one administrative
      # responsibility. A ManagedZone is a resource that represents a DNS zone hosted
      # by the Cloud DNS service.
      class ManagedZone
        include Google::Apis::Core::Hashable
      
        # Cloud Logging configurations for publicly visible zones.
        # Corresponds to the JSON property `cloudLoggingConfig`
        # @return [Google::Apis::DnsV1::ManagedZoneCloudLoggingConfig]
        attr_accessor :cloud_logging_config
      
        # The time that this resource was created on the server. This is in RFC3339 text
        # format. Output only.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # A mutable string of at most 1024 characters associated with this resource for
        # the user's convenience. Has no effect on the managed zone's function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The DNS name of this managed zone, for instance "example.com.".
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # DNSSEC configuration.
        # Corresponds to the JSON property `dnssecConfig`
        # @return [Google::Apis::DnsV1::ManagedZoneDnsSecConfig]
        attr_accessor :dnssec_config
      
        # The presence for this field indicates that outbound forwarding is enabled for
        # this zone. The value of this field contains the set of destinations to forward
        # to.
        # Corresponds to the JSON property `forwardingConfig`
        # @return [Google::Apis::DnsV1::ManagedZoneForwardingConfig]
        attr_accessor :forwarding_config
      
        # Unique identifier for the resource; defined by the server (output only)
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # User assigned name for this resource. Must be unique within the project. The
        # name must be 1-63 characters long, must begin with a letter, end with a letter
        # or digit, and only contain lowercase letters, digits or dashes.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet
        # is a set of DNS name servers that all host the same ManagedZones. Most users
        # leave this field unset. If you need to use this field, contact your account
        # team.
        # Corresponds to the JSON property `nameServerSet`
        # @return [String]
        attr_accessor :name_server_set
      
        # Delegate your managed_zone to these virtual name servers; defined by the
        # server (output only)
        # Corresponds to the JSON property `nameServers`
        # @return [Array<String>]
        attr_accessor :name_servers
      
        # The presence of this field indicates that DNS Peering is enabled for this zone.
        # The value of this field contains the network to peer with.
        # Corresponds to the JSON property `peeringConfig`
        # @return [Google::Apis::DnsV1::ManagedZonePeeringConfig]
        attr_accessor :peering_config
      
        # For privately visible zones, the set of Virtual Private Cloud resources that
        # the zone is visible from.
        # Corresponds to the JSON property `privateVisibilityConfig`
        # @return [Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfig]
        attr_accessor :private_visibility_config
      
        # The presence of this field indicates that this is a managed reverse lookup
        # zone and Cloud DNS resolves reverse lookup queries using automatically
        # configured records for VPC resources. This only applies to networks listed
        # under private_visibility_config.
        # Corresponds to the JSON property `reverseLookupConfig`
        # @return [Google::Apis::DnsV1::ManagedZoneReverseLookupConfig]
        attr_accessor :reverse_lookup_config
      
        # Contains information about Service Directory-backed zones.
        # Corresponds to the JSON property `serviceDirectoryConfig`
        # @return [Google::Apis::DnsV1::ManagedZoneServiceDirectoryConfig]
        attr_accessor :service_directory_config
      
        # The zone's visibility: public zones are exposed to the Internet, while private
        # zones are visible only to Virtual Private Cloud resources.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_config = args[:cloud_logging_config] if args.key?(:cloud_logging_config)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @description = args[:description] if args.key?(:description)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @dnssec_config = args[:dnssec_config] if args.key?(:dnssec_config)
          @forwarding_config = args[:forwarding_config] if args.key?(:forwarding_config)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @name_server_set = args[:name_server_set] if args.key?(:name_server_set)
          @name_servers = args[:name_servers] if args.key?(:name_servers)
          @peering_config = args[:peering_config] if args.key?(:peering_config)
          @private_visibility_config = args[:private_visibility_config] if args.key?(:private_visibility_config)
          @reverse_lookup_config = args[:reverse_lookup_config] if args.key?(:reverse_lookup_config)
          @service_directory_config = args[:service_directory_config] if args.key?(:service_directory_config)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # Cloud Logging configurations for publicly visible zones.
      class ManagedZoneCloudLoggingConfig
        include Google::Apis::Core::Hashable
      
        # If set, enable query logging for this ManagedZone. False by default, making
        # logging opt-in.
        # Corresponds to the JSON property `enableLogging`
        # @return [Boolean]
        attr_accessor :enable_logging
        alias_method :enable_logging?, :enable_logging
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_logging = args[:enable_logging] if args.key?(:enable_logging)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ManagedZoneDnsSecConfig
        include Google::Apis::Core::Hashable
      
        # Specifies parameters for generating initial DnsKeys for this ManagedZone. Can
        # only be changed while the state is OFF.
        # Corresponds to the JSON property `defaultKeySpecs`
        # @return [Array<Google::Apis::DnsV1::DnsKeySpec>]
        attr_accessor :default_key_specs
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Specifies the mechanism for authenticated denial-of-existence responses. Can
        # only be changed while the state is OFF.
        # Corresponds to the JSON property `nonExistence`
        # @return [String]
        attr_accessor :non_existence
      
        # Specifies whether DNSSEC is enabled, and what mode it is in.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_key_specs = args[:default_key_specs] if args.key?(:default_key_specs)
          @kind = args[:kind] if args.key?(:kind)
          @non_existence = args[:non_existence] if args.key?(:non_existence)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # 
      class ManagedZoneForwardingConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # List of target name servers to forward to. Cloud DNS selects the best
        # available name server if more than one target is given.
        # Corresponds to the JSON property `targetNameServers`
        # @return [Array<Google::Apis::DnsV1::ManagedZoneForwardingConfigNameServerTarget>]
        attr_accessor :target_name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @target_name_servers = args[:target_name_servers] if args.key?(:target_name_servers)
        end
      end
      
      # 
      class ManagedZoneForwardingConfigNameServerTarget
        include Google::Apis::Core::Hashable
      
        # Forwarding path for this NameServerTarget. If unset or set to DEFAULT, Cloud
        # DNS makes forwarding decisions based on IP address ranges; that is, RFC1918
        # addresses go to the VPC network, non-RFC1918 addresses go to the internet.
        # When set to PRIVATE, Cloud DNS always sends queries through the VPC network
        # for this target.
        # Corresponds to the JSON property `forwardingPath`
        # @return [String]
        attr_accessor :forwarding_path
      
        # IPv4 address of a target name server.
        # Corresponds to the JSON property `ipv4Address`
        # @return [String]
        attr_accessor :ipv4_address
      
        # IPv6 address of a target name server. Does not accept both fields (ipv4 & ipv6)
        # being populated. Public preview as of November 2022.
        # Corresponds to the JSON property `ipv6Address`
        # @return [String]
        attr_accessor :ipv6_address
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forwarding_path = args[:forwarding_path] if args.key?(:forwarding_path)
          @ipv4_address = args[:ipv4_address] if args.key?(:ipv4_address)
          @ipv6_address = args[:ipv6_address] if args.key?(:ipv6_address)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ManagedZoneOperationsListResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your page token. This lets you retrieve the
        # complete contents of even very large collections one page at a time. However,
        # if the contents of the collection change between the first and last paginated
        # list request, the set of all elements returned are an inconsistent view of the
        # collection. You cannot retrieve a consistent snapshot of a collection larger
        # than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The operation resources.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DnsV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # 
      class ManagedZonePeeringConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The network with which to peer.
        # Corresponds to the JSON property `targetNetwork`
        # @return [Google::Apis::DnsV1::ManagedZonePeeringConfigTargetNetwork]
        attr_accessor :target_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @target_network = args[:target_network] if args.key?(:target_network)
        end
      end
      
      # 
      class ManagedZonePeeringConfigTargetNetwork
        include Google::Apis::Core::Hashable
      
        # The time at which the zone was deactivated, in RFC 3339 date-time format. An
        # empty string indicates that the peering connection is active. The producer
        # network can deactivate a zone. The zone is automatically deactivated if the
        # producer network that the zone targeted is deleted. Output only.
        # Corresponds to the JSON property `deactivateTime`
        # @return [String]
        attr_accessor :deactivate_time
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The fully qualified URL of the VPC network to forward queries to. This should
        # be formatted like https://www.googleapis.com/compute/v1/projects/`project`/
        # global/networks/`network`
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deactivate_time = args[:deactivate_time] if args.key?(:deactivate_time)
          @kind = args[:kind] if args.key?(:kind)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # 
      class ManagedZonePrivateVisibilityConfig
        include Google::Apis::Core::Hashable
      
        # The list of Google Kubernetes Engine clusters that can see this zone.
        # Corresponds to the JSON property `gkeClusters`
        # @return [Array<Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfigGkeCluster>]
        attr_accessor :gke_clusters
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The list of VPC networks that can see this zone.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::DnsV1::ManagedZonePrivateVisibilityConfigNetwork>]
        attr_accessor :networks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gke_clusters = args[:gke_clusters] if args.key?(:gke_clusters)
          @kind = args[:kind] if args.key?(:kind)
          @networks = args[:networks] if args.key?(:networks)
        end
      end
      
      # 
      class ManagedZonePrivateVisibilityConfigGkeCluster
        include Google::Apis::Core::Hashable
      
        # The resource name of the cluster to bind this ManagedZone to. This should be
        # specified in the format like: projects/*/locations/*/clusters/*. This is
        # referenced from GKE projects.locations.clusters.get API: https://cloud.google.
        # com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
        # Corresponds to the JSON property `gkeClusterName`
        # @return [String]
        attr_accessor :gke_cluster_name
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gke_cluster_name = args[:gke_cluster_name] if args.key?(:gke_cluster_name)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ManagedZonePrivateVisibilityConfigNetwork
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The fully qualified URL of the VPC network to bind to. Format this URL like
        # https://www.googleapis.com/compute/v1/projects/`project`/global/networks/`
        # network`
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # 
      class ManagedZoneReverseLookupConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # Contains information about Service Directory-backed zones.
      class ManagedZoneServiceDirectoryConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Contains information about the namespace associated with the zone.
        # Corresponds to the JSON property `namespace`
        # @return [Google::Apis::DnsV1::ManagedZoneServiceDirectoryConfigNamespace]
        attr_accessor :namespace
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @namespace = args[:namespace] if args.key?(:namespace)
        end
      end
      
      # 
      class ManagedZoneServiceDirectoryConfigNamespace
        include Google::Apis::Core::Hashable
      
        # The time that the namespace backing this zone was deleted; an empty string if
        # it still exists. This is in RFC3339 text format. Output only.
        # Corresponds to the JSON property `deletionTime`
        # @return [String]
        attr_accessor :deletion_time
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The fully qualified URL of the namespace associated with the zone. Format must
        # be https://servicedirectory.googleapis.com/v1/projects/`project`/locations/`
        # location`/namespaces/`namespace`
        # Corresponds to the JSON property `namespaceUrl`
        # @return [String]
        attr_accessor :namespace_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deletion_time = args[:deletion_time] if args.key?(:deletion_time)
          @kind = args[:kind] if args.key?(:kind)
          @namespace_url = args[:namespace_url] if args.key?(:namespace_url)
        end
      end
      
      # 
      class ListManagedZonesResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The managed zone resources.
        # Corresponds to the JSON property `managedZones`
        # @return [Array<Google::Apis::DnsV1::ManagedZone>]
        attr_accessor :managed_zones
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your page token. This lets you the complete
        # contents of even very large collections one page at a time. However, if the
        # contents of the collection change between the first and last paginated list
        # request, the set of all elements returned are an inconsistent view of the
        # collection. You cannot retrieve a consistent snapshot of a collection larger
        # than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @managed_zones = args[:managed_zones] if args.key?(:managed_zones)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # An operation represents a successful mutation performed on a Cloud DNS
      # resource. Operations provide: - An audit log of server resource mutations. - A
      # way to recover/retry API calls in the case where the response is never
      # received by the caller. Use the caller specified client_operation_id.
      class Operation
        include Google::Apis::Core::Hashable
      
        # Only populated if the operation targeted a DnsKey (output only).
        # Corresponds to the JSON property `dnsKeyContext`
        # @return [Google::Apis::DnsV1::OperationDnsKeyContext]
        attr_accessor :dns_key_context
      
        # Unique identifier for the resource. This is the client_operation_id if the
        # client specified it when the mutation was initiated, otherwise, it is
        # generated by the server. The name must be 1-63 characters long and match the
        # regular expression [-a-z0-9]? (output only)
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The time that this operation was started by the server. This is in RFC3339
        # text format (output only).
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Status of the operation. Can be one of the following: "PENDING" or "DONE" (
        # output only). A status of "DONE" means that the request to update the
        # authoritative servers has been sent, but the servers might not be updated yet.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Type of the operation. Operations include insert, update, and delete (output
        # only).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # User who requested the operation, for example: user@example.com. cloud-dns-
        # system for operations automatically done by the system. (output only)
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        # Only populated if the operation targeted a ManagedZone (output only).
        # Corresponds to the JSON property `zoneContext`
        # @return [Google::Apis::DnsV1::OperationManagedZoneContext]
        attr_accessor :zone_context
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_key_context = args[:dns_key_context] if args.key?(:dns_key_context)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @user = args[:user] if args.key?(:user)
          @zone_context = args[:zone_context] if args.key?(:zone_context)
        end
      end
      
      # 
      class OperationDnsKeyContext
        include Google::Apis::Core::Hashable
      
        # A DNSSEC key pair.
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DnsV1::DnsKey]
        attr_accessor :new_value
      
        # A DNSSEC key pair.
        # Corresponds to the JSON property `oldValue`
        # @return [Google::Apis::DnsV1::DnsKey]
        attr_accessor :old_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
        end
      end
      
      # 
      class OperationManagedZoneContext
        include Google::Apis::Core::Hashable
      
        # A zone is a subtree of the DNS namespace under one administrative
        # responsibility. A ManagedZone is a resource that represents a DNS zone hosted
        # by the Cloud DNS service.
        # Corresponds to the JSON property `newValue`
        # @return [Google::Apis::DnsV1::ManagedZone]
        attr_accessor :new_value
      
        # A zone is a subtree of the DNS namespace under one administrative
        # responsibility. A ManagedZone is a resource that represents a DNS zone hosted
        # by the Cloud DNS service.
        # Corresponds to the JSON property `oldValue`
        # @return [Google::Apis::DnsV1::ManagedZone]
        attr_accessor :old_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_value = args[:new_value] if args.key?(:new_value)
          @old_value = args[:old_value] if args.key?(:old_value)
        end
      end
      
      # 
      class PoliciesListResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your page token. This lets you the complete
        # contents of even very large collections one page at a time. However, if the
        # contents of the collection change between the first and last paginated list
        # request, the set of all elements returned are an inconsistent view of the
        # collection. You cannot retrieve a consistent snapshot of a collection larger
        # than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The policy resources.
        # Corresponds to the JSON property `policies`
        # @return [Array<Google::Apis::DnsV1::Policy>]
        attr_accessor :policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policies = args[:policies] if args.key?(:policies)
        end
      end
      
      # 
      class PoliciesPatchResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # A policy is a collection of DNS rules applied to one or more Virtual Private
        # Cloud resources.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DnsV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # 
      class PoliciesUpdateResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # A policy is a collection of DNS rules applied to one or more Virtual Private
        # Cloud resources.
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::DnsV1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @policy = args[:policy] if args.key?(:policy)
        end
      end
      
      # A policy is a collection of DNS rules applied to one or more Virtual Private
      # Cloud resources.
      class Policy
        include Google::Apis::Core::Hashable
      
        # Sets an alternative name server for the associated networks. When specified,
        # all DNS queries are forwarded to a name server that you choose. Names such as .
        # internal are not available when an alternative name server is specified.
        # Corresponds to the JSON property `alternativeNameServerConfig`
        # @return [Google::Apis::DnsV1::PolicyAlternativeNameServerConfig]
        attr_accessor :alternative_name_server_config
      
        # A mutable string of at most 1024 characters associated with this resource for
        # the user's convenience. Has no effect on the policy's function.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Allows networks bound to this policy to receive DNS queries sent by VMs or
        # applications over VPN connections. When enabled, a virtual IP address is
        # allocated from each of the subnetworks that are bound to this policy.
        # Corresponds to the JSON property `enableInboundForwarding`
        # @return [Boolean]
        attr_accessor :enable_inbound_forwarding
        alias_method :enable_inbound_forwarding?, :enable_inbound_forwarding
      
        # Controls whether logging is enabled for the networks bound to this policy.
        # Defaults to no logging if not set.
        # Corresponds to the JSON property `enableLogging`
        # @return [Boolean]
        attr_accessor :enable_logging
        alias_method :enable_logging?, :enable_logging
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User-assigned name for this policy.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of network names specifying networks to which this policy is applied.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::DnsV1::PolicyNetwork>]
        attr_accessor :networks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternative_name_server_config = args[:alternative_name_server_config] if args.key?(:alternative_name_server_config)
          @description = args[:description] if args.key?(:description)
          @enable_inbound_forwarding = args[:enable_inbound_forwarding] if args.key?(:enable_inbound_forwarding)
          @enable_logging = args[:enable_logging] if args.key?(:enable_logging)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @networks = args[:networks] if args.key?(:networks)
        end
      end
      
      # 
      class PolicyAlternativeNameServerConfig
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Sets an alternative name server for the associated networks. When specified,
        # all DNS queries are forwarded to a name server that you choose. Names such as .
        # internal are not available when an alternative name server is specified.
        # Corresponds to the JSON property `targetNameServers`
        # @return [Array<Google::Apis::DnsV1::PolicyAlternativeNameServerConfigTargetNameServer>]
        attr_accessor :target_name_servers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @target_name_servers = args[:target_name_servers] if args.key?(:target_name_servers)
        end
      end
      
      # 
      class PolicyAlternativeNameServerConfigTargetNameServer
        include Google::Apis::Core::Hashable
      
        # Forwarding path for this TargetNameServer. If unset or set to DEFAULT, Cloud
        # DNS makes forwarding decisions based on address ranges; that is, RFC1918
        # addresses go to the VPC network, non-RFC1918 addresses go to the internet.
        # When set to PRIVATE, Cloud DNS always sends queries through the VPC network
        # for this target.
        # Corresponds to the JSON property `forwardingPath`
        # @return [String]
        attr_accessor :forwarding_path
      
        # IPv4 address to forward queries to.
        # Corresponds to the JSON property `ipv4Address`
        # @return [String]
        attr_accessor :ipv4_address
      
        # IPv6 address to forward to. Does not accept both fields (ipv4 & ipv6) being
        # populated. Public preview as of November 2022.
        # Corresponds to the JSON property `ipv6Address`
        # @return [String]
        attr_accessor :ipv6_address
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @forwarding_path = args[:forwarding_path] if args.key?(:forwarding_path)
          @ipv4_address = args[:ipv4_address] if args.key?(:ipv4_address)
          @ipv6_address = args[:ipv6_address] if args.key?(:ipv6_address)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class PolicyNetwork
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The fully qualified URL of the VPC network to bind to. This should be
        # formatted like https://www.googleapis.com/compute/v1/projects/`project`/global/
        # networks/`network`
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # A project resource. The project is a top level container for resources
      # including Cloud DNS ManagedZones. Projects can be created only in the APIs
      # console. Next tag: 7.
      class Project
        include Google::Apis::Core::Hashable
      
        # User assigned unique identifier for the resource (output only).
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Unique numeric identifier for the resource; defined by the server (output only)
        # .
        # Corresponds to the JSON property `number`
        # @return [Fixnum]
        attr_accessor :number
      
        # Limits associated with a Project.
        # Corresponds to the JSON property `quota`
        # @return [Google::Apis::DnsV1::Quota]
        attr_accessor :quota
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @number = args[:number] if args.key?(:number)
          @quota = args[:quota] if args.key?(:quota)
        end
      end
      
      # Limits associated with a Project.
      class Quota
        include Google::Apis::Core::Hashable
      
        # Maximum allowed number of DnsKeys per ManagedZone.
        # Corresponds to the JSON property `dnsKeysPerManagedZone`
        # @return [Fixnum]
        attr_accessor :dns_keys_per_managed_zone
      
        # Maximum allowed number of GKE clusters to which a privately scoped zone can be
        # attached.
        # Corresponds to the JSON property `gkeClustersPerManagedZone`
        # @return [Fixnum]
        attr_accessor :gke_clusters_per_managed_zone
      
        # Maximum allowed number of GKE clusters per policy.
        # Corresponds to the JSON property `gkeClustersPerPolicy`
        # @return [Fixnum]
        attr_accessor :gke_clusters_per_policy
      
        # Maximum allowed number of GKE clusters per response policy.
        # Corresponds to the JSON property `gkeClustersPerResponsePolicy`
        # @return [Fixnum]
        attr_accessor :gke_clusters_per_response_policy
      
        # Maximum allowed number of items per routing policy.
        # Corresponds to the JSON property `itemsPerRoutingPolicy`
        # @return [Fixnum]
        attr_accessor :items_per_routing_policy
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Maximum allowed number of managed zones in the project.
        # Corresponds to the JSON property `managedZones`
        # @return [Fixnum]
        attr_accessor :managed_zones
      
        # Maximum allowed number of managed zones which can be attached to a GKE cluster.
        # Corresponds to the JSON property `managedZonesPerGkeCluster`
        # @return [Fixnum]
        attr_accessor :managed_zones_per_gke_cluster
      
        # Maximum allowed number of managed zones which can be attached to a network.
        # Corresponds to the JSON property `managedZonesPerNetwork`
        # @return [Fixnum]
        attr_accessor :managed_zones_per_network
      
        # Maximum allowed number of networks to which a privately scoped zone can be
        # attached.
        # Corresponds to the JSON property `networksPerManagedZone`
        # @return [Fixnum]
        attr_accessor :networks_per_managed_zone
      
        # Maximum allowed number of networks per policy.
        # Corresponds to the JSON property `networksPerPolicy`
        # @return [Fixnum]
        attr_accessor :networks_per_policy
      
        # Maximum allowed number of networks per response policy.
        # Corresponds to the JSON property `networksPerResponsePolicy`
        # @return [Fixnum]
        attr_accessor :networks_per_response_policy
      
        # Maximum allowed number of consumer peering zones per target network owned by
        # this producer project
        # Corresponds to the JSON property `peeringZonesPerTargetNetwork`
        # @return [Fixnum]
        attr_accessor :peering_zones_per_target_network
      
        # Maximum allowed number of policies per project.
        # Corresponds to the JSON property `policies`
        # @return [Fixnum]
        attr_accessor :policies
      
        # Maximum allowed number of ResourceRecords per ResourceRecordSet.
        # Corresponds to the JSON property `resourceRecordsPerRrset`
        # @return [Fixnum]
        attr_accessor :resource_records_per_rrset
      
        # Maximum allowed number of response policies per project.
        # Corresponds to the JSON property `responsePolicies`
        # @return [Fixnum]
        attr_accessor :response_policies
      
        # Maximum allowed number of rules per response policy.
        # Corresponds to the JSON property `responsePolicyRulesPerResponsePolicy`
        # @return [Fixnum]
        attr_accessor :response_policy_rules_per_response_policy
      
        # Maximum allowed number of ResourceRecordSets to add per ChangesCreateRequest.
        # Corresponds to the JSON property `rrsetAdditionsPerChange`
        # @return [Fixnum]
        attr_accessor :rrset_additions_per_change
      
        # Maximum allowed number of ResourceRecordSets to delete per
        # ChangesCreateRequest.
        # Corresponds to the JSON property `rrsetDeletionsPerChange`
        # @return [Fixnum]
        attr_accessor :rrset_deletions_per_change
      
        # Maximum allowed number of ResourceRecordSets per zone in the project.
        # Corresponds to the JSON property `rrsetsPerManagedZone`
        # @return [Fixnum]
        attr_accessor :rrsets_per_managed_zone
      
        # Maximum allowed number of target name servers per managed forwarding zone.
        # Corresponds to the JSON property `targetNameServersPerManagedZone`
        # @return [Fixnum]
        attr_accessor :target_name_servers_per_managed_zone
      
        # Maximum allowed number of alternative target name servers per policy.
        # Corresponds to the JSON property `targetNameServersPerPolicy`
        # @return [Fixnum]
        attr_accessor :target_name_servers_per_policy
      
        # Maximum allowed size for total rrdata in one ChangesCreateRequest in bytes.
        # Corresponds to the JSON property `totalRrdataSizePerChange`
        # @return [Fixnum]
        attr_accessor :total_rrdata_size_per_change
      
        # DNSSEC algorithm and key length types that can be used for DnsKeys.
        # Corresponds to the JSON property `whitelistedKeySpecs`
        # @return [Array<Google::Apis::DnsV1::DnsKeySpec>]
        attr_accessor :whitelisted_key_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dns_keys_per_managed_zone = args[:dns_keys_per_managed_zone] if args.key?(:dns_keys_per_managed_zone)
          @gke_clusters_per_managed_zone = args[:gke_clusters_per_managed_zone] if args.key?(:gke_clusters_per_managed_zone)
          @gke_clusters_per_policy = args[:gke_clusters_per_policy] if args.key?(:gke_clusters_per_policy)
          @gke_clusters_per_response_policy = args[:gke_clusters_per_response_policy] if args.key?(:gke_clusters_per_response_policy)
          @items_per_routing_policy = args[:items_per_routing_policy] if args.key?(:items_per_routing_policy)
          @kind = args[:kind] if args.key?(:kind)
          @managed_zones = args[:managed_zones] if args.key?(:managed_zones)
          @managed_zones_per_gke_cluster = args[:managed_zones_per_gke_cluster] if args.key?(:managed_zones_per_gke_cluster)
          @managed_zones_per_network = args[:managed_zones_per_network] if args.key?(:managed_zones_per_network)
          @networks_per_managed_zone = args[:networks_per_managed_zone] if args.key?(:networks_per_managed_zone)
          @networks_per_policy = args[:networks_per_policy] if args.key?(:networks_per_policy)
          @networks_per_response_policy = args[:networks_per_response_policy] if args.key?(:networks_per_response_policy)
          @peering_zones_per_target_network = args[:peering_zones_per_target_network] if args.key?(:peering_zones_per_target_network)
          @policies = args[:policies] if args.key?(:policies)
          @resource_records_per_rrset = args[:resource_records_per_rrset] if args.key?(:resource_records_per_rrset)
          @response_policies = args[:response_policies] if args.key?(:response_policies)
          @response_policy_rules_per_response_policy = args[:response_policy_rules_per_response_policy] if args.key?(:response_policy_rules_per_response_policy)
          @rrset_additions_per_change = args[:rrset_additions_per_change] if args.key?(:rrset_additions_per_change)
          @rrset_deletions_per_change = args[:rrset_deletions_per_change] if args.key?(:rrset_deletions_per_change)
          @rrsets_per_managed_zone = args[:rrsets_per_managed_zone] if args.key?(:rrsets_per_managed_zone)
          @target_name_servers_per_managed_zone = args[:target_name_servers_per_managed_zone] if args.key?(:target_name_servers_per_managed_zone)
          @target_name_servers_per_policy = args[:target_name_servers_per_policy] if args.key?(:target_name_servers_per_policy)
          @total_rrdata_size_per_change = args[:total_rrdata_size_per_change] if args.key?(:total_rrdata_size_per_change)
          @whitelisted_key_specs = args[:whitelisted_key_specs] if args.key?(:whitelisted_key_specs)
        end
      end
      
      # A RRSetRoutingPolicy represents ResourceRecordSet data that is returned
      # dynamically with the response varying based on configured properties such as
      # geolocation or by weighted random selection.
      class RrSetRoutingPolicy
        include Google::Apis::Core::Hashable
      
        # Configures a RRSetRoutingPolicy that routes based on the geo location of the
        # querying user.
        # Corresponds to the JSON property `geo`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicy]
        attr_accessor :geo
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Configures a RRSetRoutingPolicy such that all queries are responded with the
        # primary_targets if they are healthy. And if all of them are unhealthy, then we
        # fallback to a geo localized policy.
        # Corresponds to the JSON property `primaryBackup`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicyPrimaryBackupPolicy]
        attr_accessor :primary_backup
      
        # Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
        # Corresponds to the JSON property `wrr`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicyWrrPolicy]
        attr_accessor :wrr
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo = args[:geo] if args.key?(:geo)
          @kind = args[:kind] if args.key?(:kind)
          @primary_backup = args[:primary_backup] if args.key?(:primary_backup)
          @wrr = args[:wrr] if args.key?(:wrr)
        end
      end
      
      # Configures a RRSetRoutingPolicy that routes based on the geo location of the
      # querying user.
      class RrSetRoutingPolicyGeoPolicy
        include Google::Apis::Core::Hashable
      
        # Without fencing, if health check fails for all configured items in the current
        # geo bucket, we'll failover to the next nearest geo bucket. With fencing, if
        # health check is enabled, as long as some targets in the current geo bucket are
        # healthy, we'll return only the healthy targets. However, if they're all
        # unhealthy, we won't failover to the next nearest bucket, we'll simply return
        # all the items in the current bucket even though they're unhealthy.
        # Corresponds to the JSON property `enableFencing`
        # @return [Boolean]
        attr_accessor :enable_fencing
        alias_method :enable_fencing?, :enable_fencing
      
        # The primary geo routing configuration. If there are multiple items with the
        # same location, an error is returned instead.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicyGeoPolicyItem>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_fencing = args[:enable_fencing] if args.key?(:enable_fencing)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # ResourceRecordSet data for one geo location.
      class RrSetRoutingPolicyGeoPolicyGeoPolicyItem
        include Google::Apis::Core::Hashable
      
        # HealthCheckTargets describes endpoints to health-check when responding to
        # Routing Policy queries. Only the healthy endpoints will be included in the
        # response.
        # Corresponds to the JSON property `healthCheckedTargets`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets]
        attr_accessor :health_checked_targets
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The geo-location granularity is a GCP region. This location string should
        # correspond to a GCP region. e.g. "us-east1", "southamerica-east1", "asia-east1"
        # , etc.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # 
        # Corresponds to the JSON property `rrdatas`
        # @return [Array<String>]
        attr_accessor :rrdatas
      
        # DNSSEC generated signatures for all the rrdata within this item. Note that if
        # health checked targets are provided for DNSSEC enabled zones, there's a
        # restriction of 1 ip per item. .
        # Corresponds to the JSON property `signatureRrdatas`
        # @return [Array<String>]
        attr_accessor :signature_rrdatas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checked_targets = args[:health_checked_targets] if args.key?(:health_checked_targets)
          @kind = args[:kind] if args.key?(:kind)
          @location = args[:location] if args.key?(:location)
          @rrdatas = args[:rrdatas] if args.key?(:rrdatas)
          @signature_rrdatas = args[:signature_rrdatas] if args.key?(:signature_rrdatas)
        end
      end
      
      # HealthCheckTargets describes endpoints to health-check when responding to
      # Routing Policy queries. Only the healthy endpoints will be included in the
      # response.
      class RrSetRoutingPolicyHealthCheckTargets
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `internalLoadBalancers`
        # @return [Array<Google::Apis::DnsV1::RrSetRoutingPolicyLoadBalancerTarget>]
        attr_accessor :internal_load_balancers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @internal_load_balancers = args[:internal_load_balancers] if args.key?(:internal_load_balancers)
        end
      end
      
      # 
      class RrSetRoutingPolicyLoadBalancerTarget
        include Google::Apis::Core::Hashable
      
        # The frontend IP address of the Load Balancer to health check.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # 
        # Corresponds to the JSON property `ipProtocol`
        # @return [String]
        attr_accessor :ip_protocol
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The type of Load Balancer specified by this target. Must match the
        # configuration of the Load Balancer located at the LoadBalancerTarget's IP
        # address/port and region.
        # Corresponds to the JSON property `loadBalancerType`
        # @return [String]
        attr_accessor :load_balancer_type
      
        # The fully qualified url of the network on which the ILB is present. This
        # should be formatted like https://www.googleapis.com/compute/v1/projects/`
        # project`/global/networks/`network`
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        # The configured port of the Load Balancer.
        # Corresponds to the JSON property `port`
        # @return [String]
        attr_accessor :port
      
        # The project ID in which the ILB exists.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # The region in which the ILB exists.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @ip_protocol = args[:ip_protocol] if args.key?(:ip_protocol)
          @kind = args[:kind] if args.key?(:kind)
          @load_balancer_type = args[:load_balancer_type] if args.key?(:load_balancer_type)
          @network_url = args[:network_url] if args.key?(:network_url)
          @port = args[:port] if args.key?(:port)
          @project = args[:project] if args.key?(:project)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Configures a RRSetRoutingPolicy such that all queries are responded with the
      # primary_targets if they are healthy. And if all of them are unhealthy, then we
      # fallback to a geo localized policy.
      class RrSetRoutingPolicyPrimaryBackupPolicy
        include Google::Apis::Core::Hashable
      
        # Configures a RRSetRoutingPolicy that routes based on the geo location of the
        # querying user.
        # Corresponds to the JSON property `backupGeoTargets`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicyGeoPolicy]
        attr_accessor :backup_geo_targets
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # HealthCheckTargets describes endpoints to health-check when responding to
        # Routing Policy queries. Only the healthy endpoints will be included in the
        # response.
        # Corresponds to the JSON property `primaryTargets`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets]
        attr_accessor :primary_targets
      
        # When serving state is PRIMARY, this field provides the option of sending a
        # small percentage of the traffic to the backup targets.
        # Corresponds to the JSON property `trickleTraffic`
        # @return [Float]
        attr_accessor :trickle_traffic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_geo_targets = args[:backup_geo_targets] if args.key?(:backup_geo_targets)
          @kind = args[:kind] if args.key?(:kind)
          @primary_targets = args[:primary_targets] if args.key?(:primary_targets)
          @trickle_traffic = args[:trickle_traffic] if args.key?(:trickle_traffic)
        end
      end
      
      # Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
      class RrSetRoutingPolicyWrrPolicy
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DnsV1::RrSetRoutingPolicyWrrPolicyWrrPolicyItem>]
        attr_accessor :items
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # A routing block which contains the routing information for one WRR item.
      class RrSetRoutingPolicyWrrPolicyWrrPolicyItem
        include Google::Apis::Core::Hashable
      
        # HealthCheckTargets describes endpoints to health-check when responding to
        # Routing Policy queries. Only the healthy endpoints will be included in the
        # response.
        # Corresponds to the JSON property `healthCheckedTargets`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicyHealthCheckTargets]
        attr_accessor :health_checked_targets
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # 
        # Corresponds to the JSON property `rrdatas`
        # @return [Array<String>]
        attr_accessor :rrdatas
      
        # DNSSEC generated signatures for all the rrdata within this item. Note that if
        # health checked targets are provided for DNSSEC enabled zones, there's a
        # restriction of 1 ip per item. .
        # Corresponds to the JSON property `signatureRrdatas`
        # @return [Array<String>]
        attr_accessor :signature_rrdatas
      
        # The weight corresponding to this subset of rrdata. When multiple
        # WeightedRoundRobinPolicyItems are configured, the probability of returning an
        # rrset is proportional to its weight relative to the sum of weights configured
        # for all items. This weight should be non-negative.
        # Corresponds to the JSON property `weight`
        # @return [Float]
        attr_accessor :weight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @health_checked_targets = args[:health_checked_targets] if args.key?(:health_checked_targets)
          @kind = args[:kind] if args.key?(:kind)
          @rrdatas = args[:rrdatas] if args.key?(:rrdatas)
          @signature_rrdatas = args[:signature_rrdatas] if args.key?(:signature_rrdatas)
          @weight = args[:weight] if args.key?(:weight)
        end
      end
      
      # A unit of data that is returned by the DNS servers.
      class ResourceRecordSet
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # For example, www.example.com.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A RRSetRoutingPolicy represents ResourceRecordSet data that is returned
        # dynamically with the response varying based on configured properties such as
        # geolocation or by weighted random selection.
        # Corresponds to the JSON property `routingPolicy`
        # @return [Google::Apis::DnsV1::RrSetRoutingPolicy]
        attr_accessor :routing_policy
      
        # As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see
        # examples.
        # Corresponds to the JSON property `rrdatas`
        # @return [Array<String>]
        attr_accessor :rrdatas
      
        # As defined in RFC 4034 (section 3.2).
        # Corresponds to the JSON property `signatureRrdatas`
        # @return [Array<String>]
        attr_accessor :signature_rrdatas
      
        # Number of seconds that this ResourceRecordSet can be cached by resolvers.
        # Corresponds to the JSON property `ttl`
        # @return [Fixnum]
        attr_accessor :ttl
      
        # The identifier of a supported record type. See the list of Supported DNS
        # record types.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @routing_policy = args[:routing_policy] if args.key?(:routing_policy)
          @rrdatas = args[:rrdatas] if args.key?(:rrdatas)
          @signature_rrdatas = args[:signature_rrdatas] if args.key?(:signature_rrdatas)
          @ttl = args[:ttl] if args.key?(:ttl)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class ResourceRecordSetsDeleteResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # 
      class ListResourceRecordSetsResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # Type of resource.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your pagination token. This lets you retrieve
        # complete contents of even larger collections, one page at a time. However, if
        # the contents of the collection change between the first and last paginated
        # list request, the set of elements returned are an inconsistent view of the
        # collection. You cannot retrieve a consistent snapshot of a collection larger
        # than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The resource record set resources.
        # Corresponds to the JSON property `rrsets`
        # @return [Array<Google::Apis::DnsV1::ResourceRecordSet>]
        attr_accessor :rrsets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rrsets = args[:rrsets] if args.key?(:rrsets)
        end
      end
      
      # Elements common to every response.
      class ResponseHeader
        include Google::Apis::Core::Hashable
      
        # For mutating operation requests that completed successfully. This is the
        # client_operation_id if the client specified it, otherwise it is generated by
        # the server (output only).
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
        end
      end
      
      # 
      class ResponsePoliciesListResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # The presence of this field indicates that more results exist following your
        # last page of results in pagination order. To fetch them, make another list
        # request by using this value as your page token. This lets you view the
        # complete contents of even very large collections one page at a time. However,
        # if the contents of the collection change between the first and last paginated
        # list request, the set of all elements returned are an inconsistent view of the
        # collection. You cannot retrieve a consistent snapshot of a collection larger
        # than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Response Policy resources.
        # Corresponds to the JSON property `responsePolicies`
        # @return [Array<Google::Apis::DnsV1::ResponsePolicy>]
        attr_accessor :response_policies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_policies = args[:response_policies] if args.key?(:response_policies)
        end
      end
      
      # 
      class ResponsePoliciesPatchResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # A Response Policy is a collection of selectors that apply to queries made
        # against one or more Virtual Private Cloud networks.
        # Corresponds to the JSON property `responsePolicy`
        # @return [Google::Apis::DnsV1::ResponsePolicy]
        attr_accessor :response_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @response_policy = args[:response_policy] if args.key?(:response_policy)
        end
      end
      
      # 
      class ResponsePoliciesUpdateResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # A Response Policy is a collection of selectors that apply to queries made
        # against one or more Virtual Private Cloud networks.
        # Corresponds to the JSON property `responsePolicy`
        # @return [Google::Apis::DnsV1::ResponsePolicy]
        attr_accessor :response_policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @response_policy = args[:response_policy] if args.key?(:response_policy)
        end
      end
      
      # A Response Policy is a collection of selectors that apply to queries made
      # against one or more Virtual Private Cloud networks.
      class ResponsePolicy
        include Google::Apis::Core::Hashable
      
        # User-provided description for this Response Policy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The list of Google Kubernetes Engine clusters to which this response policy is
        # applied.
        # Corresponds to the JSON property `gkeClusters`
        # @return [Array<Google::Apis::DnsV1::ResponsePolicyGkeCluster>]
        attr_accessor :gke_clusters
      
        # Unique identifier for the resource; defined by the server (output only).
        # Corresponds to the JSON property `id`
        # @return [Fixnum]
        attr_accessor :id
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # User labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # List of network names specifying networks to which this policy is applied.
        # Corresponds to the JSON property `networks`
        # @return [Array<Google::Apis::DnsV1::ResponsePolicyNetwork>]
        attr_accessor :networks
      
        # User assigned name for this Response Policy.
        # Corresponds to the JSON property `responsePolicyName`
        # @return [String]
        attr_accessor :response_policy_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @gke_clusters = args[:gke_clusters] if args.key?(:gke_clusters)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @labels = args[:labels] if args.key?(:labels)
          @networks = args[:networks] if args.key?(:networks)
          @response_policy_name = args[:response_policy_name] if args.key?(:response_policy_name)
        end
      end
      
      # 
      class ResponsePolicyGkeCluster
        include Google::Apis::Core::Hashable
      
        # The resource name of the cluster to bind this response policy to. This should
        # be specified in the format like: projects/*/locations/*/clusters/*. This is
        # referenced from GKE projects.locations.clusters.get API: https://cloud.google.
        # com/kubernetes-engine/docs/reference/rest/v1/projects.locations.clusters/get
        # Corresponds to the JSON property `gkeClusterName`
        # @return [String]
        attr_accessor :gke_cluster_name
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gke_cluster_name = args[:gke_cluster_name] if args.key?(:gke_cluster_name)
          @kind = args[:kind] if args.key?(:kind)
        end
      end
      
      # 
      class ResponsePolicyNetwork
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The fully qualified URL of the VPC network to bind to. This should be
        # formatted like https://www.googleapis.com/compute/v1/projects/`project`/global/
        # networks/`network`
        # Corresponds to the JSON property `networkUrl`
        # @return [String]
        attr_accessor :network_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] if args.key?(:kind)
          @network_url = args[:network_url] if args.key?(:network_url)
        end
      end
      
      # A Response Policy Rule is a selector that applies its behavior to queries that
      # match the selector. Selectors are DNS names, which may be wildcards or exact
      # matches. Each DNS query subject to a Response Policy matches at most one
      # ResponsePolicyRule, as identified by the dns_name field with the longest
      # matching suffix.
      class ResponsePolicyRule
        include Google::Apis::Core::Hashable
      
        # Answer this query with a behavior rather than DNS data.
        # Corresponds to the JSON property `behavior`
        # @return [String]
        attr_accessor :behavior
      
        # The DNS name (wildcard or exact) to apply this rule to. Must be unique within
        # the Response Policy Rule.
        # Corresponds to the JSON property `dnsName`
        # @return [String]
        attr_accessor :dns_name
      
        # 
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Answer this query directly with DNS data. These ResourceRecordSets override
        # any other DNS behavior for the matched name; in particular they override
        # private zones, the public internet, and GCP internal DNS. No SOA nor NS types
        # are allowed.
        # Corresponds to the JSON property `localData`
        # @return [Google::Apis::DnsV1::ResponsePolicyRuleLocalData]
        attr_accessor :local_data
      
        # An identifier for this rule. Must be unique with the ResponsePolicy.
        # Corresponds to the JSON property `ruleName`
        # @return [String]
        attr_accessor :rule_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @behavior = args[:behavior] if args.key?(:behavior)
          @dns_name = args[:dns_name] if args.key?(:dns_name)
          @kind = args[:kind] if args.key?(:kind)
          @local_data = args[:local_data] if args.key?(:local_data)
          @rule_name = args[:rule_name] if args.key?(:rule_name)
        end
      end
      
      # 
      class ResponsePolicyRuleLocalData
        include Google::Apis::Core::Hashable
      
        # All resource record sets for this selector, one per resource record type. The
        # name must match the dns_name.
        # Corresponds to the JSON property `localDatas`
        # @return [Array<Google::Apis::DnsV1::ResourceRecordSet>]
        attr_accessor :local_datas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_datas = args[:local_datas] if args.key?(:local_datas)
        end
      end
      
      # 
      class ResponsePolicyRulesListResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # The presence of this field indicates that there exist more results following
        # your last page of results in pagination order. To fetch them, make another
        # list request using this value as your page token. This lets you the complete
        # contents of even very large collections one page at a time. However, if the
        # contents of the collection change between the first and last paginated list
        # request, the set of all elements returned are an inconsistent view of the
        # collection. You cannot retrieve a consistent snapshot of a collection larger
        # than the maximum page size.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The Response Policy Rule resources.
        # Corresponds to the JSON property `responsePolicyRules`
        # @return [Array<Google::Apis::DnsV1::ResponsePolicyRule>]
        attr_accessor :response_policy_rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @response_policy_rules = args[:response_policy_rules] if args.key?(:response_policy_rules)
        end
      end
      
      # 
      class ResponsePolicyRulesPatchResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # A Response Policy Rule is a selector that applies its behavior to queries that
        # match the selector. Selectors are DNS names, which may be wildcards or exact
        # matches. Each DNS query subject to a Response Policy matches at most one
        # ResponsePolicyRule, as identified by the dns_name field with the longest
        # matching suffix.
        # Corresponds to the JSON property `responsePolicyRule`
        # @return [Google::Apis::DnsV1::ResponsePolicyRule]
        attr_accessor :response_policy_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @response_policy_rule = args[:response_policy_rule] if args.key?(:response_policy_rule)
        end
      end
      
      # 
      class ResponsePolicyRulesUpdateResponse
        include Google::Apis::Core::Hashable
      
        # Elements common to every response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::DnsV1::ResponseHeader]
        attr_accessor :header
      
        # A Response Policy Rule is a selector that applies its behavior to queries that
        # match the selector. Selectors are DNS names, which may be wildcards or exact
        # matches. Each DNS query subject to a Response Policy matches at most one
        # ResponsePolicyRule, as identified by the dns_name field with the longest
        # matching suffix.
        # Corresponds to the JSON property `responsePolicyRule`
        # @return [Google::Apis::DnsV1::ResponsePolicyRule]
        attr_accessor :response_policy_rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @header = args[:header] if args.key?(:header)
          @response_policy_rule = args[:response_policy_rule] if args.key?(:response_policy_rule)
        end
      end
    end
  end
end
