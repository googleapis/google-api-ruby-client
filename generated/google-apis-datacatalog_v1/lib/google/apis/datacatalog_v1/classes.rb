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
    module DatacatalogV1
      
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
        # @return [Google::Apis::DatacatalogV1::Expr]
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
        # . * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
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
        # domain:`domain``: The G Suite domain (primary) that represents all the users
        # of that domain. For example, `google.com` or `example.com`.
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
      
      # Request message for `GetIamPolicy` method.
      class GetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # Encapsulates settings provided to GetIamPolicy.
        # Corresponds to the JSON property `options`
        # @return [Google::Apis::DatacatalogV1::GetPolicyOptions]
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
      
      # Specification for the BigQuery connection.
      class GoogleCloudDatacatalogV1BigQueryConnectionSpec
        include Google::Apis::Core::Hashable
      
        # Specification for the BigQuery connection to a Cloud SQL instance.
        # Corresponds to the JSON property `cloudSql`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec]
        attr_accessor :cloud_sql
      
        # The type of the BigQuery connection.
        # Corresponds to the JSON property `connectionType`
        # @return [String]
        attr_accessor :connection_type
      
        # True if there are credentials attached to the BigQuery connection; false
        # otherwise.
        # Corresponds to the JSON property `hasCredential`
        # @return [Boolean]
        attr_accessor :has_credential
        alias_method :has_credential?, :has_credential
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_sql = args[:cloud_sql] if args.key?(:cloud_sql)
          @connection_type = args[:connection_type] if args.key?(:connection_type)
          @has_credential = args[:has_credential] if args.key?(:has_credential)
        end
      end
      
      # Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name
      # pattern. For more information, see [Introduction to partitioned tables] (https:
      # //cloud.google.com/bigquery/docs/partitioned-tables#
      # partitioning_versus_sharding).
      class GoogleCloudDatacatalogV1BigQueryDateShardedSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The Data Catalog resource name of the dataset entry the current
        # table belongs to. For example: `projects/`PROJECT_ID`/locations/`LOCATION`/
        # entrygroups/`ENTRY_GROUP_ID`/entries/`ENTRY_ID``.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. BigQuery resource name of the latest shard.
        # Corresponds to the JSON property `latestShardResource`
        # @return [String]
        attr_accessor :latest_shard_resource
      
        # Output only. Total number of shards.
        # Corresponds to the JSON property `shardCount`
        # @return [Fixnum]
        attr_accessor :shard_count
      
        # Output only. The table name prefix of the shards. The name of any given shard
        # is `[table_prefix]YYYYMMDD`. For example, for the `MyTable20180101` shard, the
        # `table_prefix` is `MyTable`.
        # Corresponds to the JSON property `tablePrefix`
        # @return [String]
        attr_accessor :table_prefix
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @latest_shard_resource = args[:latest_shard_resource] if args.key?(:latest_shard_resource)
          @shard_count = args[:shard_count] if args.key?(:shard_count)
          @table_prefix = args[:table_prefix] if args.key?(:table_prefix)
        end
      end
      
      # Fields specific for BigQuery routines.
      class GoogleCloudDatacatalogV1BigQueryRoutineSpec
        include Google::Apis::Core::Hashable
      
        # Paths of the imported libraries.
        # Corresponds to the JSON property `importedLibraries`
        # @return [Array<String>]
        attr_accessor :imported_libraries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @imported_libraries = args[:imported_libraries] if args.key?(:imported_libraries)
        end
      end
      
      # Describes a BigQuery table.
      class GoogleCloudDatacatalogV1BigQueryTableSpec
        include Google::Apis::Core::Hashable
      
        # Output only. The table source type.
        # Corresponds to the JSON property `tableSourceType`
        # @return [String]
        attr_accessor :table_source_type
      
        # Normal BigQuery table specification.
        # Corresponds to the JSON property `tableSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TableSpec]
        attr_accessor :table_spec
      
        # Table view specification.
        # Corresponds to the JSON property `viewSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ViewSpec]
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
      
      # Business Context of the entry.
      class GoogleCloudDatacatalogV1BusinessContext
        include Google::Apis::Core::Hashable
      
        # Contact people for the entry.
        # Corresponds to the JSON property `contacts`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts]
        attr_accessor :contacts
      
        # Entry overview fields for rich text descriptions of entries.
        # Corresponds to the JSON property `entryOverview`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview]
        attr_accessor :entry_overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
          @entry_overview = args[:entry_overview] if args.key?(:entry_overview)
        end
      end
      
      # Specification for the BigQuery connection to a Cloud SQL instance.
      class GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec
        include Google::Apis::Core::Hashable
      
        # Database name.
        # Corresponds to the JSON property `database`
        # @return [String]
        attr_accessor :database
      
        # Cloud SQL instance ID in the format of `project:location:instance`.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Type of the Cloud SQL database.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database = args[:database] if args.key?(:database)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A column within a schema. Columns can be nested inside other columns.
      class GoogleCloudDatacatalogV1ColumnSchema
        include Google::Apis::Core::Hashable
      
        # Required. Name of the column. Must be a UTF-8 string without dots (.). The
        # maximum size is 64 bytes.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. Description of the column. Default value is an empty string. The
        # description must be a UTF-8 string with the maximum size of 2000 bytes.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Garbage collection policy for the column or column family. Applies
        # to systems like Cloud Bigtable.
        # Corresponds to the JSON property `gcRule`
        # @return [String]
        attr_accessor :gc_rule
      
        # Optional. A column's mode indicates whether values in this column are required,
        # nullable, or repeated. Only `NULLABLE`, `REQUIRED`, and `REPEATED` values are
        # supported. Default mode is `NULLABLE`.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Optional. Schema of sub-columns. A column can have zero or more sub-columns.
        # Corresponds to the JSON property `subcolumns`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ColumnSchema>]
        attr_accessor :subcolumns
      
        # Required. Type of the column. Must be a UTF-8 string with the maximum size of
        # 128 bytes.
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
          @gc_rule = args[:gc_rule] if args.key?(:gc_rule)
          @mode = args[:mode] if args.key?(:mode)
          @subcolumns = args[:subcolumns] if args.key?(:subcolumns)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Contact people for the entry.
      class GoogleCloudDatacatalogV1Contacts
        include Google::Apis::Core::Hashable
      
        # The list of contact people for the entry.
        # Corresponds to the JSON property `people`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ContactsPerson>]
        attr_accessor :people
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @people = args[:people] if args.key?(:people)
        end
      end
      
      # A contact person for the entry.
      class GoogleCloudDatacatalogV1ContactsPerson
        include Google::Apis::Core::Hashable
      
        # Designation of the person, for example, Data Steward.
        # Corresponds to the JSON property `designation`
        # @return [String]
        attr_accessor :designation
      
        # Email of the person in the format of `john.doe@xyz`, ``, or `John Doe`.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @designation = args[:designation] if args.key?(:designation)
          @email = args[:email] if args.key?(:email)
        end
      end
      
      # Cross-regional source used to import an existing taxonomy into a different
      # region.
      class GoogleCloudDatacatalogV1CrossRegionalSource
        include Google::Apis::Core::Hashable
      
        # Required. The resource name of the source taxonomy to import.
        # Corresponds to the JSON property `taxonomy`
        # @return [String]
        attr_accessor :taxonomy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomy = args[:taxonomy] if args.key?(:taxonomy)
        end
      end
      
      # Physical location of an entry.
      class GoogleCloudDatacatalogV1DataSource
        include Google::Apis::Core::Hashable
      
        # Full name of a resource as defined by the service. For example: `//bigquery.
        # googleapis.com/projects/`PROJECT_ID`/locations/`LOCATION`/datasets/`DATASET_ID`
        # /tables/`TABLE_ID``
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Service that physically stores the data.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Output only. Data Catalog entry name, if applicable.
        # Corresponds to the JSON property `sourceEntry`
        # @return [String]
        attr_accessor :source_entry
      
        # Details the properties of the underlying storage.
        # Corresponds to the JSON property `storageProperties`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StorageProperties]
        attr_accessor :storage_properties
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resource = args[:resource] if args.key?(:resource)
          @service = args[:service] if args.key?(:service)
          @source_entry = args[:source_entry] if args.key?(:source_entry)
          @storage_properties = args[:storage_properties] if args.key?(:storage_properties)
        end
      end
      
      # Specification that applies to a data source connection. Valid only for entries
      # with the `DATA_SOURCE_CONNECTION` type. Only one of internal specs can be set
      # at the time, and cannot be changed later.
      class GoogleCloudDatacatalogV1DataSourceConnectionSpec
        include Google::Apis::Core::Hashable
      
        # Specification for the BigQuery connection.
        # Corresponds to the JSON property `bigqueryConnectionSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryConnectionSpec]
        attr_accessor :bigquery_connection_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_connection_spec = args[:bigquery_connection_spec] if args.key?(:bigquery_connection_spec)
        end
      end
      
      # Specification that applies to a table resource. Valid only for entries with
      # the `TABLE` type.
      class GoogleCloudDatacatalogV1DatabaseTableSpec
        include Google::Apis::Core::Hashable
      
        # Entry specification for a Dataplex table.
        # Corresponds to the JSON property `dataplexTable`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexTableSpec]
        attr_accessor :dataplex_table
      
        # Type of this table.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataplex_table = args[:dataplex_table] if args.key?(:dataplex_table)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # External table registered by Dataplex. Dataplex publishes data discovered from
      # an asset into multiple other systems (BigQuery, DPMS) in form of tables. We
      # call them "external tables". External tables are also synced into the Data
      # Catalog. This message contains pointers to those external tables (fully
      # qualified name, resource name et cetera) within the Data Catalog.
      class GoogleCloudDatacatalogV1DataplexExternalTable
        include Google::Apis::Core::Hashable
      
        # Name of the Data Catalog entry representing the external table.
        # Corresponds to the JSON property `dataCatalogEntry`
        # @return [String]
        attr_accessor :data_catalog_entry
      
        # Fully qualified name (FQN) of the external table.
        # Corresponds to the JSON property `fullyQualifiedName`
        # @return [String]
        attr_accessor :fully_qualified_name
      
        # Google Cloud resource name of the external table.
        # Corresponds to the JSON property `googleCloudResource`
        # @return [String]
        attr_accessor :google_cloud_resource
      
        # Service in which the external table is registered.
        # Corresponds to the JSON property `system`
        # @return [String]
        attr_accessor :system
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_catalog_entry = args[:data_catalog_entry] if args.key?(:data_catalog_entry)
          @fully_qualified_name = args[:fully_qualified_name] if args.key?(:fully_qualified_name)
          @google_cloud_resource = args[:google_cloud_resource] if args.key?(:google_cloud_resource)
          @system = args[:system] if args.key?(:system)
        end
      end
      
      # Entry specyfication for a Dataplex fileset.
      class GoogleCloudDatacatalogV1DataplexFilesetSpec
        include Google::Apis::Core::Hashable
      
        # Common Dataplex fields.
        # Corresponds to the JSON property `dataplexSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexSpec]
        attr_accessor :dataplex_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataplex_spec = args[:dataplex_spec] if args.key?(:dataplex_spec)
        end
      end
      
      # Common Dataplex fields.
      class GoogleCloudDatacatalogV1DataplexSpec
        include Google::Apis::Core::Hashable
      
        # Fully qualified resource name of an asset in Dataplex, to which the underlying
        # data source (Cloud Storage bucket or BigQuery dataset) of the entity is
        # attached.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Compression format of the data, e.g., zip, gzip etc.
        # Corresponds to the JSON property `compressionFormat`
        # @return [String]
        attr_accessor :compression_format
      
        # Native schema used by a resource represented as an entry. Used by query
        # engines for deserializing and parsing source data.
        # Corresponds to the JSON property `dataFormat`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchema]
        attr_accessor :data_format
      
        # Project ID of the underlying Cloud Storage or BigQuery data. Note that this
        # may not be the same project as the correspondingly Dataplex lake / zone /
        # asset.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @compression_format = args[:compression_format] if args.key?(:compression_format)
          @data_format = args[:data_format] if args.key?(:data_format)
          @project_id = args[:project_id] if args.key?(:project_id)
        end
      end
      
      # Entry specification for a Dataplex table.
      class GoogleCloudDatacatalogV1DataplexTableSpec
        include Google::Apis::Core::Hashable
      
        # Common Dataplex fields.
        # Corresponds to the JSON property `dataplexSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexSpec]
        attr_accessor :dataplex_spec
      
        # List of external tables registered by Dataplex in other systems based on the
        # same underlying data. External tables allow to query this data in those
        # systems.
        # Corresponds to the JSON property `externalTables`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexExternalTable>]
        attr_accessor :external_tables
      
        # Indicates if the table schema is managed by the user or not.
        # Corresponds to the JSON property `userManaged`
        # @return [Boolean]
        attr_accessor :user_managed
        alias_method :user_managed?, :user_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataplex_spec = args[:dataplex_spec] if args.key?(:dataplex_spec)
          @external_tables = args[:external_tables] if args.key?(:external_tables)
          @user_managed = args[:user_managed] if args.key?(:user_managed)
        end
      end
      
      # Entry metadata. A Data Catalog entry represents another resource in Google
      # Cloud Platform (such as a BigQuery dataset or a Pub/Sub topic) or outside of
      # it. You can use the `linked_resource` field in the entry resource to refer to
      # the original resource ID of the source system. An entry resource contains
      # resource details, for example, its schema. Additionally, you can attach
      # flexible metadata to an entry in the form of a Tag.
      class GoogleCloudDatacatalogV1Entry
        include Google::Apis::Core::Hashable
      
        # Specification for a group of BigQuery tables with the `[prefix]YYYYMMDD` name
        # pattern. For more information, see [Introduction to partitioned tables] (https:
        # //cloud.google.com/bigquery/docs/partitioned-tables#
        # partitioning_versus_sharding).
        # Corresponds to the JSON property `bigqueryDateShardedSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryDateShardedSpec]
        attr_accessor :bigquery_date_sharded_spec
      
        # Describes a BigQuery table.
        # Corresponds to the JSON property `bigqueryTableSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryTableSpec]
        attr_accessor :bigquery_table_spec
      
        # Business Context of the entry.
        # Corresponds to the JSON property `businessContext`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BusinessContext]
        attr_accessor :business_context
      
        # Physical location of an entry.
        # Corresponds to the JSON property `dataSource`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataSource]
        attr_accessor :data_source
      
        # Specification that applies to a data source connection. Valid only for entries
        # with the `DATA_SOURCE_CONNECTION` type. Only one of internal specs can be set
        # at the time, and cannot be changed later.
        # Corresponds to the JSON property `dataSourceConnectionSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataSourceConnectionSpec]
        attr_accessor :data_source_connection_spec
      
        # Specification that applies to a table resource. Valid only for entries with
        # the `TABLE` type.
        # Corresponds to the JSON property `databaseTableSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DatabaseTableSpec]
        attr_accessor :database_table_spec
      
        # Entry description that can consist of several sentences or paragraphs that
        # describe entry contents. The description must not contain Unicode non-
        # characters as well as C0 and C1 control codes except tabs (HT), new lines (LF),
        # carriage returns (CR), and page breaks (FF). The maximum size is 2000 bytes
        # when encoded in UTF-8. Default value is an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display name of an entry. The name must contain only Unicode letters, numbers (
        # 0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with
        # spaces. The maximum size is 200 bytes when encoded in UTF-8. Default value is
        # an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Specification that applies to a fileset. Valid only for entries with the '
        # FILESET' type.
        # Corresponds to the JSON property `filesetSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FilesetSpec]
        attr_accessor :fileset_spec
      
        # Fully qualified name (FQN) of the resource. Set automatically for entries
        # representing resources from synced systems. Settable only during creation and
        # read-only afterwards. Can be used for search and lookup of the entries. FQNs
        # take two forms: * For non-regionalized resources: ``SYSTEM`:`PROJECT`.`
        # PATH_TO_RESOURCE_SEPARATED_WITH_DOTS`` * For regionalized resources: ``SYSTEM`:
        # `PROJECT`.`LOCATION_ID`.`PATH_TO_RESOURCE_SEPARATED_WITH_DOTS`` Example for a
        # DPMS table: `dataproc_metastore:`PROJECT_ID`.`LOCATION_ID`.`INSTANCE_ID`.`
        # DATABASE_ID`.`TABLE_ID``
        # Corresponds to the JSON property `fullyQualifiedName`
        # @return [String]
        attr_accessor :fully_qualified_name
      
        # Describes a Cloud Storage fileset entry.
        # Corresponds to the JSON property `gcsFilesetSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1GcsFilesetSpec]
        attr_accessor :gcs_fileset_spec
      
        # Output only. Indicates the entry's source system that Data Catalog integrates
        # with, such as BigQuery, Pub/Sub, or Dataproc Metastore.
        # Corresponds to the JSON property `integratedSystem`
        # @return [String]
        attr_accessor :integrated_system
      
        # Cloud labels attached to the entry. In Data Catalog, you can create and modify
        # labels attached only to custom entries. Synced entries have unmodifiable
        # labels that come from the source system.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The resource this metadata entry refers to. For Google Cloud Platform
        # resources, `linked_resource` is the [Full Resource Name] (https://cloud.google.
        # com/apis/design/resource_names#full_resource_name). For example, the `
        # linked_resource` for a table resource from BigQuery is: `//bigquery.googleapis.
        # com/projects/`PROJECT_ID`/datasets/`DATASET_ID`/tables/`TABLE_ID`` Output only
        # when the entry is one of the types in the `EntryType` enum. For entries with a
        # `user_specified_type`, this field is optional and defaults to an empty string.
        # The resource string must contain only letters (a-z, A-Z), numbers (0-9),
        # underscores (_), periods (.), colons (:), slashes (/), dashes (-), and hashes (
        # #). The maximum size is 200 bytes when encoded in UTF-8.
        # Corresponds to the JSON property `linkedResource`
        # @return [String]
        attr_accessor :linked_resource
      
        # Output only. The resource name of an entry in URL format. Note: The entry
        # itself and its child resources might not be stored in the location specified
        # in its name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Entry metadata relevant only to the user and private to them.
        # Corresponds to the JSON property `personalDetails`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PersonalDetails]
        attr_accessor :personal_details
      
        # Specification that applies to a routine. Valid only for entries with the `
        # ROUTINE` type.
        # Corresponds to the JSON property `routineSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RoutineSpec]
        attr_accessor :routine_spec
      
        # Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Schema]
        attr_accessor :schema
      
        # Timestamps associated with this resource in a particular system.
        # Corresponds to the JSON property `sourceSystemTimestamps`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps]
        attr_accessor :source_system_timestamps
      
        # The type of the entry. Only used for entries with types listed in the `
        # EntryType` enum. Currently, only `FILESET` enum value is allowed. All other
        # entries created in Data Catalog must use the `user_specified_type`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The set of all usage signals that Data Catalog stores. Note: Usually, these
        # signals are updated daily. In rare cases, an update may fail but will be
        # performed again on the next day.
        # Corresponds to the JSON property `usageSignal`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UsageSignal]
        attr_accessor :usage_signal
      
        # Indicates the entry's source system that Data Catalog doesn't automatically
        # integrate with. The `user_specified_system` string has the following
        # limitations: * Is case insensitive. * Must begin with a letter or underscore. *
        # Can only contain letters, numbers, and underscores. * Must be at least 1
        # character and at most 64 characters long.
        # Corresponds to the JSON property `userSpecifiedSystem`
        # @return [String]
        attr_accessor :user_specified_system
      
        # Custom entry type that doesn't match any of the values allowed for input and
        # listed in the `EntryType` enum. When creating an entry, first check the type
        # values in the enum. If there are no appropriate types for the new entry,
        # provide a custom value, for example, `my_special_type`. The `
        # user_specified_type` string has the following limitations: * Is case
        # insensitive. * Must begin with a letter or underscore. * Can only contain
        # letters, numbers, and underscores. * Must be at least 1 character and at most
        # 64 characters long.
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
          @business_context = args[:business_context] if args.key?(:business_context)
          @data_source = args[:data_source] if args.key?(:data_source)
          @data_source_connection_spec = args[:data_source_connection_spec] if args.key?(:data_source_connection_spec)
          @database_table_spec = args[:database_table_spec] if args.key?(:database_table_spec)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fileset_spec = args[:fileset_spec] if args.key?(:fileset_spec)
          @fully_qualified_name = args[:fully_qualified_name] if args.key?(:fully_qualified_name)
          @gcs_fileset_spec = args[:gcs_fileset_spec] if args.key?(:gcs_fileset_spec)
          @integrated_system = args[:integrated_system] if args.key?(:integrated_system)
          @labels = args[:labels] if args.key?(:labels)
          @linked_resource = args[:linked_resource] if args.key?(:linked_resource)
          @name = args[:name] if args.key?(:name)
          @personal_details = args[:personal_details] if args.key?(:personal_details)
          @routine_spec = args[:routine_spec] if args.key?(:routine_spec)
          @schema = args[:schema] if args.key?(:schema)
          @source_system_timestamps = args[:source_system_timestamps] if args.key?(:source_system_timestamps)
          @type = args[:type] if args.key?(:type)
          @usage_signal = args[:usage_signal] if args.key?(:usage_signal)
          @user_specified_system = args[:user_specified_system] if args.key?(:user_specified_system)
          @user_specified_type = args[:user_specified_type] if args.key?(:user_specified_type)
        end
      end
      
      # Entry group metadata. An `EntryGroup` resource represents a logical grouping
      # of zero or more Data Catalog Entry resources.
      class GoogleCloudDatacatalogV1EntryGroup
        include Google::Apis::Core::Hashable
      
        # Timestamps associated with this resource in a particular system.
        # Corresponds to the JSON property `dataCatalogTimestamps`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps]
        attr_accessor :data_catalog_timestamps
      
        # Entry group description. Can consist of several sentences or paragraphs that
        # describe the entry group contents. Default value is an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A short name to identify the entry group, for example, "analytics data - jan
        # 2011". Default value is an empty string.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The resource name of the entry group in URL format. Note: The entry group
        # itself and its child resources might not be stored in the location specified
        # in its name.
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
      
      # Entry overview fields for rich text descriptions of entries.
      class GoogleCloudDatacatalogV1EntryOverview
        include Google::Apis::Core::Hashable
      
        # Entry overview with support for rich text. The overview must only contain
        # Unicode characters, and should be formatted using HTML. The maximum length is
        # 10 MiB as this value holds HTML descriptions including encoded images. The
        # maximum length of the text without images is 100 KiB.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @overview = args[:overview] if args.key?(:overview)
        end
      end
      
      # Response message for ExportTaxonomies.
      class GoogleCloudDatacatalogV1ExportTaxonomiesResponse
        include Google::Apis::Core::Hashable
      
        # List of taxonomies and policy tags as nested protocol buffers.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy>]
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
      class GoogleCloudDatacatalogV1FieldType
        include Google::Apis::Core::Hashable
      
        # An enum type.
        # Corresponds to the JSON property `enumType`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldTypeEnumType]
        attr_accessor :enum_type
      
        # Primitive types, such as string, boolean, etc.
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
      class GoogleCloudDatacatalogV1FieldTypeEnumType
        include Google::Apis::Core::Hashable
      
        # The set of allowed values for this enum. This set must not be empty and can
        # include up to 100 allowed values. The display names of the values in this set
        # must not be empty and must be case-insensitively unique within this set. The
        # order of items in this set is preserved. This field can be used to create,
        # remove, and reorder enum values. To rename enum values, use the `
        # RenameTagTemplateFieldEnumValue` method.
        # Corresponds to the JSON property `allowedValues`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue>]
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
      class GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue
        include Google::Apis::Core::Hashable
      
        # Required. The display name of the enum value. Must not be an empty string. The
        # name must contain only Unicode letters, numbers (0-9), underscores (_), dashes
        # (-), spaces ( ), and can't start or end with spaces. The maximum length is 200
        # characters.
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
      
      # Specification that applies to a fileset. Valid only for entries with the '
      # FILESET' type.
      class GoogleCloudDatacatalogV1FilesetSpec
        include Google::Apis::Core::Hashable
      
        # Entry specyfication for a Dataplex fileset.
        # Corresponds to the JSON property `dataplexFileset`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexFilesetSpec]
        attr_accessor :dataplex_fileset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataplex_fileset = args[:dataplex_fileset] if args.key?(:dataplex_fileset)
        end
      end
      
      # Specification of a single file in Cloud Storage.
      class GoogleCloudDatacatalogV1GcsFileSpec
        include Google::Apis::Core::Hashable
      
        # Required. Full file path. Example: `gs://bucket_name/a/b.txt`.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        # Timestamps associated with this resource in a particular system.
        # Corresponds to the JSON property `gcsTimestamps`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps]
        attr_accessor :gcs_timestamps
      
        # Output only. File size in bytes.
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
      class GoogleCloudDatacatalogV1GcsFilesetSpec
        include Google::Apis::Core::Hashable
      
        # Required. Patterns to identify a set of files in Google Cloud Storage. For
        # more information, see [Wildcard Names] (https://cloud.google.com/storage/docs/
        # gsutil/addlhelp/WildcardNames). Note: Currently, bucket wildcards are not
        # supported. Examples of valid `file_patterns`: * `gs://bucket_name/dir/*`:
        # matches all files in `bucket_name/dir` directory * `gs://bucket_name/dir/**`:
        # matches all files in `bucket_name/dir` and all subdirectories * `gs://
        # bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://
        # bucket_name/??.txt`: matches files with two characters followed by `.txt` in `
        # bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a
        # single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/
        # [a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt`
        # in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name`
        # that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://
        # another_bucket/a.txt`: matches `gs://another_bucket/a.txt` You can combine
        # wildcards to match complex sets of files, for example: `gs://bucket_name/[a-m]?
        # ?.j*g`
        # Corresponds to the JSON property `filePatterns`
        # @return [Array<String>]
        attr_accessor :file_patterns
      
        # Output only. Sample files contained in this fileset, not all files contained
        # in this fileset are represented here.
        # Corresponds to the JSON property `sampleGcsFileSpecs`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1GcsFileSpec>]
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
      class GoogleCloudDatacatalogV1ImportTaxonomiesRequest
        include Google::Apis::Core::Hashable
      
        # Cross-regional source used to import an existing taxonomy into a different
        # region.
        # Corresponds to the JSON property `crossRegionalSource`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1CrossRegionalSource]
        attr_accessor :cross_regional_source
      
        # Inline source containing taxonomies to import.
        # Corresponds to the JSON property `inlineSource`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1InlineSource]
        attr_accessor :inline_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cross_regional_source = args[:cross_regional_source] if args.key?(:cross_regional_source)
          @inline_source = args[:inline_source] if args.key?(:inline_source)
        end
      end
      
      # Response message for ImportTaxonomies.
      class GoogleCloudDatacatalogV1ImportTaxonomiesResponse
        include Google::Apis::Core::Hashable
      
        # Imported taxonomies.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy>]
        attr_accessor :taxonomies
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @taxonomies = args[:taxonomies] if args.key?(:taxonomies)
        end
      end
      
      # Inline source containing taxonomies to import.
      class GoogleCloudDatacatalogV1InlineSource
        include Google::Apis::Core::Hashable
      
        # Required. Taxonomies to import.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy>]
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
      class GoogleCloudDatacatalogV1ListEntriesResponse
        include Google::Apis::Core::Hashable
      
        # Entry details.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry>]
        attr_accessor :entries
      
        # Pagination token of the next results page. Empty if there are no more items in
        # results.
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
      class GoogleCloudDatacatalogV1ListEntryGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Entry group details.
        # Corresponds to the JSON property `entryGroups`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup>]
        attr_accessor :entry_groups
      
        # Pagination token to specify in the next call to retrieve the next page of
        # results. Empty if there are no more items.
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
      class GoogleCloudDatacatalogV1ListPolicyTagsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token of the next results page. Empty if there are no more results
        # in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The policy tags that belong to the taxonomy.
        # Corresponds to the JSON property `policyTags`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag>]
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
      class GoogleCloudDatacatalogV1ListTagsResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token of the next results page. Empty if there are no more items in
        # results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tag details.
        # Corresponds to the JSON property `tags`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag>]
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
      class GoogleCloudDatacatalogV1ListTaxonomiesResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token of the next results page. Empty if there are no more results
        # in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Taxonomies that the project contains.
        # Corresponds to the JSON property `taxonomies`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy>]
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
      
      # Request message for ModifyEntryContacts.
      class GoogleCloudDatacatalogV1ModifyEntryContactsRequest
        include Google::Apis::Core::Hashable
      
        # Contact people for the entry.
        # Corresponds to the JSON property `contacts`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts]
        attr_accessor :contacts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contacts = args[:contacts] if args.key?(:contacts)
        end
      end
      
      # Request message for ModifyEntryOverview.
      class GoogleCloudDatacatalogV1ModifyEntryOverviewRequest
        include Google::Apis::Core::Hashable
      
        # Entry overview fields for rich text descriptions of entries.
        # Corresponds to the JSON property `entryOverview`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview]
        attr_accessor :entry_overview
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entry_overview = args[:entry_overview] if args.key?(:entry_overview)
        end
      end
      
      # Entry metadata relevant only to the user and private to them.
      class GoogleCloudDatacatalogV1PersonalDetails
        include Google::Apis::Core::Hashable
      
        # Set if the entry is starred; unset otherwise.
        # Corresponds to the JSON property `starTime`
        # @return [String]
        attr_accessor :star_time
      
        # True if the entry is starred by the user; false otherwise.
        # Corresponds to the JSON property `starred`
        # @return [Boolean]
        attr_accessor :starred
        alias_method :starred?, :starred
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @star_time = args[:star_time] if args.key?(:star_time)
          @starred = args[:starred] if args.key?(:starred)
        end
      end
      
      # Native schema used by a resource represented as an entry. Used by query
      # engines for deserializing and parsing source data.
      class GoogleCloudDatacatalogV1PhysicalSchema
        include Google::Apis::Core::Hashable
      
        # Schema in Avro JSON format.
        # Corresponds to the JSON property `avro`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema]
        attr_accessor :avro
      
        # Marks a CSV-encoded data source.
        # Corresponds to the JSON property `csv`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema]
        attr_accessor :csv
      
        # Marks an ORC-encoded data source.
        # Corresponds to the JSON property `orc`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema]
        attr_accessor :orc
      
        # Marks a Parquet-encoded data source.
        # Corresponds to the JSON property `parquet`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema]
        attr_accessor :parquet
      
        # Schema in protocol buffer format.
        # Corresponds to the JSON property `protobuf`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema]
        attr_accessor :protobuf
      
        # Schema in Thrift format.
        # Corresponds to the JSON property `thrift`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema]
        attr_accessor :thrift
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @avro = args[:avro] if args.key?(:avro)
          @csv = args[:csv] if args.key?(:csv)
          @orc = args[:orc] if args.key?(:orc)
          @parquet = args[:parquet] if args.key?(:parquet)
          @protobuf = args[:protobuf] if args.key?(:protobuf)
          @thrift = args[:thrift] if args.key?(:thrift)
        end
      end
      
      # Schema in Avro JSON format.
      class GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema
        include Google::Apis::Core::Hashable
      
        # JSON source of the Avro schema.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Marks a CSV-encoded data source.
      class GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Marks an ORC-encoded data source.
      class GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Marks a Parquet-encoded data source.
      class GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Schema in protocol buffer format.
      class GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema
        include Google::Apis::Core::Hashable
      
        # Protocol buffer source of the schema.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Schema in Thrift format.
      class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema
        include Google::Apis::Core::Hashable
      
        # Thrift IDL source of the schema.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # Denotes one policy tag in a taxonomy, for example, SSN. Policy tags can be
      # defined in a hierarchy. For example: ``` + Geolocation + LatLong + City +
      # ZipCode ``` Where the "Geolocation" policy tag contains three children.
      class GoogleCloudDatacatalogV1PolicyTag
        include Google::Apis::Core::Hashable
      
        # Output only. Resource names of child policy tags of this policy tag.
        # Corresponds to the JSON property `childPolicyTags`
        # @return [Array<String>]
        attr_accessor :child_policy_tags
      
        # Description of this policy tag. If not set, defaults to empty. The description
        # must contain only Unicode characters, tabs, newlines, carriage returns and
        # page breaks, and be at most 2000 bytes long when encoded in UTF-8.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. User-defined name of this policy tag. The name can't start or end
        # with spaces and must be unique within the parent taxonomy, contain only
        # Unicode letters, numbers, underscores, dashes and spaces, and be at most 200
        # bytes long when encoded in UTF-8.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this policy tag in the URL format. The policy
        # tag manager generates unique taxonomy IDs and policy tag IDs.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource name of this policy tag's parent policy tag. If empty, this is a top
        # level tag. If not set, defaults to an empty string. For example, for the "
        # LatLong" policy tag in the example above, this field contains the resource
        # name of the "Geolocation" policy tag, and, for "Geolocation", this field is
        # empty.
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
      class GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest
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
      class GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest
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
      
      # Request message for ReplaceTaxonomy.
      class GoogleCloudDatacatalogV1ReplaceTaxonomyRequest
        include Google::Apis::Core::Hashable
      
        # A nested protocol buffer that represents a taxonomy and the hierarchy of its
        # policy tags. Used for taxonomy replacement, import, and export.
        # Corresponds to the JSON property `serializedTaxonomy`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy]
        attr_accessor :serialized_taxonomy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @serialized_taxonomy = args[:serialized_taxonomy] if args.key?(:serialized_taxonomy)
        end
      end
      
      # Specification that applies to a routine. Valid only for entries with the `
      # ROUTINE` type.
      class GoogleCloudDatacatalogV1RoutineSpec
        include Google::Apis::Core::Hashable
      
        # Fields specific for BigQuery routines.
        # Corresponds to the JSON property `bigqueryRoutineSpec`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryRoutineSpec]
        attr_accessor :bigquery_routine_spec
      
        # The body of the routine.
        # Corresponds to the JSON property `definitionBody`
        # @return [String]
        attr_accessor :definition_body
      
        # The language the routine is written in. The exact value depends on the source
        # system. For BigQuery routines, possible values are: * `SQL` * `JAVASCRIPT`
        # Corresponds to the JSON property `language`
        # @return [String]
        attr_accessor :language
      
        # Return type of the argument. The exact value depends on the source system and
        # the language.
        # Corresponds to the JSON property `returnType`
        # @return [String]
        attr_accessor :return_type
      
        # Arguments of the routine.
        # Corresponds to the JSON property `routineArguments`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RoutineSpecArgument>]
        attr_accessor :routine_arguments
      
        # The type of the routine.
        # Corresponds to the JSON property `routineType`
        # @return [String]
        attr_accessor :routine_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_routine_spec = args[:bigquery_routine_spec] if args.key?(:bigquery_routine_spec)
          @definition_body = args[:definition_body] if args.key?(:definition_body)
          @language = args[:language] if args.key?(:language)
          @return_type = args[:return_type] if args.key?(:return_type)
          @routine_arguments = args[:routine_arguments] if args.key?(:routine_arguments)
          @routine_type = args[:routine_type] if args.key?(:routine_type)
        end
      end
      
      # Input or output argument of a function or stored procedure.
      class GoogleCloudDatacatalogV1RoutineSpecArgument
        include Google::Apis::Core::Hashable
      
        # Specifies whether the argument is input or output.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # The name of the argument. A return argument of a function might not have a
        # name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Type of the argument. The exact value depends on the source system and the
        # language.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mode = args[:mode] if args.key?(:mode)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a schema, for example, a BigQuery, GoogleSQL, or Avro schema.
      class GoogleCloudDatacatalogV1Schema
        include Google::Apis::Core::Hashable
      
        # The unified GoogleSQL-like schema of columns. The overall maximum number of
        # columns and nested columns is 10,000. The maximum nested depth is 15 levels.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ColumnSchema>]
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
      class GoogleCloudDatacatalogV1SearchCatalogRequest
        include Google::Apis::Core::Hashable
      
        # Specifies the order of results. Currently supported case-sensitive values are:
        # * `relevance` that can only be descending * `last_modified_timestamp [asc|desc]
        # ` with descending (`desc`) as default * `default` that can only be descending
        # If this parameter is omitted, it defaults to the descending `relevance`.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # Number of results to return in a single search page. Can't be negative or 0,
        # defaults to 10 in this case. The maximum number is 1000. If exceeded, throws
        # an "invalid argument" exception.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # Optional. Pagination token that, if specified, returns the next page of search
        # results. If empty, returns the first page. This token is returned in the
        # SearchCatalogResponse.next_page_token field of the response to a previous
        # SearchCatalogRequest call.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Optional. The query string with a minimum of 3 characters and specific syntax.
        # For more information, see [Data Catalog search syntax](https://cloud.google.
        # com/data-catalog/docs/how-to/search-reference). An empty query string returns
        # all data assets (in the specified scope) that you have access to. A query
        # string can be a simple `xyz` or qualified by predicates: * `name:x` * `column:
        # y` * `description:z`
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The criteria that select the subspace used for query matching.
        # Corresponds to the JSON property `scope`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogRequestScope]
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
      class GoogleCloudDatacatalogV1SearchCatalogRequestScope
        include Google::Apis::Core::Hashable
      
        # If `true`, include Google Cloud Platform (GCP) public datasets in search
        # results. By default, they are excluded. See [Google Cloud Public Datasets](/
        # public-datasets) for more information.
        # Corresponds to the JSON property `includeGcpPublicDatasets`
        # @return [Boolean]
        attr_accessor :include_gcp_public_datasets
        alias_method :include_gcp_public_datasets?, :include_gcp_public_datasets
      
        # The list of organization IDs to search within. To find your organization ID,
        # follow the steps from [Creating and managing organizations] (/resource-manager/
        # docs/creating-managing-organization).
        # Corresponds to the JSON property `includeOrgIds`
        # @return [Array<String>]
        attr_accessor :include_org_ids
      
        # The list of project IDs to search within. For more information on the
        # distinction between project names, IDs, and numbers, see [Projects](/docs/
        # overview/#projects).
        # Corresponds to the JSON property `includeProjectIds`
        # @return [Array<String>]
        attr_accessor :include_project_ids
      
        # Optional. This field is deprecated. The search mechanism for public and
        # private tag templates is the same.
        # Corresponds to the JSON property `includePublicTagTemplates`
        # @return [Boolean]
        attr_accessor :include_public_tag_templates
        alias_method :include_public_tag_templates?, :include_public_tag_templates
      
        # Optional. The list of locations to search within. If empty, all locations are
        # searched. Returns an error if any location in the list isn't one of the [
        # Supported regions](https://cloud.google.com/data-catalog/docs/concepts/regions#
        # supported_regions). If a location is unreachable, its name is returned in the `
        # SearchCatalogResponse.unreachable` field. To get additional information on the
        # error, repeat the search request and set the location name as the value of
        # this parameter.
        # Corresponds to the JSON property `restrictedLocations`
        # @return [Array<String>]
        attr_accessor :restricted_locations
      
        # Optional. If `true`, search only among starred entries. By default, all
        # results are returned, starred or not.
        # Corresponds to the JSON property `starredOnly`
        # @return [Boolean]
        attr_accessor :starred_only
        alias_method :starred_only?, :starred_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_gcp_public_datasets = args[:include_gcp_public_datasets] if args.key?(:include_gcp_public_datasets)
          @include_org_ids = args[:include_org_ids] if args.key?(:include_org_ids)
          @include_project_ids = args[:include_project_ids] if args.key?(:include_project_ids)
          @include_public_tag_templates = args[:include_public_tag_templates] if args.key?(:include_public_tag_templates)
          @restricted_locations = args[:restricted_locations] if args.key?(:restricted_locations)
          @starred_only = args[:starred_only] if args.key?(:starred_only)
        end
      end
      
      # Response message for SearchCatalog.
      class GoogleCloudDatacatalogV1SearchCatalogResponse
        include Google::Apis::Core::Hashable
      
        # Pagination token that can be used in subsequent calls to retrieve the next
        # page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Search results.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogResult>]
        attr_accessor :results
      
        # Unreachable locations. Search results don't include data from those locations.
        # To get additional information on an error, repeat the search request and
        # restrict it to specific locations by setting the `SearchCatalogRequest.scope.
        # restricted_locations` parameter.
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
      
      # Result in the response to a search request. Each result captures details of
      # one entry that matches the search.
      class GoogleCloudDatacatalogV1SearchCatalogResult
        include Google::Apis::Core::Hashable
      
        # Entry description that can consist of several sentences or paragraphs that
        # describe entry contents.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name of the result.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Fully qualified name (FQN) of the resource. FQNs take two forms: * For non-
        # regionalized resources: ``SYSTEM`:`PROJECT`.`
        # PATH_TO_RESOURCE_SEPARATED_WITH_DOTS`` * For regionalized resources: ``SYSTEM`:
        # `PROJECT`.`LOCATION_ID`.`PATH_TO_RESOURCE_SEPARATED_WITH_DOTS`` Example for a
        # DPMS table: `dataproc_metastore:PROJECT_ID.LOCATION_ID.INSTANCE_ID.DATABASE_ID.
        # TABLE_ID`
        # Corresponds to the JSON property `fullyQualifiedName`
        # @return [String]
        attr_accessor :fully_qualified_name
      
        # Output only. The source system that Data Catalog automatically integrates with,
        # such as BigQuery, Cloud Pub/Sub, or Dataproc Metastore.
        # Corresponds to the JSON property `integratedSystem`
        # @return [String]
        attr_accessor :integrated_system
      
        # The full name of the Google Cloud resource the entry belongs to. For more
        # information, see [Full Resource Name] (/apis/design/resource_names#
        # full_resource_name). Example: `//bigquery.googleapis.com/projects/PROJECT_ID/
        # datasets/DATASET_ID/tables/TABLE_ID`
        # Corresponds to the JSON property `linkedResource`
        # @return [String]
        attr_accessor :linked_resource
      
        # The last modification timestamp of the entry in the source system.
        # Corresponds to the JSON property `modifyTime`
        # @return [String]
        attr_accessor :modify_time
      
        # The relative name of the resource in URL format. Examples: * `projects/`
        # PROJECT_ID`/locations/`LOCATION_ID`/entryGroups/`ENTRY_GROUP_ID`/entries/`
        # ENTRY_ID`` * `projects/`PROJECT_ID`/tagTemplates/`TAG_TEMPLATE_ID``
        # Corresponds to the JSON property `relativeResourceName`
        # @return [String]
        attr_accessor :relative_resource_name
      
        # Sub-type of the search result. A dot-delimited full type of the resource. The
        # same type you specify in the `type` search predicate. Examples: `entry.table`,
        # `entry.dataStream`, `tagTemplate`.
        # Corresponds to the JSON property `searchResultSubtype`
        # @return [String]
        attr_accessor :search_result_subtype
      
        # Type of the search result. You can use this field to determine which get
        # method to call to fetch the full resource.
        # Corresponds to the JSON property `searchResultType`
        # @return [String]
        attr_accessor :search_result_type
      
        # Custom source system that you can manually integrate Data Catalog with.
        # Corresponds to the JSON property `userSpecifiedSystem`
        # @return [String]
        attr_accessor :user_specified_system
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fully_qualified_name = args[:fully_qualified_name] if args.key?(:fully_qualified_name)
          @integrated_system = args[:integrated_system] if args.key?(:integrated_system)
          @linked_resource = args[:linked_resource] if args.key?(:linked_resource)
          @modify_time = args[:modify_time] if args.key?(:modify_time)
          @relative_resource_name = args[:relative_resource_name] if args.key?(:relative_resource_name)
          @search_result_subtype = args[:search_result_subtype] if args.key?(:search_result_subtype)
          @search_result_type = args[:search_result_type] if args.key?(:search_result_type)
          @user_specified_system = args[:user_specified_system] if args.key?(:user_specified_system)
        end
      end
      
      # A nested protocol buffer that represents a policy tag and all its descendants.
      class GoogleCloudDatacatalogV1SerializedPolicyTag
        include Google::Apis::Core::Hashable
      
        # Children of the policy tag, if any.
        # Corresponds to the JSON property `childPolicyTags`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedPolicyTag>]
        attr_accessor :child_policy_tags
      
        # Description of the serialized policy tag. At most 2000 bytes when encoded in
        # UTF-8. If not set, defaults to an empty description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the policy tag. At most 200 bytes when encoded in
        # UTF-8.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Resource name of the policy tag. This field is ignored when calling `
        # ImportTaxonomies`.
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
      
      # A nested protocol buffer that represents a taxonomy and the hierarchy of its
      # policy tags. Used for taxonomy replacement, import, and export.
      class GoogleCloudDatacatalogV1SerializedTaxonomy
        include Google::Apis::Core::Hashable
      
        # A list of policy types that are activated per taxonomy.
        # Corresponds to the JSON property `activatedPolicyTypes`
        # @return [Array<String>]
        attr_accessor :activated_policy_types
      
        # Description of the serialized taxonomy. At most 2000 bytes when encoded in UTF-
        # 8. If not set, defaults to an empty description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. Display name of the taxonomy. At most 200 bytes when encoded in UTF-
        # 8.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Top level policy tags associated with the taxonomy, if any.
        # Corresponds to the JSON property `policyTags`
        # @return [Array<Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedPolicyTag>]
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
      
      # Request message for StarEntry.
      class GoogleCloudDatacatalogV1StarEntryRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for StarEntry. Empty for now
      class GoogleCloudDatacatalogV1StarEntryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Details the properties of the underlying storage.
      class GoogleCloudDatacatalogV1StorageProperties
        include Google::Apis::Core::Hashable
      
        # Patterns to identify a set of files for this fileset. Examples of a valid `
        # file_pattern`: * `gs://bucket_name/dir/*`: matches all files in the `
        # bucket_name/dir` directory * `gs://bucket_name/dir/**`: matches all files in
        # the `bucket_name/dir` and all subdirectories recursively * `gs://bucket_name/
        # file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/?
        # ?.txt`: matches files with two characters followed by `.txt` in `bucket_name` *
        # `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel
        # character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`:
        # matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `
        # bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name`
        # that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://
        # another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
        # Corresponds to the JSON property `filePattern`
        # @return [Array<String>]
        attr_accessor :file_pattern
      
        # File type in MIME format, for example, `text/plain`.
        # Corresponds to the JSON property `fileType`
        # @return [String]
        attr_accessor :file_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_pattern = args[:file_pattern] if args.key?(:file_pattern)
          @file_type = args[:file_type] if args.key?(:file_type)
        end
      end
      
      # Timestamps associated with this resource in a particular system.
      class GoogleCloudDatacatalogV1SystemTimestamps
        include Google::Apis::Core::Hashable
      
        # Creation timestamp of the resource within the given system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Expiration timestamp of the resource within the given system.
        # Currently only applicable to BigQuery resources.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Timestamp of the last modification of the resource or its metadata within a
        # given system. Note: Depending on the source system, not every modification
        # updates this timestamp. For example, BigQuery timestamps every metadata
        # modification but not data or permission changes.
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
      
      # Normal BigQuery table specification.
      class GoogleCloudDatacatalogV1TableSpec
        include Google::Apis::Core::Hashable
      
        # Output only. If the table is date-sharded, that is, it matches the `[prefix]
        # YYYYMMDD` name pattern, this field is the Data Catalog resource name of the
        # date-sharded grouped entry. For example: `projects/`PROJECT_ID`/locations/`
        # LOCATION`/entrygroups/`ENTRY_GROUP_ID`/entries/`ENTRY_ID``. Otherwise, `
        # grouped_entry` is empty.
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
      
      # Tags contain custom metadata and are attached to Data Catalog resources. Tags
      # conform with the specification of their tag template. See [Data Catalog IAM](
      # https://cloud.google.com/data-catalog/docs/concepts/iam) for information on
      # the permissions needed to create or view tags.
      class GoogleCloudDatacatalogV1Tag
        include Google::Apis::Core::Hashable
      
        # Resources like entry can have schemas associated with them. This scope allows
        # you to attach tags to an individual column based on that schema. To attach a
        # tag to a nested column, separate column names with a dot (`.`). Example: `
        # column.nested_column`.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Required. Maps the ID of a tag field to its value and additional information
        # about that field. Tag template defines valid field IDs. A tag must have at
        # least 1 field and at most 500 fields.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagField>]
        attr_accessor :fields
      
        # The resource name of the tag in URL format where tag ID is a system-generated
        # identifier. Note: The tag itself might not be stored in the location specified
        # in its name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The resource name of the tag template this tag uses. Example: `
        # projects/`PROJECT_ID`/locations/`LOCATION`/tagTemplates/`TAG_TEMPLATE_ID``
        # This field cannot be modified after creation.
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
      
      # Contains the value and additional information on a field within a Tag.
      class GoogleCloudDatacatalogV1TagField
        include Google::Apis::Core::Hashable
      
        # The value of a tag field with a boolean type.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # Output only. The display name of this field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The value of a tag field with a double type.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # An enum value.
        # Corresponds to the JSON property `enumValue`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagFieldEnumValue]
        attr_accessor :enum_value
      
        # Output only. The order of this field with respect to other fields in this tag.
        # Can be set by Tag. For example, a higher value can indicate a more important
        # field. The value can be negative. Multiple fields can have the same order, and
        # field orders within a tag don't have to be sequential.
        # Corresponds to the JSON property `order`
        # @return [Fixnum]
        attr_accessor :order
      
        # The value of a tag field with a rich text type. The maximum length is 10 MiB
        # as this value holds HTML descriptions including encoded images. The maximum
        # length of the text without images is 100 KiB.
        # Corresponds to the JSON property `richtextValue`
        # @return [String]
        attr_accessor :richtext_value
      
        # The value of a tag field with a string type. The maximum length is 2000 UTF-8
        # characters.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        # The value of a tag field with a timestamp type.
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
          @richtext_value = args[:richtext_value] if args.key?(:richtext_value)
          @string_value = args[:string_value] if args.key?(:string_value)
          @timestamp_value = args[:timestamp_value] if args.key?(:timestamp_value)
        end
      end
      
      # An enum value.
      class GoogleCloudDatacatalogV1TagFieldEnumValue
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
      
      # A tag template defines a tag that can have one or more typed fields. The
      # template is used to create tags that are attached to GCP resources. [Tag
      # template roles] (https://cloud.google.com/iam/docs/understanding-roles#data-
      # catalog-roles) provide permissions to create, edit, and use the template. For
      # example, see the [TagTemplate User] (https://cloud.google.com/data-catalog/
      # docs/how-to/template-user) role that includes a permission to use the tag
      # template to tag resources.
      class GoogleCloudDatacatalogV1TagTemplate
        include Google::Apis::Core::Hashable
      
        # Display name for this template. Defaults to an empty string. The name must
        # contain only Unicode letters, numbers (0-9), underscores (_), dashes (-),
        # spaces ( ), and can't start or end with spaces. The maximum length is 200
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Map of tag template field IDs to the settings for the field. This
        # map is an exhaustive list of the allowed fields. The map must contain at least
        # one field and at most 500 fields. The keys to this map are tag template field
        # IDs. The IDs have the following limitations: * Can contain uppercase and
        # lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1
        # character and at most 64 characters long. * Must start with a letter or
        # underscore.
        # Corresponds to the JSON property `fields`
        # @return [Hash<String,Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField>]
        attr_accessor :fields
      
        # Indicates whether tags created with this template are public. Public tags do
        # not require tag template access to appear in ListTags API response.
        # Additionally, you can search for a public tag by value with a simple search
        # query in addition to using a ``tag:`` predicate.
        # Corresponds to the JSON property `isPubliclyReadable`
        # @return [Boolean]
        attr_accessor :is_publicly_readable
        alias_method :is_publicly_readable?, :is_publicly_readable
      
        # The resource name of the tag template in URL format. Note: The tag template
        # itself and its child resources might not be stored in the location specified
        # in its name.
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
          @is_publicly_readable = args[:is_publicly_readable] if args.key?(:is_publicly_readable)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The template for an individual field within a tag template.
      class GoogleCloudDatacatalogV1TagTemplateField
        include Google::Apis::Core::Hashable
      
        # The description for this field. Defaults to an empty string.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The display name for this field. Defaults to an empty string. The name must
        # contain only Unicode letters, numbers (0-9), underscores (_), dashes (-),
        # spaces ( ), and can't start or end with spaces. The maximum length is 200
        # characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # If true, this field is required. Defaults to false.
        # Corresponds to the JSON property `isRequired`
        # @return [Boolean]
        attr_accessor :is_required
        alias_method :is_required?, :is_required
      
        # Output only. The resource name of the tag template field in URL format.
        # Example: `projects/`PROJECT_ID`/locations/`LOCATION`/tagTemplates/`
        # TAG_TEMPLATE`/fields/`FIELD`` Note: The tag template field itself might not be
        # stored in the location specified in its name. The name must contain only
        # letters (a-z, A-Z), numbers (0-9), or underscores (_), and must start with a
        # letter or underscore. The maximum length is 64 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The order of this field with respect to other fields in this tag template. For
        # example, a higher value can indicate a more important field. The value can be
        # negative. Multiple fields can have the same order and field orders within a
        # tag don't have to be sequential.
        # Corresponds to the JSON property `order`
        # @return [Fixnum]
        attr_accessor :order
      
        # Required. The type of value this tag field can contain.
        # Corresponds to the JSON property `type`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldType]
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
      
      # A taxonomy is a collection of hierarchical policy tags that classify data
      # along a common axis. For example, a "data sensitivity" taxonomy might contain
      # the following policy tags: ``` + PII + Account number + Age + SSN + Zipcode +
      # Financials + Revenue ``` A "data origin" taxonomy might contain the following
      # policy tags: ``` + User data + Employee data + Partner data + Public data ```
      class GoogleCloudDatacatalogV1Taxonomy
        include Google::Apis::Core::Hashable
      
        # Optional. A list of policy types that are activated for this taxonomy. If not
        # set, defaults to an empty list.
        # Corresponds to the JSON property `activatedPolicyTypes`
        # @return [Array<String>]
        attr_accessor :activated_policy_types
      
        # Optional. Description of this taxonomy. If not set, defaults to empty. The
        # description must contain only Unicode characters, tabs, newlines, carriage
        # returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. User-defined name of this taxonomy. The name can't start or end with
        # spaces, must contain only Unicode letters, numbers, underscores, dashes, and
        # spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy
        # display name must be unique within an organization.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Resource name of this taxonomy in URL format. Note: Policy tag
        # manager generates unique taxonomy IDs.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Number of policy tags in this taxonomy.
        # Corresponds to the JSON property `policyTagCount`
        # @return [Fixnum]
        attr_accessor :policy_tag_count
      
        # Timestamps associated with this resource in a particular system.
        # Corresponds to the JSON property `taxonomyTimestamps`
        # @return [Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps]
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
      
      # Request message for UnstarEntry.
      class GoogleCloudDatacatalogV1UnstarEntryRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for UnstarEntry. Empty for now
      class GoogleCloudDatacatalogV1UnstarEntryResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The set of all usage signals that Data Catalog stores. Note: Usually, these
      # signals are updated daily. In rare cases, an update may fail but will be
      # performed again on the next day.
      class GoogleCloudDatacatalogV1UsageSignal
        include Google::Apis::Core::Hashable
      
        # The end timestamp of the duration of usage statistics.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. BigQuery usage statistics over each of the predefined time ranges.
        # Supported time ranges are ``"24H", "7D", "30D"``.
        # Corresponds to the JSON property `usageWithinTimeRange`
        # @return [Hash<String,Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UsageStats>]
        attr_accessor :usage_within_time_range
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @update_time = args[:update_time] if args.key?(:update_time)
          @usage_within_time_range = args[:usage_within_time_range] if args.key?(:usage_within_time_range)
        end
      end
      
      # Detailed statistics on the entry's usage. Usage statistics have the following
      # limitations: - Only BigQuery tables have them. - They only include BigQuery
      # query jobs. - They might be underestimated because wildcard table references
      # are not yet counted. For more information, see [Querying multiple tables using
      # a wildcard table] (https://cloud.google.com/bigquery/docs/querying-wildcard-
      # tables)
      class GoogleCloudDatacatalogV1UsageStats
        include Google::Apis::Core::Hashable
      
        # The number of cancelled attempts to use the underlying entry.
        # Corresponds to the JSON property `totalCancellations`
        # @return [Float]
        attr_accessor :total_cancellations
      
        # The number of successful uses of the underlying entry.
        # Corresponds to the JSON property `totalCompletions`
        # @return [Float]
        attr_accessor :total_completions
      
        # Total time spent only on successful uses, in milliseconds.
        # Corresponds to the JSON property `totalExecutionTimeForCompletionsMillis`
        # @return [Float]
        attr_accessor :total_execution_time_for_completions_millis
      
        # The number of failed attempts to use the underlying entry.
        # Corresponds to the JSON property `totalFailures`
        # @return [Float]
        attr_accessor :total_failures
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @total_cancellations = args[:total_cancellations] if args.key?(:total_cancellations)
          @total_completions = args[:total_completions] if args.key?(:total_completions)
          @total_execution_time_for_completions_millis = args[:total_execution_time_for_completions_millis] if args.key?(:total_execution_time_for_completions_millis)
          @total_failures = args[:total_failures] if args.key?(:total_failures)
        end
      end
      
      # Table view specification.
      class GoogleCloudDatacatalogV1ViewSpec
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
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::DatacatalogV1::Binding>]
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
        # @return [Google::Apis::DatacatalogV1::Policy]
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
    end
  end
end
