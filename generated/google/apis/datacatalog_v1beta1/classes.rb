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
    module DatacatalogV1beta1
      
      # Associates `members` with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `bindingId`
        # @return [String]
        attr_accessor :binding_id
      
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
        # @return [Google::Apis::DatacatalogV1beta1::Expr]
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
          @binding_id = args[:binding_id] if args.key?(:binding_id)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
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
        # @return [Google::Apis::DatacatalogV1beta1::GetPolicyOptions]
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
      
      # Spec for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`.
      # Context: https://cloud.google.com/bigquery/docs/partitioned-tables#
      # partitioning_versus_sharding
      class GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The Data Catalog resource name of the dataset entry the current
        # table belongs to, for example, `projects/`project_id`/locations/`location`/
        # entrygroups/`entry_group_id`/entries/`entry_id``.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Output only. The table name prefix of the shards. The name of any given shard
        # is `[table_prefix]YYYYMMDD`, for example, for shard `MyTable20180101`, the `
        # table_prefix` is `MyTable`.
        # Corresponds to the JSON property `tablePrefix`
        # @return [String]
        attr_accessor :table_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @table_prefix = args[:table_prefix] if args.key?(:table_prefix)
        end
      end
      
      # Describes a BigQuery table.
      class GoogleCloudDatacatalogV1beta1BigQueryTableSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The table source type.
        # Corresponds to the JSON property `tableSourceType`
        # @return [String]
        attr_accessor :table_source_type
      
        # Normal BigQuery table spec.
        # Corresponds to the JSON property `tableSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TableSpec]
        attr_accessor :table_spec
      
        # Table view specification.
        # Corresponds to the JSON property `viewSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ViewSpec]
        attr_accessor :view_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_source_type = args[:table_source_type] if args.key?(:table_source_type)
          @table_spec = args[:table_spec] if args.key?(:table_spec)
          @view_spec = args[:view_spec] if args.key?(:view_spec)
        end
      end
      
      # Representation of a column within a schema. Columns could be nested inside
      # other columns.
      class GoogleCloudDatacatalogV1beta1ColumnSchema
        include Google::Apis::Core::Hashable
      
        # Required. Name of the column.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. Description of the column. Default value is an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A column's mode indicates whether the values in this column are
        # required, nullable, etc. Only `NULLABLE`, `REQUIRED` and `REPEATED` are
        # supported. Default mode is `NULLABLE`.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. Schema of sub-columns. A column can have zero or more sub-columns.
        # Corresponds to the JSON property `subcolumns`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema>]
        attr_accessor :subcolumns
      
        # Required. Type of the column.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @description = args[:description] if args.key?(:description)
          @mode = args[:mode] if args.key?(:mode)
          @subcolumns = args[:subcolumns] if args.key?(:subcolumns)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Entry Metadata. A Data Catalog Entry resource represents another resource in
      # Google Cloud Platform (such as a BigQuery dataset or a Pub/Sub topic), or
      # outside of Google Cloud Platform. Clients can use the `linked_resource` field
      # in the Entry resource to refer to the original resource ID of the source
      # system. An Entry resource contains resource details, such as its schema. An
      # Entry can also be used to attach flexible metadata, such as a Tag.
      class GoogleCloudDatacatalogV1beta1Entry
        include Google::Apis::Core::Hashable
      
        # Spec for a group of BigQuery tables with name pattern `[prefix]YYYYMMDD`.
        # Context: https://cloud.google.com/bigquery/docs/partitioned-tables#
        # partitioning_versus_sharding
        # Corresponds to the JSON property `bigqueryDateShardedSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec]
        attr_accessor :bigquery_date_sharded_spec
      
        # Describes a BigQuery table.
        # Corresponds to the JSON property `bigqueryTableSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryTableSpec]
        attr_accessor :bigquery_table_spec
      
        # Entry description, which can consist of several sentences or paragraphs that
        # describe entry contents. Default value is an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display information such as title and description. A short name to identify
        # the entry, for example, "Analytics Data - Jan 2011". Default value is an empty
        # string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Describes a Cloud Storage fileset entry.
        # Corresponds to the JSON property `gcsFilesetSpec`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFilesetSpec]
        attr_accessor :gcs_fileset_spec
      
        # Output only. This field indicates the entry's source system that Data Catalog
        # integrates with, such as BigQuery or Pub/Sub.
        # Corresponds to the JSON property `integratedSystem`
        # @return [String]
        attr_accessor :integrated_system
      
        # The resource this metadata entry refers to. For Google Cloud Platform
        # resources, `linked_resource` is the [full name of the resource](https://cloud.
        # google.com/apis/design/resource_names#full_resource_name). For example, the `
        # linked_resource` for a table resource from BigQuery is: * //bigquery.
        # googleapis.com/projects/projectId/datasets/datasetId/tables/tableId Output
        # only when Entry is of type in the EntryType enum. For entries with
        # user_specified_type, this field is optional and defaults to an empty string.
        # Corresponds to the JSON property `linkedResource`
        # @return [String]
        attr_accessor :linked_resource
      
        # The Data Catalog resource name of the entry in URL format. Example: * projects/
        # `project_id`/locations/`location`/entryGroups/`entry_group_id`/entries/`
        # entry_id` Note that this Entry and its child resources may not actually be
        # stored in the location in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Schema]
        attr_accessor :schema
      
        # Timestamps about this resource according to a particular system.
        # Corresponds to the JSON property `sourceSystemTimestamps`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps]
        attr_accessor :source_system_timestamps
      
        # The type of the entry. Only used for Entries with types in the EntryType enum.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # This field indicates the entry's source system that Data Catalog does not
        # integrate with. `user_specified_system` strings must begin with a letter or
        # underscore and can only contain letters, numbers, and underscores; are case
        # insensitive; must be at least 1 character and at most 64 characters long.
        # Corresponds to the JSON property `userSpecifiedSystem`
        # @return [String]
        attr_accessor :user_specified_system
      
        # Entry type if it does not fit any of the input-allowed values listed in `
        # EntryType` enum above. When creating an entry, users should check the enum
        # values first, if nothing matches the entry to be created, then provide a
        # custom value, for example "my_special_type". `user_specified_type` strings
        # must begin with a letter or underscore and can only contain letters, numbers,
        # and underscores; are case insensitive; must be at least 1 character and at
        # most 64 characters long. Currently, only FILESET enum value is allowed. All
        # other entries created through Data Catalog must use `user_specified_type`.
        # Corresponds to the JSON property `userSpecifiedType`
        # @return [String]
        attr_accessor :user_specified_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_date_sharded_spec = args[:bigquery_date_sharded_spec] if args.key?(:bigquery_date_sharded_spec)
          @bigquery_table_spec = args[:bigquery_table_spec] if args.key?(:bigquery_table_spec)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gcs_fileset_spec = args[:gcs_fileset_spec] if args.key?(:gcs_fileset_spec)
          @integrated_system = args[:integrated_system] if args.key?(:integrated_system)
          @linked_resource = args[:linked_resource] if args.key?(:linked_resource)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
          @source_system_timestamps = args[:source_system_timestamps] if args.key?(:source_system_timestamps)
          @type = args[:type] if args.key?(:type)
          @user_specified_system = args[:user_specified_system] if args.key?(:user_specified_system)
          @user_specified_type = args[:user_specified_type] if args.key?(:user_specified_type)
        end
      end
      
      # EntryGroup Metadata. An EntryGroup resource represents a logical grouping of
      # zero or more Data Catalog Entry resources.
      class GoogleCloudDatacatalogV1beta1EntryGroup
        include Google::Apis::Core::Hashable
      
        # Timestamps about this resource according to a particular system.
        # Corresponds to the JSON property `dataCatalogTimestamps`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps]
        attr_accessor :data_catalog_timestamps
      
        # Entry group description, which can consist of several sentences or paragraphs
        # that describe entry group contents. Default value is an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A short name to identify the entry group, for example, "analytics data - jan
        # 2011". Default value is an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the entry group in URL format. Example: * projects/`
        # project_id`/locations/`location`/entryGroups/`entry_group_id` Note that this
        # EntryGroup and its child resources may not actually be stored in the location
        # in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_catalog_timestamps = args[:data_catalog_timestamps] if args.key?(:data_catalog_timestamps)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response message for ExportTaxonomies.
      class GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse
        include Google::Apis::Core::Hashable
      
        # List of taxonomies and policy tags in a tree structure.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedTaxonomy>]
        attr_accessor :taxonomies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomies = args[:taxonomies] if args.key?(:taxonomies)
        end
      end
      
      # 
      class GoogleCloudDatacatalogV1beta1FieldType
        include Google::Apis::Core::Hashable
      
        # Represents an enum type.
        # Corresponds to the JSON property `enumType`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumType]
        attr_accessor :enum_type
      
        # Represents primitive types - string, bool etc.
        # Corresponds to the JSON property `primitiveType`
        # @return [String]
        attr_accessor :primitive_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enum_type = args[:enum_type] if args.key?(:enum_type)
          @primitive_type = args[:primitive_type] if args.key?(:primitive_type)
        end
      end
      
      # 
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumType
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue>]
        attr_accessor :allowed_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_values = args[:allowed_values] if args.key?(:allowed_values)
        end
      end
      
      # 
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the enum value. Must not be an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # Specifications of a single file in Cloud Storage.
      class GoogleCloudDatacatalogV1beta1GcsFileSpec
        include Google::Apis::Core::Hashable
      
        # Required. The full file path. Example: `gs://bucket_name/a/b.txt`.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        # Timestamps about this resource according to a particular system.
        # Corresponds to the JSON property `gcsTimestamps`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps]
        attr_accessor :gcs_timestamps
      
        # Output only. The size of the file, in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_path = args[:file_path] if args.key?(:file_path)
          @gcs_timestamps = args[:gcs_timestamps] if args.key?(:gcs_timestamps)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
        end
      end
      
      # Describes a Cloud Storage fileset entry.
      class GoogleCloudDatacatalogV1beta1GcsFilesetSpec
        include Google::Apis::Core::Hashable
      
        # Required. Patterns to identify a set of files in Google Cloud Storage. See [
        # Cloud Storage documentation](https://cloud.google.com/storage/docs/gsutil/
        # addlhelp/WildcardNames) for more information. Note that bucket wildcards are
        # currently not supported. Examples of valid file_patterns: * `gs://bucket_name/
        # dir/*`: matches all files within `bucket_name/dir` directory. * `gs://
        # bucket_name/dir/**`: matches all files in `bucket_name/dir` spanning all
        # subdirectories. * `gs://bucket_name/file*`: matches files prefixed by `file`
        # in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two
        # characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`
        # : matches files that contain a single vowel character followed by `.txt` in `
        # bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `
        # b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`:
        # matches all files in `bucket_name` that match `a/*/b` pattern, such as `a/c/b`,
        # `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
        # You can combine wildcards to provide more powerful matches, for example: * `gs:
        # //bucket_name/[a-m]??.j*g`
        # Corresponds to the JSON property `filePatterns`
        # @return [Array<String>]
        attr_accessor :file_patterns
      
        # Output only. Sample files contained in this fileset, not all files contained
        # in this fileset are represented here.
        # Corresponds to the JSON property `sampleGcsFileSpecs`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFileSpec>]
        attr_accessor :sample_gcs_file_specs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_patterns = args[:file_patterns] if args.key?(:file_patterns)
          @sample_gcs_file_specs = args[:sample_gcs_file_specs] if args.key?(:sample_gcs_file_specs)
        end
      end
      
      # Request message for ImportTaxonomies.
      class GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest
        include Google::Apis::Core::Hashable
      
        # Inline source used for taxonomies import.
        # Corresponds to the JSON property `inlineSource`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1InlineSource]
        attr_accessor :inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inline_source = args[:inline_source] if args.key?(:inline_source)
        end
      end
      
      # Response message for ImportTaxonomies.
      class GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse
        include Google::Apis::Core::Hashable
      
        # Taxonomies that were imported.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy>]
        attr_accessor :taxonomies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomies = args[:taxonomies] if args.key?(:taxonomies)
        end
      end
      
      # Inline source used for taxonomies import.
      class GoogleCloudDatacatalogV1beta1InlineSource
        include Google::Apis::Core::Hashable
      
        # Required. Taxonomies to be imported.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedTaxonomy>]
        attr_accessor :taxonomies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomies = args[:taxonomies] if args.key?(:taxonomies)
        end
      end
      
      # Response message for ListEntries.
      class GoogleCloudDatacatalogV1beta1ListEntriesResponse
        include Google::Apis::Core::Hashable
      
        # Entry details.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Entry>]
        attr_accessor :entries
      
        # Token to retrieve the next page of results. It is set to empty if no items
        # remain in results.
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
      
      # Response message for ListEntryGroups.
      class GoogleCloudDatacatalogV1beta1ListEntryGroupsResponse
        include Google::Apis::Core::Hashable
      
        # EntryGroup details.
        # Corresponds to the JSON property `entryGroups`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1EntryGroup>]
        attr_accessor :entry_groups
      
        # Token to retrieve the next page of results. It is set to empty if no items
        # remain in results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entry_groups = args[:entry_groups] if args.key?(:entry_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListPolicyTags.
      class GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse
        include Google::Apis::Core::Hashable
      
        # Token used to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The policy tags that are in the requested taxonomy.
        # Corresponds to the JSON property `policyTags`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag>]
        attr_accessor :policy_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policy_tags = args[:policy_tags] if args.key?(:policy_tags)
        end
      end
      
      # Response message for ListTags.
      class GoogleCloudDatacatalogV1beta1ListTagsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results. It is set to empty if no items
        # remain in results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tag details.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag>]
        attr_accessor :tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tags = args[:tags] if args.key?(:tags)
        end
      end
      
      # Response message for ListTaxonomies.
      class GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse
        include Google::Apis::Core::Hashable
      
        # Token used to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Taxonomies that the project contains.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy>]
        attr_accessor :taxonomies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @taxonomies = args[:taxonomies] if args.key?(:taxonomies)
        end
      end
      
      # Denotes one policy tag in a taxonomy (e.g. ssn). Policy Tags can be defined in
      # a hierarchy. For example, consider the following hierarchy: Geolocation -> (
      # LatLong, City, ZipCode). PolicyTag "Geolocation" contains three child policy
      # tags: "LatLong", "City", and "ZipCode".
      class GoogleCloudDatacatalogV1beta1PolicyTag
        include Google::Apis::Core::Hashable
      
        # Output only. Resource names of child policy tags of this policy tag.
        # Corresponds to the JSON property `childPolicyTags`
        # @return [Array<String>]
        attr_accessor :child_policy_tags
      
        # Description of this policy tag. It must: contain only unicode characters, tabs,
        # newlines, carriage returns and page breaks; and be at most 2000 bytes long
        # when encoded in UTF-8. If not set, defaults to an empty description. If not
        # set, defaults to an empty description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. User defined name of this policy tag. It must: be unique within the
        # parent taxonomy; contain only unicode letters, numbers, underscores, dashes
        # and spaces; not start or end with spaces; and be at most 200 bytes long when
        # encoded in UTF-8.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this policy tag, whose format is: "projects/`
        # project_number`/locations/`location_id`/taxonomies/`taxonomy_id`/policyTags/`
        # id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource name of this policy tag's parent policy tag (e.g. for the "LatLong"
        # policy tag in the example above, this field contains the resource name of the "
        # Geolocation" policy tag). If empty, it means this policy tag is a top level
        # policy tag (e.g. this field is empty for the "Geolocation" policy tag in the
        # example above). If not set, defaults to an empty string.
        # Corresponds to the JSON property `parentPolicyTag`
        # @return [String]
        attr_accessor :parent_policy_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_policy_tags = args[:child_policy_tags] if args.key?(:child_policy_tags)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @parent_policy_tag = args[:parent_policy_tag] if args.key?(:parent_policy_tag)
        end
      end
      
      # Request message for RenameTagTemplateFieldEnumValue.
      class GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldEnumValueRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new display name of the enum value. For example, `
        # my_new_enum_value`.
        # Corresponds to the JSON property `newEnumValueDisplayName`
        # @return [String]
        attr_accessor :new_enum_value_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_enum_value_display_name = args[:new_enum_value_display_name] if args.key?(:new_enum_value_display_name)
        end
      end
      
      # Request message for RenameTagTemplateField.
      class GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new ID of this tag template field. For example, `my_new_field`.
        # Corresponds to the JSON property `newTagTemplateFieldId`
        # @return [String]
        attr_accessor :new_tag_template_field_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @new_tag_template_field_id = args[:new_tag_template_field_id] if args.key?(:new_tag_template_field_id)
        end
      end
      
      # Represents a schema (e.g. BigQuery, GoogleSQL, Avro schema).
      class GoogleCloudDatacatalogV1beta1Schema
        include Google::Apis::Core::Hashable
      
        # Required. Schema of columns. A maximum of 10,000 columns and sub-columns can
        # be specified.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema>]
        attr_accessor :columns
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] if args.key?(:columns)
        end
      end
      
      # Request message for SearchCatalog.
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequest
        include Google::Apis::Core::Hashable
      
        # Specifies the ordering of results, currently supported case-sensitive choices
        # are: * `relevance`, only supports descending * `last_modified_timestamp [asc|
        # desc]`, defaults to descending if not specified If not specified, defaults to `
        # relevance` descending.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Number of results in the search page. If <=0 then defaults to 10. Max limit
        # for page_size is 1000. Throws an invalid argument for page_size > 1000.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. Pagination token returned in an earlier SearchCatalogResponse.
        # next_page_token, which indicates that this is a continuation of a prior
        # SearchCatalogRequest call, and that the system should return the next page of
        # data. If empty, the first page is returned.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. The query string in search query syntax. An empty query string will
        # result in all data assets (in the specified scope) that the user has access to.
        # Query strings can be simple as "x" or more qualified as: * name:x * column:x *
        # description:y Note: Query tokens need to have a minimum of 3 characters for
        # substring matching to work correctly. See [Data Catalog Search Syntax](https://
        # cloud.google.com/data-catalog/docs/how-to/search-reference) for more
        # information.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The criteria that select the subspace used for query matching.
        # Corresponds to the JSON property `scope`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @query = args[:query] if args.key?(:query)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # The criteria that select the subspace used for query matching.
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope
        include Google::Apis::Core::Hashable
      
        # If `true`, include Google Cloud Platform (GCP) public datasets in the search
        # results. Info on GCP public datasets is available at https://cloud.google.com/
        # public-datasets/. By default, GCP public datasets are excluded.
        # Corresponds to the JSON property `includeGcpPublicDatasets`
        # @return [Boolean]
        attr_accessor :include_gcp_public_datasets
        alias_method :include_gcp_public_datasets?, :include_gcp_public_datasets
      
        # The list of organization IDs to search within. To find your organization ID,
        # follow instructions in https://cloud.google.com/resource-manager/docs/creating-
        # managing-organization.
        # Corresponds to the JSON property `includeOrgIds`
        # @return [Array<String>]
        attr_accessor :include_org_ids
      
        # The list of project IDs to search within. To learn more about the distinction
        # between project names/IDs/numbers, go to https://cloud.google.com/docs/
        # overview/#projects.
        # Corresponds to the JSON property `includeProjectIds`
        # @return [Array<String>]
        attr_accessor :include_project_ids
      
        # Optional. The list of locations to search within. 1. If empty, search will be
        # performed in all locations; 2. If any of the locations are NOT in the valid
        # locations list, error will be returned; 3. Otherwise, search only the given
        # locations for matching results. Typical usage is to leave this field empty.
        # When a location is unreachable as returned in the `SearchCatalogResponse.
        # unreachable` field, users can repeat the search request with this parameter
        # set to get additional information on the error. Valid locations: * asia-east1 *
        # asia-east2 * asia-northeast1 * asia-northeast2 * asia-northeast3 * asia-
        # south1 * asia-southeast1 * australia-southeast1 * eu * europe-north1 * europe-
        # west1 * europe-west2 * europe-west3 * europe-west4 * europe-west6 * global *
        # northamerica-northeast1 * southamerica-east1 * us * us-central1 * us-east1 *
        # us-east4 * us-west1 * us-west2
        # Corresponds to the JSON property `restrictedLocations`
        # @return [Array<String>]
        attr_accessor :restricted_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_gcp_public_datasets = args[:include_gcp_public_datasets] if args.key?(:include_gcp_public_datasets)
          @include_org_ids = args[:include_org_ids] if args.key?(:include_org_ids)
          @include_project_ids = args[:include_project_ids] if args.key?(:include_project_ids)
          @restricted_locations = args[:restricted_locations] if args.key?(:restricted_locations)
        end
      end
      
      # Response message for SearchCatalog.
      class GoogleCloudDatacatalogV1beta1SearchCatalogResponse
        include Google::Apis::Core::Hashable
      
        # The token that can be used to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Search results.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResult>]
        attr_accessor :results
      
        # Unreachable locations. Search result does not include data from those
        # locations. Users can get additional information on the error by repeating the
        # search request with a more restrictive parameter -- setting the value for `
        # SearchDataCatalogRequest.scope.restricted_locations`.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @results = args[:results] if args.key?(:results)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A result that appears in the response of a search request. Each result
      # captures details of one entry that matches the search.
      class GoogleCloudDatacatalogV1beta1SearchCatalogResult
        include Google::Apis::Core::Hashable
      
        # The full name of the cloud resource the entry belongs to. See: https://cloud.
        # google.com/apis/design/resource_names#full_resource_name. Example: * `//
        # bigquery.googleapis.com/projects/projectId/datasets/datasetId/tables/tableId`
        # Corresponds to the JSON property `linkedResource`
        # @return [String]
        attr_accessor :linked_resource
      
        # The relative resource name of the resource in URL format. Examples: * `
        # projects/`project_id`/locations/`location_id`/entryGroups/`entry_group_id`/
        # entries/`entry_id`` * `projects/`project_id`/tagTemplates/`tag_template_id``
        # Corresponds to the JSON property `relativeResourceName`
        # @return [String]
        attr_accessor :relative_resource_name
      
        # Sub-type of the search result. This is a dot-delimited description of the
        # resource's full type, and is the same as the value callers would provide in
        # the "type" search facet. Examples: `entry.table`, `entry.dataStream`, `
        # tagTemplate`.
        # Corresponds to the JSON property `searchResultSubtype`
        # @return [String]
        attr_accessor :search_result_subtype
      
        # Type of the search result. This field can be used to determine which Get
        # method to call to fetch the full resource.
        # Corresponds to the JSON property `searchResultType`
        # @return [String]
        attr_accessor :search_result_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @linked_resource = args[:linked_resource] if args.key?(:linked_resource)
          @relative_resource_name = args[:relative_resource_name] if args.key?(:relative_resource_name)
          @search_result_subtype = args[:search_result_subtype] if args.key?(:search_result_subtype)
          @search_result_type = args[:search_result_type] if args.key?(:search_result_type)
        end
      end
      
      # Message representing one policy tag when exported as a nested proto.
      class GoogleCloudDatacatalogV1beta1SerializedPolicyTag
        include Google::Apis::Core::Hashable
      
        # Children of the policy tag if any.
        # Corresponds to the JSON property `childPolicyTags`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedPolicyTag>]
        attr_accessor :child_policy_tags
      
        # Description of the serialized policy tag. The length of the description is
        # limited to 2000 bytes when encoded in UTF-8. If not set, defaults to an empty
        # description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the policy tag. Max 200 bytes when encoded in UTF-8.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the policy tag. This field will be ignored when calling
        # ImportTaxonomies.
        # Corresponds to the JSON property `policyTag`
        # @return [String]
        attr_accessor :policy_tag
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @child_policy_tags = args[:child_policy_tags] if args.key?(:child_policy_tags)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @policy_tag = args[:policy_tag] if args.key?(:policy_tag)
        end
      end
      
      # Message capturing a taxonomy and its policy tag hierarchy as a nested proto.
      # Used for taxonomy import/export and mutation.
      class GoogleCloudDatacatalogV1beta1SerializedTaxonomy
        include Google::Apis::Core::Hashable
      
        # A list of policy types that are activated for a taxonomy.
        # Corresponds to the JSON property `activatedPolicyTypes`
        # @return [Array<String>]
        attr_accessor :activated_policy_types
      
        # Description of the serialized taxonomy. The length of the description is
        # limited to 2000 bytes when encoded in UTF-8. If not set, defaults to an empty
        # description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the taxonomy. Max 200 bytes when encoded in UTF-8.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Top level policy tags associated with the taxonomy if any.
        # Corresponds to the JSON property `policyTags`
        # @return [Array<Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedPolicyTag>]
        attr_accessor :policy_tags
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activated_policy_types = args[:activated_policy_types] if args.key?(:activated_policy_types)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @policy_tags = args[:policy_tags] if args.key?(:policy_tags)
        end
      end
      
      # Timestamps about this resource according to a particular system.
      class GoogleCloudDatacatalogV1beta1SystemTimestamps
        include Google::Apis::Core::Hashable
      
        # The creation time of the resource within the given system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The expiration time of the resource within the given system.
        # Currently only apllicable to BigQuery resources.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # The last-modified time of the resource within the given system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Normal BigQuery table spec.
      class GoogleCloudDatacatalogV1beta1TableSpec
        include Google::Apis::Core::Hashable
      
        # Output only. If the table is a dated shard, i.e., with name pattern `[prefix]
        # YYYYMMDD`, `grouped_entry` is the Data Catalog resource name of the date
        # sharded grouped entry, for example, `projects/`project_id`/locations/`location`
        # /entrygroups/`entry_group_id`/entries/`entry_id``. Otherwise, `grouped_entry`
        # is empty.
        # Corresponds to the JSON property `groupedEntry`
        # @return [String]
        attr_accessor :grouped_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grouped_entry = args[:grouped_entry] if args.key?(:grouped_entry)
        end
      end
      
      # Tags are used to attach custom metadata to Data Catalog resources. Tags
      # conform to the specifications within their tag template. See [Data Catalog IAM]
      # (https://cloud.google.com/data-catalog/docs/concepts/iam) for information on
      # the permissions needed to create or view tags.
      class GoogleCloudDatacatalogV1beta1Tag
        include Google::Apis::Core::Hashable
      
        # Resources like Entry can have schemas associated with them. This scope allows
        # users to attach tags to an individual column based on that schema. For
        # attaching a tag to a nested column, use `.` to separate the column names.
        # Example: * `outer_column.inner_column`
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Required. This maps the ID of a tag field to the value of and additional
        # information about that field. Valid field IDs are defined by the tag's
        # template. A tag must have at least 1 field and at most 500 fields.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagField>]
        attr_accessor :fields
      
        # The resource name of the tag in URL format. Example: * projects/`project_id`/
        # locations/`location`/entrygroups/`entry_group_id`/entries/`entry_id`/tags/`
        # tag_id` where `tag_id` is a system-generated identifier. Note that this Tag
        # may not actually be stored in the location in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The resource name of the tag template that this tag uses. Example: *
        # projects/`project_id`/locations/`location`/tagTemplates/`tag_template_id` This
        # field cannot be modified after creation.
        # Corresponds to the JSON property `template`
        # @return [String]
        attr_accessor :template
      
        # Output only. The display name of the tag template.
        # Corresponds to the JSON property `templateDisplayName`
        # @return [String]
        attr_accessor :template_display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
          @template = args[:template] if args.key?(:template)
          @template_display_name = args[:template_display_name] if args.key?(:template_display_name)
        end
      end
      
      # Contains the value and supporting information for a field within a Tag.
      class GoogleCloudDatacatalogV1beta1TagField
        include Google::Apis::Core::Hashable
      
        # Holds the value for a tag field with boolean type.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Output only. The display name of this field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Holds the value for a tag field with double type.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Holds an enum value.
        # Corresponds to the JSON property `enumValue`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagFieldEnumValue]
        attr_accessor :enum_value
      
        # Output only. The order of this field with respect to other fields in this tag.
        # It can be set in Tag. For example, a higher value can indicate a more
        # important field. The value can be negative. Multiple fields can have the same
        # order, and field orders within a tag do not have to be sequential.
        # Corresponds to the JSON property `order`
        # @return [Fixnum]
        attr_accessor :order
      
        # Holds the value for a tag field with string type.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # Holds the value for a tag field with timestamp type.
        # Corresponds to the JSON property `timestampValue`
        # @return [String]
        attr_accessor :timestamp_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @display_name = args[:display_name] if args.key?(:display_name)
          @double_value = args[:double_value] if args.key?(:double_value)
          @enum_value = args[:enum_value] if args.key?(:enum_value)
          @order = args[:order] if args.key?(:order)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # Holds an enum value.
      class GoogleCloudDatacatalogV1beta1TagFieldEnumValue
        include Google::Apis::Core::Hashable
      
        # The display name of the enum value.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
        end
      end
      
      # A tag template defines a tag, which can have one or more typed fields. The
      # template is used to create and attach the tag to GCP resources. [Tag template
      # roles](https://cloud.google.com/iam/docs/understanding-roles#data-catalog-
      # roles) provide permissions to create, edit, and use the template. See, for
      # example, the [TagTemplate User](https://cloud.google.com/data-catalog/docs/how-
      # to/template-user) role, which includes permission to use the tag template to
      # tag resources.
      class GoogleCloudDatacatalogV1beta1TagTemplate
        include Google::Apis::Core::Hashable
      
        # The display name for this template. Defaults to an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Map of tag template field IDs to the settings for the field. This
        # map is an exhaustive list of the allowed fields. This map must contain at
        # least one field and at most 500 fields. The keys to this map are tag template
        # field IDs. Field IDs can contain letters (both uppercase and lowercase),
        # numbers (0-9) and underscores (_). Field IDs must be at least 1 character long
        # and at most 64 characters long. Field IDs must start with a letter or
        # underscore.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField>]
        attr_accessor :fields
      
        # The resource name of the tag template in URL format. Example: * projects/`
        # project_id`/locations/`location`/tagTemplates/`tag_template_id` Note that this
        # TagTemplate and its child resources may not actually be stored in the location
        # in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The template for an individual field within a tag template.
      class GoogleCloudDatacatalogV1beta1TagTemplateField
        include Google::Apis::Core::Hashable
      
        # The description for this field. Defaults to an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name for this field. Defaults to an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Whether this is a required field. Defaults to false.
        # Corresponds to the JSON property `isRequired`
        # @return [Boolean]
        attr_accessor :is_required
        alias_method :is_required?, :is_required
      
        # Output only. The resource name of the tag template field in URL format.
        # Example: * projects/`project_id`/locations/`location`/tagTemplates/`
        # tag_template`/fields/`field` Note that this TagTemplateField may not actually
        # be stored in the location in this name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The order of this field with respect to other fields in this tag template. A
        # higher value indicates a more important field. The value can be negative.
        # Multiple fields can have the same order, and field orders within a tag do not
        # have to be sequential.
        # Corresponds to the JSON property `order`
        # @return [Fixnum]
        attr_accessor :order
      
        # Required. The type of value this tag field can contain.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldType]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_required = args[:is_required] if args.key?(:is_required)
          @name = args[:name] if args.key?(:name)
          @order = args[:order] if args.key?(:order)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A taxonomy is a collection of policy tags that classify data along a common
      # axis. For instance a data *sensitivity* taxonomy could contain policy tags
      # denoting PII such as age, zipcode, and SSN. A data *origin* taxonomy could
      # contain policy tags to distinguish user data, employee data, partner data,
      # public data.
      class GoogleCloudDatacatalogV1beta1Taxonomy
        include Google::Apis::Core::Hashable
      
        # Optional. A list of policy types that are activated for this taxonomy. If not
        # set, defaults to an empty list.
        # Corresponds to the JSON property `activatedPolicyTypes`
        # @return [Array<String>]
        attr_accessor :activated_policy_types
      
        # Optional. Description of this taxonomy. It must: contain only unicode
        # characters, tabs, newlines, carriage returns and page breaks; and be at most
        # 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty
        # description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. User defined name of this taxonomy. It must: contain only unicode
        # letters, numbers, underscores, dashes and spaces; not start or end with spaces;
        # and be at most 200 bytes long when encoded in UTF-8.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this taxonomy, whose format is: "projects/`
        # project_number`/locations/`location_id`/taxonomies/`id`".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Number of policy tags contained in this taxonomy.
        # Corresponds to the JSON property `policyTagCount`
        # @return [Fixnum]
        attr_accessor :policy_tag_count
      
        # Timestamps about this resource according to a particular system.
        # Corresponds to the JSON property `taxonomyTimestamps`
        # @return [Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps]
        attr_accessor :taxonomy_timestamps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activated_policy_types = args[:activated_policy_types] if args.key?(:activated_policy_types)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @policy_tag_count = args[:policy_tag_count] if args.key?(:policy_tag_count)
          @taxonomy_timestamps = args[:taxonomy_timestamps] if args.key?(:taxonomy_timestamps)
        end
      end
      
      # Table view specification.
      class GoogleCloudDatacatalogV1beta1ViewSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The query that defines the table view.
        # Corresponds to the JSON property `viewQuery`
        # @return [String]
        attr_accessor :view_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @view_query = args[:view_query] if args.key?(:view_query)
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
        # @return [Array<Google::Apis::DatacatalogV1beta1::Binding>]
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
        # @return [Google::Apis::DatacatalogV1beta1::Policy]
        attr_accessor :policy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
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
    end
  end
end
