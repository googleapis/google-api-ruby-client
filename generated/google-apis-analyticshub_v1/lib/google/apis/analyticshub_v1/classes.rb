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
    module AnalyticshubV1
      
      # Information about an associated Analytics Hub subscription (https://cloud.
      # google.com/bigquery/docs/analytics-hub-manage-subscriptions).
      class AnalyticsHubSubscriptionInfo
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the associated Analytics Hub listing resource. Pattern: "
        # projects/`project`/locations/`location`/dataExchanges/`data_exchange`/listings/
        # `listing`"
        # Corresponds to the JSON property `listing`
        # @return [String]
        attr_accessor :listing
      
        # Optional. The name of the associated Analytics Hub subscription resource.
        # Pattern: "projects/`project`/locations/`location`/subscriptions/`subscription`"
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @listing = args[:listing] if args.key?(:listing)
          @subscription = args[:subscription] if args.key?(:subscription)
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
        # @return [Array<Google::Apis::AnalyticshubV1::AuditLogConfig>]
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
      
      # Configuration for writing message data in Avro format. Message payloads and
      # metadata will be written to files as an Avro binary.
      class AvroConfig
        include Google::Apis::Core::Hashable
      
        # Optional. When true, the output Cloud Storage file will be serialized using
        # the topic schema, if it exists.
        # Corresponds to the JSON property `useTopicSchema`
        # @return [Boolean]
        attr_accessor :use_topic_schema
        alias_method :use_topic_schema?, :use_topic_schema
      
        # Optional. When true, write the subscription name, message_id, publish_time,
        # attributes, and ordering_key as additional fields in the output. The
        # subscription name, message_id, and publish_time fields are put in their own
        # fields while all other message properties other than data (for example, an
        # ordering_key, if present) are added as entries in the attributes map.
        # Corresponds to the JSON property `writeMetadata`
        # @return [Boolean]
        attr_accessor :write_metadata
        alias_method :write_metadata?, :write_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @use_topic_schema = args[:use_topic_schema] if args.key?(:use_topic_schema)
          @write_metadata = args[:write_metadata] if args.key?(:write_metadata)
        end
      end
      
      # Configuration for a BigQuery subscription.
      class BigQueryConfig
        include Google::Apis::Core::Hashable
      
        # Optional. When true and use_topic_schema is true, any fields that are a part
        # of the topic schema that are not part of the BigQuery table schema are dropped
        # when writing to BigQuery. Otherwise, the schemas must be kept in sync and any
        # messages with extra fields are not written and remain in the subscription's
        # backlog.
        # Corresponds to the JSON property `dropUnknownFields`
        # @return [Boolean]
        attr_accessor :drop_unknown_fields
        alias_method :drop_unknown_fields?, :drop_unknown_fields
      
        # Optional. The service account to use to write to BigQuery. The subscription
        # creator or updater that specifies this field must have `iam.serviceAccounts.
        # actAs` permission on the service account. If not specified, the Pub/Sub [
        # service agent](https://cloud.google.com/iam/docs/service-agents), service-`
        # project_number`@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Output only. An output-only field that indicates whether or not the
        # subscription can receive messages.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Optional. The name of the table to which to write data, of the form `projectId`
        # .`datasetId`.`tableId`
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # Optional. When true, use the BigQuery table's schema as the columns to write
        # to in BigQuery. `use_table_schema` and `use_topic_schema` cannot be enabled at
        # the same time.
        # Corresponds to the JSON property `useTableSchema`
        # @return [Boolean]
        attr_accessor :use_table_schema
        alias_method :use_table_schema?, :use_table_schema
      
        # Optional. When true, use the topic's schema as the columns to write to in
        # BigQuery, if it exists. `use_topic_schema` and `use_table_schema` cannot be
        # enabled at the same time.
        # Corresponds to the JSON property `useTopicSchema`
        # @return [Boolean]
        attr_accessor :use_topic_schema
        alias_method :use_topic_schema?, :use_topic_schema
      
        # Optional. When true, write the subscription name, message_id, publish_time,
        # attributes, and ordering_key to additional columns in the table. The
        # subscription name, message_id, and publish_time fields are put in their own
        # columns while all other message properties (other than data) are written to a
        # JSON object in the attributes column.
        # Corresponds to the JSON property `writeMetadata`
        # @return [Boolean]
        attr_accessor :write_metadata
        alias_method :write_metadata?, :write_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @drop_unknown_fields = args[:drop_unknown_fields] if args.key?(:drop_unknown_fields)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @state = args[:state] if args.key?(:state)
          @table = args[:table] if args.key?(:table)
          @use_table_schema = args[:use_table_schema] if args.key?(:use_table_schema)
          @use_topic_schema = args[:use_topic_schema] if args.key?(:use_topic_schema)
          @write_metadata = args[:write_metadata] if args.key?(:write_metadata)
        end
      end
      
      # A reference to a shared dataset. It is an existing BigQuery dataset with a
      # collection of objects such as tables and views that you want to share with
      # subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a
      # linked dataset in the subscriber's project. A Linked dataset is an opaque,
      # read-only BigQuery dataset that serves as a _symbolic link_ to a shared
      # dataset.
      class BigQueryDatasetSource
        include Google::Apis::Core::Hashable
      
        # Resource name of the dataset source for this listing. e.g. `projects/myproject/
        # datasets/123`
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Restricted export policy used to configure restricted export on linked dataset.
        # Corresponds to the JSON property `restrictedExportPolicy`
        # @return [Google::Apis::AnalyticshubV1::RestrictedExportPolicy]
        attr_accessor :restricted_export_policy
      
        # Optional. Resource in this dataset that is selectively shared. This field is
        # required for data clean room exchanges.
        # Corresponds to the JSON property `selectedResources`
        # @return [Array<Google::Apis::AnalyticshubV1::SelectedResource>]
        attr_accessor :selected_resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @restricted_export_policy = args[:restricted_export_policy] if args.key?(:restricted_export_policy)
          @selected_resources = args[:selected_resources] if args.key?(:selected_resources)
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
        # @return [Google::Apis::AnalyticshubV1::Expr]
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
      
      # Configuration for a Cloud Storage subscription.
      class CloudStorageConfig
        include Google::Apis::Core::Hashable
      
        # Configuration for writing message data in Avro format. Message payloads and
        # metadata will be written to files as an Avro binary.
        # Corresponds to the JSON property `avroConfig`
        # @return [Google::Apis::AnalyticshubV1::AvroConfig]
        attr_accessor :avro_config
      
        # Required. User-provided name for the Cloud Storage bucket. The bucket must be
        # created by the user. The bucket name must be without any prefix like "gs://".
        # See the [bucket naming requirements] (https://cloud.google.com/storage/docs/
        # buckets#naming).
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Optional. User-provided format string specifying how to represent datetimes in
        # Cloud Storage filenames. See the [datetime format guidance](https://cloud.
        # google.com/pubsub/docs/create-cloudstorage-subscription#file_names).
        # Corresponds to the JSON property `filenameDatetimeFormat`
        # @return [String]
        attr_accessor :filename_datetime_format
      
        # Optional. User-provided prefix for Cloud Storage filename. See the [object
        # naming requirements](https://cloud.google.com/storage/docs/objects#naming).
        # Corresponds to the JSON property `filenamePrefix`
        # @return [String]
        attr_accessor :filename_prefix
      
        # Optional. User-provided suffix for Cloud Storage filename. See the [object
        # naming requirements](https://cloud.google.com/storage/docs/objects#naming).
        # Must not end in "/".
        # Corresponds to the JSON property `filenameSuffix`
        # @return [String]
        attr_accessor :filename_suffix
      
        # Optional. The maximum bytes that can be written to a Cloud Storage file before
        # a new file is created. Min 1 KB, max 10 GiB. The max_bytes limit may be
        # exceeded in cases where messages are larger than the limit.
        # Corresponds to the JSON property `maxBytes`
        # @return [Fixnum]
        attr_accessor :max_bytes
      
        # Optional. The maximum duration that can elapse before a new Cloud Storage file
        # is created. Min 1 minute, max 10 minutes, default 5 minutes. May not exceed
        # the subscription's acknowledgement deadline.
        # Corresponds to the JSON property `maxDuration`
        # @return [String]
        attr_accessor :max_duration
      
        # Optional. The maximum number of messages that can be written to a Cloud
        # Storage file before a new file is created. Min 1000 messages.
        # Corresponds to the JSON property `maxMessages`
        # @return [Fixnum]
        attr_accessor :max_messages
      
        # Optional. The service account to use to write to Cloud Storage. The
        # subscription creator or updater that specifies this field must have `iam.
        # serviceAccounts.actAs` permission on the service account. If not specified,
        # the Pub/Sub [service agent](https://cloud.google.com/iam/docs/service-agents),
        # service-`project_number`@gcp-sa-pubsub.iam.gserviceaccount.com, is used.
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        # Output only. An output-only field that indicates whether or not the
        # subscription can receive messages.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Configuration for writing message data in text format. Message payloads will
        # be written to files as raw text, separated by a newline.
        # Corresponds to the JSON property `textConfig`
        # @return [Google::Apis::AnalyticshubV1::TextConfig]
        attr_accessor :text_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avro_config = args[:avro_config] if args.key?(:avro_config)
          @bucket = args[:bucket] if args.key?(:bucket)
          @filename_datetime_format = args[:filename_datetime_format] if args.key?(:filename_datetime_format)
          @filename_prefix = args[:filename_prefix] if args.key?(:filename_prefix)
          @filename_suffix = args[:filename_suffix] if args.key?(:filename_suffix)
          @max_bytes = args[:max_bytes] if args.key?(:max_bytes)
          @max_duration = args[:max_duration] if args.key?(:max_duration)
          @max_messages = args[:max_messages] if args.key?(:max_messages)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
          @state = args[:state] if args.key?(:state)
          @text_config = args[:text_config] if args.key?(:text_config)
        end
      end
      
      # A data exchange is a container that lets you share data. Along with the
      # descriptive information about the data exchange, it contains listings that
      # reference shared datasets.
      class DataExchange
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the data exchange. The description must not contain
        # Unicode non-characters as well as C0 and C1 control codes except tabs (HT),
        # new lines (LF), carriage returns (CR), and page breaks (FF). Default value is
        # an empty string. Max length: 2000 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Type of discovery on the discovery page for all the listings under
        # this exchange. Updating this field also updates (overwrites) the
        # discovery_type field for all the listings under this exchange.
        # Corresponds to the JSON property `discoveryType`
        # @return [String]
        attr_accessor :discovery_type
      
        # Required. Human-readable display name of the data exchange. The display name
        # must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-),
        # spaces ( ), ampersands (&) and must not start or end with spaces. Default
        # value is an empty string. Max length: 63 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Documentation describing the data exchange.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Optional. Base64 encoded image representing the data exchange. Max Size: 3.
        # 0MiB Expected image dimensions are 512x512 pixels, however the API only
        # performs validation on size of the encoded data. Note: For byte fields, the
        # content of the fields are base64-encoded (which increases the size of the data
        # by 33-36%) when using JSON on the wire.
        # Corresponds to the JSON property `icon`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :icon
      
        # Output only. Number of listings contained in the data exchange.
        # Corresponds to the JSON property `listingCount`
        # @return [Fixnum]
        attr_accessor :listing_count
      
        # Output only. The resource name of the data exchange. e.g. `projects/myproject/
        # locations/US/dataExchanges/123`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Email or URL of the primary point of contact of the data exchange.
        # Max Length: 1000 bytes.
        # Corresponds to the JSON property `primaryContact`
        # @return [String]
        attr_accessor :primary_contact
      
        # Sharing environment is a behavior model for sharing data within a data
        # exchange. This option is configurable for a data exchange.
        # Corresponds to the JSON property `sharingEnvironmentConfig`
        # @return [Google::Apis::AnalyticshubV1::SharingEnvironmentConfig]
        attr_accessor :sharing_environment_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @discovery_type = args[:discovery_type] if args.key?(:discovery_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @icon = args[:icon] if args.key?(:icon)
          @listing_count = args[:listing_count] if args.key?(:listing_count)
          @name = args[:name] if args.key?(:name)
          @primary_contact = args[:primary_contact] if args.key?(:primary_contact)
          @sharing_environment_config = args[:sharing_environment_config] if args.key?(:sharing_environment_config)
        end
      end
      
      # Contains details of the data provider.
      class DataProvider
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the data provider.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Email or URL of the data provider. Max Length: 1000 bytes.
        # Corresponds to the JSON property `primaryContact`
        # @return [String]
        attr_accessor :primary_contact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @primary_contact = args[:primary_contact] if args.key?(:primary_contact)
        end
      end
      
      # Data Clean Room (DCR), used for privacy-safe and secured data sharing.
      class DcrExchangeConfig
        include Google::Apis::Core::Hashable
      
        # Output only. If True, when subscribing to this DCR, it will create only one
        # linked dataset containing all resources shared within the cleanroom. If False,
        # when subscribing to this DCR, it will create 1 linked dataset per listing.
        # This is not configurable, and by default, all new DCRs will have the
        # restriction set to True.
        # Corresponds to the JSON property `singleLinkedDatasetPerCleanroom`
        # @return [Boolean]
        attr_accessor :single_linked_dataset_per_cleanroom
        alias_method :single_linked_dataset_per_cleanroom?, :single_linked_dataset_per_cleanroom
      
        # Output only. If True, this DCR restricts the contributors to sharing only a
        # single resource in a Listing. And no two resources should have the same IDs.
        # So if a contributor adds a view with a conflicting name, the CreateListing API
        # will reject the request. if False, the data contributor can publish an entire
        # dataset (as before). This is not configurable, and by default, all new DCRs
        # will have the restriction set to True.
        # Corresponds to the JSON property `singleSelectedResourceSharingRestriction`
        # @return [Boolean]
        attr_accessor :single_selected_resource_sharing_restriction
        alias_method :single_selected_resource_sharing_restriction?, :single_selected_resource_sharing_restriction
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @single_linked_dataset_per_cleanroom = args[:single_linked_dataset_per_cleanroom] if args.key?(:single_linked_dataset_per_cleanroom)
          @single_selected_resource_sharing_restriction = args[:single_selected_resource_sharing_restriction] if args.key?(:single_selected_resource_sharing_restriction)
        end
      end
      
      # Dead lettering is done on a best effort basis. The same message might be dead
      # lettered multiple times. If validation on any of the fields fails at
      # subscription creation/updation, the create/update subscription request will
      # fail.
      class DeadLetterPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the topic to which dead letter messages should be
        # published. Format is `projects/`project`/topics/`topic``.The Pub/Sub service
        # account associated with the enclosing subscription's parent project (i.e.,
        # service-`project_number`@gcp-sa-pubsub.iam.gserviceaccount.com) must have
        # permission to Publish() to this topic. The operation will fail if the topic
        # does not exist. Users should ensure that there is a subscription attached to
        # this topic since messages published to a topic with no subscriptions are lost.
        # Corresponds to the JSON property `deadLetterTopic`
        # @return [String]
        attr_accessor :dead_letter_topic
      
        # Optional. The maximum number of delivery attempts for any message. The value
        # must be between 5 and 100. The number of delivery attempts is defined as 1 + (
        # the sum of number of NACKs and number of times the acknowledgement deadline
        # has been exceeded for the message). A NACK is any call to ModifyAckDeadline
        # with a 0 deadline. Note that client libraries may automatically extend
        # ack_deadlines. This field will be honored on a best effort basis. If this
        # parameter is 0, a default value of 5 is used.
        # Corresponds to the JSON property `maxDeliveryAttempts`
        # @return [Fixnum]
        attr_accessor :max_delivery_attempts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dead_letter_topic = args[:dead_letter_topic] if args.key?(:dead_letter_topic)
          @max_delivery_attempts = args[:max_delivery_attempts] if args.key?(:max_delivery_attempts)
        end
      end
      
      # Default Analytics Hub data exchange, used for secured data sharing.
      class DefaultExchangeConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Defines the destination bigquery dataset.
      class DestinationDataset
        include Google::Apis::Core::Hashable
      
        # Contains the reference that identifies a destination bigquery dataset.
        # Corresponds to the JSON property `datasetReference`
        # @return [Google::Apis::AnalyticshubV1::DestinationDatasetReference]
        attr_accessor :dataset_reference
      
        # Optional. A user-friendly description of the dataset.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A descriptive name for the dataset.
        # Corresponds to the JSON property `friendlyName`
        # @return [String]
        attr_accessor :friendly_name
      
        # Optional. The labels associated with this dataset. You can use these to
        # organize and group your datasets. You can set this property when inserting or
        # updating a dataset. See https://cloud.google.com/resource-manager/docs/
        # creating-managing-labels for more information.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Required. The geographic location where the dataset should reside. See https://
        # cloud.google.com/bigquery/docs/locations for supported locations.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_reference = args[:dataset_reference] if args.key?(:dataset_reference)
          @description = args[:description] if args.key?(:description)
          @friendly_name = args[:friendly_name] if args.key?(:friendly_name)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Contains the reference that identifies a destination bigquery dataset.
      class DestinationDatasetReference
        include Google::Apis::Core::Hashable
      
        # Required. A unique ID for this dataset, without the project name. The ID must
        # contain only letters (a-z, A-Z), numbers (0-9), or underscores (_). The
        # maximum length is 1,024 characters.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Required. The ID of the project containing this dataset.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Defines the destination Pub/Sub subscription.
      class DestinationPubSubSubscription
        include Google::Apis::Core::Hashable
      
        # A subscription resource. If none of `push_config`, `bigquery_config`, or `
        # cloud_storage_config` is set, then the subscriber will pull and ack messages
        # using API methods. At most one of these fields may be set.
        # Corresponds to the JSON property `pubsubSubscription`
        # @return [Google::Apis::AnalyticshubV1::GooglePubsubV1Subscription]
        attr_accessor :pubsub_subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pubsub_subscription = args[:pubsub_subscription] if args.key?(:pubsub_subscription)
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
      
      # A policy that specifies the conditions for resource expiration (i.e.,
      # automatic resource deletion).
      class ExpirationPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. Specifies the "time-to-live" duration for an associated resource.
        # The resource expires if it is not active for a period of `ttl`. The definition
        # of "activity" depends on the type of the associated resource. The minimum and
        # maximum allowed values for `ttl` depend on the type of the associated resource,
        # as well. If `ttl` is not set, the associated resource never expires.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ttl = args[:ttl] if args.key?(:ttl)
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::AnalyticshubV1::GetPolicyOptions]
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
      
      # A subscription resource. If none of `push_config`, `bigquery_config`, or `
      # cloud_storage_config` is set, then the subscriber will pull and ack messages
      # using API methods. At most one of these fields may be set.
      class GooglePubsubV1Subscription
        include Google::Apis::Core::Hashable
      
        # Optional. The approximate amount of time (on a best-effort basis) Pub/Sub
        # waits for the subscriber to acknowledge receipt before resending the message.
        # In the interval after the message is delivered and before it is acknowledged,
        # it is considered to be _outstanding_. During that time period, the message
        # will not be redelivered (on a best-effort basis). For pull subscriptions, this
        # value is used as the initial value for the ack deadline. To override this
        # value for a given message, call `ModifyAckDeadline` with the corresponding `
        # ack_id` if using non-streaming pull or send the `ack_id` in a `
        # StreamingModifyAckDeadlineRequest` if using streaming pull. The minimum custom
        # deadline you can specify is 10 seconds. The maximum custom deadline you can
        # specify is 600 seconds (10 minutes). If this parameter is 0, a default value
        # of 10 seconds is used. For push delivery, this value is also used to set the
        # request timeout for the call to the push endpoint. If the subscriber never
        # acknowledges the message, the Pub/Sub system will eventually redeliver the
        # message.
        # Corresponds to the JSON property `ackDeadlineSeconds`
        # @return [Fixnum]
        attr_accessor :ack_deadline_seconds
      
        # Information about an associated Analytics Hub subscription (https://cloud.
        # google.com/bigquery/docs/analytics-hub-manage-subscriptions).
        # Corresponds to the JSON property `analyticsHubSubscriptionInfo`
        # @return [Google::Apis::AnalyticshubV1::AnalyticsHubSubscriptionInfo]
        attr_accessor :analytics_hub_subscription_info
      
        # Configuration for a BigQuery subscription.
        # Corresponds to the JSON property `bigqueryConfig`
        # @return [Google::Apis::AnalyticshubV1::BigQueryConfig]
        attr_accessor :bigquery_config
      
        # Configuration for a Cloud Storage subscription.
        # Corresponds to the JSON property `cloudStorageConfig`
        # @return [Google::Apis::AnalyticshubV1::CloudStorageConfig]
        attr_accessor :cloud_storage_config
      
        # Dead lettering is done on a best effort basis. The same message might be dead
        # lettered multiple times. If validation on any of the fields fails at
        # subscription creation/updation, the create/update subscription request will
        # fail.
        # Corresponds to the JSON property `deadLetterPolicy`
        # @return [Google::Apis::AnalyticshubV1::DeadLetterPolicy]
        attr_accessor :dead_letter_policy
      
        # Optional. Indicates whether the subscription is detached from its topic.
        # Detached subscriptions don't receive messages from their topic and don't
        # retain any backlog. `Pull` and `StreamingPull` requests will return
        # FAILED_PRECONDITION. If the subscription is a push subscription, pushes to the
        # endpoint will not be made.
        # Corresponds to the JSON property `detached`
        # @return [Boolean]
        attr_accessor :detached
        alias_method :detached?, :detached
      
        # Optional. If true, Pub/Sub provides the following guarantees for the delivery
        # of a message with a given value of `message_id` on this subscription: * The
        # message sent to a subscriber is guaranteed not to be resent before the message'
        # s acknowledgement deadline expires. * An acknowledged message will not be
        # resent to a subscriber. Note that subscribers may still receive multiple
        # copies of a message when `enable_exactly_once_delivery` is true if the message
        # was published multiple times by a publisher client. These copies are
        # considered distinct by Pub/Sub and have distinct `message_id` values.
        # Corresponds to the JSON property `enableExactlyOnceDelivery`
        # @return [Boolean]
        attr_accessor :enable_exactly_once_delivery
        alias_method :enable_exactly_once_delivery?, :enable_exactly_once_delivery
      
        # Optional. If true, messages published with the same `ordering_key` in `
        # PubsubMessage` will be delivered to the subscribers in the order in which they
        # are received by the Pub/Sub system. Otherwise, they may be delivered in any
        # order.
        # Corresponds to the JSON property `enableMessageOrdering`
        # @return [Boolean]
        attr_accessor :enable_message_ordering
        alias_method :enable_message_ordering?, :enable_message_ordering
      
        # A policy that specifies the conditions for resource expiration (i.e.,
        # automatic resource deletion).
        # Corresponds to the JSON property `expirationPolicy`
        # @return [Google::Apis::AnalyticshubV1::ExpirationPolicy]
        attr_accessor :expiration_policy
      
        # Optional. An expression written in the Pub/Sub [filter language](https://cloud.
        # google.com/pubsub/docs/filtering). If non-empty, then only `PubsubMessage`s
        # whose `attributes` field matches the filter are delivered on this subscription.
        # If empty, then no messages are filtered out.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        # Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/
        # docs/labels).
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. How long to retain unacknowledged messages in the subscription's
        # backlog, from the moment a message is published. If `retain_acked_messages` is
        # true, then this also configures the retention of acknowledged messages, and
        # thus configures how far back in time a `Seek` can be done. Defaults to 7 days.
        # Cannot be more than 7 days or less than 10 minutes.
        # Corresponds to the JSON property `messageRetentionDuration`
        # @return [String]
        attr_accessor :message_retention_duration
      
        # Required. Name of the subscription. Format is `projects/`project`/
        # subscriptions/`sub``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for a push delivery endpoint.
        # Corresponds to the JSON property `pushConfig`
        # @return [Google::Apis::AnalyticshubV1::PushConfig]
        attr_accessor :push_config
      
        # Optional. Indicates whether to retain acknowledged messages. If true, then
        # messages are not expunged from the subscription's backlog, even if they are
        # acknowledged, until they fall out of the `message_retention_duration` window.
        # This must be true if you would like to [`Seek` to a timestamp] (https://cloud.
        # google.com/pubsub/docs/replay-overview#seek_to_a_time) in the past to replay
        # previously-acknowledged messages.
        # Corresponds to the JSON property `retainAckedMessages`
        # @return [Boolean]
        attr_accessor :retain_acked_messages
        alias_method :retain_acked_messages?, :retain_acked_messages
      
        # A policy that specifies how Pub/Sub retries message delivery. Retry delay will
        # be exponential based on provided minimum and maximum backoffs. https://en.
        # wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs
        # or acknowledgement deadline exceeded events for a given message. Retry Policy
        # is implemented on a best effort basis. At times, the delay between consecutive
        # deliveries may not match the configuration. That is, delay can be more or less
        # than configured backoff.
        # Corresponds to the JSON property `retryPolicy`
        # @return [Google::Apis::AnalyticshubV1::RetryPolicy]
        attr_accessor :retry_policy
      
        # Output only. An output-only field indicating whether or not the subscription
        # can receive messages.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Indicates the minimum duration for which a message is retained
        # after it is published to the subscription's topic. If this field is set,
        # messages published to the subscription's topic in the last `
        # topic_message_retention_duration` are always available to subscribers. See the
        # `message_retention_duration` field in `Topic`. This field is set only in
        # responses from the server; it is ignored if it is set in any requests.
        # Corresponds to the JSON property `topicMessageRetentionDuration`
        # @return [String]
        attr_accessor :topic_message_retention_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ack_deadline_seconds = args[:ack_deadline_seconds] if args.key?(:ack_deadline_seconds)
          @analytics_hub_subscription_info = args[:analytics_hub_subscription_info] if args.key?(:analytics_hub_subscription_info)
          @bigquery_config = args[:bigquery_config] if args.key?(:bigquery_config)
          @cloud_storage_config = args[:cloud_storage_config] if args.key?(:cloud_storage_config)
          @dead_letter_policy = args[:dead_letter_policy] if args.key?(:dead_letter_policy)
          @detached = args[:detached] if args.key?(:detached)
          @enable_exactly_once_delivery = args[:enable_exactly_once_delivery] if args.key?(:enable_exactly_once_delivery)
          @enable_message_ordering = args[:enable_message_ordering] if args.key?(:enable_message_ordering)
          @expiration_policy = args[:expiration_policy] if args.key?(:expiration_policy)
          @filter = args[:filter] if args.key?(:filter)
          @labels = args[:labels] if args.key?(:labels)
          @message_retention_duration = args[:message_retention_duration] if args.key?(:message_retention_duration)
          @name = args[:name] if args.key?(:name)
          @push_config = args[:push_config] if args.key?(:push_config)
          @retain_acked_messages = args[:retain_acked_messages] if args.key?(:retain_acked_messages)
          @retry_policy = args[:retry_policy] if args.key?(:retry_policy)
          @state = args[:state] if args.key?(:state)
          @topic_message_retention_duration = args[:topic_message_retention_duration] if args.key?(:topic_message_retention_duration)
        end
      end
      
      # Reference to a linked resource tracked by this Subscription.
      class LinkedResource
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the linked dataset, e.g. projects/subscriberproject/
        # datasets/linked_dataset
        # Corresponds to the JSON property `linkedDataset`
        # @return [String]
        attr_accessor :linked_dataset
      
        # Output only. Name of the Pub/Sub subscription, e.g. projects/subscriberproject/
        # subscriptions/subscriptions/sub_id
        # Corresponds to the JSON property `linkedPubsubSubscription`
        # @return [String]
        attr_accessor :linked_pubsub_subscription
      
        # Output only. Listing for which linked resource is created.
        # Corresponds to the JSON property `listing`
        # @return [String]
        attr_accessor :listing
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_dataset = args[:linked_dataset] if args.key?(:linked_dataset)
          @linked_pubsub_subscription = args[:linked_pubsub_subscription] if args.key?(:linked_pubsub_subscription)
          @listing = args[:listing] if args.key?(:listing)
        end
      end
      
      # Message for response to the list of data exchanges.
      class ListDataExchangesResponse
        include Google::Apis::Core::Hashable
      
        # The list of data exchanges.
        # Corresponds to the JSON property `dataExchanges`
        # @return [Array<Google::Apis::AnalyticshubV1::DataExchange>]
        attr_accessor :data_exchanges
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_exchanges = args[:data_exchanges] if args.key?(:data_exchanges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to the list of Listings.
      class ListListingsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Listing.
        # Corresponds to the JSON property `listings`
        # @return [Array<Google::Apis::AnalyticshubV1::Listing>]
        attr_accessor :listings
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @listings = args[:listings] if args.key?(:listings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to listing data exchanges in an organization and location.
      class ListOrgDataExchangesResponse
        include Google::Apis::Core::Hashable
      
        # The list of data exchanges.
        # Corresponds to the JSON property `dataExchanges`
        # @return [Array<Google::Apis::AnalyticshubV1::DataExchange>]
        attr_accessor :data_exchanges
      
        # A token to request the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_exchanges = args[:data_exchanges] if args.key?(:data_exchanges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Message for response to the listing of shared resource subscriptions.
      class ListSharedResourceSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of subscriptions.
        # Corresponds to the JSON property `sharedResourceSubscriptions`
        # @return [Array<Google::Apis::AnalyticshubV1::Subscription>]
        attr_accessor :shared_resource_subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @shared_resource_subscriptions = args[:shared_resource_subscriptions] if args.key?(:shared_resource_subscriptions)
        end
      end
      
      # Message for response to the listing of subscriptions.
      class ListSubscriptionsResponse
        include Google::Apis::Core::Hashable
      
        # Next page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of subscriptions.
        # Corresponds to the JSON property `subscriptions`
        # @return [Array<Google::Apis::AnalyticshubV1::Subscription>]
        attr_accessor :subscriptions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @subscriptions = args[:subscriptions] if args.key?(:subscriptions)
        end
      end
      
      # A listing is what gets published into a data exchange that a subscriber can
      # subscribe to. It contains a reference to the data source along with
      # descriptive information that will help subscribers find and subscribe the data.
      class Listing
        include Google::Apis::Core::Hashable
      
        # A reference to a shared dataset. It is an existing BigQuery dataset with a
        # collection of objects such as tables and views that you want to share with
        # subscribers. When subscriber's subscribe to a listing, Analytics Hub creates a
        # linked dataset in the subscriber's project. A Linked dataset is an opaque,
        # read-only BigQuery dataset that serves as a _symbolic link_ to a shared
        # dataset.
        # Corresponds to the JSON property `bigqueryDataset`
        # @return [Google::Apis::AnalyticshubV1::BigQueryDatasetSource]
        attr_accessor :bigquery_dataset
      
        # Optional. Categories of the listing. Up to two categories are allowed.
        # Corresponds to the JSON property `categories`
        # @return [Array<String>]
        attr_accessor :categories
      
        # Contains details of the data provider.
        # Corresponds to the JSON property `dataProvider`
        # @return [Google::Apis::AnalyticshubV1::DataProvider]
        attr_accessor :data_provider
      
        # Optional. Short description of the listing. The description must not contain
        # Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines
        # (LF), carriage returns (CR), and page breaks (FF). Default value is an empty
        # string. Max length: 2000 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Type of discovery of the listing on the discovery page.
        # Corresponds to the JSON property `discoveryType`
        # @return [String]
        attr_accessor :discovery_type
      
        # Required. Human-readable display name of the listing. The display name must
        # contain only Unicode letters, numbers (0-9), underscores (_), dashes (-),
        # spaces ( ), ampersands (&) and can't start or end with spaces. Default value
        # is an empty string. Max length: 63 bytes.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Documentation describing the listing.
        # Corresponds to the JSON property `documentation`
        # @return [String]
        attr_accessor :documentation
      
        # Optional. Base64 encoded image representing the listing. Max Size: 3.0MiB
        # Expected image dimensions are 512x512 pixels, however the API only performs
        # validation on size of the encoded data. Note: For byte fields, the contents of
        # the field are base64-encoded (which increases the size of the data by 33-36%)
        # when using JSON on the wire.
        # Corresponds to the JSON property `icon`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :icon
      
        # Output only. The resource name of the listing. e.g. `projects/myproject/
        # locations/US/dataExchanges/123/listings/456`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Email or URL of the primary point of contact of the listing. Max
        # Length: 1000 bytes.
        # Corresponds to the JSON property `primaryContact`
        # @return [String]
        attr_accessor :primary_contact
      
        # Contains details of the listing publisher.
        # Corresponds to the JSON property `publisher`
        # @return [Google::Apis::AnalyticshubV1::Publisher]
        attr_accessor :publisher
      
        # Pub/Sub topic source.
        # Corresponds to the JSON property `pubsubTopic`
        # @return [Google::Apis::AnalyticshubV1::PubSubTopicSource]
        attr_accessor :pubsub_topic
      
        # Optional. Email or URL of the request access of the listing. Subscribers can
        # use this reference to request access. Max Length: 1000 bytes.
        # Corresponds to the JSON property `requestAccess`
        # @return [String]
        attr_accessor :request_access
      
        # Output only. Listing shared asset type.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Restricted export config, used to configure restricted export on linked
        # dataset.
        # Corresponds to the JSON property `restrictedExportConfig`
        # @return [Google::Apis::AnalyticshubV1::RestrictedExportConfig]
        attr_accessor :restricted_export_config
      
        # Output only. Current state of the listing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_dataset = args[:bigquery_dataset] if args.key?(:bigquery_dataset)
          @categories = args[:categories] if args.key?(:categories)
          @data_provider = args[:data_provider] if args.key?(:data_provider)
          @description = args[:description] if args.key?(:description)
          @discovery_type = args[:discovery_type] if args.key?(:discovery_type)
          @display_name = args[:display_name] if args.key?(:display_name)
          @documentation = args[:documentation] if args.key?(:documentation)
          @icon = args[:icon] if args.key?(:icon)
          @name = args[:name] if args.key?(:name)
          @primary_contact = args[:primary_contact] if args.key?(:primary_contact)
          @publisher = args[:publisher] if args.key?(:publisher)
          @pubsub_topic = args[:pubsub_topic] if args.key?(:pubsub_topic)
          @request_access = args[:request_access] if args.key?(:request_access)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @restricted_export_config = args[:restricted_export_config] if args.key?(:restricted_export_config)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Sets the `data` field as the HTTP body for delivery.
      class NoWrapper
        include Google::Apis::Core::Hashable
      
        # Optional. When true, writes the Pub/Sub message metadata to `x-goog-pubsub-:`
        # headers of the HTTP request. Writes the Pub/Sub message attributes to `:`
        # headers of the HTTP request.
        # Corresponds to the JSON property `writeMetadata`
        # @return [Boolean]
        attr_accessor :write_metadata
        alias_method :write_metadata?, :write_metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @write_metadata = args[:write_metadata] if args.key?(:write_metadata)
        end
      end
      
      # Contains information needed for generating an [OpenID Connect token](https://
      # developers.google.com/identity/protocols/OpenIDConnect).
      class OidcToken
        include Google::Apis::Core::Hashable
      
        # Optional. Audience to be used when generating OIDC token. The audience claim
        # identifies the recipients that the JWT is intended for. The audience value is
        # a single case-sensitive string. Having multiple values (array) for the
        # audience field is not supported. More info about the OIDC JWT token audience
        # here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified,
        # the Push endpoint URL will be used.
        # Corresponds to the JSON property `audience`
        # @return [String]
        attr_accessor :audience
      
        # Optional. [Service account email](https://cloud.google.com/iam/docs/service-
        # accounts) used for generating the OIDC token. For more information on setting
        # up authentication, see [Push subscriptions](https://cloud.google.com/pubsub/
        # docs/push).
        # Corresponds to the JSON property `serviceAccountEmail`
        # @return [String]
        attr_accessor :service_account_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience = args[:audience] if args.key?(:audience)
          @service_account_email = args[:service_account_email] if args.key?(:service_account_email)
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
        # @return [Google::Apis::AnalyticshubV1::Status]
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
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
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
      
      # Represents the metadata of a long-running operation in Analytics Hub.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
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
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::AnalyticshubV1::AuditConfig>]
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
        # @return [Array<Google::Apis::AnalyticshubV1::Binding>]
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
      
      # Pub/Sub topic source.
      class PubSubTopicSource
        include Google::Apis::Core::Hashable
      
        # Optional. Region hint on where the data might be published. Data affinity
        # regions are modifiable. See go/regions for full listing of possible Cloud
        # regions.
        # Corresponds to the JSON property `dataAffinityRegions`
        # @return [Array<String>]
        attr_accessor :data_affinity_regions
      
        # Required. Resource name of the Pub/Sub topic source for this listing. e.g.
        # projects/myproject/topics/topicId
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_affinity_regions = args[:data_affinity_regions] if args.key?(:data_affinity_regions)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Contains details of the listing publisher.
      class Publisher
        include Google::Apis::Core::Hashable
      
        # Optional. Name of the listing publisher.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Email or URL of the listing publisher. Max Length: 1000 bytes.
        # Corresponds to the JSON property `primaryContact`
        # @return [String]
        attr_accessor :primary_contact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @primary_contact = args[:primary_contact] if args.key?(:primary_contact)
        end
      end
      
      # The payload to the push endpoint is in the form of the JSON representation of
      # a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.
      # pubsub.v1#pubsubmessage).
      class PubsubWrapper
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Configuration for a push delivery endpoint.
      class PushConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Endpoint configuration attributes that can be used to control
        # different aspects of the message delivery. The only currently supported
        # attribute is `x-goog-version`, which you can use to change the format of the
        # pushed message. This attribute indicates the version of the data expected by
        # the endpoint. This controls the shape of the pushed message (i.e., its fields
        # and metadata). If not present during the `CreateSubscription` call, it will
        # default to the version of the Pub/Sub API used to make such call. If not
        # present in a `ModifyPushConfig` call, its value will not be changed. `
        # GetSubscription` calls will always return a valid version, even if the
        # subscription was created without this attribute. The only supported values for
        # the `x-goog-version` attribute are: * `v1beta1`: uses the push format defined
        # in the v1beta1 Pub/Sub API. * `v1` or `v1beta2`: uses the push format defined
        # in the v1 Pub/Sub API. For example: `attributes ` "x-goog-version": "v1" ``
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Sets the `data` field as the HTTP body for delivery.
        # Corresponds to the JSON property `noWrapper`
        # @return [Google::Apis::AnalyticshubV1::NoWrapper]
        attr_accessor :no_wrapper
      
        # Contains information needed for generating an [OpenID Connect token](https://
        # developers.google.com/identity/protocols/OpenIDConnect).
        # Corresponds to the JSON property `oidcToken`
        # @return [Google::Apis::AnalyticshubV1::OidcToken]
        attr_accessor :oidc_token
      
        # The payload to the push endpoint is in the form of the JSON representation of
        # a PubsubMessage (https://cloud.google.com/pubsub/docs/reference/rpc/google.
        # pubsub.v1#pubsubmessage).
        # Corresponds to the JSON property `pubsubWrapper`
        # @return [Google::Apis::AnalyticshubV1::PubsubWrapper]
        attr_accessor :pubsub_wrapper
      
        # Optional. A URL locating the endpoint to which messages should be pushed. For
        # example, a Webhook endpoint might use `https://example.com/push`.
        # Corresponds to the JSON property `pushEndpoint`
        # @return [String]
        attr_accessor :push_endpoint
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @no_wrapper = args[:no_wrapper] if args.key?(:no_wrapper)
          @oidc_token = args[:oidc_token] if args.key?(:oidc_token)
          @pubsub_wrapper = args[:pubsub_wrapper] if args.key?(:pubsub_wrapper)
          @push_endpoint = args[:push_endpoint] if args.key?(:push_endpoint)
        end
      end
      
      # Message for refreshing a subscription.
      class RefreshSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for response when you refresh a subscription.
      class RefreshSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        # A subscription represents a subscribers' access to a particular set of
        # published data. It contains references to associated listings, data exchanges,
        # and linked datasets.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::AnalyticshubV1::Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Restricted export config, used to configure restricted export on linked
      # dataset.
      class RestrictedExportConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If true, enable restricted export.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Output only. If true, restrict direct table access(read api/tabledata.list) on
        # linked table.
        # Corresponds to the JSON property `restrictDirectTableAccess`
        # @return [Boolean]
        attr_accessor :restrict_direct_table_access
        alias_method :restrict_direct_table_access?, :restrict_direct_table_access
      
        # Optional. If true, restrict export of query result derived from restricted
        # linked dataset table.
        # Corresponds to the JSON property `restrictQueryResult`
        # @return [Boolean]
        attr_accessor :restrict_query_result
        alias_method :restrict_query_result?, :restrict_query_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @restrict_direct_table_access = args[:restrict_direct_table_access] if args.key?(:restrict_direct_table_access)
          @restrict_query_result = args[:restrict_query_result] if args.key?(:restrict_query_result)
        end
      end
      
      # Restricted export policy used to configure restricted export on linked dataset.
      class RestrictedExportPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. If true, enable restricted export.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. If true, restrict direct table access (read api/tabledata.list) on
        # linked table.
        # Corresponds to the JSON property `restrictDirectTableAccess`
        # @return [Boolean]
        attr_accessor :restrict_direct_table_access
        alias_method :restrict_direct_table_access?, :restrict_direct_table_access
      
        # Optional. If true, restrict export of query result derived from restricted
        # linked dataset table.
        # Corresponds to the JSON property `restrictQueryResult`
        # @return [Boolean]
        attr_accessor :restrict_query_result
        alias_method :restrict_query_result?, :restrict_query_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @restrict_direct_table_access = args[:restrict_direct_table_access] if args.key?(:restrict_direct_table_access)
          @restrict_query_result = args[:restrict_query_result] if args.key?(:restrict_query_result)
        end
      end
      
      # A policy that specifies how Pub/Sub retries message delivery. Retry delay will
      # be exponential based on provided minimum and maximum backoffs. https://en.
      # wikipedia.org/wiki/Exponential_backoff. RetryPolicy will be triggered on NACKs
      # or acknowledgement deadline exceeded events for a given message. Retry Policy
      # is implemented on a best effort basis. At times, the delay between consecutive
      # deliveries may not match the configuration. That is, delay can be more or less
      # than configured backoff.
      class RetryPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum delay between consecutive deliveries of a given message.
        # Value should be between 0 and 600 seconds. Defaults to 600 seconds.
        # Corresponds to the JSON property `maximumBackoff`
        # @return [String]
        attr_accessor :maximum_backoff
      
        # Optional. The minimum delay between consecutive deliveries of a given message.
        # Value should be between 0 and 600 seconds. Defaults to 10 seconds.
        # Corresponds to the JSON property `minimumBackoff`
        # @return [String]
        attr_accessor :minimum_backoff
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maximum_backoff = args[:maximum_backoff] if args.key?(:maximum_backoff)
          @minimum_backoff = args[:minimum_backoff] if args.key?(:minimum_backoff)
        end
      end
      
      # Message for revoking a subscription.
      class RevokeSubscriptionRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message for response when you revoke a subscription.
      class RevokeSubscriptionResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Resource in this dataset that is selectively shared.
      class SelectedResource
        include Google::Apis::Core::Hashable
      
        # Optional. Format: For table: `projects/`projectId`/datasets/`datasetId`/tables/
        # `tableId`` Example:"projects/test_project/datasets/test_dataset/tables/
        # test_table"
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table = args[:table] if args.key?(:table)
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
        # @return [Google::Apis::AnalyticshubV1::Policy]
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
      
      # Sharing environment is a behavior model for sharing data within a data
      # exchange. This option is configurable for a data exchange.
      class SharingEnvironmentConfig
        include Google::Apis::Core::Hashable
      
        # Data Clean Room (DCR), used for privacy-safe and secured data sharing.
        # Corresponds to the JSON property `dcrExchangeConfig`
        # @return [Google::Apis::AnalyticshubV1::DcrExchangeConfig]
        attr_accessor :dcr_exchange_config
      
        # Default Analytics Hub data exchange, used for secured data sharing.
        # Corresponds to the JSON property `defaultExchangeConfig`
        # @return [Google::Apis::AnalyticshubV1::DefaultExchangeConfig]
        attr_accessor :default_exchange_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dcr_exchange_config = args[:dcr_exchange_config] if args.key?(:dcr_exchange_config)
          @default_exchange_config = args[:default_exchange_config] if args.key?(:default_exchange_config)
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
      
      # Message for subscribing to a Data Exchange.
      class SubscribeDataExchangeRequest
        include Google::Apis::Core::Hashable
      
        # Required. The parent resource path of the Subscription. e.g. `projects/
        # subscriberproject/locations/US`
        # Corresponds to the JSON property `destination`
        # @return [String]
        attr_accessor :destination
      
        # Email of the subscriber.
        # Corresponds to the JSON property `subscriberContact`
        # @return [String]
        attr_accessor :subscriber_contact
      
        # Required. Name of the subscription to create. e.g. `subscription1`
        # Corresponds to the JSON property `subscription`
        # @return [String]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination = args[:destination] if args.key?(:destination)
          @subscriber_contact = args[:subscriber_contact] if args.key?(:subscriber_contact)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Message for response when you subscribe to a Data Exchange.
      class SubscribeDataExchangeResponse
        include Google::Apis::Core::Hashable
      
        # A subscription represents a subscribers' access to a particular set of
        # published data. It contains references to associated listings, data exchanges,
        # and linked datasets.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::AnalyticshubV1::Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # Message for subscribing to a listing.
      class SubscribeListingRequest
        include Google::Apis::Core::Hashable
      
        # Defines the destination bigquery dataset.
        # Corresponds to the JSON property `destinationDataset`
        # @return [Google::Apis::AnalyticshubV1::DestinationDataset]
        attr_accessor :destination_dataset
      
        # Defines the destination Pub/Sub subscription.
        # Corresponds to the JSON property `destinationPubsubSubscription`
        # @return [Google::Apis::AnalyticshubV1::DestinationPubSubSubscription]
        attr_accessor :destination_pubsub_subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_dataset = args[:destination_dataset] if args.key?(:destination_dataset)
          @destination_pubsub_subscription = args[:destination_pubsub_subscription] if args.key?(:destination_pubsub_subscription)
        end
      end
      
      # Message for response when you subscribe to a listing.
      class SubscribeListingResponse
        include Google::Apis::Core::Hashable
      
        # A subscription represents a subscribers' access to a particular set of
        # published data. It contains references to associated listings, data exchanges,
        # and linked datasets.
        # Corresponds to the JSON property `subscription`
        # @return [Google::Apis::AnalyticshubV1::Subscription]
        attr_accessor :subscription
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @subscription = args[:subscription] if args.key?(:subscription)
        end
      end
      
      # A subscription represents a subscribers' access to a particular set of
      # published data. It contains references to associated listings, data exchanges,
      # and linked datasets.
      class Subscription
        include Google::Apis::Core::Hashable
      
        # Output only. Timestamp when the subscription was created.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Output only. Resource name of the source Data Exchange. e.g. projects/123/
        # locations/US/dataExchanges/456
        # Corresponds to the JSON property `dataExchange`
        # @return [String]
        attr_accessor :data_exchange
      
        # Output only. Timestamp when the subscription was last modified.
        # Corresponds to the JSON property `lastModifyTime`
        # @return [String]
        attr_accessor :last_modify_time
      
        # Output only. Map of listing resource names to associated linked resource, e.g.
        # projects/123/locations/US/dataExchanges/456/listings/789 -> projects/123/
        # datasets/my_dataset For listing-level subscriptions, this is a map of size 1.
        # Only contains values if state == STATE_ACTIVE.
        # Corresponds to the JSON property `linkedDatasetMap`
        # @return [Hash<String,Google::Apis::AnalyticshubV1::LinkedResource>]
        attr_accessor :linked_dataset_map
      
        # Output only. Linked resources created in the subscription. Only contains
        # values if state = STATE_ACTIVE.
        # Corresponds to the JSON property `linkedResources`
        # @return [Array<Google::Apis::AnalyticshubV1::LinkedResource>]
        attr_accessor :linked_resources
      
        # Output only. Resource name of the source Listing. e.g. projects/123/locations/
        # US/dataExchanges/456/listings/789
        # Corresponds to the JSON property `listing`
        # @return [String]
        attr_accessor :listing
      
        # Output only. The resource name of the subscription. e.g. `projects/myproject/
        # locations/US/subscriptions/123`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Display name of the project of this subscription.
        # Corresponds to the JSON property `organizationDisplayName`
        # @return [String]
        attr_accessor :organization_display_name
      
        # Output only. Organization of the project this subscription belongs to.
        # Corresponds to the JSON property `organizationId`
        # @return [String]
        attr_accessor :organization_id
      
        # Output only. Listing shared asset type.
        # Corresponds to the JSON property `resourceType`
        # @return [String]
        attr_accessor :resource_type
      
        # Output only. Current state of the subscription.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Email of the subscriber.
        # Corresponds to the JSON property `subscriberContact`
        # @return [String]
        attr_accessor :subscriber_contact
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @data_exchange = args[:data_exchange] if args.key?(:data_exchange)
          @last_modify_time = args[:last_modify_time] if args.key?(:last_modify_time)
          @linked_dataset_map = args[:linked_dataset_map] if args.key?(:linked_dataset_map)
          @linked_resources = args[:linked_resources] if args.key?(:linked_resources)
          @listing = args[:listing] if args.key?(:listing)
          @name = args[:name] if args.key?(:name)
          @organization_display_name = args[:organization_display_name] if args.key?(:organization_display_name)
          @organization_id = args[:organization_id] if args.key?(:organization_id)
          @resource_type = args[:resource_type] if args.key?(:resource_type)
          @state = args[:state] if args.key?(:state)
          @subscriber_contact = args[:subscriber_contact] if args.key?(:subscriber_contact)
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
      
      # Configuration for writing message data in text format. Message payloads will
      # be written to files as raw text, separated by a newline.
      class TextConfig
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
