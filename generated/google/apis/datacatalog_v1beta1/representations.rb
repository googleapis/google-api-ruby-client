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
      
      class GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1BigQueryTableSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ColumnSchema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1Entry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1EntryGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1FieldType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumType
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1GcsFileSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1GcsFilesetSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1InlineSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ListTagsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1PolicyTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1Schema
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1SerializedPolicyTag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1SerializedTaxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1SystemTimestamps
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1TableSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1Tag
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1TagField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1TagFieldEnumValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1TagTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1TagTemplateField
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1Taxonomy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudDatacatalogV1beta1ViewSpec
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
          property :condition, as: 'condition', class: Google::Apis::DatacatalogV1beta1::Expr, decorator: Google::Apis::DatacatalogV1beta1::Expr::Representation
      
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
          property :options, as: 'options', class: Google::Apis::DatacatalogV1beta1::GetPolicyOptions, decorator: Google::Apis::DatacatalogV1beta1::GetPolicyOptions::Representation
      
        end
      end
      
      class GetPolicyOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :requested_policy_version, as: 'requestedPolicyVersion'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset, as: 'dataset'
          property :shard_count, :numeric_string => true, as: 'shardCount'
          property :table_prefix, as: 'tablePrefix'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1BigQueryTableSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :table_source_type, as: 'tableSourceType'
          property :table_spec, as: 'tableSpec', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TableSpec, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TableSpec::Representation
      
          property :view_spec, as: 'viewSpec', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ViewSpec, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ViewSpec::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ColumnSchema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          property :description, as: 'description'
          property :mode, as: 'mode'
          collection :subcolumns, as: 'subcolumns', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1Entry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bigquery_date_sharded_spec, as: 'bigqueryDateShardedSpec', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryDateShardedSpec::Representation
      
          property :bigquery_table_spec, as: 'bigqueryTableSpec', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryTableSpec, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1BigQueryTableSpec::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :gcs_fileset_spec, as: 'gcsFilesetSpec', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFilesetSpec, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFilesetSpec::Representation
      
          property :linked_resource, as: 'linkedResource'
          property :name, as: 'name'
          property :schema, as: 'schema', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Schema, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Schema::Representation
      
          property :source_system_timestamps, as: 'sourceSystemTimestamps', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps::Representation
      
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1EntryGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data_catalog_timestamps, as: 'dataCatalogTimestamps', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ExportTaxonomiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedTaxonomy, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedTaxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1FieldType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enum_type, as: 'enumType', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumType, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumType::Representation
      
          property :primitive_type, as: 'primitiveType'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumType
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_values, as: 'allowedValues', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1FieldTypeEnumTypeEnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1GcsFileSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_path, as: 'filePath'
          property :gcs_timestamps, as: 'gcsTimestamps', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SystemTimestamps::Representation
      
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1GcsFilesetSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_patterns, as: 'filePatterns'
          collection :sample_gcs_file_specs, as: 'sampleGcsFileSpecs', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFileSpec, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1GcsFileSpec::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ImportTaxonomiesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inline_source, as: 'inlineSource', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1InlineSource, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1InlineSource::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ImportTaxonomiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1InlineSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedTaxonomy, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedTaxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ListPolicyTagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policy_tags, as: 'policyTags', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1PolicyTag::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ListTagsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tags, as: 'tags', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Tag::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ListTaxonomiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :taxonomies, as: 'taxonomies', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1Taxonomy::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1PolicyTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_policy_tags, as: 'childPolicyTags'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :parent_policy_tag, as: 'parentPolicyTag'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1RenameTagTemplateFieldRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_tag_template_field_id, as: 'newTagTemplateFieldId'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1Schema
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :columns, as: 'columns', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1ColumnSchema::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :query, as: 'query'
          property :scope, as: 'scope', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogRequestScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_gcp_public_datasets, as: 'includeGcpPublicDatasets'
          collection :include_org_ids, as: 'includeOrgIds'
          collection :include_project_ids, as: 'includeProjectIds'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :results, as: 'results', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResult, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SearchCatalogResult::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1SearchCatalogResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :linked_resource, as: 'linkedResource'
          property :relative_resource_name, as: 'relativeResourceName'
          property :search_result_subtype, as: 'searchResultSubtype'
          property :search_result_type, as: 'searchResultType'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1SerializedPolicyTag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :child_policy_tags, as: 'childPolicyTags', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedPolicyTag, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedPolicyTag::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1SerializedTaxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :policy_tags, as: 'policyTags', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedPolicyTag, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1SerializedPolicyTag::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1SystemTimestamps
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :expire_time, as: 'expireTime'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1TableSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :grouped_entry, as: 'groupedEntry'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1Tag
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column, as: 'column'
          hash :fields, as: 'fields', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagField, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagField::Representation
      
          property :name, as: 'name'
          property :template, as: 'template'
          property :template_display_name, as: 'templateDisplayName'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1TagField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :display_name, as: 'displayName'
          property :double_value, as: 'doubleValue'
          property :enum_value, as: 'enumValue', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagFieldEnumValue, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagFieldEnumValue::Representation
      
          property :string_value, as: 'stringValue'
          property :timestamp_value, as: 'timestampValue'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1TagFieldEnumValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1TagTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :fields, as: 'fields', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1TagTemplateField::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1TagTemplateField
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :is_required, as: 'isRequired'
          property :name, as: 'name'
          property :type, as: 'type', class: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldType, decorator: Google::Apis::DatacatalogV1beta1::GoogleCloudDatacatalogV1beta1FieldType::Representation
      
        end
      end
      
      class GoogleCloudDatacatalogV1beta1Taxonomy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :activated_policy_types, as: 'activatedPolicyTypes'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudDatacatalogV1beta1ViewSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :view_query, as: 'viewQuery'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :bindings, as: 'bindings', class: Google::Apis::DatacatalogV1beta1::Binding, decorator: Google::Apis::DatacatalogV1beta1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::DatacatalogV1beta1::Policy, decorator: Google::Apis::DatacatalogV1beta1::Policy::Representation
      
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
