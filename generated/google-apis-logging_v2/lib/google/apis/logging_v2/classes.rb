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
    module LoggingV2
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs.If there
      # are AuditConfigs for both allServices and a specific service, the union of the
      # two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted.Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts jose@example.com from DATA_READ logging, and aliya@example.com from
      # DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::LoggingV2::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example,
        # storage.googleapis.com, cloudsql.googleapis.com. allServices is a special
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
      
      # Describes a BigQuery dataset that was created by a link.
      class BigQueryDataset
        include Google::Apis::Core::Hashable
      
        # Output only. The full resource name of the BigQuery dataset. The DATASET_ID
        # will match the ID of the link, so the link must match the naming restrictions
        # of BigQuery datasets (alphanumeric characters and underscores only).The
        # dataset will have a resource path of "bigquery.googleapis.com/projects/
        # PROJECT_ID/datasets/DATASET_ID"
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
        end
      end
      
      # Options that change functionality of a sink exporting data to BigQuery.
      class BigQueryOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to use BigQuery's partition tables (https://cloud.google.com/
        # bigquery/docs/partitioned-tables). By default, Cloud Logging creates dated
        # tables based on the log entries' timestamps, e.g. syslog_20170523. With
        # partitioned tables the date suffix is no longer present and special query
        # syntax (https://cloud.google.com/bigquery/docs/querying-partitioned-tables)
        # has to be used instead. In both cases, tables are sharded based on UTC
        # timezone.
        # Corresponds to the JSON property `usePartitionedTables`
        # @return [Boolean]
        attr_accessor :use_partitioned_tables
        alias_method :use_partitioned_tables?, :use_partitioned_tables
      
        # Output only. True if new timestamp column based partitioning is in use, false
        # if legacy ingress-time partitioning is in use.All new sinks will have this
        # field set true and will use timestamp column based partitioning. If
        # use_partitioned_tables is false, this value has no meaning and will be false.
        # Legacy sinks using partitioned tables will have this field set to false.
        # Corresponds to the JSON property `usesTimestampColumnPartitioning`
        # @return [Boolean]
        attr_accessor :uses_timestamp_column_partitioning
        alias_method :uses_timestamp_column_partitioning?, :uses_timestamp_column_partitioning
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @use_partitioned_tables = args[:use_partitioned_tables] if args.key?(:use_partitioned_tables)
          @uses_timestamp_column_partitioning = args[:uses_timestamp_column_partitioning] if args.key?(:uses_timestamp_column_partitioning)
        end
      end
      
      # Associates members, or principals, with a role.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec.Example (Comparison): title: "
        # Summary size limit" description: "Determines if a summary is less than 100
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
        # @return [Google::Apis::LoggingV2::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource.
        # members can have the following values: allUsers: A special identifier that
        # represents anyone who is on the internet; with or without a Google account.
        # allAuthenticatedUsers: A special identifier that represents anyone who is
        # authenticated with a Google account or a service account. Does not include
        # identities that come from external identity providers (IdPs) through identity
        # federation. user:`emailid`: An email address that represents a specific Google
        # account. For example, alice@example.com . serviceAccount:`emailid`: An email
        # address that represents a Google service account. For example, my-other-app@
        # appspot.gserviceaccount.com. serviceAccount:`projectid`.svc.id.goog[`namespace`
        # /`kubernetes-sa`]: An identifier for a Kubernetes service account (https://
        # cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts).
        # For example, my-project.svc.id.goog[my-namespace/my-kubernetes-sa]. group:`
        # emailid`: An email address that represents a Google group. For example, admins@
        # example.com. domain:`domain`: The G Suite domain (primary) that represents all
        # the users of that domain. For example, google.com or example.com. principal://
        # iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value`: A single identity in a workforce identity pool.
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id`: All workforce identities in a group. principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value`: All workforce identities with a specific
        # attribute value. principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*: All identities in a workforce identity pool.
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value`: A single
        # identity in a workload identity pool. principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id`: A workload identity pool group. principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value`:
        # All identities in a workload identity pool with a certain attribute.
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*: All identities in a workload identity pool.
        # deleted:user:`emailid`?uid=`uniqueid`: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example,
        # alice@example.com?uid=123456789012345678901. If the user is recovered, this
        # value reverts to user:`emailid` and the recovered user retains the role in the
        # binding. deleted:serviceAccount:`emailid`?uid=`uniqueid`: An email address (
        # plus unique identifier) representing a service account that has been recently
        # deleted. For example, my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901. If the service account is undeleted, this value reverts
        # to serviceAccount:`emailid` and the undeleted service account retains the role
        # in the binding. deleted:group:`emailid`?uid=`uniqueid`: An email address (plus
        # unique identifier) representing a Google group that has been recently deleted.
        # For example, admins@example.com?uid=123456789012345678901. If the group is
        # recovered, this value reverts to group:`emailid` and the recovered group
        # retains the role in the binding. deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/`pool_id`/subject/`subject_attribute_value`:
        # Deleted single identity in a workforce identity pool. For example, deleted:
        # principal://iam.googleapis.com/locations/global/workforcePools/my-pool-id/
        # subject/my-subject-attribute-value.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of members, or principals. For example,
        # roles/viewer, roles/editor, or roles/owner.For an overview of the IAM roles
        # and permissions, see the IAM documentation (https://cloud.google.com/iam/docs/
        # roles-overview). For a list of the available pre-defined roles, see here (
        # https://cloud.google.com/iam/docs/understanding-roles).
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
      
      # Metadata for LongRunningUpdateBucket Operations.
      class BucketMetadata
        include Google::Apis::Core::Hashable
      
        # The parameters to CreateBucket.
        # Corresponds to the JSON property `createBucketRequest`
        # @return [Google::Apis::LoggingV2::CreateBucketRequest]
        attr_accessor :create_bucket_request
      
        # The end time of an operation.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The create time of an operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. State of an operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The parameters to UpdateBucket.
        # Corresponds to the JSON property `updateBucketRequest`
        # @return [Google::Apis::LoggingV2::UpdateBucketRequest]
        attr_accessor :update_bucket_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_bucket_request = args[:create_bucket_request] if args.key?(:create_bucket_request)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @update_bucket_request = args[:update_bucket_request] if args.key?(:update_bucket_request)
        end
      end
      
      # BucketOptions describes the bucket boundaries used to create a histogram for
      # the distribution. The buckets can be in a linear sequence, an exponential
      # sequence, or each bucket can be specified explicitly. BucketOptions does not
      # include the number of values in each bucket.A bucket has an inclusive lower
      # bound and exclusive upper bound for the values that are counted for that
      # bucket. The upper bound of a bucket must be strictly greater than the lower
      # bound. The sequence of N buckets for a distribution consists of an underflow
      # bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an
      # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
      # bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets
      # span the whole range of finite values: lower bound of the underflow bucket is -
      # infinity and the upper bound of the overflow bucket is +infinity. The finite
      # buckets are so-called because both bounds are finite.
      class BucketOptions
        include Google::Apis::Core::Hashable
      
        # Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (=
        # N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1):
        # boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at
        # least one element. If bounds has only one element, then there are no finite
        # buckets, and that single element is the common boundary of the overflow and
        # underflow buckets.
        # Corresponds to the JSON property `explicitBuckets`
        # @return [Google::Apis::LoggingV2::Explicit]
        attr_accessor :explicit_buckets
      
        # Specifies an exponential sequence of buckets that have a width that is
        # proportional to the value of the lower bound. Each bucket represents a
        # constant relative uncertainty on a specific value in the bucket.There are
        # num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:
        # Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).Lower bound (1 <= i <
        # N): scale * (growth_factor ^ (i - 1)).
        # Corresponds to the JSON property `exponentialBuckets`
        # @return [Google::Apis::LoggingV2::Exponential]
        attr_accessor :exponential_buckets
      
        # Specifies a linear sequence of buckets that all have the same width (except
        # overflow and underflow). Each bucket represents a constant absolute
        # uncertainty on the specific value in the bucket.There are num_finite_buckets +
        # 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-
        # 1): offset + (width * i).Lower bound (1 <= i < N): offset + (width * (i - 1)).
        # Corresponds to the JSON property `linearBuckets`
        # @return [Google::Apis::LoggingV2::Linear]
        attr_accessor :linear_buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @explicit_buckets = args[:explicit_buckets] if args.key?(:explicit_buckets)
          @exponential_buckets = args[:exponential_buckets] if args.key?(:exponential_buckets)
          @linear_buckets = args[:linear_buckets] if args.key?(:linear_buckets)
        end
      end
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Describes the customer-managed encryption key (CMEK) settings associated with
      # a project, folder, organization, billing account, or flexible resource.Note:
      # CMEK for the Log Router can currently only be configured for Google Cloud
      # organizations. Once configured, it applies to all projects and folders in the
      # Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.
      # google.com/logging/docs/routing/managed-encryption) for more information.
      class CmekSettings
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name for the configured Cloud KMS key.KMS key name
        # format: "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/
        # cryptoKeys/[KEY]" For example:"projects/my-project/locations/us-central1/
        # keyRings/my-ring/cryptoKeys/my-key"To enable CMEK for the Log Router, set this
        # field to a valid kms_key_name for which the associated service account has the
        # needed cloudkms.cryptoKeyEncrypterDecrypter roles assigned for the key.The
        # Cloud KMS key used by the Log Router can be updated by changing the
        # kms_key_name to a new valid key name or disabled by setting the key name to an
        # empty string. Encryption operations that are in progress will be completed
        # with the key that was in use when they started. Decryption operations will be
        # completed using the key that was used at the time of encryption unless access
        # to that key has been revoked.To disable CMEK for the Log Router, set this
        # field to an empty string.See Enabling CMEK for Log Router (https://cloud.
        # google.com/logging/docs/routing/managed-encryption) for more information.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Output only. The CryptoKeyVersion resource name for the configured Cloud KMS
        # key.KMS key name format: "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[
        # KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]" For example:"projects/
        # my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/
        # cryptoKeyVersions/1"This is a read-only field used to convey the specific
        # configured CryptoKeyVersion of kms_key that has been configured. It will be
        # populated in cases where the CMEK settings are bound to a single key version.
        # If this field is populated, the kms_key is tied to a specific CryptoKeyVersion.
        # Corresponds to the JSON property `kmsKeyVersionName`
        # @return [String]
        attr_accessor :kms_key_version_name
      
        # Output only. The resource name of the CMEK settings.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The service account that will be used by the Log Router to access
        # your Cloud KMS key.Before enabling CMEK for Log Router, you must first assign
        # the cloudkms.cryptoKeyEncrypterDecrypter role to the service account that the
        # Log Router will use to access your Cloud KMS key. Use GetCmekSettings to
        # obtain the service account ID.See Enabling CMEK for Log Router (https://cloud.
        # google.com/logging/docs/routing/managed-encryption) for more information.
        # Corresponds to the JSON property `serviceAccountId`
        # @return [String]
        attr_accessor :service_account_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_key_version_name = args[:kms_key_version_name] if args.key?(:kms_key_version_name)
          @name = args[:name] if args.key?(:name)
          @service_account_id = args[:service_account_id] if args.key?(:service_account_id)
        end
      end
      
      # Metadata for CopyLogEntries long running operations.
      class CopyLogEntriesMetadata
        include Google::Apis::Core::Hashable
      
        # Identifies whether the user has requested cancellation of the operation.
        # Corresponds to the JSON property `cancellationRequested`
        # @return [Boolean]
        attr_accessor :cancellation_requested
        alias_method :cancellation_requested?, :cancellation_requested
      
        # Destination to which to copy log entries.For example, a Cloud Storage bucket:"
        # storage.googleapis.com/my-cloud-storage-bucket"
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # The end time of an operation.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Estimated progress of the operation (0 - 100%).
        # Corresponds to the JSON property `progress`
        # @return [Fixnum]
        attr_accessor :progress
      
        # The parameters to CopyLogEntries.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::LoggingV2::CopyLogEntriesRequest]
        attr_accessor :request
      
        # Source from which to copy log entries.For example, a log bucket:"projects/my-
        # project/locations/global/buckets/my-source-bucket"
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The create time of an operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. State of an operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Name of the verb executed by the operation.For example,"copy"
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        # The IAM identity of a service account that must be granted access to the
        # destination.If the service account is not granted permission to the
        # destination within an hour, the operation will be cancelled.For example: "
        # serviceAccount:foo@bar.com"
        # Corresponds to the JSON property `writerIdentity`
        # @return [String]
        attr_accessor :writer_identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cancellation_requested = args[:cancellation_requested] if args.key?(:cancellation_requested)
          @destination = args[:destination] if args.key?(:destination)
          @end_time = args[:end_time] if args.key?(:end_time)
          @progress = args[:progress] if args.key?(:progress)
          @request = args[:request] if args.key?(:request)
          @source = args[:source] if args.key?(:source)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @verb = args[:verb] if args.key?(:verb)
          @writer_identity = args[:writer_identity] if args.key?(:writer_identity)
        end
      end
      
      # The parameters to CopyLogEntries.
      class CopyLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Required. Destination to which to copy log entries.
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Optional. A filter specifying which log entries to copy. The filter must be no
        # more than 20k characters. An empty filter matches all log entries.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Log bucket from which to copy log entries.For example:"projects/my-
        # project/locations/global/buckets/my-source-bucket"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response type for CopyLogEntries long running operations.
      class CopyLogEntriesResponse
        include Google::Apis::Core::Hashable
      
        # Number of log entries copied.
        # Corresponds to the JSON property `logEntriesCopiedCount`
        # @return [Fixnum]
        attr_accessor :log_entries_copied_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_entries_copied_count = args[:log_entries_copied_count] if args.key?(:log_entries_copied_count)
        end
      end
      
      # The parameters to CreateBucket.
      class CreateBucketRequest
        include Google::Apis::Core::Hashable
      
        # Describes a repository in which log entries are stored.
        # Corresponds to the JSON property `bucket`
        # @return [Google::Apis::LoggingV2::LogBucket]
        attr_accessor :bucket
      
        # Required. A client-assigned identifier such as "my-bucket". Identifiers are
        # limited to 100 characters and can include only letters, digits, underscores,
        # hyphens, and periods. Bucket identifiers must start with an alphanumeric
        # character.
        # Corresponds to the JSON property `bucketId`
        # @return [String]
        attr_accessor :bucket_id
      
        # Required. The resource in which to create the log bucket: "projects/[
        # PROJECT_ID]/locations/[LOCATION_ID]" For example:"projects/my-project/
        # locations/global"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @bucket_id = args[:bucket_id] if args.key?(:bucket_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The parameters to CreateLink.
      class CreateLinkRequest
        include Google::Apis::Core::Hashable
      
        # Describes a link connected to an analytics enabled bucket.
        # Corresponds to the JSON property `link`
        # @return [Google::Apis::LoggingV2::Link]
        attr_accessor :link
      
        # Required. The ID to use for the link. The link_id can have up to 100
        # characters. A valid link_id must only have alphanumeric characters and
        # underscores within it.
        # Corresponds to the JSON property `linkId`
        # @return [String]
        attr_accessor :link_id
      
        # Required. The full resource name of the bucket to create a link for. "projects/
        # [PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        # ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        # [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        # FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]"
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @link = args[:link] if args.key?(:link)
          @link_id = args[:link_id] if args.key?(:link_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Describes the custom _Default sink configuration that is used to override the
      # built-in _Default sink configuration in newly created resource containers,
      # such as projects or folders.
      class DefaultSinkConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the set of exclusions to be added to the _Default sink in
        # newly created resource containers.
        # Corresponds to the JSON property `exclusions`
        # @return [Array<Google::Apis::LoggingV2::LogExclusion>]
        attr_accessor :exclusions
      
        # Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/
        # advanced-queries). The only exported log entries are those that are in the
        # resource owning the sink and that match the filter.For example:logName="
        # projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERRORTo match all logs, don'
        # t add exclusions and use the following line as the value of filter:logName:*
        # Cannot be empty or unset when the value of mode is OVERWRITE.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Determines the behavior to apply to the built-in _Default sink
        # inclusion filter.Exclusions are always appended, as built-in _Default sinks
        # have no exclusions.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusions = args[:exclusions] if args.key?(:exclusions)
          @filter = args[:filter] if args.key?(:filter)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # The parameters to DeleteLink.
      class DeleteLinkRequest
        include Google::Apis::Core::Hashable
      
        # Required. The full resource name of the link to delete. "projects/[PROJECT_ID]/
        # locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        # ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        # billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        # BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        # buckets/[BUCKET_ID]/links/[LINK_ID]"
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
      
      # Specifies a set of buckets with arbitrary widths.There are size(bounds) + 1 (=
      # N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-1):
      # boundsi Lower bound (1 <= i < N); boundsi - 1The bounds field must contain at
      # least one element. If bounds has only one element, then there are no finite
      # buckets, and that single element is the common boundary of the overflow and
      # underflow buckets.
      class Explicit
        include Google::Apis::Core::Hashable
      
        # The values must be monotonically increasing.
        # Corresponds to the JSON property `bounds`
        # @return [Array<Float>]
        attr_accessor :bounds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bounds = args[:bounds] if args.key?(:bounds)
        end
      end
      
      # Specifies an exponential sequence of buckets that have a width that is
      # proportional to the value of the lower bound. Each bucket represents a
      # constant relative uncertainty on a specific value in the bucket.There are
      # num_finite_buckets + 2 (= N) buckets. Bucket i has the following boundaries:
      # Upper bound (0 <= i < N-1): scale * (growth_factor ^ i).Lower bound (1 <= i <
      # N): scale * (growth_factor ^ (i - 1)).
      class Exponential
        include Google::Apis::Core::Hashable
      
        # Must be greater than 1.
        # Corresponds to the JSON property `growthFactor`
        # @return [Float]
        attr_accessor :growth_factor
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # Must be greater than 0.
        # Corresponds to the JSON property `scale`
        # @return [Float]
        attr_accessor :scale
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @growth_factor = args[:growth_factor] if args.key?(:growth_factor)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @scale = args[:scale] if args.key?(:scale)
        end
      end
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec.Example (Comparison): title: "
      # Summary size limit" description: "Determines if a summary is less than 100
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
      
      # Request message for GetIamPolicy method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::LoggingV2::GetPolicyOptions]
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
      
        # Optional. The maximum policy version that will be used to format the policy.
        # Valid values are 0, 1, and 3. Requests specifying an invalid value will be
        # rejected.Requests for policies with any conditional role bindings must specify
        # version 3. Policies with no conditional role bindings may specify any valid
        # value or leave the field unset.The policy in the response might use the policy
        # version that you specified, or it might use a lower policy version. For
        # example, if you specify version 3, but the policy has no conditional role
        # bindings, the response uses version 1.To learn which resources support
        # conditions in their IAM policies, see the IAM documentation (https://cloud.
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
      
      # A common proto for logging HTTP requests. Only contains semantics defined by
      # the HTTP specification. Product-specific logging information MUST be defined
      # in a separate message.
      class HttpRequest
        include Google::Apis::Core::Hashable
      
        # The number of HTTP response bytes inserted into cache. Set only when a cache
        # fill was attempted.
        # Corresponds to the JSON property `cacheFillBytes`
        # @return [Fixnum]
        attr_accessor :cache_fill_bytes
      
        # Whether or not an entity was served from cache (with or without validation).
        # Corresponds to the JSON property `cacheHit`
        # @return [Boolean]
        attr_accessor :cache_hit
        alias_method :cache_hit?, :cache_hit
      
        # Whether or not a cache lookup was attempted.
        # Corresponds to the JSON property `cacheLookup`
        # @return [Boolean]
        attr_accessor :cache_lookup
        alias_method :cache_lookup?, :cache_lookup
      
        # Whether or not the response was validated with the origin server before being
        # served from cache. This field is only meaningful if cache_hit is True.
        # Corresponds to the JSON property `cacheValidatedWithOriginServer`
        # @return [Boolean]
        attr_accessor :cache_validated_with_origin_server
        alias_method :cache_validated_with_origin_server?, :cache_validated_with_origin_server
      
        # The request processing latency on the server, from the time the request was
        # received until the response was sent.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # Protocol used for the request. Examples: "HTTP/1.1", "HTTP/2", "websocket"
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # The referer URL of the request, as defined in HTTP/1.1 Header Field
        # Definitions (https://datatracker.ietf.org/doc/html/rfc2616#section-14.36).
        # Corresponds to the JSON property `referer`
        # @return [String]
        attr_accessor :referer
      
        # The IP address (IPv4 or IPv6) of the client that issued the HTTP request. This
        # field can include port information. Examples: "192.168.1.1", "10.0.0.1:80", "
        # FE80::0202:B3FF:FE1E:8329".
        # Corresponds to the JSON property `remoteIp`
        # @return [String]
        attr_accessor :remote_ip
      
        # The request method. Examples: "GET", "HEAD", "PUT", "POST".
        # Corresponds to the JSON property `requestMethod`
        # @return [String]
        attr_accessor :request_method
      
        # The size of the HTTP request message in bytes, including the request headers
        # and the request body.
        # Corresponds to the JSON property `requestSize`
        # @return [Fixnum]
        attr_accessor :request_size
      
        # The scheme (http, https), the host name, the path and the query portion of the
        # URL that was requested. Example: "http://example.com/some/info?color=red".
        # Corresponds to the JSON property `requestUrl`
        # @return [String]
        attr_accessor :request_url
      
        # The size of the HTTP response message sent back to the client, in bytes,
        # including the response headers and the response body.
        # Corresponds to the JSON property `responseSize`
        # @return [Fixnum]
        attr_accessor :response_size
      
        # The IP address (IPv4 or IPv6) of the origin server that the request was sent
        # to. This field can include port information. Examples: "192.168.1.1", "10.0.0.
        # 1:80", "FE80::0202:B3FF:FE1E:8329".
        # Corresponds to the JSON property `serverIp`
        # @return [String]
        attr_accessor :server_ip
      
        # The response code indicating the status of response. Examples: 200, 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # The user agent sent by the client. Example: "Mozilla/4.0 (compatible; MSIE 6.0;
        # Windows 98; Q312461; .NET CLR 1.0.3705)".
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cache_fill_bytes = args[:cache_fill_bytes] if args.key?(:cache_fill_bytes)
          @cache_hit = args[:cache_hit] if args.key?(:cache_hit)
          @cache_lookup = args[:cache_lookup] if args.key?(:cache_lookup)
          @cache_validated_with_origin_server = args[:cache_validated_with_origin_server] if args.key?(:cache_validated_with_origin_server)
          @latency = args[:latency] if args.key?(:latency)
          @protocol = args[:protocol] if args.key?(:protocol)
          @referer = args[:referer] if args.key?(:referer)
          @remote_ip = args[:remote_ip] if args.key?(:remote_ip)
          @request_method = args[:request_method] if args.key?(:request_method)
          @request_size = args[:request_size] if args.key?(:request_size)
          @request_url = args[:request_url] if args.key?(:request_url)
          @response_size = args[:response_size] if args.key?(:response_size)
          @server_ip = args[:server_ip] if args.key?(:server_ip)
          @status = args[:status] if args.key?(:status)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
        end
      end
      
      # Configuration for an indexed field.
      class IndexConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the index was last modified.This is used to
        # return the timestamp, and will be ignored if supplied during update.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The LogEntry field path to index.Note that some paths are
        # automatically indexed, and other paths are not eligible for indexing. See
        # indexing documentation( https://cloud.google.com/logging/docs/view/advanced-
        # queries#indexed-fields) for details.For example: jsonPayload.request.status
        # Corresponds to the JSON property `fieldPath`
        # @return [String]
        attr_accessor :field_path
      
        # Required. The type of data in this index.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @field_path = args[:field_path] if args.key?(:field_path)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A description of a label.
      class LabelDescriptor
        include Google::Apis::Core::Hashable
      
        # A human-readable description for the label.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The label key.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # The type of data that can be assigned to the label.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @key = args[:key] if args.key?(:key)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Specifies a linear sequence of buckets that all have the same width (except
      # overflow and underflow). Each bucket represents a constant absolute
      # uncertainty on the specific value in the bucket.There are num_finite_buckets +
      # 2 (= N) buckets. Bucket i has the following boundaries:Upper bound (0 <= i < N-
      # 1): offset + (width * i).Lower bound (1 <= i < N): offset + (width * (i - 1)).
      class Linear
        include Google::Apis::Core::Hashable
      
        # Must be greater than 0.
        # Corresponds to the JSON property `numFiniteBuckets`
        # @return [Fixnum]
        attr_accessor :num_finite_buckets
      
        # Lower bound of the first bucket.
        # Corresponds to the JSON property `offset`
        # @return [Float]
        attr_accessor :offset
      
        # Must be greater than 0.
        # Corresponds to the JSON property `width`
        # @return [Float]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_finite_buckets = args[:num_finite_buckets] if args.key?(:num_finite_buckets)
          @offset = args[:offset] if args.key?(:offset)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Describes a link connected to an analytics enabled bucket.
      class Link
        include Google::Apis::Core::Hashable
      
        # Describes a BigQuery dataset that was created by a link.
        # Corresponds to the JSON property `bigqueryDataset`
        # @return [Google::Apis::LoggingV2::BigQueryDataset]
        attr_accessor :bigquery_dataset
      
        # Output only. The creation timestamp of the link.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Describes this link.The maximum length of the description is 8000
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The resource lifecycle state.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Output only. The resource name of the link. The name can have up to 100
        # characters. A valid link id (at the end of the link name) must only have
        # alphanumeric characters and underscores within it. "projects/[PROJECT_ID]/
        # locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "organizations/[
        # ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/links/[LINK_ID]" "
        # billingAccounts/[BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[
        # BUCKET_ID]/links/[LINK_ID]" "folders/[FOLDER_ID]/locations/[LOCATION_ID]/
        # buckets/[BUCKET_ID]/links/[LINK_ID]" For example:`projects/my-project/
        # locations/global/buckets/my-bucket/links/my_link
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_dataset = args[:bigquery_dataset] if args.key?(:bigquery_dataset)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Metadata for long running Link operations.
      class LinkMetadata
        include Google::Apis::Core::Hashable
      
        # The parameters to CreateLink.
        # Corresponds to the JSON property `createLinkRequest`
        # @return [Google::Apis::LoggingV2::CreateLinkRequest]
        attr_accessor :create_link_request
      
        # The parameters to DeleteLink.
        # Corresponds to the JSON property `deleteLinkRequest`
        # @return [Google::Apis::LoggingV2::DeleteLinkRequest]
        attr_accessor :delete_link_request
      
        # The end time of an operation.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The start time of an operation.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. State of an operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_link_request = args[:create_link_request] if args.key?(:create_link_request)
          @delete_link_request = args[:delete_link_request] if args.key?(:delete_link_request)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The response from ListBuckets.
      class ListBucketsResponse
        include Google::Apis::Core::Hashable
      
        # A list of buckets.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::LoggingV2::LogBucket>]
        attr_accessor :buckets
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Result returned from ListExclusions.
      class ListExclusionsResponse
        include Google::Apis::Core::Hashable
      
        # A list of exclusions.
        # Corresponds to the JSON property `exclusions`
        # @return [Array<Google::Apis::LoggingV2::LogExclusion>]
        attr_accessor :exclusions
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclusions = args[:exclusions] if args.key?(:exclusions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response from ListLinks.
      class ListLinksResponse
        include Google::Apis::Core::Hashable
      
        # A list of links.
        # Corresponds to the JSON property `links`
        # @return [Array<Google::Apis::LoggingV2::Link>]
        attr_accessor :links
      
        # If there might be more results than those appearing in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @links = args[:links] if args.key?(:links)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::LoggingV2::Location>]
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
      
      # The parameters to ListLogEntries.
      class ListLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A filter that chooses which log entries to return. For more
        # information, see Logging query language (https://cloud.google.com/logging/docs/
        # view/logging-query-language).Only log entries that match the filter are
        # returned. An empty filter matches all log entries in the resources listed in
        # resource_names. Referencing a parent resource that is not listed in
        # resource_names will cause the filter to return no results. The maximum length
        # of a filter is 20,000 characters.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. How the results should be sorted. Presently, the only permitted
        # values are "timestamp asc" (default) and "timestamp desc". The first option
        # returns entries in order of increasing values of LogEntry.timestamp (oldest
        # first), and the second option returns entries in order of decreasing
        # timestamps (newest first). Entries with equal timestamps are returned in order
        # of their insert_id values.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Optional. The maximum number of results to return from this request. Default
        # is 50. If the value is negative, the request is rejected.The presence of
        # next_page_token in the response indicates that more results might be available.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. If present, then retrieve the next batch of results from the
        # preceding call to this method. page_token must be the value of next_page_token
        # from the previous response. The values of other method parameters should be
        # identical to those in the previous call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. Deprecated. Use resource_names instead. One or more project
        # identifiers or project numbers from which to retrieve log entries. Example: "
        # my-project-1A".
        # Corresponds to the JSON property `projectIds`
        # @return [Array<String>]
        attr_accessor :project_ids
      
        # Required. Names of one or more parent resources from which to retrieve log
        # entries: projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/
        # [BILLING_ACCOUNT_ID] folders/[FOLDER_ID]May alternatively be one or more views:
        # projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[
        # VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[
        # BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        # LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/
        # [LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]Projects listed in the
        # project_ids field are added to this list. A maximum of 100 resources may be
        # specified in a single request.
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @project_ids = args[:project_ids] if args.key?(:project_ids)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
        end
      end
      
      # Result returned from ListLogEntries.
      class ListLogEntriesResponse
        include Google::Apis::Core::Hashable
      
        # A list of log entries. If entries is empty, nextPageToken may still be
        # returned, indicating that more entries may exist. See nextPageToken for more
        # information.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV2::LogEntry>]
        attr_accessor :entries
      
        # If there might be more results than those appearing in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.If a value for
        # next_page_token appears and the entries field is empty, it means that the
        # search found no log entries so far but it did not have time to search all the
        # possible log entries. Retry the method with this value for page_token to
        # continue the search. Alternatively, consider speeding up the search by
        # changing your filter to specify a single log name or resource type, or to
        # narrow the time range of the search.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Result returned from ListLogMetrics.
      class ListLogMetricsResponse
        include Google::Apis::Core::Hashable
      
        # A list of logs-based metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<Google::Apis::LoggingV2::LogMetric>]
        attr_accessor :metrics
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metrics = args[:metrics] if args.key?(:metrics)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Result returned from ListLogs.
      class ListLogsResponse
        include Google::Apis::Core::Hashable
      
        # A list of log names. For example, "projects/my-project/logs/syslog" or "
        # organizations/123/logs/cloudresourcemanager.googleapis.com%2Factivity".
        # Corresponds to the JSON property `logNames`
        # @return [Array<String>]
        attr_accessor :log_names
      
        # If there might be more results than those appearing in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_names = args[:log_names] if args.key?(:log_names)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Result returned from ListMonitoredResourceDescriptors.
      class ListMonitoredResourceDescriptorsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than those appearing in this response, then
        # nextPageToken is included. To get the next set of results, call this method
        # again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of resource descriptors.
        # Corresponds to the JSON property `resourceDescriptors`
        # @return [Array<Google::Apis::LoggingV2::MonitoredResourceDescriptor>]
        attr_accessor :resource_descriptors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_descriptors = args[:resource_descriptors] if args.key?(:resource_descriptors)
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
        # @return [Array<Google::Apis::LoggingV2::Operation>]
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
      
      # The response from ListRecentQueries.
      class ListRecentQueriesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of recent queries.
        # Corresponds to the JSON property `recentQueries`
        # @return [Array<Google::Apis::LoggingV2::RecentQuery>]
        attr_accessor :recent_queries
      
        # The unreachable resources. Each resource can be either 1) a saved query if a
        # specific query is unreachable or 2) a location if a specific location is
        # unreachable. "projects/[PROJECT_ID]/locations/[LOCATION_ID]/recentQueries/[
        # QUERY_ID]" "projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example:"
        # projects/my-project/locations/global/recentQueries/12345678" "projects/my-
        # project/locations/global"If there are unreachable resources, the response will
        # first return pages that contain recent queries, and then return pages that
        # contain the unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @recent_queries = args[:recent_queries] if args.key?(:recent_queries)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response from ListSavedQueries.
      class ListSavedQueriesResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of saved queries.
        # Corresponds to the JSON property `savedQueries`
        # @return [Array<Google::Apis::LoggingV2::SavedQuery>]
        attr_accessor :saved_queries
      
        # The unreachable resources. It can be either 1) a saved query if a specific
        # query is unreachable or 2) a location if a specific location is unreachabe. "
        # projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" "
        # projects/[PROJECT_ID]/locations/[LOCATION_ID]" For example: "projects/my-
        # project/locations/global/savedQueries/12345678" "projects/my-project/locations/
        # global" If there are unreachable resources, the response will first return
        # pages that contain saved queries, and then return pages that contain the
        # unreachable resources.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @saved_queries = args[:saved_queries] if args.key?(:saved_queries)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Result returned from ListSinks.
      class ListSinksResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of sinks.
        # Corresponds to the JSON property `sinks`
        # @return [Array<Google::Apis::LoggingV2::LogSink>]
        attr_accessor :sinks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sinks = args[:sinks] if args.key?(:sinks)
        end
      end
      
      # The response from ListViews.
      class ListViewsResponse
        include Google::Apis::Core::Hashable
      
        # If there might be more results than appear in this response, then
        # nextPageToken is included. To get the next set of results, call the same
        # method again using the value of nextPageToken as pageToken.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of views.
        # Corresponds to the JSON property `views`
        # @return [Array<Google::Apis::LoggingV2::LogView>]
        attr_accessor :views
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @views = args[:views] if args.key?(:views)
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
      
        # The canonical id for this location. For example: "us-east1".
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: "projects/example-project/locations/us-east1"
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
      
      # Cloud Logging specific location metadata.
      class LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Indicates whether or not Log Analytics features are supported in the given
        # location.
        # Corresponds to the JSON property `logAnalyticsEnabled`
        # @return [Boolean]
        attr_accessor :log_analytics_enabled
        alias_method :log_analytics_enabled?, :log_analytics_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_analytics_enabled = args[:log_analytics_enabled] if args.key?(:log_analytics_enabled)
        end
      end
      
      # Describes a repository in which log entries are stored.
      class LogBucket
        include Google::Apis::Core::Hashable
      
        # Whether log analytics is enabled for this bucket.Once enabled, log analytics
        # features cannot be disabled.
        # Corresponds to the JSON property `analyticsEnabled`
        # @return [Boolean]
        attr_accessor :analytics_enabled
        alias_method :analytics_enabled?, :analytics_enabled
      
        # Describes the customer-managed encryption key (CMEK) settings associated with
        # a project, folder, organization, billing account, or flexible resource.Note:
        # CMEK for the Log Router can currently only be configured for Google Cloud
        # organizations. Once configured, it applies to all projects and folders in the
        # Google Cloud organization.See Enabling CMEK for Log Router (https://cloud.
        # google.com/logging/docs/routing/managed-encryption) for more information.
        # Corresponds to the JSON property `cmekSettings`
        # @return [Google::Apis::LoggingV2::CmekSettings]
        attr_accessor :cmek_settings
      
        # Output only. The creation timestamp of the bucket. This is not set for any of
        # the default buckets.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Describes this bucket.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A list of indexed fields and related configuration data.
        # Corresponds to the JSON property `indexConfigs`
        # @return [Array<Google::Apis::LoggingV2::IndexConfig>]
        attr_accessor :index_configs
      
        # Output only. The bucket lifecycle state.
        # Corresponds to the JSON property `lifecycleState`
        # @return [String]
        attr_accessor :lifecycle_state
      
        # Optional. Whether the bucket is locked.The retention period on a locked bucket
        # cannot be changed. Locked buckets may only be deleted if they are empty.
        # Corresponds to the JSON property `locked`
        # @return [Boolean]
        attr_accessor :locked
        alias_method :locked?, :locked
      
        # Output only. The resource name of the bucket.For example:projects/my-project/
        # locations/global/buckets/my-bucketFor a list of supported locations, see
        # Supported Regions (https://cloud.google.com/logging/docs/region-support)For
        # the location of global it is unspecified where log entries are actually stored.
        # After a bucket has been created, the location cannot be changed.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Log entry field paths that are denied access in this bucket.The
        # following fields and their children are eligible: textPayload, jsonPayload,
        # protoPayload, httpRequest, labels, sourceLocation.Restricting a repeated field
        # will restrict all values. Adding a parent will block all child fields. (e.g.
        # foo.bar will block foo.bar.baz)
        # Corresponds to the JSON property `restrictedFields`
        # @return [Array<String>]
        attr_accessor :restricted_fields
      
        # Optional. Logs will be retained by default for this amount of time, after
        # which they will automatically be deleted. The minimum retention period is 1
        # day. If this value is set to zero at bucket creation time, the default time of
        # 30 days will be used.
        # Corresponds to the JSON property `retentionDays`
        # @return [Fixnum]
        attr_accessor :retention_days
      
        # Output only. The last update timestamp of the bucket.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics_enabled = args[:analytics_enabled] if args.key?(:analytics_enabled)
          @cmek_settings = args[:cmek_settings] if args.key?(:cmek_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @index_configs = args[:index_configs] if args.key?(:index_configs)
          @lifecycle_state = args[:lifecycle_state] if args.key?(:lifecycle_state)
          @locked = args[:locked] if args.key?(:locked)
          @name = args[:name] if args.key?(:name)
          @restricted_fields = args[:restricted_fields] if args.key?(:restricted_fields)
          @retention_days = args[:retention_days] if args.key?(:retention_days)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An individual entry in a log.
      class LogEntry
        include Google::Apis::Core::Hashable
      
        # Output only. The Error Reporting (https://cloud.google.com/error-reporting)
        # error groups associated with this LogEntry. Error Reporting sets the values
        # for this field during error group creation.For more information, see View
        # error details( https://cloud.google.com/error-reporting/docs/viewing-errors#
        # view_error_details)This field isn't available during log routing (https://
        # cloud.google.com/logging/docs/routing/overview)
        # Corresponds to the JSON property `errorGroups`
        # @return [Array<Google::Apis::LoggingV2::LogErrorGroup>]
        attr_accessor :error_groups
      
        # A common proto for logging HTTP requests. Only contains semantics defined by
        # the HTTP specification. Product-specific logging information MUST be defined
        # in a separate message.
        # Corresponds to the JSON property `httpRequest`
        # @return [Google::Apis::LoggingV2::HttpRequest]
        attr_accessor :http_request
      
        # Optional. A unique identifier for the log entry. If you provide a value, then
        # Logging considers other log entries in the same project, with the same
        # timestamp, and with the same insert_id to be duplicates which are removed in a
        # single query result. However, there are no guarantees of de-duplication in the
        # export of logs.If the insert_id is omitted when writing a log entry, the
        # Logging API assigns its own unique identifier in this field.In queries, the
        # insert_id is also used to order log entries that have the same log_name and
        # timestamp values.
        # Corresponds to the JSON property `insertId`
        # @return [String]
        attr_accessor :insert_id
      
        # The log entry payload, represented as a structure that is expressed as a JSON
        # object.
        # Corresponds to the JSON property `jsonPayload`
        # @return [Hash<String,Object>]
        attr_accessor :json_payload
      
        # Optional. A map of key, value pairs that provides additional information about
        # the log entry. The labels can be user-defined or system-defined.User-defined
        # labels are arbitrary key, value pairs that you can use to classify logs.System-
        # defined labels are defined by GCP services for platform logs. They have two
        # components - a service namespace component and the attribute name. For example:
        # compute.googleapis.com/resource_name.Cloud Logging truncates label keys that
        # exceed 512 B and label values that exceed 64 KB upon their associated log
        # entry being written. The truncation is indicated by an ellipsis at the end of
        # the character string.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The resource name of the log to which this log entry belongs: "
        # projects/[PROJECT_ID]/logs/[LOG_ID]" "organizations/[ORGANIZATION_ID]/logs/[
        # LOG_ID]" "billingAccounts/[BILLING_ACCOUNT_ID]/logs/[LOG_ID]" "folders/[
        # FOLDER_ID]/logs/[LOG_ID]" A project number may be used in place of PROJECT_ID.
        # The project number is translated to its corresponding PROJECT_ID internally
        # and the log_name field will contain PROJECT_ID in queries and exports.[LOG_ID]
        # must be URL-encoded within log_name. Example: "organizations/1234567890/logs/
        # cloudresourcemanager.googleapis.com%2Factivity".[LOG_ID] must be less than 512
        # characters long and can only include the following characters: upper and lower
        # case alphanumeric characters, forward-slash, underscore, hyphen, and period.
        # For backward compatibility, if log_name begins with a forward-slash, such as /
        # projects/..., then the log entry is processed as usual, but the forward-slash
        # is removed. Listing the log entry will not show the leading slash and
        # filtering for a log name with a leading slash will never return any results.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        # Auxiliary metadata for a MonitoredResource object. MonitoredResource objects
        # contain the minimum set of information to uniquely identify a monitored
        # resource instance. There is some other useful auxiliary metadata. Monitoring
        # and Logging use an ingestion pipeline to extract metadata for cloud resources
        # of all types, and store the metadata in this message.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::LoggingV2::MonitoredResourceMetadata]
        attr_accessor :metadata
      
        # Additional information about a potentially long-running operation with which a
        # log entry is associated.
        # Corresponds to the JSON property `operation`
        # @return [Google::Apis::LoggingV2::LogEntryOperation]
        attr_accessor :operation
      
        # The log entry payload, represented as a protocol buffer. Some Google Cloud
        # Platform services use this field for their log entry payloads.The following
        # protocol buffer types are supported; user-defined types are not supported:"
        # type.googleapis.com/google.cloud.audit.AuditLog" "type.googleapis.com/google.
        # appengine.logging.v1.RequestLog"
        # Corresponds to the JSON property `protoPayload`
        # @return [Hash<String,Object>]
        attr_accessor :proto_payload
      
        # Output only. The time the log entry was received by Logging.
        # Corresponds to the JSON property `receiveTimestamp`
        # @return [String]
        attr_accessor :receive_timestamp
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
        # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
        # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::LoggingV2::MonitoredResource]
        attr_accessor :resource
      
        # Optional. The severity of the log entry. The default value is LogSeverity.
        # DEFAULT.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Additional information about the source code location that produced the log
        # entry.
        # Corresponds to the JSON property `sourceLocation`
        # @return [Google::Apis::LoggingV2::LogEntrySourceLocation]
        attr_accessor :source_location
      
        # Optional. The ID of the Cloud Trace (https://cloud.google.com/trace) span
        # associated with the current operation in which the log is being written. For
        # example, if a span has the REST resource name of "projects/some-project/traces/
        # some-trace/spans/some-span-id", then the span_id field is "some-span-id".A
        # Span (https://cloud.google.com/trace/docs/reference/v2/rest/v2/projects.traces/
        # batchWrite#Span) represents a single operation within a trace. Whereas a trace
        # may involve multiple different microservices running on multiple different
        # machines, a span generally corresponds to a single logical operation being
        # performed in a single instance of a microservice on one specific machine.
        # Spans are the nodes within the tree that is a trace.Applications that are
        # instrumented for tracing (https://cloud.google.com/trace/docs/setup) will
        # generally assign a new, unique span ID on each incoming request. It is also
        # common to create and record additional spans corresponding to internal
        # processing elements as well as issuing requests to dependencies.The span ID is
        # expected to be a 16-character, hexadecimal encoding of an 8-byte array and
        # should not be zero. It should be unique within the trace and should, ideally,
        # be generated in a manner that is uniformly random.Example values:
        # 000000000000004a 7a2190356c3fc94b 0000f00300090021 d39223e101960076
        # Corresponds to the JSON property `spanId`
        # @return [String]
        attr_accessor :span_id
      
        # Additional information used to correlate multiple log entries. Used when a
        # single LogEntry would exceed the Google Cloud Logging size limit and is split
        # across multiple log entries.
        # Corresponds to the JSON property `split`
        # @return [Google::Apis::LoggingV2::LogSplit]
        attr_accessor :split
      
        # The log entry payload, represented as a Unicode string (UTF-8).
        # Corresponds to the JSON property `textPayload`
        # @return [String]
        attr_accessor :text_payload
      
        # Optional. The time the event described by the log entry occurred. This time is
        # used to compute the log entry's age and to enforce the logs retention period.
        # If this field is omitted in a new log entry, then Logging assigns it the
        # current time. Timestamps have nanosecond accuracy, but trailing zeros in the
        # fractional seconds might be omitted when the timestamp is displayed.Incoming
        # log entries must have timestamps that don't exceed the logs retention period (
        # https://cloud.google.com/logging/quotas#logs_retention_periods) in the past,
        # and that don't exceed 24 hours in the future. Log entries outside those time
        # boundaries are rejected by Logging.
        # Corresponds to the JSON property `timestamp`
        # @return [String]
        attr_accessor :timestamp
      
        # Optional. The REST resource name of the trace being written to Cloud Trace (
        # https://cloud.google.com/trace) in association with this log entry. For
        # example, if your trace data is stored in the Cloud project "my-trace-project"
        # and if the service that is creating the log entry receives a trace header that
        # includes the trace ID "12345", then the service should use "projects/my-trace-
        # project/traces/12345".The trace field provides the link between logs and
        # traces. By using this field, you can navigate from a log entry to a trace.
        # Corresponds to the JSON property `trace`
        # @return [String]
        attr_accessor :trace
      
        # Optional. The sampling decision of the span associated with the log entry at
        # the time the log entry was created. This field corresponds to the sampled flag
        # in the W3C trace-context specification (https://www.w3.org/TR/trace-context/#
        # sampled-flag). A non-sampled trace value is still useful as a request
        # correlation identifier. The default is False.
        # Corresponds to the JSON property `traceSampled`
        # @return [Boolean]
        attr_accessor :trace_sampled
        alias_method :trace_sampled?, :trace_sampled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_groups = args[:error_groups] if args.key?(:error_groups)
          @http_request = args[:http_request] if args.key?(:http_request)
          @insert_id = args[:insert_id] if args.key?(:insert_id)
          @json_payload = args[:json_payload] if args.key?(:json_payload)
          @labels = args[:labels] if args.key?(:labels)
          @log_name = args[:log_name] if args.key?(:log_name)
          @metadata = args[:metadata] if args.key?(:metadata)
          @operation = args[:operation] if args.key?(:operation)
          @proto_payload = args[:proto_payload] if args.key?(:proto_payload)
          @receive_timestamp = args[:receive_timestamp] if args.key?(:receive_timestamp)
          @resource = args[:resource] if args.key?(:resource)
          @severity = args[:severity] if args.key?(:severity)
          @source_location = args[:source_location] if args.key?(:source_location)
          @span_id = args[:span_id] if args.key?(:span_id)
          @split = args[:split] if args.key?(:split)
          @text_payload = args[:text_payload] if args.key?(:text_payload)
          @timestamp = args[:timestamp] if args.key?(:timestamp)
          @trace = args[:trace] if args.key?(:trace)
          @trace_sampled = args[:trace_sampled] if args.key?(:trace_sampled)
        end
      end
      
      # Additional information about a potentially long-running operation with which a
      # log entry is associated.
      class LogEntryOperation
        include Google::Apis::Core::Hashable
      
        # Optional. Set this to True if this is the first log entry in the operation.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        # Optional. An arbitrary operation identifier. Log entries with the same
        # identifier are assumed to be part of the same operation.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Set this to True if this is the last log entry in the operation.
        # Corresponds to the JSON property `last`
        # @return [Boolean]
        attr_accessor :last
        alias_method :last?, :last
      
        # Optional. An arbitrary producer identifier. The combination of id and producer
        # must be globally unique. Examples for producer: "MyDivision.MyBigCompany.com",
        # "github.com/MyProject/MyApplication".
        # Corresponds to the JSON property `producer`
        # @return [String]
        attr_accessor :producer
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first = args[:first] if args.key?(:first)
          @id = args[:id] if args.key?(:id)
          @last = args[:last] if args.key?(:last)
          @producer = args[:producer] if args.key?(:producer)
        end
      end
      
      # Additional information about the source code location that produced the log
      # entry.
      class LogEntrySourceLocation
        include Google::Apis::Core::Hashable
      
        # Optional. Source file name. Depending on the runtime environment, this might
        # be a simple name or a fully-qualified name.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Optional. Human-readable name of the function or method being invoked, with
        # optional context such as the class or package name. This information may be
        # used in contexts such as the logs viewer, where a file and line number are
        # less meaningful. The format can vary by language. For example: qual.if.ied.
        # Class.method (Java), dir/package.func (Go), function (Python).
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # Optional. Line within the source file. 1-based; 0 indicates no line number
        # available.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @function = args[:function] if args.key?(:function)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # Contains metadata that associates the LogEntry to Error Reporting error groups.
      class LogErrorGroup
        include Google::Apis::Core::Hashable
      
        # The id is a unique identifier for a particular error group; it is the last
        # part of the error group resource name: /project/[PROJECT_ID]/errors/[
        # ERROR_GROUP_ID]. Example: COShysOX0r_51QE. The id is derived from key parts of
        # the error-log content and is treated as Service Data. For information about
        # how Service Data is handled, see Google Cloud Privacy Notice (https://cloud.
        # google.com/terms/cloud-privacy-notice).
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
      
      # Specifies a set of log entries that are filtered out by a sink. If your Google
      # Cloud resource receives a large volume of log entries, you can use exclusions
      # to reduce your chargeable logs. Note that exclusions on organization-level and
      # folder-level sinks don't apply to child resources. Note also that you cannot
      # modify the _Required sink or exclude logs from it.
      class LogExclusion
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of the exclusion.This field may not be
        # present for older exclusions.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of this exclusion.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If set to True, then this exclusion is disabled and it does not
        # exclude any log entries. You can update an exclusion to change the value of
        # this field.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Required. An advanced logs filter (https://cloud.google.com/logging/docs/view/
        # advanced-queries) that matches the log entries to be excluded. By using the
        # sample function (https://cloud.google.com/logging/docs/view/advanced-queries#
        # sample), you can exclude less than 100% of the matching log entries.For
        # example, the following query matches 99% of low-severity log entries from
        # Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(
        # insertId, 0.99)
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Output only. A client-assigned identifier, such as "load-balancer-exclusion".
        # Identifiers are limited to 100 characters and can include only letters, digits,
        # underscores, hyphens, and periods. First character has to be alphanumeric.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last update timestamp of the exclusion.This field may not be
        # present for older exclusions.
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
          @disabled = args[:disabled] if args.key?(:disabled)
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Application log line emitted while processing a request.
      class LogLine
        include Google::Apis::Core::Hashable
      
        # App-provided log message.
        # Corresponds to the JSON property `logMessage`
        # @return [String]
        attr_accessor :log_message
      
        # Severity of this log entry.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        # Specifies a location in a source code file.
        # Corresponds to the JSON property `sourceLocation`
        # @return [Google::Apis::LoggingV2::SourceLocation]
        attr_accessor :source_location
      
        # Approximate time when this log entry was made.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @log_message = args[:log_message] if args.key?(:log_message)
          @severity = args[:severity] if args.key?(:severity)
          @source_location = args[:source_location] if args.key?(:source_location)
          @time = args[:time] if args.key?(:time)
        end
      end
      
      # Describes a logs-based metric. The value of the metric is the number of log
      # entries that match a logs filter in a given time interval.Logs-based metrics
      # can also be used to extract values from logs and create a distribution of the
      # values. The distribution records the statistics of the extracted values along
      # with an optional histogram of the values as specified by the bucket options.
      class LogMetric
        include Google::Apis::Core::Hashable
      
        # Optional. The resource name of the Log Bucket that owns the Log Metric. Only
        # Log Buckets in projects are supported. The bucket has to be in the same
        # project as the metric.For example:projects/my-project/locations/global/buckets/
        # my-bucketIf empty, then the Log Metric is considered a non-Bucket Log Metric.
        # Corresponds to the JSON property `bucketName`
        # @return [String]
        attr_accessor :bucket_name
      
        # BucketOptions describes the bucket boundaries used to create a histogram for
        # the distribution. The buckets can be in a linear sequence, an exponential
        # sequence, or each bucket can be specified explicitly. BucketOptions does not
        # include the number of values in each bucket.A bucket has an inclusive lower
        # bound and exclusive upper bound for the values that are counted for that
        # bucket. The upper bound of a bucket must be strictly greater than the lower
        # bound. The sequence of N buckets for a distribution consists of an underflow
        # bucket (number 0), zero or more finite buckets (number 1 through N - 2) and an
        # overflow bucket (number N - 1). The buckets are contiguous: the lower bound of
        # bucket i (i > 0) is the same as the upper bound of bucket i - 1. The buckets
        # span the whole range of finite values: lower bound of the underflow bucket is -
        # infinity and the upper bound of the overflow bucket is +infinity. The finite
        # buckets are so-called because both bounds are finite.
        # Corresponds to the JSON property `bucketOptions`
        # @return [Google::Apis::LoggingV2::BucketOptions]
        attr_accessor :bucket_options
      
        # Output only. The creation timestamp of the metric.This field may not be
        # present for older metrics.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of this metric, which is used in documentation. The
        # maximum length of the description is 8000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. If set to True, then this metric is disabled and it does not
        # generate any points.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Required. An advanced logs filter (https://cloud.google.com/logging/docs/view/
        # advanced_filters) which is used to match log entries. Example: "resource.type=
        # gae_app AND severity>=ERROR" The maximum length of the filter is 20000
        # characters.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. A map from a label key string to an extractor expression which is
        # used to extract data from a log entry field and assign as the label value.
        # Each label key specified in the LabelDescriptor must have an associated
        # extractor expression in this map. The syntax of the extractor expression is
        # the same as for the value_extractor field.The extracted value is converted to
        # the type defined in the label descriptor. If either the extraction or the type
        # conversion fails, the label will have a default value. The default value for a
        # string label is an empty string, for an integer label its 0, and for a boolean
        # label its false.Note that there are upper bounds on the maximum number of
        # labels and the number of active time series that are allowed in a project.
        # Corresponds to the JSON property `labelExtractors`
        # @return [Hash<String,String>]
        attr_accessor :label_extractors
      
        # Defines a metric type and its schema. Once a metric descriptor is created,
        # deleting or altering it stops data collection and makes the metric type's
        # existing data unusable.
        # Corresponds to the JSON property `metricDescriptor`
        # @return [Google::Apis::LoggingV2::MetricDescriptor]
        attr_accessor :metric_descriptor
      
        # Required. The client-assigned metric identifier. Examples: "error_count", "
        # nginx/requests".Metric identifiers are limited to 100 characters and can
        # include only the following characters: A-Z, a-z, 0-9, and the special
        # characters _-.,+!*',()%/. The forward-slash character (/) denotes a hierarchy
        # of name pieces, and it cannot be the first character of the name.This field is
        # the [METRIC_ID] part of a metric resource name in the format "projects/
        # PROJECT_ID/metrics/METRIC_ID". Example: If the resource name of a metric is "
        # projects/my-project/metrics/nginx%2Frequests", this field's value is "nginx/
        # requests".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last update timestamp of the metric.This field may not be
        # present for older metrics.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. A value_extractor is required when using a distribution logs-based
        # metric to extract the values to record from a log entry. Two functions are
        # supported for value extraction: EXTRACT(field) or REGEXP_EXTRACT(field, regex).
        # The arguments are: field: The name of the log entry field from which the
        # value is to be extracted. regex: A regular expression using the Google RE2
        # syntax (https://github.com/google/re2/wiki/Syntax) with a single capture group
        # to extract data from the specified log entry field. The value of the field is
        # converted to a string before applying the regex. It is an error to specify a
        # regex that does not include exactly one capture group.The result of the
        # extraction must be convertible to a double type, as the distribution always
        # records double values. If either the extraction or the conversion to double
        # fails, then those values are not recorded in the distribution.Example:
        # REGEXP_EXTRACT(jsonPayload.request, ".*quantity=(\d+).*")
        # Corresponds to the JSON property `valueExtractor`
        # @return [String]
        attr_accessor :value_extractor
      
        # Deprecated. The API version that created or updated this metric. The v2 format
        # is used by default and cannot be changed.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket_name = args[:bucket_name] if args.key?(:bucket_name)
          @bucket_options = args[:bucket_options] if args.key?(:bucket_options)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @disabled = args[:disabled] if args.key?(:disabled)
          @filter = args[:filter] if args.key?(:filter)
          @label_extractors = args[:label_extractors] if args.key?(:label_extractors)
          @metric_descriptor = args[:metric_descriptor] if args.key?(:metric_descriptor)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @value_extractor = args[:value_extractor] if args.key?(:value_extractor)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Describes a sink used to export log entries to one of the following
      # destinations: a Cloud Logging log bucket, a Cloud Storage bucket, a BigQuery
      # dataset, a Pub/Sub topic, a Cloud project.A logs filter controls which log
      # entries are exported. The sink must be created within a project, organization,
      # billing account, or folder.
      class LogSink
        include Google::Apis::Core::Hashable
      
        # Options that change functionality of a sink exporting data to BigQuery.
        # Corresponds to the JSON property `bigqueryOptions`
        # @return [Google::Apis::LoggingV2::BigQueryOptions]
        attr_accessor :bigquery_options
      
        # Output only. The creation timestamp of the sink.This field may not be present
        # for older sinks.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A description of this sink.The maximum length of the description is
        # 8000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The export destination: "storage.googleapis.com/[GCS_BUCKET]" "
        # bigquery.googleapis.com/projects/[PROJECT_ID]/datasets/[DATASET]" "pubsub.
        # googleapis.com/projects/[PROJECT_ID]/topics/[TOPIC_ID]" "logging.googleapis.
        # com/projects/[PROJECT_ID]" "logging.googleapis.com/projects/[PROJECT_ID]/
        # locations/[LOCATION_ID]/buckets/[BUCKET_ID]" The sink's writer_identity, set
        # when the sink is created, must have permission to write to the destination or
        # else the log entries are not exported. For more information, see Exporting
        # Logs with Sinks (https://cloud.google.com/logging/docs/api/tasks/exporting-
        # logs).
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Optional. If set to true, then this sink is disabled and it does not export
        # any log entries.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. Log entries that match any of these exclusion filters will not be
        # exported.If a log entry is matched by both filter and one of exclusion_filters
        # it will not be exported.
        # Corresponds to the JSON property `exclusions`
        # @return [Array<Google::Apis::LoggingV2::LogExclusion>]
        attr_accessor :exclusions
      
        # Optional. An advanced logs filter (https://cloud.google.com/logging/docs/view/
        # advanced-queries). The only exported log entries are those that are in the
        # resource owning the sink and that match the filter.For example:logName="
        # projects/[PROJECT_ID]/logs/[LOG_ID]" AND severity>=ERROR
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. This field applies only to sinks owned by organizations and folders.
        # If the field is false, the default, only the logs owned by the sink's parent
        # resource are available for export. If the field is true, then log entries from
        # all the projects, folders, and billing accounts contained in the sink's parent
        # resource are also available for export. Whether a particular log entry from
        # the children is exported depends on the sink's filter expression.For example,
        # if this field is true, then the filter resource.type=gce_instance would export
        # all Compute Engine VM instance log entries from all projects in the sink's
        # parent.To only export entries from certain child projects, filter on the
        # project part of the log name:logName:("projects/test-project1/" OR "projects/
        # test-project2/") AND resource.type=gce_instance
        # Corresponds to the JSON property `includeChildren`
        # @return [Boolean]
        attr_accessor :include_children
        alias_method :include_children?, :include_children
      
        # Optional. This field applies only to sinks owned by organizations and folders.
        # When the value of 'intercept_children' is true, the following restrictions
        # apply: The sink must have the include_children flag set to true. The sink
        # destination must be a Cloud project.Also, the following behaviors apply: Any
        # logs matched by the sink won't be included by non-_Required sinks owned by
        # child resources. The sink appears in the results of a ListSinks call from a
        # child resource if the value of the filter field in its request is either '
        # in_scope("ALL")' or 'in_scope("ANCESTOR")'.
        # Corresponds to the JSON property `interceptChildren`
        # @return [Boolean]
        attr_accessor :intercept_children
        alias_method :intercept_children?, :intercept_children
      
        # Output only. The client-assigned sink identifier, unique within the project.
        # For example: "my-syslog-errors-to-pubsub".Sink identifiers are limited to 100
        # characters and can include only the following characters: upper and lower-case
        # alphanumeric characters, underscores, hyphens, periods.First character has to
        # be alphanumeric.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Deprecated. This field is unused.
        # Corresponds to the JSON property `outputVersionFormat`
        # @return [String]
        attr_accessor :output_version_format
      
        # Output only. The resource name of the sink. "projects/[PROJECT_ID]/sinks/[
        # SINK_NAME] "organizations/[ORGANIZATION_ID]/sinks/[SINK_NAME] "billingAccounts/
        # [BILLING_ACCOUNT_ID]/sinks/[SINK_NAME] "folders/[FOLDER_ID]/sinks/[SINK_NAME]
        # For example: projects/my_project/sinks/SINK_NAME
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        # Output only. The last update timestamp of the sink.This field may not be
        # present for older sinks.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. An IAM identity—a service account or group—under which Cloud
        # Logging writes the exported log entries to the sink's destination. This field
        # is either set by specifying custom_writer_identity or set automatically by
        # sinks.create and sinks.update based on the value of unique_writer_identity in
        # those methods.Until you grant this identity write-access to the destination,
        # log entry exports from this sink will fail. For more information, see Granting
        # Access for a Resource (https://cloud.google.com/iam/docs/granting-roles-to-
        # service-accounts#granting_access_to_a_service_account_for_a_resource). Consult
        # the destination service's documentation to determine the appropriate IAM roles
        # to assign to the identity.Sinks that have a destination that is a log bucket
        # in the same project as the sink cannot have a writer_identity and no
        # additional permissions are required.
        # Corresponds to the JSON property `writerIdentity`
        # @return [String]
        attr_accessor :writer_identity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_options = args[:bigquery_options] if args.key?(:bigquery_options)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @destination = args[:destination] if args.key?(:destination)
          @disabled = args[:disabled] if args.key?(:disabled)
          @exclusions = args[:exclusions] if args.key?(:exclusions)
          @filter = args[:filter] if args.key?(:filter)
          @include_children = args[:include_children] if args.key?(:include_children)
          @intercept_children = args[:intercept_children] if args.key?(:intercept_children)
          @name = args[:name] if args.key?(:name)
          @output_version_format = args[:output_version_format] if args.key?(:output_version_format)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @writer_identity = args[:writer_identity] if args.key?(:writer_identity)
        end
      end
      
      # Additional information used to correlate multiple log entries. Used when a
      # single LogEntry would exceed the Google Cloud Logging size limit and is split
      # across multiple log entries.
      class LogSplit
        include Google::Apis::Core::Hashable
      
        # The index of this LogEntry in the sequence of split log entries. Log entries
        # are given |index| values 0, 1, ..., n-1 for a sequence of n log entries.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # The total number of log entries that the original LogEntry was split into.
        # Corresponds to the JSON property `totalSplits`
        # @return [Fixnum]
        attr_accessor :total_splits
      
        # A globally unique identifier for all log entries in a sequence of split log
        # entries. All log entries with the same |LogSplit.uid| are assumed to be part
        # of the same sequence of split log entries.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @index = args[:index] if args.key?(:index)
          @total_splits = args[:total_splits] if args.key?(:total_splits)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Describes a view over log entries in a bucket.
      class LogView
        include Google::Apis::Core::Hashable
      
        # Output only. The creation timestamp of the view.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Describes this view.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Filter that restricts which log entries in a bucket are visible in
        # this view.Filters must be logical conjunctions that use the AND operator, and
        # they can use any of the following qualifiers: SOURCE(), which specifies a
        # project, folder, organization, or billing account of origin. resource.type,
        # which specifies the resource type. LOG_ID(), which identifies the log.They can
        # also use the negations of these qualifiers with the NOT operator.For example:
        # SOURCE("projects/myproject") AND resource.type = "gce_instance" AND NOT LOG_ID(
        # "stdout")
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Output only. The resource name of the view.For example:projects/my-project/
        # locations/global/buckets/my-bucket/views/my-view
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The last update timestamp of the view.
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
          @filter = args[:filter] if args.key?(:filter)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Describes a Cloud Logging query that can be run in Logs Explorer UI or via the
      # logging API.In addition to the query itself, additional information may be
      # stored to capture the display configuration and other UI state used in
      # association with analysis of query results.
      class LoggingQuery
        include Google::Apis::Core::Hashable
      
        # Required. An advanced query using the Logging Query Language (https://cloud.
        # google.com/logging/docs/view/logging-query-language). The maximum length of
        # the filter is 20000 characters.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Characters will be counted from the end of the string.
        # Corresponds to the JSON property `summaryFieldEnd`
        # @return [Fixnum]
        attr_accessor :summary_field_end
      
        # Characters will be counted from the start of the string.
        # Corresponds to the JSON property `summaryFieldStart`
        # @return [Fixnum]
        attr_accessor :summary_field_start
      
        # Optional. The set of summary fields to display for this saved query.
        # Corresponds to the JSON property `summaryFields`
        # @return [Array<Google::Apis::LoggingV2::SummaryField>]
        attr_accessor :summary_fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
          @summary_field_end = args[:summary_field_end] if args.key?(:summary_field_end)
          @summary_field_start = args[:summary_field_start] if args.key?(:summary_field_start)
          @summary_fields = args[:summary_fields] if args.key?(:summary_fields)
        end
      end
      
      # Defines a metric type and its schema. Once a metric descriptor is created,
      # deleting or altering it stops data collection and makes the metric type's
      # existing data unusable.
      class MetricDescriptor
        include Google::Apis::Core::Hashable
      
        # A detailed description of the metric, which can be used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A concise name for the metric, which can be displayed in user interfaces. Use
        # sentence case without an ending period, for example "Request count". This
        # field is optional but it is recommended to be set for any metrics associated
        # with user-visible concepts, such as Quota.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The set of labels that can be used to describe a specific instance of this
        # metric type. For example, the appengine.googleapis.com/http/server/
        # response_latencies metric type has a label for the HTTP response code,
        # response_code, so you can look at latencies for successful responses or just
        # for responses that failed.
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::LoggingV2::LabelDescriptor>]
        attr_accessor :labels
      
        # Optional. The launch stage of the metric definition.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Additional annotations that can be used to guide the usage of a metric.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::LoggingV2::MetricDescriptorMetadata]
        attr_accessor :metadata
      
        # Whether the metric records instantaneous values, changes to a value, etc. Some
        # combinations of metric_kind and value_type might not be supported.
        # Corresponds to the JSON property `metricKind`
        # @return [String]
        attr_accessor :metric_kind
      
        # Read-only. If present, then a time series, which is identified partially by a
        # metric type and a MonitoredResourceDescriptor, that is associated with this
        # metric type can only be associated with one of the monitored resource types
        # listed here.
        # Corresponds to the JSON property `monitoredResourceTypes`
        # @return [Array<String>]
        attr_accessor :monitored_resource_types
      
        # The resource name of the metric descriptor.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The metric type, including its DNS name prefix. The type is not URL-encoded.
        # All user-defined metric types have the DNS name custom.googleapis.com or
        # external.googleapis.com. Metric types should use a natural hierarchical
        # grouping. For example: "custom.googleapis.com/invoice/paid/amount" "external.
        # googleapis.com/prometheus/up" "appengine.googleapis.com/http/server/
        # response_latencies"
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The units in which the metric value is reported. It is only applicable if the
        # value_type is INT64, DOUBLE, or DISTRIBUTION. The unit defines the
        # representation of the stored metric values.Different systems might scale the
        # values to be more easily displayed (so a value of 0.02kBy might be displayed
        # as 20By, and a value of 3523kBy might be displayed as 3.5MBy). However, if the
        # unit is kBy, then the value of the metric is always in thousands of bytes, no
        # matter how it might be displayed.If you want a custom metric to record the
        # exact number of CPU-seconds used by a job, you can create an INT64 CUMULATIVE
        # metric whose unit is s`CPU` (or equivalently 1s`CPU` or just s). If the job
        # uses 12,005 CPU-seconds, then the value is written as 12005.Alternatively, if
        # you want a custom metric to record data in a more granular way, you can create
        # a DOUBLE CUMULATIVE metric whose unit is ks`CPU`, and then write the value 12.
        # 005 (which is 12005/1000), or use Kis`CPU` and write 11.723 (which is 12005/
        # 1024).The supported units are a subset of The Unified Code for Units of
        # Measure (https://unitsofmeasure.org/ucum.html) standard:Basic units (UNIT) bit
        # bit By byte s second min minute h hour d day 1 dimensionlessPrefixes (PREFIX)
        # k kilo (10^3) M mega (10^6) G giga (10^9) T tera (10^12) P peta (10^15) E exa (
        # 10^18) Z zetta (10^21) Y yotta (10^24) m milli (10^-3) u micro (10^-6) n nano (
        # 10^-9) p pico (10^-12) f femto (10^-15) a atto (10^-18) z zepto (10^-21) y
        # yocto (10^-24) Ki kibi (2^10) Mi mebi (2^20) Gi gibi (2^30) Ti tebi (2^40) Pi
        # pebi (2^50)GrammarThe grammar also includes these connectors: / division or
        # ratio (as an infix operator). For examples, kBy/`email` or MiBy/10ms (although
        # you should almost never have /s in a metric unit; rates should always be
        # computed at query time from the underlying cumulative or delta value). .
        # multiplication or composition (as an infix operator). For examples, GBy.d or k`
        # watt`.h.The grammar for a unit is as follows: Expression = Component ` "."
        # Component ` ` "/" Component ` ; Component = ( [ PREFIX ] UNIT | "%" ) [
        # Annotation ] | Annotation | "1" ; Annotation = "`" NAME "`" ; Notes:
        # Annotation is just a comment if it follows a UNIT. If the annotation is used
        # alone, then the unit is equivalent to 1. For examples, `request`/s == 1/s, By`
        # transmitted`/s == By/s. NAME is a sequence of non-blank printable ASCII
        # characters not containing ` or `. 1 represents a unitary dimensionless unit (
        # https://en.wikipedia.org/wiki/Dimensionless_quantity) of 1, such as in 1/s. It
        # is typically used when none of the basic units are appropriate. For example, "
        # new users per day" can be represented as 1/d or `new-users`/d (and a metric
        # value 5 would mean "5 new users). Alternatively, "thousands of page views per
        # day" would be represented as 1000/d or k1/d or k`page_views`/d (and a metric
        # value of 5.3 would mean "5300 page views per day"). % represents dimensionless
        # value of 1/100, and annotates values giving a percentage (so the metric values
        # are typically in the range of 0..100, and a metric value 3 means "3 percent").
        # 10^2.% indicates a metric contains a ratio, typically in the range 0..1, that
        # will be multiplied by 100 and displayed as a percentage (so a metric value 0.
        # 03 means "3 percent").
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        # Whether the measurement is an integer, a floating-point number, etc. Some
        # combinations of metric_kind and value_type might not be supported.
        # Corresponds to the JSON property `valueType`
        # @return [String]
        attr_accessor :value_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @metadata = args[:metadata] if args.key?(:metadata)
          @metric_kind = args[:metric_kind] if args.key?(:metric_kind)
          @monitored_resource_types = args[:monitored_resource_types] if args.key?(:monitored_resource_types)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
          @unit = args[:unit] if args.key?(:unit)
          @value_type = args[:value_type] if args.key?(:value_type)
        end
      end
      
      # Additional annotations that can be used to guide the usage of a metric.
      class MetricDescriptorMetadata
        include Google::Apis::Core::Hashable
      
        # The delay of data points caused by ingestion. Data points older than this age
        # are guaranteed to be ingested and available to be read, excluding data loss
        # due to errors.
        # Corresponds to the JSON property `ingestDelay`
        # @return [String]
        attr_accessor :ingest_delay
      
        # Deprecated. Must use the MetricDescriptor.launch_stage instead.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # The sampling period of metric data points. For metrics which are written
        # periodically, consecutive data points are stored at this time interval,
        # excluding data loss due to errors. Metrics with a higher granularity have a
        # smaller sampling period.
        # Corresponds to the JSON property `samplePeriod`
        # @return [String]
        attr_accessor :sample_period
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingest_delay = args[:ingest_delay] if args.key?(:ingest_delay)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @sample_period = args[:sample_period] if args.key?(:sample_period)
        end
      end
      
      # An object representing a resource that can be used for monitoring, logging,
      # billing, or other purposes. Examples include virtual machine instances,
      # databases, and storage devices such as disks. The type field identifies a
      # MonitoredResourceDescriptor object that describes the resource's schema.
      # Information in the labels field identifies the actual resource and its
      # attributes according to the schema. For example, a particular Compute Engine
      # VM instance could be represented by the following object, because the
      # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
      # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
      # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
      class MonitoredResource
        include Google::Apis::Core::Hashable
      
        # Required. Values for all of the labels listed in the associated monitored
        # resource descriptor. For example, Compute Engine VM instances use the labels "
        # project_id", "instance_id", and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The monitored resource type. This field must match the type field of
        # a MonitoredResourceDescriptor object. For example, the type of a Compute
        # Engine VM instance is gce_instance. Some descriptors include the service name
        # in the type; for example, the type of a Datastream stream is datastream.
        # googleapis.com/Stream.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # An object that describes the schema of a MonitoredResource object using a type
      # name and a set of labels. For example, the monitored resource descriptor for
      # Google Compute Engine VM instances has a type of "gce_instance" and specifies
      # the use of the labels "instance_id" and "zone" to identify particular VM
      # instances.Different APIs can support different monitored resource types. APIs
      # generally provide a list method that returns the monitored resource
      # descriptors used by the API.
      class MonitoredResourceDescriptor
        include Google::Apis::Core::Hashable
      
        # Optional. A detailed description of the monitored resource type that might be
        # used in documentation.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A concise name for the monitored resource type that might be
        # displayed in user interfaces. It should be a Title Cased Noun Phrase, without
        # any article or other determiners. For example, "Google Cloud SQL Database".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. A set of labels used to describe instances of this monitored
        # resource type. For example, an individual Google Cloud SQL database is
        # identified by values for the labels "database_id" and "zone".
        # Corresponds to the JSON property `labels`
        # @return [Array<Google::Apis::LoggingV2::LabelDescriptor>]
        attr_accessor :labels
      
        # Optional. The launch stage of the monitored resource definition.
        # Corresponds to the JSON property `launchStage`
        # @return [String]
        attr_accessor :launch_stage
      
        # Optional. The resource name of the monitored resource descriptor: "projects/`
        # project_id`/monitoredResourceDescriptors/`type`" where `type` is the value of
        # the type field in this object and `project_id` is a project ID that provides
        # API-specific context for accessing the type. APIs that do not use project
        # information can use the resource name format "monitoredResourceDescriptors/`
        # type`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The monitored resource type. For example, the type "
        # cloudsql_database" represents databases in Google Cloud SQL. For a list of
        # types, see Monitored resource types (https://cloud.google.com/monitoring/api/
        # resources) and Logging resource types (https://cloud.google.com/logging/docs/
        # api/v2/resource-list).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @launch_stage = args[:launch_stage] if args.key?(:launch_stage)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Auxiliary metadata for a MonitoredResource object. MonitoredResource objects
      # contain the minimum set of information to uniquely identify a monitored
      # resource instance. There is some other useful auxiliary metadata. Monitoring
      # and Logging use an ingestion pipeline to extract metadata for cloud resources
      # of all types, and store the metadata in this message.
      class MonitoredResourceMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. Values for predefined system metadata labels. System labels are a
        # kind of metadata extracted by Google, including "machine_image", "vpc", "
        # subnet_id", "security_group", "name", etc. System label values can be only
        # strings, Boolean values, or a list of strings. For example: ` "name": "my-test-
        # instance", "security_group": ["a", "b", "c"], "spot_instance": false `
        # Corresponds to the JSON property `systemLabels`
        # @return [Hash<String,Object>]
        attr_accessor :system_labels
      
        # Output only. A map of user-defined metadata labels.
        # Corresponds to the JSON property `userLabels`
        # @return [Hash<String,String>]
        attr_accessor :user_labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @system_labels = args[:system_labels] if args.key?(:system_labels)
          @user_labels = args[:user_labels] if args.key?(:user_labels)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is false, it means the operation is still in progress. If true,
        # the operation is completed, and either error or response is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The Status type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by gRPC
        # (https://github.com/grpc). Each Status message contains three pieces of data:
        # error code, error message, and error details.You can find out more about this
        # error model and how to work with it in the API Design Guide (https://cloud.
        # google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::LoggingV2::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the name should be
        # a resource name ending with operations/`unique_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as Delete, the response is google.protobuf.
        # Empty. If the original method is standard Get/Create/Update, the response
        # should be the resource. For other methods, the response should have the type
        # XxxResponse, where Xxx is the original method name. For example, if the
        # original method name is TakeSnapshot(), the inferred response type is
        # TakeSnapshotResponse.
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
      
      # Describes an analytics query that can be run in the Log Analytics page of
      # Google Cloud console.Preview: This is a preview feature and may be subject to
      # change before final release.
      class OpsAnalyticsQuery
        include Google::Apis::Core::Hashable
      
        # Required. A logs analytics SQL query, which generally follows BigQuery format.
        # This is the SQL query that appears in the Log Analytics UI's query editor.
        # Corresponds to the JSON property `sqlQueryText`
        # @return [String]
        attr_accessor :sql_query_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_query_text = args[:sql_query_text] if args.key?(:sql_query_text)
        end
      end
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources.A Policy is a collection of bindings. A
      # binding binds one or more members, or principals, to a single role. Principals
      # can be user accounts, service accounts, Google groups, and domains (such as G
      # Suite). A role is a named list of permissions; each role can be an IAM
      # predefined role or a user-created custom role.For some types of Google Cloud
      # resources, a binding can also specify a condition, which is a logical
      # expression that allows access to a resource only if the expression evaluates
      # to true. A condition can add constraints based on attributes of the request,
      # the resource, or both. To learn which resources support conditions in their
      # IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/
      # conditions/resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
      # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
      # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
      # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
      # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
      # title": "expirable access", "description": "Does not grant access after Sep
      # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
      # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` YAML example: bindings: - members:
      # - user:mike@example.com - group:admins@example.com - domain:google.com -
      # serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
      # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
      # roles/resourcemanager.organizationViewer condition: title: expirable access
      # description: Does not grant access after Sep 2020 expression: request.time <
      # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
      # description of IAM and its features, see the IAM documentation (https://cloud.
      # google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::LoggingV2::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of members, or principals, with a role. Optionally, may
        # specify a condition that determines how and when the bindings are applied.
        # Each of the bindings must contain at least one principal.The bindings in a
        # Policy can refer to up to 1,500 principals; up to 250 of these principals can
        # be Google groups. Each occurrence of a principal counts towards these limits.
        # For example, if the bindings grant 50 different roles to user:alice@example.
        # com, and not to any other principal, then you can add another 1,450 principals
        # to the bindings in the Policy.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::LoggingV2::Binding>]
        attr_accessor :bindings
      
        # etag is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the etag in the read-modify-write cycle to
        # perform policy updates in order to avoid race conditions: An etag is returned
        # in the response to getIamPolicy, and systems are expected to put that etag in
        # the request to setIamPolicy to ensure that their change will be applied to the
        # same version of the policy.Important: If you use IAM Conditions, you must
        # include the etag field whenever you call setIamPolicy. If you omit this field,
        # then IAM allows you to overwrite a version 3 policy with a version 1 policy,
        # and all of the conditions in the version 3 policy are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy.Valid values are 0, 1, and 3. Requests that
        # specify an invalid value are rejected.Any operation that affects conditional
        # role bindings must specify version 3. This requirement applies to the
        # following operations: Getting a policy that includes a conditional role
        # binding Adding a conditional role binding to a policy Changing a conditional
        # role binding in a policy Removing any role binding, with or without a
        # condition, from a policy that includes conditionsImportant: If you use IAM
        # Conditions, you must include the etag field whenever you call setIamPolicy. If
        # you omit this field, then IAM allows you to overwrite a version 3 policy with
        # a version 1 policy, and all of the conditions in the version 3 policy are lost.
        # If a policy does not include any conditions, operations on that policy may
        # specify any valid version or leave the field unset.To learn which resources
        # support conditions in their IAM policies, see the IAM documentation (https://
        # cloud.google.com/iam/help/conditions/resource-policies).
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
      
      # Describes a recent query executed on the Logs Explorer or Log Analytics page
      # within the last ~ 30 days.
      class RecentQuery
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when this query was last run.
        # Corresponds to the JSON property `lastRunTime`
        # @return [String]
        attr_accessor :last_run_time
      
        # Describes a Cloud Logging query that can be run in Logs Explorer UI or via the
        # logging API.In addition to the query itself, additional information may be
        # stored to capture the display configuration and other UI state used in
        # association with analysis of query results.
        # Corresponds to the JSON property `loggingQuery`
        # @return [Google::Apis::LoggingV2::LoggingQuery]
        attr_accessor :logging_query
      
        # Output only. Resource name of the recent query.In the format: "projects/[
        # PROJECT_ID]/locations/[LOCATION_ID]/recentQueries/[QUERY_ID]" For a list of
        # supported locations, see Supported Regions (https://cloud.google.com/logging/
        # docs/region-support)The QUERY_ID is a system generated alphanumeric ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes an analytics query that can be run in the Log Analytics page of
        # Google Cloud console.Preview: This is a preview feature and may be subject to
        # change before final release.
        # Corresponds to the JSON property `opsAnalyticsQuery`
        # @return [Google::Apis::LoggingV2::OpsAnalyticsQuery]
        attr_accessor :ops_analytics_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_run_time = args[:last_run_time] if args.key?(:last_run_time)
          @logging_query = args[:logging_query] if args.key?(:logging_query)
          @name = args[:name] if args.key?(:name)
          @ops_analytics_query = args[:ops_analytics_query] if args.key?(:ops_analytics_query)
        end
      end
      
      # Complete log information about a single HTTP request to an App Engine
      # application.
      class RequestLog
        include Google::Apis::Core::Hashable
      
        # App Engine release version.
        # Corresponds to the JSON property `appEngineRelease`
        # @return [String]
        attr_accessor :app_engine_release
      
        # Application that handled this request.
        # Corresponds to the JSON property `appId`
        # @return [String]
        attr_accessor :app_id
      
        # An indication of the relative cost of serving this request.
        # Corresponds to the JSON property `cost`
        # @return [Float]
        attr_accessor :cost
      
        # Time when the request finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Whether this request is finished or active.
        # Corresponds to the JSON property `finished`
        # @return [Boolean]
        attr_accessor :finished
        alias_method :finished?, :finished
      
        # Whether this is the first RequestLog entry for this request. If an active
        # request has several RequestLog entries written to Stackdriver Logging, then
        # this field will be set for one of them.
        # Corresponds to the JSON property `first`
        # @return [Boolean]
        attr_accessor :first
        alias_method :first?, :first
      
        # Internet host and port number of the resource being requested.
        # Corresponds to the JSON property `host`
        # @return [String]
        attr_accessor :host
      
        # HTTP version of request. Example: "HTTP/1.1".
        # Corresponds to the JSON property `httpVersion`
        # @return [String]
        attr_accessor :http_version
      
        # An identifier for the instance that handled the request.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # If the instance processing this request belongs to a manually scaled module,
        # then this is the 0-based index of the instance. Otherwise, this value is -1.
        # Corresponds to the JSON property `instanceIndex`
        # @return [Fixnum]
        attr_accessor :instance_index
      
        # Origin IP address.
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        # Latency of the request.
        # Corresponds to the JSON property `latency`
        # @return [String]
        attr_accessor :latency
      
        # A list of log lines emitted by the application while serving this request.
        # Corresponds to the JSON property `line`
        # @return [Array<Google::Apis::LoggingV2::LogLine>]
        attr_accessor :line
      
        # Number of CPU megacycles used to process request.
        # Corresponds to the JSON property `megaCycles`
        # @return [Fixnum]
        attr_accessor :mega_cycles
      
        # Request method. Example: "GET", "HEAD", "PUT", "POST", "DELETE".
        # Corresponds to the JSON property `method`
        # @return [String]
        attr_accessor :method_prop
      
        # Module of the application that handled this request.
        # Corresponds to the JSON property `moduleId`
        # @return [String]
        attr_accessor :module_id
      
        # The logged-in user who made the request.Most likely, this is the part of the
        # user's email before the @ sign. The field value is the same for different
        # requests from the same user, but different users can have similar names. This
        # information is also available to the application via the App Engine Users API.
        # This field will be populated starting with App Engine 1.9.21.
        # Corresponds to the JSON property `nickname`
        # @return [String]
        attr_accessor :nickname
      
        # Time this request spent in the pending request queue.
        # Corresponds to the JSON property `pendingTime`
        # @return [String]
        attr_accessor :pending_time
      
        # Referrer URL of request.
        # Corresponds to the JSON property `referrer`
        # @return [String]
        attr_accessor :referrer
      
        # Globally unique identifier for a request, which is based on the request start
        # time. Request IDs for requests which started later will compare greater as
        # strings than those for requests which started earlier.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Contains the path and query portion of the URL that was requested. For example,
        # if the URL was "http://example.com/app?name=val", the resource would be "/app?
        # name=val". The fragment identifier, which is identified by the # character, is
        # not included.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Size in bytes sent back to client by request.
        # Corresponds to the JSON property `responseSize`
        # @return [Fixnum]
        attr_accessor :response_size
      
        # Source code for the application that handled this request. There can be more
        # than one source reference per deployed application if source code is
        # distributed among multiple repositories.
        # Corresponds to the JSON property `sourceReference`
        # @return [Array<Google::Apis::LoggingV2::SourceReference>]
        attr_accessor :source_reference
      
        # Stackdriver Trace span identifier for this request.
        # Corresponds to the JSON property `spanId`
        # @return [String]
        attr_accessor :span_id
      
        # Time when the request started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # HTTP response status code. Example: 200, 404.
        # Corresponds to the JSON property `status`
        # @return [Fixnum]
        attr_accessor :status
      
        # Task name of the request, in the case of an offline request.
        # Corresponds to the JSON property `taskName`
        # @return [String]
        attr_accessor :task_name
      
        # Queue name of the request, in the case of an offline request.
        # Corresponds to the JSON property `taskQueueName`
        # @return [String]
        attr_accessor :task_queue_name
      
        # Stackdriver Trace identifier for this request.
        # Corresponds to the JSON property `traceId`
        # @return [String]
        attr_accessor :trace_id
      
        # If true, the value in the 'trace_id' field was sampled for storage in a trace
        # backend.
        # Corresponds to the JSON property `traceSampled`
        # @return [Boolean]
        attr_accessor :trace_sampled
        alias_method :trace_sampled?, :trace_sampled
      
        # File or class that handled the request.
        # Corresponds to the JSON property `urlMapEntry`
        # @return [String]
        attr_accessor :url_map_entry
      
        # User agent that made the request.
        # Corresponds to the JSON property `userAgent`
        # @return [String]
        attr_accessor :user_agent
      
        # Version of the application that handled this request.
        # Corresponds to the JSON property `versionId`
        # @return [String]
        attr_accessor :version_id
      
        # Whether this was a loading request for the instance.
        # Corresponds to the JSON property `wasLoadingRequest`
        # @return [Boolean]
        attr_accessor :was_loading_request
        alias_method :was_loading_request?, :was_loading_request
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_engine_release = args[:app_engine_release] if args.key?(:app_engine_release)
          @app_id = args[:app_id] if args.key?(:app_id)
          @cost = args[:cost] if args.key?(:cost)
          @end_time = args[:end_time] if args.key?(:end_time)
          @finished = args[:finished] if args.key?(:finished)
          @first = args[:first] if args.key?(:first)
          @host = args[:host] if args.key?(:host)
          @http_version = args[:http_version] if args.key?(:http_version)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @instance_index = args[:instance_index] if args.key?(:instance_index)
          @ip = args[:ip] if args.key?(:ip)
          @latency = args[:latency] if args.key?(:latency)
          @line = args[:line] if args.key?(:line)
          @mega_cycles = args[:mega_cycles] if args.key?(:mega_cycles)
          @method_prop = args[:method_prop] if args.key?(:method_prop)
          @module_id = args[:module_id] if args.key?(:module_id)
          @nickname = args[:nickname] if args.key?(:nickname)
          @pending_time = args[:pending_time] if args.key?(:pending_time)
          @referrer = args[:referrer] if args.key?(:referrer)
          @request_id = args[:request_id] if args.key?(:request_id)
          @resource = args[:resource] if args.key?(:resource)
          @response_size = args[:response_size] if args.key?(:response_size)
          @source_reference = args[:source_reference] if args.key?(:source_reference)
          @span_id = args[:span_id] if args.key?(:span_id)
          @start_time = args[:start_time] if args.key?(:start_time)
          @status = args[:status] if args.key?(:status)
          @task_name = args[:task_name] if args.key?(:task_name)
          @task_queue_name = args[:task_queue_name] if args.key?(:task_queue_name)
          @trace_id = args[:trace_id] if args.key?(:trace_id)
          @trace_sampled = args[:trace_sampled] if args.key?(:trace_sampled)
          @url_map_entry = args[:url_map_entry] if args.key?(:url_map_entry)
          @user_agent = args[:user_agent] if args.key?(:user_agent)
          @version_id = args[:version_id] if args.key?(:version_id)
          @was_loading_request = args[:was_loading_request] if args.key?(:was_loading_request)
        end
      end
      
      # Describes a query that has been saved by a user.
      class SavedQuery
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the saved query was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. A human readable description of the saved query.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The user specified title for the SavedQuery.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Describes a Cloud Logging query that can be run in Logs Explorer UI or via the
        # logging API.In addition to the query itself, additional information may be
        # stored to capture the display configuration and other UI state used in
        # association with analysis of query results.
        # Corresponds to the JSON property `loggingQuery`
        # @return [Google::Apis::LoggingV2::LoggingQuery]
        attr_accessor :logging_query
      
        # Output only. Resource name of the saved query.In the format: "projects/[
        # PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" For a list of
        # supported locations, see Supported Regions (https://cloud.google.com/logging/
        # docs/region-support#bucket-regions)After the saved query is created, the
        # location cannot be changed.If the user doesn't provide a QUERY_ID, the system
        # will generate an alphanumeric ID.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Describes an analytics query that can be run in the Log Analytics page of
        # Google Cloud console.Preview: This is a preview feature and may be subject to
        # change before final release.
        # Corresponds to the JSON property `opsAnalyticsQuery`
        # @return [Google::Apis::LoggingV2::OpsAnalyticsQuery]
        attr_accessor :ops_analytics_query
      
        # Output only. The timestamp when the saved query was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. The visibility status of this query, which determines its ownership.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @logging_query = args[:logging_query] if args.key?(:logging_query)
          @name = args[:name] if args.key?(:name)
          @ops_analytics_query = args[:ops_analytics_query] if args.key?(:ops_analytics_query)
          @update_time = args[:update_time] if args.key?(:update_time)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # Request message for SetIamPolicy method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources.A Policy is a collection of bindings. A
        # binding binds one or more members, or principals, to a single role. Principals
        # can be user accounts, service accounts, Google groups, and domains (such as G
        # Suite). A role is a named list of permissions; each role can be an IAM
        # predefined role or a user-created custom role.For some types of Google Cloud
        # resources, a binding can also specify a condition, which is a logical
        # expression that allows access to a resource only if the expression evaluates
        # to true. A condition can add constraints based on attributes of the request,
        # the resource, or both. To learn which resources support conditions in their
        # IAM policies, see the IAM documentation (https://cloud.google.com/iam/help/
        # conditions/resource-policies).JSON example: ` "bindings": [ ` "role": "roles/
        # resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "
        # group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@
        # appspot.gserviceaccount.com" ] `, ` "role": "roles/resourcemanager.
        # organizationViewer", "members": [ "user:eve@example.com" ], "condition": ` "
        # title": "expirable access", "description": "Does not grant access after Sep
        # 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", `
        # ` ], "etag": "BwWWja0YfJA=", "version": 3 ` YAML example: bindings: - members:
        # - user:mike@example.com - group:admins@example.com - domain:google.com -
        # serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/
        # resourcemanager.organizationAdmin - members: - user:eve@example.com role:
        # roles/resourcemanager.organizationViewer condition: title: expirable access
        # description: Does not grant access after Sep 2020 expression: request.time <
        # timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 For a
        # description of IAM and its features, see the IAM documentation (https://cloud.
        # google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::LoggingV2::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used:paths: "bindings, etag"
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
      
      # Describes the settings associated with a project, folder, organization, or
      # billing account.
      class Settings
        include Google::Apis::Core::Hashable
      
        # Describes the custom _Default sink configuration that is used to override the
        # built-in _Default sink configuration in newly created resource containers,
        # such as projects or folders.
        # Corresponds to the JSON property `defaultSinkConfig`
        # @return [Google::Apis::LoggingV2::DefaultSinkConfig]
        attr_accessor :default_sink_config
      
        # Optional. If set to true, the _Default sink in newly created projects and
        # folders will created in a disabled state. This can be used to automatically
        # disable log storage if there is already an aggregated sink configured in the
        # hierarchy. The _Default sink can be re-enabled manually if needed.
        # Corresponds to the JSON property `disableDefaultSink`
        # @return [Boolean]
        attr_accessor :disable_default_sink
        alias_method :disable_default_sink?, :disable_default_sink
      
        # Optional. The resource name for the configured Cloud KMS key.KMS key name
        # format: "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/
        # cryptoKeys/[KEY]" For example:"projects/my-project/locations/us-central1/
        # keyRings/my-ring/cryptoKeys/my-key"To enable CMEK, set this field to a valid
        # kms_key_name for which the associated service account has the required roles/
        # cloudkms.cryptoKeyEncrypterDecrypter role assigned for the key.The Cloud KMS
        # key used by the Log Router can be updated by changing the kms_key_name to a
        # new valid key name.To disable CMEK for the Log Router, set this field to an
        # empty string.See Enabling CMEK for Log Router (https://cloud.google.com/
        # logging/docs/routing/managed-encryption) for more information.
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        # Output only. The service account that will be used by the Log Router to access
        # your Cloud KMS key.Before enabling CMEK, you must first assign the role roles/
        # cloudkms.cryptoKeyEncrypterDecrypter to the service account that will be used
        # to access your Cloud KMS key. Use GetSettings to obtain the service account ID.
        # See Enabling CMEK for Log Router (https://cloud.google.com/logging/docs/
        # routing/managed-encryption) for more information.
        # Corresponds to the JSON property `kmsServiceAccountId`
        # @return [String]
        attr_accessor :kms_service_account_id
      
        # Output only. The service account for the given resource container, such as
        # project or folder. Log sinks use this service account as their writer_identity
        # if no custom service account is provided in the request when calling the
        # create sink method.
        # Corresponds to the JSON property `loggingServiceAccountId`
        # @return [String]
        attr_accessor :logging_service_account_id
      
        # Output only. The resource name of the settings.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The storage location for the _Default and _Required log buckets of
        # newly created projects and folders, unless the storage location is explicitly
        # provided.Example value: europe-west1.Note: this setting does not affect the
        # location of resources where a location is explicitly provided when created,
        # such as custom log buckets.
        # Corresponds to the JSON property `storageLocation`
        # @return [String]
        attr_accessor :storage_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_sink_config = args[:default_sink_config] if args.key?(:default_sink_config)
          @disable_default_sink = args[:disable_default_sink] if args.key?(:disable_default_sink)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
          @kms_service_account_id = args[:kms_service_account_id] if args.key?(:kms_service_account_id)
          @logging_service_account_id = args[:logging_service_account_id] if args.key?(:logging_service_account_id)
          @name = args[:name] if args.key?(:name)
          @storage_location = args[:storage_location] if args.key?(:storage_location)
        end
      end
      
      # Specifies a location in a source code file.
      class SourceLocation
        include Google::Apis::Core::Hashable
      
        # Source file name. Depending on the runtime environment, this might be a simple
        # name or a fully-qualified name.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Human-readable name of the function or method being invoked, with optional
        # context such as the class or package name. This information is used in
        # contexts such as the logs viewer, where a file and line number are less
        # meaningful. The format can vary by language. For example: qual.if.ied.Class.
        # method (Java), dir/package.func (Go), function (Python).
        # Corresponds to the JSON property `functionName`
        # @return [String]
        attr_accessor :function_name
      
        # Line within the source file.
        # Corresponds to the JSON property `line`
        # @return [Fixnum]
        attr_accessor :line
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @function_name = args[:function_name] if args.key?(:function_name)
          @line = args[:line] if args.key?(:line)
        end
      end
      
      # A reference to a particular snapshot of the source tree used to build and
      # deploy an application.
      class SourceReference
        include Google::Apis::Core::Hashable
      
        # Optional. A URI string identifying the repository. Example: "https://github.
        # com/GoogleCloudPlatform/kubernetes.git"
        # Corresponds to the JSON property `repository`
        # @return [String]
        attr_accessor :repository
      
        # The canonical and persistent identifier of the deployed revision. Example (git)
        # : "0035781c50ec7aa23385dc841529ce8a4b70db1b"
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @repository = args[:repository] if args.key?(:repository)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
        end
      end
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
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
      
      # A field from the LogEntry that is added to the summary line (https://cloud.
      # google.com/logging/docs/view/logs-explorer-interface#add-summary-fields) for a
      # query in the Logs Explorer.
      class SummaryField
        include Google::Apis::Core::Hashable
      
        # Optional. The field from the LogEntry to include in the summary line, for
        # example resource.type or jsonPayload.name.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # Information about entries that were omitted from the session.
      class SuppressionInfo
        include Google::Apis::Core::Hashable
      
        # The reason that entries were omitted from the session.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        # A lower bound on the count of entries omitted due to reason.
        # Corresponds to the JSON property `suppressedCount`
        # @return [Fixnum]
        attr_accessor :suppressed_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @reason = args[:reason] if args.key?(:reason)
          @suppressed_count = args[:suppressed_count] if args.key?(:suppressed_count)
        end
      end
      
      # The parameters to TailLogEntries.
      class TailLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The amount of time to buffer log entries at the server before being
        # returned to prevent out of order results due to late arriving log entries.
        # Valid values are between 0-60000 milliseconds. Defaults to 2000 milliseconds.
        # Corresponds to the JSON property `bufferWindow`
        # @return [String]
        attr_accessor :buffer_window
      
        # Optional. Only log entries that match the filter are returned. An empty filter
        # matches all log entries in the resources listed in resource_names. Referencing
        # a parent resource that is not listed in resource_names will cause the filter
        # to return no results. The maximum length of a filter is 20,000 characters.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Required. Name of a parent resource from which to retrieve log entries:
        # projects/[PROJECT_ID] organizations/[ORGANIZATION_ID] billingAccounts/[
        # BILLING_ACCOUNT_ID] folders/[FOLDER_ID]May alternatively be one or more views:
        # projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[
        # VIEW_ID] organizations/[ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[
        # BUCKET_ID]/views/[VIEW_ID] billingAccounts/[BILLING_ACCOUNT_ID]/locations/[
        # LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID] folders/[FOLDER_ID]/locations/
        # [LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]
        # Corresponds to the JSON property `resourceNames`
        # @return [Array<String>]
        attr_accessor :resource_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buffer_window = args[:buffer_window] if args.key?(:buffer_window)
          @filter = args[:filter] if args.key?(:filter)
          @resource_names = args[:resource_names] if args.key?(:resource_names)
        end
      end
      
      # Result returned from TailLogEntries.
      class TailLogEntriesResponse
        include Google::Apis::Core::Hashable
      
        # A list of log entries. Each response in the stream will order entries with
        # increasing values of LogEntry.timestamp. Ordering is not guaranteed between
        # separate responses.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV2::LogEntry>]
        attr_accessor :entries
      
        # If entries that otherwise would have been included in the session were not
        # sent back to the client, counts of relevant entries omitted from the session
        # with the reason that they were not included. There will be at most one of each
        # reason per response. The counts represent the number of suppressed entries
        # since the last streamed response.
        # Corresponds to the JSON property `suppressionInfo`
        # @return [Array<Google::Apis::LoggingV2::SuppressionInfo>]
        attr_accessor :suppression_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
          @suppression_info = args[:suppression_info] if args.key?(:suppression_info)
        end
      end
      
      # Request message for TestIamPermissions method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the resource. Permissions with wildcards (
        # such as * or storage.*) are not allowed. For more information see IAM Overview
        # (https://cloud.google.com/iam/docs/overview#permissions).
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
      
      # Response message for TestIamPermissions method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of TestPermissionsRequest.permissions that the caller is allowed.
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
      
      # The parameters to UndeleteBucket.
      class UndeleteBucketRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The parameters to UpdateBucket.
      class UpdateBucketRequest
        include Google::Apis::Core::Hashable
      
        # Describes a repository in which log entries are stored.
        # Corresponds to the JSON property `bucket`
        # @return [Google::Apis::LoggingV2::LogBucket]
        attr_accessor :bucket
      
        # Required. The full resource name of the bucket to update. "projects/[
        # PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "organizations/[
        # ORGANIZATION_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "billingAccounts/
        # [BILLING_ACCOUNT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" "folders/[
        # FOLDER_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]" For example:"projects/
        # my-project/locations/global/buckets/my-bucket"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Field mask that specifies the fields in bucket that need an update.
        # A bucket field will be overwritten if, and only if, it is in the update mask.
        # name and output only fields cannot be updated.For a detailed FieldMask
        # definition, see: https://developers.google.com/protocol-buffers/docs/reference/
        # google.protobuf#google.protobuf.FieldMaskFor example: updateMask=
        # retention_days
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @name = args[:name] if args.key?(:name)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # The parameters to WriteLogEntries.
      class WriteLogEntriesRequest
        include Google::Apis::Core::Hashable
      
        # Optional. If true, the request should expect normal response, but the entries
        # won't be persisted nor exported. Useful for checking whether the logging API
        # endpoints are working properly before sending valuable data.
        # Corresponds to the JSON property `dryRun`
        # @return [Boolean]
        attr_accessor :dry_run
        alias_method :dry_run?, :dry_run
      
        # Required. The log entries to send to Logging. The order of log entries in this
        # list does not matter. Values supplied in this method's log_name, resource, and
        # labels fields are copied into those log entries in this list that do not
        # include values for their corresponding fields. For more information, see the
        # LogEntry type.If the timestamp or insert_id fields are missing in log entries,
        # then this method supplies the current time or a unique identifier,
        # respectively. The supplied values are chosen so that, among the log entries
        # that did not supply their own values, the entries earlier in the list will
        # sort before the entries later in the list. See the entries.list method.Log
        # entries with timestamps that are more than the logs retention period (https://
        # cloud.google.com/logging/quotas) in the past or more than 24 hours in the
        # future will not be available when calling entries.list. However, those log
        # entries can still be exported with LogSinks (https://cloud.google.com/logging/
        # docs/api/tasks/exporting-logs).To improve throughput and to avoid exceeding
        # the quota limit (https://cloud.google.com/logging/quotas) for calls to entries.
        # write, you should try to include several log entries in this list, rather than
        # calling this method for each individual log entry.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::LoggingV2::LogEntry>]
        attr_accessor :entries
      
        # Optional. Default labels that are added to the labels field of all log entries
        # in entries. If a log entry already has a label with the same key as a label in
        # this parameter, then the log entry's label is not changed. See LogEntry.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. A default log resource name that is assigned to all log entries in
        # entries that do not specify a value for log_name: projects/[PROJECT_ID]/logs/[
        # LOG_ID] organizations/[ORGANIZATION_ID]/logs/[LOG_ID] billingAccounts/[
        # BILLING_ACCOUNT_ID]/logs/[LOG_ID] folders/[FOLDER_ID]/logs/[LOG_ID][LOG_ID]
        # must be URL-encoded. For example: "projects/my-project-id/logs/syslog" "
        # organizations/123/logs/cloudaudit.googleapis.com%2Factivity" The permission
        # logging.logEntries.create is needed on each project, organization, billing
        # account, or folder that is receiving new log entries, whether the resource is
        # specified in logName or in an individual log entry.
        # Corresponds to the JSON property `logName`
        # @return [String]
        attr_accessor :log_name
      
        # Optional. Whether a batch's valid entries should be written even if some other
        # entry failed due to a permanent error such as INVALID_ARGUMENT or
        # PERMISSION_DENIED. If any entry failed, then the response status is the
        # response status of one of the failed entries. The response will include error
        # details in WriteLogEntriesPartialErrors.log_entry_errors keyed by the entries'
        # zero-based index in the entries. Failed requests for which no entries are
        # written will not include per-entry errors.
        # Corresponds to the JSON property `partialSuccess`
        # @return [Boolean]
        attr_accessor :partial_success
        alias_method :partial_success?, :partial_success
      
        # An object representing a resource that can be used for monitoring, logging,
        # billing, or other purposes. Examples include virtual machine instances,
        # databases, and storage devices such as disks. The type field identifies a
        # MonitoredResourceDescriptor object that describes the resource's schema.
        # Information in the labels field identifies the actual resource and its
        # attributes according to the schema. For example, a particular Compute Engine
        # VM instance could be represented by the following object, because the
        # MonitoredResourceDescriptor for "gce_instance" has labels "project_id", "
        # instance_id" and "zone": ` "type": "gce_instance", "labels": ` "project_id": "
        # my-project", "instance_id": "12345678901234", "zone": "us-central1-a" ``
        # Corresponds to the JSON property `resource`
        # @return [Google::Apis::LoggingV2::MonitoredResource]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dry_run = args[:dry_run] if args.key?(:dry_run)
          @entries = args[:entries] if args.key?(:entries)
          @labels = args[:labels] if args.key?(:labels)
          @log_name = args[:log_name] if args.key?(:log_name)
          @partial_success = args[:partial_success] if args.key?(:partial_success)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Result returned from WriteLogEntries.
      class WriteLogEntriesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
    end
  end
end
