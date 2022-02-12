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
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GetPolicyOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1BigQueryConnectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1BigQueryDateShardedSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1BigQueryRoutineSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1BigQueryTableSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1BusinessContext
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ColumnSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1Contacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ContactsPerson
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1CrossRegionalSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1DataSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1DataSourceConnectionSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1DatabaseTableSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1DataplexExternalTable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1DataplexFilesetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1DataplexSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1DataplexTableSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1Entry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1EntryGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1EntryOverview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ExportTaxonomiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1FieldType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1FieldTypeEnumType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1FilesetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1GcsFileSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1GcsFilesetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ImportTaxonomiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ImportTaxonomiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1InlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ListEntriesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ListEntryGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ListPolicyTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ListTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ListTaxonomiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ModifyEntryContactsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ModifyEntryOverviewRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PersonalDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1PolicyTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ReplaceTaxonomyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1RoutineSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1RoutineSpecArgument
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogRequestScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1SerializedPolicyTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1SerializedTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1StarEntryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1StarEntryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1StorageProperties
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1SystemTimestamps
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1TableSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1Tag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1TagField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1TagFieldEnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1TagTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1TagTemplateField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1Taxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1UnstarEntryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1UnstarEntryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1UsageSignal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1UsageStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1ViewSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::DatacatalogV1::Expr, decorator: Google::Apis::DatacatalogV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Expr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
      
      class GetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :options, as: 'options', class: Google::Apis::DatacatalogV1::GetPolicyOptions, decorator: Google::Apis::DatacatalogV1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleCloudDatacatalogV1BigQueryConnectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql, as: 'cloudSql', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec::Representation
      
          property :connection_type, as: 'connectionType'
          property :has_credential, as: 'hasCredential'
        end
      end
      
      class GoogleCloudDatacatalogV1BigQueryDateShardedSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :latest_shard_resource, as: 'latestShardResource'
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :table_prefix, as: 'tablePrefix'
        end
      end
      
      class GoogleCloudDatacatalogV1BigQueryRoutineSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :imported_libraries, as: 'importedLibraries'
        end
      end
      
      class GoogleCloudDatacatalogV1BigQueryTableSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :table_source_type, as: 'tableSourceType'
          property :table_spec, as: 'tableSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TableSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TableSpec::Representation
      
          property :view_spec, as: 'viewSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ViewSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ViewSpec::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1BusinessContext
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contacts, as: 'contacts', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts::Representation
      
          property :entry_overview, as: 'entryOverview', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1CloudSqlBigQueryConnectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :database, as: 'database'
          property :instance_id, as: 'instanceId'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatacatalogV1ColumnSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :description, as: 'description'
          property :mode, as: 'mode'
          collection :subcolumns, as: 'subcolumns', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ColumnSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ColumnSchema::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatacatalogV1Contacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :people, as: 'people', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ContactsPerson, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ContactsPerson::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ContactsPerson
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :designation, as: 'designation'
          property :email, as: 'email'
        end
      end
      
      class GoogleCloudDatacatalogV1CrossRegionalSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :taxonomy, as: 'taxonomy'
        end
      end
      
      class GoogleCloudDatacatalogV1DataSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resource, as: 'resource'
          property :service, as: 'service'
          property :source_entry, as: 'sourceEntry'
          property :storage_properties, as: 'storageProperties', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StorageProperties, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1StorageProperties::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1DataSourceConnectionSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_connection_spec, as: 'bigqueryConnectionSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryConnectionSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryConnectionSpec::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1DatabaseTableSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataplex_table, as: 'dataplexTable', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexTableSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexTableSpec::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatacatalogV1DataplexExternalTable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_catalog_entry, as: 'dataCatalogEntry'
          property :fully_qualified_name, as: 'fullyQualifiedName'
          property :google_cloud_resource, as: 'googleCloudResource'
          property :system, as: 'system'
        end
      end
      
      class GoogleCloudDatacatalogV1DataplexFilesetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataplex_spec, as: 'dataplexSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexSpec::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1DataplexSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset'
          property :compression_format, as: 'compressionFormat'
          property :data_format, as: 'dataFormat', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchema::Representation
      
          property :project_id, as: 'projectId'
        end
      end
      
      class GoogleCloudDatacatalogV1DataplexTableSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataplex_spec, as: 'dataplexSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexSpec::Representation
      
          collection :external_tables, as: 'externalTables', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexExternalTable, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexExternalTable::Representation
      
          property :user_managed, as: 'userManaged'
        end
      end
      
      class GoogleCloudDatacatalogV1Entry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_date_sharded_spec, as: 'bigqueryDateShardedSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryDateShardedSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryDateShardedSpec::Representation
      
          property :bigquery_table_spec, as: 'bigqueryTableSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryTableSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryTableSpec::Representation
      
          property :business_context, as: 'businessContext', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BusinessContext, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BusinessContext::Representation
      
          property :data_source, as: 'dataSource', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataSource, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataSource::Representation
      
          property :data_source_connection_spec, as: 'dataSourceConnectionSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataSourceConnectionSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataSourceConnectionSpec::Representation
      
          property :database_table_spec, as: 'databaseTableSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DatabaseTableSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DatabaseTableSpec::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :fileset_spec, as: 'filesetSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FilesetSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FilesetSpec::Representation
      
          property :fully_qualified_name, as: 'fullyQualifiedName'
          property :gcs_fileset_spec, as: 'gcsFilesetSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1GcsFilesetSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1GcsFilesetSpec::Representation
      
          property :integrated_system, as: 'integratedSystem'
          hash :labels, as: 'labels'
          property :linked_resource, as: 'linkedResource'
          property :name, as: 'name'
          property :personal_details, as: 'personalDetails', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PersonalDetails, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PersonalDetails::Representation
      
          property :routine_spec, as: 'routineSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RoutineSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RoutineSpec::Representation
      
          property :schema, as: 'schema', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Schema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Schema::Representation
      
          property :source_system_timestamps, as: 'sourceSystemTimestamps', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps::Representation
      
          property :type, as: 'type'
          property :usage_signal, as: 'usageSignal', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UsageSignal, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UsageSignal::Representation
      
          property :user_specified_system, as: 'userSpecifiedSystem'
          property :user_specified_type, as: 'userSpecifiedType'
        end
      end
      
      class GoogleCloudDatacatalogV1EntryGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_catalog_timestamps, as: 'dataCatalogTimestamps', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatacatalogV1EntryOverview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :overview, as: 'overview'
        end
      end
      
      class GoogleCloudDatacatalogV1ExportTaxonomiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1FieldType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enum_type, as: 'enumType', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldTypeEnumType, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldTypeEnumType::Representation
      
          property :primitive_type, as: 'primitiveType'
        end
      end
      
      class GoogleCloudDatacatalogV1FieldTypeEnumType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1FieldTypeEnumTypeEnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudDatacatalogV1FilesetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataplex_fileset, as: 'dataplexFileset', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexFilesetSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1DataplexFilesetSpec::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1GcsFileSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
          property :gcs_timestamps, as: 'gcsTimestamps', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps::Representation
      
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
        end
      end
      
      class GoogleCloudDatacatalogV1GcsFilesetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_patterns, as: 'filePatterns'
          collection :sample_gcs_file_specs, as: 'sampleGcsFileSpecs', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1GcsFileSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1GcsFileSpec::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ImportTaxonomiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cross_regional_source, as: 'crossRegionalSource', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1CrossRegionalSource, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1CrossRegionalSource::Representation
      
          property :inline_source, as: 'inlineSource', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1InlineSource, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1InlineSource::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ImportTaxonomiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1InlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ListEntriesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Entry::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatacatalogV1ListEntryGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entry_groups, as: 'entryGroups', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryGroup::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudDatacatalogV1ListPolicyTagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policy_tags, as: 'policyTags', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PolicyTag::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ListTagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tags, as: 'tags', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Tag::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ListTaxonomiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Taxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ModifyEntryContactsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contacts, as: 'contacts', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1Contacts::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1ModifyEntryOverviewRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :entry_overview, as: 'entryOverview', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1EntryOverview::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1PersonalDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :star_time, as: 'starTime'
          property :starred, as: 'starred'
        end
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :avro, as: 'avro', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema::Representation
      
          property :csv, as: 'csv', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema::Representation
      
          property :orc, as: 'orc', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema::Representation
      
          property :parquet, as: 'parquet', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema::Representation
      
          property :protobuf, as: 'protobuf', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema::Representation
      
          property :thrift, as: 'thrift', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaAvroSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaCsvSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaOrcSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaParquetSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaProtobufSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDatacatalogV1PhysicalSchemaThriftSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
        end
      end
      
      class GoogleCloudDatacatalogV1PolicyTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_policy_tags, as: 'childPolicyTags'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :parent_policy_tag, as: 'parentPolicyTag'
        end
      end
      
      class GoogleCloudDatacatalogV1RenameTagTemplateFieldEnumValueRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_enum_value_display_name, as: 'newEnumValueDisplayName'
        end
      end
      
      class GoogleCloudDatacatalogV1RenameTagTemplateFieldRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_tag_template_field_id, as: 'newTagTemplateFieldId'
        end
      end
      
      class GoogleCloudDatacatalogV1ReplaceTaxonomyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :serialized_taxonomy, as: 'serializedTaxonomy', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedTaxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1RoutineSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_routine_spec, as: 'bigqueryRoutineSpec', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryRoutineSpec, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1BigQueryRoutineSpec::Representation
      
          property :definition_body, as: 'definitionBody'
          property :language, as: 'language'
          property :return_type, as: 'returnType'
          collection :routine_arguments, as: 'routineArguments', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RoutineSpecArgument, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1RoutineSpecArgument::Representation
      
          property :routine_type, as: 'routineType'
        end
      end
      
      class GoogleCloudDatacatalogV1RoutineSpecArgument
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatacatalogV1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ColumnSchema, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1ColumnSchema::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
          property :scope, as: 'scope', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogRequestScope, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogRequestScope::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogRequestScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_gcp_public_datasets, as: 'includeGcpPublicDatasets'
          collection :include_org_ids, as: 'includeOrgIds'
          collection :include_project_ids, as: 'includeProjectIds'
          property :include_public_tag_templates, as: 'includePublicTagTemplates'
          collection :restricted_locations, as: 'restrictedLocations'
          property :starred_only, as: 'starredOnly'
        end
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogResult, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SearchCatalogResult::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudDatacatalogV1SearchCatalogResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :fully_qualified_name, as: 'fullyQualifiedName'
          property :integrated_system, as: 'integratedSystem'
          property :linked_resource, as: 'linkedResource'
          property :modify_time, as: 'modifyTime'
          property :relative_resource_name, as: 'relativeResourceName'
          property :search_result_subtype, as: 'searchResultSubtype'
          property :search_result_type, as: 'searchResultType'
          property :user_specified_system, as: 'userSpecifiedSystem'
        end
      end
      
      class GoogleCloudDatacatalogV1SerializedPolicyTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_policy_tags, as: 'childPolicyTags', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedPolicyTag, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedPolicyTag::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :policy_tag, as: 'policyTag'
        end
      end
      
      class GoogleCloudDatacatalogV1SerializedTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :activated_policy_types, as: 'activatedPolicyTypes'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :policy_tags, as: 'policyTags', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedPolicyTag, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SerializedPolicyTag::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1StarEntryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatacatalogV1StarEntryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatacatalogV1StorageProperties
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_pattern, as: 'filePattern'
          property :file_type, as: 'fileType'
        end
      end
      
      class GoogleCloudDatacatalogV1SystemTimestamps
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :expire_time, as: 'expireTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDatacatalogV1TableSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grouped_entry, as: 'groupedEntry'
        end
      end
      
      class GoogleCloudDatacatalogV1Tag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          hash :fields, as: 'fields', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagField, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagField::Representation
      
          property :name, as: 'name'
          property :template, as: 'template'
          property :template_display_name, as: 'templateDisplayName'
        end
      end
      
      class GoogleCloudDatacatalogV1TagField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :display_name, as: 'displayName'
          property :double_value, as: 'doubleValue'
          property :enum_value, as: 'enumValue', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagFieldEnumValue, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagFieldEnumValue::Representation
      
          property :order, as: 'order'
          property :richtext_value, as: 'richtextValue'
          property :string_value, as: 'stringValue'
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class GoogleCloudDatacatalogV1TagFieldEnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudDatacatalogV1TagTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :fields, as: 'fields', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1TagTemplateField::Representation
      
          property :is_publicly_readable, as: 'isPubliclyReadable'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatacatalogV1TagTemplateField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_required, as: 'isRequired'
          property :name, as: 'name'
          property :order, as: 'order'
          property :type, as: 'type', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldType, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1FieldType::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1Taxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :activated_policy_types, as: 'activatedPolicyTypes'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :policy_tag_count, as: 'policyTagCount'
          property :taxonomy_timestamps, as: 'taxonomyTimestamps', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1SystemTimestamps::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1UnstarEntryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatacatalogV1UnstarEntryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudDatacatalogV1UsageSignal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :update_time, as: 'updateTime'
          hash :usage_within_time_range, as: 'usageWithinTimeRange', class: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UsageStats, decorator: Google::Apis::DatacatalogV1::GoogleCloudDatacatalogV1UsageStats::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1UsageStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :total_cancellations, as: 'totalCancellations'
          property :total_completions, as: 'totalCompletions'
          property :total_execution_time_for_completions_millis, as: 'totalExecutionTimeForCompletionsMillis'
          property :total_failures, as: 'totalFailures'
        end
      end
      
      class GoogleCloudDatacatalogV1ViewSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :view_query, as: 'viewQuery'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::DatacatalogV1::Binding, decorator: Google::Apis::DatacatalogV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DatacatalogV1::Policy, decorator: Google::Apis::DatacatalogV1::Policy::Representation
      
        end
      end
      
      class TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
    end
  end
end
