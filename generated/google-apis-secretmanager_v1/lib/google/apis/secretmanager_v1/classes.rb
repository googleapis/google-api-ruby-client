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
    module SecretmanagerV1
      
      # Response message for SecretManagerService.AccessSecretVersion.
      class AccessSecretVersionResponse
        include Google::Apis::Core::Hashable
      
        # The resource name of the SecretVersion in the format `projects/*/secrets/*/
        # versions/*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A secret payload resource in the Secret Manager API. This contains the
        # sensitive secret payload that is associated with a SecretVersion.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::SecretmanagerV1::SecretPayload]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # Request message for SecretManagerService.AddSecretVersion.
      class AddSecretVersionRequest
        include Google::Apis::Core::Hashable
      
        # A secret payload resource in the Secret Manager API. This contains the
        # sensitive secret payload that is associated with a SecretVersion.
        # Corresponds to the JSON property `payload`
        # @return [Google::Apis::SecretmanagerV1::SecretPayload]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @payload = args[:payload] if args.key?(:payload)
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
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::SecretmanagerV1::AuditLogConfig>]
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
      class AuditLogConfig
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
      
      # A replication policy that replicates the Secret payload without any
      # restrictions.
      class Automatic
        include Google::Apis::Core::Hashable
      
        # Configuration for encrypting secret payloads using customer-managed encryption
        # keys (CMEK).
        # Corresponds to the JSON property `customerManagedEncryption`
        # @return [Google::Apis::SecretmanagerV1::CustomerManagedEncryption]
        attr_accessor :customer_managed_encryption
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_managed_encryption = args[:customer_managed_encryption] if args.key?(:customer_managed_encryption)
        end
      end
      
      # The replication status of a SecretVersion using automatic replication. Only
      # populated if the parent Secret has an automatic replication policy.
      class AutomaticStatus
        include Google::Apis::Core::Hashable
      
        # Describes the status of customer-managed encryption.
        # Corresponds to the JSON property `customerManagedEncryption`
        # @return [Google::Apis::SecretmanagerV1::CustomerManagedEncryptionStatus]
        attr_accessor :customer_managed_encryption
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_managed_encryption = args[:customer_managed_encryption] if args.key?(:customer_managed_encryption)
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
        # @return [Google::Apis::SecretmanagerV1::Expr]
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
      
      # Configuration for encrypting secret payloads using customer-managed encryption
      # keys (CMEK).
      class CustomerManagedEncryption
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the Cloud KMS CryptoKey used to encrypt secret
        # payloads. For secrets using the UserManaged replication policy type, Cloud KMS
        # CryptoKeys must reside in the same location as the replica location. For
        # secrets using the Automatic replication policy type, Cloud KMS CryptoKeys must
        # reside in `global`. The expected format is `projects/*/locations/*/keyRings/*/
        # cryptoKeys/*`.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Describes the status of customer-managed encryption.
      class CustomerManagedEncryptionStatus
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the Cloud KMS CryptoKeyVersion used to encrypt
        # the secret payload, in the following format: `projects/*/locations/*/keyRings/*
        # /cryptoKeys/*/versions/*`.
        # Corresponds to the JSON property `kmsKeyVersionName`
        # @return [String]
        attr_accessor :kms_key_version_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_version_name = args[:kms_key_version_name] if args.key?(:kms_key_version_name)
        end
      end
      
      # Request message for SecretManagerService.DestroySecretVersion.
      class DestroySecretVersionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Etag of the SecretVersion. The request succeeds if it matches the
        # etag of the currently stored secret version object. If the etag is omitted,
        # the request succeeds.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
        end
      end
      
      # Request message for SecretManagerService.DisableSecretVersion.
      class DisableSecretVersionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Etag of the SecretVersion. The request succeeds if it matches the
        # etag of the currently stored secret version object. If the etag is omitted,
        # the request succeeds.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
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
      
      # Request message for SecretManagerService.EnableSecretVersion.
      class EnableSecretVersionRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Etag of the SecretVersion. The request succeeds if it matches the
        # etag of the currently stored secret version object. If the etag is omitted,
        # the request succeeds.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
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
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::SecretmanagerV1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for SecretManagerService.ListSecretVersions.
      class ListSecretVersionsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in
        # ListSecretVersionsRequest.page_token to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The total number of SecretVersions but 0 when the ListSecretsRequest.filter
        # field is set.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # The list of SecretVersions sorted in reverse by create_time (newest first).
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::SecretmanagerV1::SecretVersion>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_size = args[:total_size] if args.key?(:total_size)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # Response message for SecretManagerService.ListSecrets.
      class ListSecretsResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. Pass this value in
        # ListSecretsRequest.page_token to retrieve the next page.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Secrets sorted in reverse by create_time (newest first).
        # Corresponds to the JSON property `secrets`
        # @return [Array<Google::Apis::SecretmanagerV1::Secret>]
        attr_accessor :secrets
      
        # The total number of Secrets but 0 when the ListSecretsRequest.filter field is
        # set.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @secrets = args[:secrets] if args.key?(:secrets)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
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
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::SecretmanagerV1::AuditConfig>]
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
        # @return [Array<Google::Apis::SecretmanagerV1::Binding>]
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
      
      # Represents a Replica for this Secret.
      class Replica
        include Google::Apis::Core::Hashable
      
        # Configuration for encrypting secret payloads using customer-managed encryption
        # keys (CMEK).
        # Corresponds to the JSON property `customerManagedEncryption`
        # @return [Google::Apis::SecretmanagerV1::CustomerManagedEncryption]
        attr_accessor :customer_managed_encryption
      
        # The canonical IDs of the location to replicate data. For example: `"us-east1"`.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_managed_encryption = args[:customer_managed_encryption] if args.key?(:customer_managed_encryption)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Describes the status of a user-managed replica for the SecretVersion.
      class ReplicaStatus
        include Google::Apis::Core::Hashable
      
        # Describes the status of customer-managed encryption.
        # Corresponds to the JSON property `customerManagedEncryption`
        # @return [Google::Apis::SecretmanagerV1::CustomerManagedEncryptionStatus]
        attr_accessor :customer_managed_encryption
      
        # Output only. The canonical ID of the replica location. For example: `"us-east1"
        # `.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_managed_encryption = args[:customer_managed_encryption] if args.key?(:customer_managed_encryption)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # A policy that defines the replication and encryption configuration of data.
      class Replication
        include Google::Apis::Core::Hashable
      
        # A replication policy that replicates the Secret payload without any
        # restrictions.
        # Corresponds to the JSON property `automatic`
        # @return [Google::Apis::SecretmanagerV1::Automatic]
        attr_accessor :automatic
      
        # A replication policy that replicates the Secret payload into the locations
        # specified in Secret.replication.user_managed.replicas
        # Corresponds to the JSON property `userManaged`
        # @return [Google::Apis::SecretmanagerV1::UserManaged]
        attr_accessor :user_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic = args[:automatic] if args.key?(:automatic)
          @user_managed = args[:user_managed] if args.key?(:user_managed)
        end
      end
      
      # The replication status of a SecretVersion.
      class ReplicationStatus
        include Google::Apis::Core::Hashable
      
        # The replication status of a SecretVersion using automatic replication. Only
        # populated if the parent Secret has an automatic replication policy.
        # Corresponds to the JSON property `automatic`
        # @return [Google::Apis::SecretmanagerV1::AutomaticStatus]
        attr_accessor :automatic
      
        # The replication status of a SecretVersion using user-managed replication. Only
        # populated if the parent Secret has a user-managed replication policy.
        # Corresponds to the JSON property `userManaged`
        # @return [Google::Apis::SecretmanagerV1::UserManagedStatus]
        attr_accessor :user_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @automatic = args[:automatic] if args.key?(:automatic)
          @user_managed = args[:user_managed] if args.key?(:user_managed)
        end
      end
      
      # The rotation time and period for a Secret. At next_rotation_time, Secret
      # Manager will send a Pub/Sub notification to the topics configured on the
      # Secret. Secret.topics must be set to configure rotation.
      class Rotation
        include Google::Apis::Core::Hashable
      
        # Optional. Timestamp in UTC at which the Secret is scheduled to rotate. Cannot
        # be set to less than 300s (5 min) in the future and at most 3153600000s (100
        # years). next_rotation_time MUST be set if rotation_period is set.
        # Corresponds to the JSON property `nextRotationTime`
        # @return [String]
        attr_accessor :next_rotation_time
      
        # Input only. The Duration between rotation notifications. Must be in seconds
        # and at least 3600s (1h) and at most 3153600000s (100 years). If
        # rotation_period is set, next_rotation_time must be set. next_rotation_time
        # will be advanced by this period when the service automatically sends rotation
        # notifications.
        # Corresponds to the JSON property `rotationPeriod`
        # @return [String]
        attr_accessor :rotation_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_rotation_time = args[:next_rotation_time] if args.key?(:next_rotation_time)
          @rotation_period = args[:rotation_period] if args.key?(:rotation_period)
        end
      end
      
      # A Secret is a logical secret whose value and versions can be accessed. A
      # Secret is made up of zero or more SecretVersions that represent the secret
      # data.
      class Secret
        include Google::Apis::Core::Hashable
      
        # Optional. Custom metadata about the secret. Annotations are distinct from
        # various forms of labels. Annotations exist to allow client tools to store
        # their own state information without requiring a database. Annotation keys must
        # be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
        # bytes, begin and end with an alphanumeric character ([a-z0-9A-Z]), and may
        # have dashes (-), underscores (_), dots (.), and alphanumerics in between these
        # symbols. The total size of annotation keys and values must be less than 16KiB.
        # Corresponds to the JSON property `annotations`
        # @return [Hash<String,String>]
        attr_accessor :annotations
      
        # Output only. The time at which the Secret was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Etag of the currently stored Secret.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Timestamp in UTC when the Secret is scheduled to expire. This is
        # always provided on output, regardless of what was sent on input.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The labels assigned to this Secret. Label keys must be between 1 and 63
        # characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform
        # to the following PCRE regular expression: `\p`Ll`\p`Lo``0,62`` Label values
        # must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128
        # bytes, and must conform to the following PCRE regular expression: `[\p`Ll`\p`
        # Lo`\p`N`_-]`0,63`` No more than 64 labels can be assigned to a given resource.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The resource name of the Secret in the format `projects/*/secrets/
        # *`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A policy that defines the replication and encryption configuration of data.
        # Corresponds to the JSON property `replication`
        # @return [Google::Apis::SecretmanagerV1::Replication]
        attr_accessor :replication
      
        # The rotation time and period for a Secret. At next_rotation_time, Secret
        # Manager will send a Pub/Sub notification to the topics configured on the
        # Secret. Secret.topics must be set to configure rotation.
        # Corresponds to the JSON property `rotation`
        # @return [Google::Apis::SecretmanagerV1::Rotation]
        attr_accessor :rotation
      
        # Optional. A list of up to 10 Pub/Sub topics to which messages are published
        # when control plane operations are called on the secret or its versions.
        # Corresponds to the JSON property `topics`
        # @return [Array<Google::Apis::SecretmanagerV1::Topic>]
        attr_accessor :topics
      
        # Input only. The TTL for the Secret.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Optional. Mapping from version alias to version name. A version alias is a
        # string with a maximum length of 63 characters and can contain uppercase and
        # lowercase letters, numerals, and the hyphen (`-`) and underscore ('_')
        # characters. An alias string must start with a letter and cannot be the string '
        # latest' or 'NEW'. No more than 50 aliases can be assigned to a given secret.
        # Version-Alias pairs will be viewable via GetSecret and modifiable via
        # UpdateSecret. At launch Access by Allias will only be supported on
        # GetSecretVersion and AccessSecretVersion.
        # Corresponds to the JSON property `versionAliases`
        # @return [Hash<String,Fixnum>]
        attr_accessor :version_aliases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @create_time = args[:create_time] if args.key?(:create_time)
          @etag = args[:etag] if args.key?(:etag)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @replication = args[:replication] if args.key?(:replication)
          @rotation = args[:rotation] if args.key?(:rotation)
          @topics = args[:topics] if args.key?(:topics)
          @ttl = args[:ttl] if args.key?(:ttl)
          @version_aliases = args[:version_aliases] if args.key?(:version_aliases)
        end
      end
      
      # A secret payload resource in the Secret Manager API. This contains the
      # sensitive secret payload that is associated with a SecretVersion.
      class SecretPayload
        include Google::Apis::Core::Hashable
      
        # The secret data. Must be no larger than 64KiB.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # Optional. If specified, SecretManagerService will verify the integrity of the
        # received data on SecretManagerService.AddSecretVersion calls using the crc32c
        # checksum and store it to include in future SecretManagerService.
        # AccessSecretVersion responses. If a checksum is not provided in the
        # SecretManagerService.AddSecretVersion request, the SecretManagerService will
        # generate and store one for you. The CRC32C value is encoded as a Int64 for
        # compatibility, and can be safely downconverted to uint32 in languages that
        # support this type. https://cloud.google.com/apis/design/design_patterns#
        # integer_types
        # Corresponds to the JSON property `dataCrc32c`
        # @return [Fixnum]
        attr_accessor :data_crc32c
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @data_crc32c = args[:data_crc32c] if args.key?(:data_crc32c)
        end
      end
      
      # A secret version resource in the Secret Manager API.
      class SecretVersion
        include Google::Apis::Core::Hashable
      
        # Output only. True if payload checksum specified in SecretPayload object has
        # been received by SecretManagerService on SecretManagerService.AddSecretVersion.
        # Corresponds to the JSON property `clientSpecifiedPayloadChecksum`
        # @return [Boolean]
        attr_accessor :client_specified_payload_checksum
        alias_method :client_specified_payload_checksum?, :client_specified_payload_checksum
      
        # Output only. The time at which the SecretVersion was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time this SecretVersion was destroyed. Only present if state
        # is DESTROYED.
        # Corresponds to the JSON property `destroyTime`
        # @return [String]
        attr_accessor :destroy_time
      
        # Output only. Etag of the currently stored SecretVersion.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Output only. The resource name of the SecretVersion in the format `projects/*/
        # secrets/*/versions/*`. SecretVersion IDs in a Secret start at 1 and are
        # incremented for each subsequent version of the secret.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The replication status of a SecretVersion.
        # Corresponds to the JSON property `replicationStatus`
        # @return [Google::Apis::SecretmanagerV1::ReplicationStatus]
        attr_accessor :replication_status
      
        # Output only. The current state of the SecretVersion.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_specified_payload_checksum = args[:client_specified_payload_checksum] if args.key?(:client_specified_payload_checksum)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destroy_time = args[:destroy_time] if args.key?(:destroy_time)
          @etag = args[:etag] if args.key?(:etag)
          @name = args[:name] if args.key?(:name)
          @replication_status = args[:replication_status] if args.key?(:replication_status)
          @state = args[:state] if args.key?(:state)
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
        # @return [Google::Apis::SecretmanagerV1::Policy]
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
      
      # A Pub/Sub topic which Secret Manager will publish to when control plane events
      # occur on this secret.
      class Topic
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the Pub/Sub topic that will be published to, in
        # the following format: `projects/*/topics/*`. For publication to succeed, the
        # Secret Manager service agent must have the `pubsub.topic.publish` permission
        # on the topic. The Pub/Sub Publisher role (`roles/pubsub.publisher`) includes
        # this permission.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A replication policy that replicates the Secret payload into the locations
      # specified in Secret.replication.user_managed.replicas
      class UserManaged
        include Google::Apis::Core::Hashable
      
        # Required. The list of Replicas for this Secret. Cannot be empty.
        # Corresponds to the JSON property `replicas`
        # @return [Array<Google::Apis::SecretmanagerV1::Replica>]
        attr_accessor :replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replicas = args[:replicas] if args.key?(:replicas)
        end
      end
      
      # The replication status of a SecretVersion using user-managed replication. Only
      # populated if the parent Secret has a user-managed replication policy.
      class UserManagedStatus
        include Google::Apis::Core::Hashable
      
        # Output only. The list of replica statuses for the SecretVersion.
        # Corresponds to the JSON property `replicas`
        # @return [Array<Google::Apis::SecretmanagerV1::ReplicaStatus>]
        attr_accessor :replicas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @replicas = args[:replicas] if args.key?(:replicas)
        end
      end
    end
  end
end
