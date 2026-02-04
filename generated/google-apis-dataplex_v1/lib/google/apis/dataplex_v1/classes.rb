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
    module DataplexV1
      
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
      
      # Action represents an issue requiring administrator action for resolution.
      class GoogleCloudDataplexV1Action
        include Google::Apis::Core::Hashable
      
        # Output only. The relative resource name of the asset, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/assets/
        # `asset_id`.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # The category of issue associated with the action.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The list of data locations associated with this action. Cloud Storage
        # locations are represented as URI paths(E.g. gs://bucket/table1/year=2020/month=
        # Jan/). BigQuery locations refer to resource names(E.g. bigquery.googleapis.com/
        # projects/project-id/datasets/dataset-id).
        # Corresponds to the JSON property `dataLocations`
        # @return [Array<String>]
        attr_accessor :data_locations
      
        # The time that the issue was detected.
        # Corresponds to the JSON property `detectTime`
        # @return [String]
        attr_accessor :detect_time
      
        # Failed to apply security policy to the managed resource(s) under a lake, zone
        # or an asset. For a lake or zone resource, one or more underlying assets has a
        # failure applying security policy to the associated managed resource.
        # Corresponds to the JSON property `failedSecurityPolicyApply`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionFailedSecurityPolicyApply]
        attr_accessor :failed_security_policy_apply
      
        # Action details for incompatible schemas detected by discovery.
        # Corresponds to the JSON property `incompatibleDataSchema`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionIncompatibleDataSchema]
        attr_accessor :incompatible_data_schema
      
        # Action details for invalid or unsupported data files detected by discovery.
        # Corresponds to the JSON property `invalidDataFormat`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataFormat]
        attr_accessor :invalid_data_format
      
        # Action details for invalid data arrangement.
        # Corresponds to the JSON property `invalidDataOrganization`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataOrganization]
        attr_accessor :invalid_data_organization
      
        # Action details for invalid or unsupported partitions detected by discovery.
        # Corresponds to the JSON property `invalidDataPartition`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionInvalidDataPartition]
        attr_accessor :invalid_data_partition
      
        # Detailed description of the issue requiring action.
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # Output only. The relative resource name of the lake, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`.
        # Corresponds to the JSON property `lake`
        # @return [String]
        attr_accessor :lake
      
        # Action details for absence of data detected by discovery.
        # Corresponds to the JSON property `missingData`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingData]
        attr_accessor :missing_data
      
        # Action details for resource references in assets that cannot be located.
        # Corresponds to the JSON property `missingResource`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionMissingResource]
        attr_accessor :missing_resource
      
        # Output only. The relative resource name of the action, of the form: projects/`
        # project`/locations/`location`/lakes/`lake`/actions/`action` projects/`project`/
        # locations/`location`/lakes/`lake`/zones/`zone`/actions/`action` projects/`
        # project`/locations/`location`/lakes/`lake`/zones/`zone`/assets/`asset`/actions/
        # `action`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Action details for unauthorized resource issues raised to indicate that the
        # service account associated with the lake instance is not authorized to access
        # or manage the resource associated with an asset.
        # Corresponds to the JSON property `unauthorizedResource`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ActionUnauthorizedResource]
        attr_accessor :unauthorized_resource
      
        # Output only. The relative resource name of the zone, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # Corresponds to the JSON property `zone`
        # @return [String]
        attr_accessor :zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @category = args[:category] if args.key?(:category)
          @data_locations = args[:data_locations] if args.key?(:data_locations)
          @detect_time = args[:detect_time] if args.key?(:detect_time)
          @failed_security_policy_apply = args[:failed_security_policy_apply] if args.key?(:failed_security_policy_apply)
          @incompatible_data_schema = args[:incompatible_data_schema] if args.key?(:incompatible_data_schema)
          @invalid_data_format = args[:invalid_data_format] if args.key?(:invalid_data_format)
          @invalid_data_organization = args[:invalid_data_organization] if args.key?(:invalid_data_organization)
          @invalid_data_partition = args[:invalid_data_partition] if args.key?(:invalid_data_partition)
          @issue = args[:issue] if args.key?(:issue)
          @lake = args[:lake] if args.key?(:lake)
          @missing_data = args[:missing_data] if args.key?(:missing_data)
          @missing_resource = args[:missing_resource] if args.key?(:missing_resource)
          @name = args[:name] if args.key?(:name)
          @unauthorized_resource = args[:unauthorized_resource] if args.key?(:unauthorized_resource)
          @zone = args[:zone] if args.key?(:zone)
        end
      end
      
      # Failed to apply security policy to the managed resource(s) under a lake, zone
      # or an asset. For a lake or zone resource, one or more underlying assets has a
      # failure applying security policy to the associated managed resource.
      class GoogleCloudDataplexV1ActionFailedSecurityPolicyApply
        include Google::Apis::Core::Hashable
      
        # Resource name of one of the assets with failing security policy application.
        # Populated for a lake or zone resource only.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
        end
      end
      
      # Action details for incompatible schemas detected by discovery.
      class GoogleCloudDataplexV1ActionIncompatibleDataSchema
        include Google::Apis::Core::Hashable
      
        # The existing and expected schema of the table. The schema is provided as a
        # JSON formatted structure listing columns and data types.
        # Corresponds to the JSON property `existingSchema`
        # @return [String]
        attr_accessor :existing_schema
      
        # The new and incompatible schema within the table. The schema is provided as a
        # JSON formatted structured listing columns and data types.
        # Corresponds to the JSON property `newSchema`
        # @return [String]
        attr_accessor :new_schema
      
        # The list of data locations sampled and used for format/schema inference.
        # Corresponds to the JSON property `sampledDataLocations`
        # @return [Array<String>]
        attr_accessor :sampled_data_locations
      
        # Whether the action relates to a schema that is incompatible or modified.
        # Corresponds to the JSON property `schemaChange`
        # @return [String]
        attr_accessor :schema_change
      
        # The name of the table containing invalid data.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @existing_schema = args[:existing_schema] if args.key?(:existing_schema)
          @new_schema = args[:new_schema] if args.key?(:new_schema)
          @sampled_data_locations = args[:sampled_data_locations] if args.key?(:sampled_data_locations)
          @schema_change = args[:schema_change] if args.key?(:schema_change)
          @table = args[:table] if args.key?(:table)
        end
      end
      
      # Action details for invalid or unsupported data files detected by discovery.
      class GoogleCloudDataplexV1ActionInvalidDataFormat
        include Google::Apis::Core::Hashable
      
        # The expected data format of the entity.
        # Corresponds to the JSON property `expectedFormat`
        # @return [String]
        attr_accessor :expected_format
      
        # The new unexpected data format within the entity.
        # Corresponds to the JSON property `newFormat`
        # @return [String]
        attr_accessor :new_format
      
        # The list of data locations sampled and used for format/schema inference.
        # Corresponds to the JSON property `sampledDataLocations`
        # @return [Array<String>]
        attr_accessor :sampled_data_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expected_format = args[:expected_format] if args.key?(:expected_format)
          @new_format = args[:new_format] if args.key?(:new_format)
          @sampled_data_locations = args[:sampled_data_locations] if args.key?(:sampled_data_locations)
        end
      end
      
      # Action details for invalid data arrangement.
      class GoogleCloudDataplexV1ActionInvalidDataOrganization
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Action details for invalid or unsupported partitions detected by discovery.
      class GoogleCloudDataplexV1ActionInvalidDataPartition
        include Google::Apis::Core::Hashable
      
        # The issue type of InvalidDataPartition.
        # Corresponds to the JSON property `expectedStructure`
        # @return [String]
        attr_accessor :expected_structure
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @expected_structure = args[:expected_structure] if args.key?(:expected_structure)
        end
      end
      
      # Action details for absence of data detected by discovery.
      class GoogleCloudDataplexV1ActionMissingData
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Action details for resource references in assets that cannot be located.
      class GoogleCloudDataplexV1ActionMissingResource
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Action details for unauthorized resource issues raised to indicate that the
      # service account associated with the lake instance is not authorized to access
      # or manage the resource associated with an asset.
      class GoogleCloudDataplexV1ActionUnauthorizedResource
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An aspect is a single piece of metadata describing an entry.
      class GoogleCloudDataplexV1Aspect
        include Google::Apis::Core::Hashable
      
        # Information related to the source system of the aspect.
        # Corresponds to the JSON property `aspectSource`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectSource]
        attr_accessor :aspect_source
      
        # Output only. The resource name of the type used to create this Aspect.
        # Corresponds to the JSON property `aspectType`
        # @return [String]
        attr_accessor :aspect_type
      
        # Output only. The time when the Aspect was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. The content of the aspect, according to its aspect type schema. The
        # maximum size of the field is 120KB (encoded as UTF-8).
        # Corresponds to the JSON property `data`
        # @return [Hash<String,Object>]
        attr_accessor :data
      
        # Output only. The path in the entry under which the aspect is attached.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Output only. The time when the Aspect was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_source = args[:aspect_source] if args.key?(:aspect_source)
          @aspect_type = args[:aspect_type] if args.key?(:aspect_type)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data = args[:data] if args.key?(:data)
          @path = args[:path] if args.key?(:path)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information related to the source system of the aspect.
      class GoogleCloudDataplexV1AspectSource
        include Google::Apis::Core::Hashable
      
        # The time the aspect was created in the source system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The version of the data format used to produce this data. This field is used
        # to indicated when the underlying data format changes (e.g., schema
        # modifications, changes to the source URL format definition, etc).
        # Corresponds to the JSON property `dataVersion`
        # @return [String]
        attr_accessor :data_version
      
        # The time the aspect was last updated in the source system.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_version = args[:data_version] if args.key?(:data_version)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # AspectType is a template for creating Aspects, and represents the JSON-schema
      # for a given Entry, for example, BigQuery Table Schema.
      class GoogleCloudDataplexV1AspectType
        include Google::Apis::Core::Hashable
      
        # Authorization for an AspectType.
        # Corresponds to the JSON property `authorization`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeAuthorization]
        attr_accessor :authorization
      
        # Output only. The time when the AspectType was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Immutable. Stores data classification of the aspect.
        # Corresponds to the JSON property `dataClassification`
        # @return [String]
        attr_accessor :data_classification
      
        # Optional. Description of the AspectType.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # The service computes this checksum. The client may send it on update and
        # delete requests to ensure it has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. User-defined labels for the AspectType.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # MetadataTemplate definition for an AspectType.
        # Corresponds to the JSON property `metadataTemplate`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate]
        attr_accessor :metadata_template
      
        # Output only. The relative resource name of the AspectType, of the form:
        # projects/`project_number`/locations/`location_id`/aspectTypes/`aspect_type_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Denotes the transfer status of the Aspect Type. It is unspecified
        # for Aspect Types created from Dataplex API.
        # Corresponds to the JSON property `transferStatus`
        # @return [String]
        attr_accessor :transfer_status
      
        # Output only. System generated globally unique ID for the AspectType. If you
        # delete and recreate the AspectType with the same name, then this ID will be
        # different.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the AspectType was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization = args[:authorization] if args.key?(:authorization)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_classification = args[:data_classification] if args.key?(:data_classification)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @metadata_template = args[:metadata_template] if args.key?(:metadata_template)
          @name = args[:name] if args.key?(:name)
          @transfer_status = args[:transfer_status] if args.key?(:transfer_status)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Authorization for an AspectType.
      class GoogleCloudDataplexV1AspectTypeAuthorization
        include Google::Apis::Core::Hashable
      
        # Immutable. The IAM permission grantable on the EntryGroup to allow access to
        # instantiate Aspects of Dataplex Universal Catalog owned AspectTypes, only
        # settable for Dataplex Universal Catalog owned Types.
        # Corresponds to the JSON property `alternateUsePermission`
        # @return [String]
        attr_accessor :alternate_use_permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_use_permission = args[:alternate_use_permission] if args.key?(:alternate_use_permission)
        end
      end
      
      # MetadataTemplate definition for an AspectType.
      class GoogleCloudDataplexV1AspectTypeMetadataTemplate
        include Google::Apis::Core::Hashable
      
        # Definition of the annotations of a field.
        # Corresponds to the JSON property `annotations`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations]
        attr_accessor :annotations
      
        # MetadataTemplate definition for an AspectType.
        # Corresponds to the JSON property `arrayItems`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate]
        attr_accessor :array_items
      
        # Definition of the constraints of a field.
        # Corresponds to the JSON property `constraints`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints]
        attr_accessor :constraints
      
        # Optional. The list of values for an enum type. You must define it if the type
        # is enum.
        # Corresponds to the JSON property `enumValues`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue>]
        attr_accessor :enum_values
      
        # Optional. Index is used to encode Template messages. The value of index can
        # range between 1 and 2,147,483,647. Index must be unique within all fields in a
        # Template. (Nested Templates can reuse indexes). Once a Template is defined,
        # the index cannot be changed, because it identifies the field in the actual
        # storage format. Index is a mandatory field, but it is optional for top level
        # fields, and map/array "values" definitions.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # MetadataTemplate definition for an AspectType.
        # Corresponds to the JSON property `mapItems`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate]
        attr_accessor :map_items
      
        # Required. The name of the field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Field definition. You must specify it if the type is record. It
        # defines the nested fields.
        # Corresponds to the JSON property `recordFields`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectTypeMetadataTemplate>]
        attr_accessor :record_fields
      
        # Required. The datatype of this field. The following values are supported:
        # Primitive types: string int bool double datetime. Must be of the format
        # RFC3339 UTC "Zulu" (Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.
        # 045123456Z").Complex types: enum array map record
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Optional. You can use type id if this definition of the field needs to be
        # reused later. The type id must be unique across the entire template. You can
        # only specify it if the field type is record.
        # Corresponds to the JSON property `typeId`
        # @return [String]
        attr_accessor :type_id
      
        # Optional. A reference to another field definition (not an inline definition).
        # The value must be equal to the value of an id field defined elsewhere in the
        # MetadataTemplate. Only fields with record type can refer to other fields.
        # Corresponds to the JSON property `typeRef`
        # @return [String]
        attr_accessor :type_ref
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annotations = args[:annotations] if args.key?(:annotations)
          @array_items = args[:array_items] if args.key?(:array_items)
          @constraints = args[:constraints] if args.key?(:constraints)
          @enum_values = args[:enum_values] if args.key?(:enum_values)
          @index = args[:index] if args.key?(:index)
          @map_items = args[:map_items] if args.key?(:map_items)
          @name = args[:name] if args.key?(:name)
          @record_fields = args[:record_fields] if args.key?(:record_fields)
          @type = args[:type] if args.key?(:type)
          @type_id = args[:type_id] if args.key?(:type_id)
          @type_ref = args[:type_ref] if args.key?(:type_ref)
        end
      end
      
      # Definition of the annotations of a field.
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateAnnotations
        include Google::Apis::Core::Hashable
      
        # Optional. Marks a field as deprecated. You can include a deprecation message.
        # Corresponds to the JSON property `deprecated`
        # @return [String]
        attr_accessor :deprecated
      
        # Optional. Description for a field.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Display name for a field.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Display order for a field. You can use this to reorder where a field
        # is rendered.
        # Corresponds to the JSON property `displayOrder`
        # @return [Fixnum]
        attr_accessor :display_order
      
        # Optional. You can use String Type annotations to specify special meaning to
        # string fields. The following values are supported: richText: The field must be
        # interpreted as a rich text field. url: A fully qualified URL link. resource: A
        # service qualified resource reference.
        # Corresponds to the JSON property `stringType`
        # @return [String]
        attr_accessor :string_type
      
        # Optional. Suggested hints for string fields. You can use them to suggest
        # values to users through console.
        # Corresponds to the JSON property `stringValues`
        # @return [Array<String>]
        attr_accessor :string_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @display_order = args[:display_order] if args.key?(:display_order)
          @string_type = args[:string_type] if args.key?(:string_type)
          @string_values = args[:string_values] if args.key?(:string_values)
        end
      end
      
      # Definition of the constraints of a field.
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateConstraints
        include Google::Apis::Core::Hashable
      
        # Optional. Marks this field as optional or required.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @required = args[:required] if args.key?(:required)
        end
      end
      
      # Definition of Enumvalue, to be used for enum fields.
      class GoogleCloudDataplexV1AspectTypeMetadataTemplateEnumValue
        include Google::Apis::Core::Hashable
      
        # Optional. You can set this message if you need to deprecate an enum value.
        # Corresponds to the JSON property `deprecated`
        # @return [String]
        attr_accessor :deprecated
      
        # Required. Index for the enum value. It can't be modified.
        # Corresponds to the JSON property `index`
        # @return [Fixnum]
        attr_accessor :index
      
        # Required. Name of the enumvalue. This is the actual value that the aspect can
        # contain.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @deprecated = args[:deprecated] if args.key?(:deprecated)
          @index = args[:index] if args.key?(:index)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An asset represents a cloud resource that is being managed within a lake as a
      # member of a zone.
      class GoogleCloudDataplexV1Asset
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the asset was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the asset.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Settings to manage the metadata discovery and publishing for an asset.
        # Corresponds to the JSON property `discoverySpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpec]
        attr_accessor :discovery_spec
      
        # Status of discovery for an asset.
        # Corresponds to the JSON property `discoveryStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatus]
        attr_accessor :discovery_status
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. User defined labels for the asset.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the asset, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/assets/
        # `asset_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Identifies the cloud resource that is referenced by this asset.
        # Corresponds to the JSON property `resourceSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceSpec]
        attr_accessor :resource_spec
      
        # Status of the resource referenced by an asset.
        # Corresponds to the JSON property `resourceStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetResourceStatus]
        attr_accessor :resource_status
      
        # Security policy status of the asset. Data security policy, i.e., readers,
        # writers & owners, should be specified in the lake/zone/asset IAM policy.
        # Corresponds to the JSON property `securityStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetSecurityStatus]
        attr_accessor :security_status
      
        # Output only. Current state of the asset.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System generated globally unique ID for the asset. This ID will
        # be different if the asset is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the asset was last updated.
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
          @discovery_spec = args[:discovery_spec] if args.key?(:discovery_spec)
          @discovery_status = args[:discovery_status] if args.key?(:discovery_status)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resource_spec = args[:resource_spec] if args.key?(:resource_spec)
          @resource_status = args[:resource_status] if args.key?(:resource_status)
          @security_status = args[:security_status] if args.key?(:security_status)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings to manage the metadata discovery and publishing for an asset.
      class GoogleCloudDataplexV1AssetDiscoverySpec
        include Google::Apis::Core::Hashable
      
        # Describe CSV and similar semi-structured data formats.
        # Corresponds to the JSON property `csvOptions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions]
        attr_accessor :csv_options
      
        # Optional. Whether discovery is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The list of patterns to apply for selecting data to exclude during
        # discovery. For Cloud Storage bucket assets, these are interpreted as glob
        # patterns used to match object names. For BigQuery dataset assets, these are
        # interpreted as patterns to match table names.
        # Corresponds to the JSON property `excludePatterns`
        # @return [Array<String>]
        attr_accessor :exclude_patterns
      
        # Optional. The list of patterns to apply for selecting data to include during
        # discovery if only a subset of the data should considered. For Cloud Storage
        # bucket assets, these are interpreted as glob patterns used to match object
        # names. For BigQuery dataset assets, these are interpreted as patterns to match
        # table names.
        # Corresponds to the JSON property `includePatterns`
        # @return [Array<String>]
        attr_accessor :include_patterns
      
        # Describe JSON data format.
        # Corresponds to the JSON property `jsonOptions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions]
        attr_accessor :json_options
      
        # Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running
        # discovery periodically. Successive discovery runs must be scheduled at least
        # 60 minutes apart. The default value is to run discovery every 60 minutes.To
        # explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "
        # CRON_TZ=$`IANA_TIME_ZONE`" or TZ=$`IANA_TIME_ZONE`". The $`IANA_TIME_ZONE` may
        # only be a valid string from IANA time zone database. For example, CRON_TZ=
        # America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_options = args[:csv_options] if args.key?(:csv_options)
          @enabled = args[:enabled] if args.key?(:enabled)
          @exclude_patterns = args[:exclude_patterns] if args.key?(:exclude_patterns)
          @include_patterns = args[:include_patterns] if args.key?(:include_patterns)
          @json_options = args[:json_options] if args.key?(:json_options)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
      
      # Describe CSV and similar semi-structured data formats.
      class GoogleCloudDataplexV1AssetDiscoverySpecCsvOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The delimiter being used to separate values. This defaults to ','.
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # Optional. Whether to disable the inference of data type for CSV data. If true,
        # all columns will be registered as strings.
        # Corresponds to the JSON property `disableTypeInference`
        # @return [Boolean]
        attr_accessor :disable_type_inference
        alias_method :disable_type_inference?, :disable_type_inference
      
        # Optional. The character encoding of the data. The default is UTF-8.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. The number of rows to interpret as header rows that should be
        # skipped when reading data rows.
        # Corresponds to the JSON property `headerRows`
        # @return [Fixnum]
        attr_accessor :header_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @disable_type_inference = args[:disable_type_inference] if args.key?(:disable_type_inference)
          @encoding = args[:encoding] if args.key?(:encoding)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
        end
      end
      
      # Describe JSON data format.
      class GoogleCloudDataplexV1AssetDiscoverySpecJsonOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to disable the inference of data type for Json data. If true,
        # all columns will be registered as their primitive types (strings, number or
        # boolean).
        # Corresponds to the JSON property `disableTypeInference`
        # @return [Boolean]
        attr_accessor :disable_type_inference
        alias_method :disable_type_inference?, :disable_type_inference
      
        # Optional. The character encoding of the data. The default is UTF-8.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_type_inference = args[:disable_type_inference] if args.key?(:disable_type_inference)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # Status of discovery for an asset.
      class GoogleCloudDataplexV1AssetDiscoveryStatus
        include Google::Apis::Core::Hashable
      
        # The duration of the last discovery run.
        # Corresponds to the JSON property `lastRunDuration`
        # @return [String]
        attr_accessor :last_run_duration
      
        # The start time of the last discovery run.
        # Corresponds to the JSON property `lastRunTime`
        # @return [String]
        attr_accessor :last_run_time
      
        # Additional information about the current state.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The current status of the discovery feature.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The aggregated data statistics for the asset reported by discovery.
        # Corresponds to the JSON property `stats`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetDiscoveryStatusStats]
        attr_accessor :stats
      
        # Last update time of the status.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @last_run_duration = args[:last_run_duration] if args.key?(:last_run_duration)
          @last_run_time = args[:last_run_time] if args.key?(:last_run_time)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
          @stats = args[:stats] if args.key?(:stats)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The aggregated data statistics for the asset reported by discovery.
      class GoogleCloudDataplexV1AssetDiscoveryStatusStats
        include Google::Apis::Core::Hashable
      
        # The count of data items within the referenced resource.
        # Corresponds to the JSON property `dataItems`
        # @return [Fixnum]
        attr_accessor :data_items
      
        # The number of stored data bytes within the referenced resource.
        # Corresponds to the JSON property `dataSize`
        # @return [Fixnum]
        attr_accessor :data_size
      
        # The count of fileset entities within the referenced resource.
        # Corresponds to the JSON property `filesets`
        # @return [Fixnum]
        attr_accessor :filesets
      
        # The count of table entities within the referenced resource.
        # Corresponds to the JSON property `tables`
        # @return [Fixnum]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_items = args[:data_items] if args.key?(:data_items)
          @data_size = args[:data_size] if args.key?(:data_size)
          @filesets = args[:filesets] if args.key?(:filesets)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Identifies the cloud resource that is referenced by this asset.
      class GoogleCloudDataplexV1AssetResourceSpec
        include Google::Apis::Core::Hashable
      
        # Immutable. Relative name of the cloud resource that contains the data that is
        # being managed within a lake. For example: projects/`project_number`/buckets/`
        # bucket_id` projects/`project_number`/datasets/`dataset_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Determines how read permissions are handled for each asset and their
        # associated tables. Only available to storage buckets assets.
        # Corresponds to the JSON property `readAccessMode`
        # @return [String]
        attr_accessor :read_access_mode
      
        # Required. Immutable. Type of resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @read_access_mode = args[:read_access_mode] if args.key?(:read_access_mode)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Status of the resource referenced by an asset.
      class GoogleCloudDataplexV1AssetResourceStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Service account associated with the BigQuery Connection.
        # Corresponds to the JSON property `managedAccessIdentity`
        # @return [String]
        attr_accessor :managed_access_identity
      
        # Additional information about the current state.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The current state of the managed resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Last update time of the status.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @managed_access_identity = args[:managed_access_identity] if args.key?(:managed_access_identity)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Security policy status of the asset. Data security policy, i.e., readers,
      # writers & owners, should be specified in the lake/zone/asset IAM policy.
      class GoogleCloudDataplexV1AssetSecurityStatus
        include Google::Apis::Core::Hashable
      
        # Additional information about the current state.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The current state of the security policy applied to the attached resource.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Last update time of the status.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Aggregated status of the underlying assets of a lake or zone.
      class GoogleCloudDataplexV1AssetStatus
        include Google::Apis::Core::Hashable
      
        # Number of active assets.
        # Corresponds to the JSON property `activeAssets`
        # @return [Fixnum]
        attr_accessor :active_assets
      
        # Number of assets that are in process of updating the security policy on
        # attached resources.
        # Corresponds to the JSON property `securityPolicyApplyingAssets`
        # @return [Fixnum]
        attr_accessor :security_policy_applying_assets
      
        # Last update time of the status.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active_assets = args[:active_assets] if args.key?(:active_assets)
          @security_policy_applying_assets = args[:security_policy_applying_assets] if args.key?(:security_policy_applying_assets)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Payload associated with Business Glossary related log events.
      class GoogleCloudDataplexV1BusinessGlossaryEvent
        include Google::Apis::Core::Hashable
      
        # The type of the event.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # The log message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Name of the resource.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_type = args[:event_type] if args.key?(:event_type)
          @message = args[:message] if args.key?(:message)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Cancel task jobs.
      class GoogleCloudDataplexV1CancelJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Cancel metadata job request.
      class GoogleCloudDataplexV1CancelMetadataJobRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Content represents a user-visible notebook or a sql script
      class GoogleCloudDataplexV1Content
        include Google::Apis::Core::Hashable
      
        # Output only. Content creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Content data in string format.
        # Corresponds to the JSON property `dataText`
        # @return [String]
        attr_accessor :data_text
      
        # Optional. Description of the content.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User defined labels for the content.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the content, of the form: projects/`
        # project_id`/locations/`location_id`/lakes/`lake_id`/content/`content_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for Notebook content.
        # Corresponds to the JSON property `notebook`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentNotebook]
        attr_accessor :notebook
      
        # Required. The path for the Content file, represented as directory structure.
        # Unique within a lake. Limited to alphanumerics, hyphens, underscores, dots and
        # slashes.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Configuration for the Sql Script content.
        # Corresponds to the JSON property `sqlScript`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ContentSqlScript]
        attr_accessor :sql_script
      
        # Output only. System generated globally unique ID for the content. This ID will
        # be different if the content is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the content was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_text = args[:data_text] if args.key?(:data_text)
          @description = args[:description] if args.key?(:description)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @notebook = args[:notebook] if args.key?(:notebook)
          @path = args[:path] if args.key?(:path)
          @sql_script = args[:sql_script] if args.key?(:sql_script)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration for Notebook content.
      class GoogleCloudDataplexV1ContentNotebook
        include Google::Apis::Core::Hashable
      
        # Required. Kernel Type of the notebook.
        # Corresponds to the JSON property `kernelType`
        # @return [String]
        attr_accessor :kernel_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kernel_type = args[:kernel_type] if args.key?(:kernel_type)
        end
      end
      
      # Configuration for the Sql Script content.
      class GoogleCloudDataplexV1ContentSqlScript
        include Google::Apis::Core::Hashable
      
        # Required. Query Engine to be used for the Sql Query.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @engine = args[:engine] if args.key?(:engine)
        end
      end
      
      # DataAccessSpec holds the access control configuration to be enforced on data
      # stored within resources (eg: rows, columns in BigQuery Tables). When
      # associated with data, the data is only accessible to principals explicitly
      # granted access through the DataAccessSpec. Principals with access to the
      # containing resource are not implicitly granted access.
      class GoogleCloudDataplexV1DataAccessSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The format of strings follows the pattern followed by IAM in the
        # bindings. user:`email`, serviceAccount:`email` group:`email`. The set of
        # principals to be granted reader role on data stored within resources.
        # Corresponds to the JSON property `readers`
        # @return [Array<String>]
        attr_accessor :readers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @readers = args[:readers] if args.key?(:readers)
        end
      end
      
      # Denotes one dataAttribute in a dataTaxonomy, for example, PII. DataAttribute
      # resources can be defined in a hierarchy. A single dataAttribute resource can
      # contain specs of multiple types PII - ResourceAccessSpec : - readers :foo@bar.
      # com - DataAccessSpec : - readers :bar@foo.com
      class GoogleCloudDataplexV1DataAttribute
        include Google::Apis::Core::Hashable
      
        # Output only. The number of child attributes present for this attribute.
        # Corresponds to the JSON property `attributeCount`
        # @return [Fixnum]
        attr_accessor :attribute_count
      
        # Output only. The time when the DataAttribute was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # DataAccessSpec holds the access control configuration to be enforced on data
        # stored within resources (eg: rows, columns in BigQuery Tables). When
        # associated with data, the data is only accessible to principals explicitly
        # granted access through the DataAccessSpec. Principals with access to the
        # containing resource are not implicitly granted access.
        # Corresponds to the JSON property `dataAccessSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAccessSpec]
        attr_accessor :data_access_spec
      
        # Optional. Description of the DataAttribute.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. User-defined labels for the DataAttribute.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the dataAttribute, of the form:
        # projects/`project_number`/locations/`location_id`/dataTaxonomies/`dataTaxonomy`
        # /attributes/`data_attribute_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The ID of the parent DataAttribute resource, should belong to the
        # same data taxonomy. Circular dependency in parent chain is not valid. Maximum
        # depth of the hierarchy allowed is 4. a -> b -> c -> d -> e, depth = 4
        # Corresponds to the JSON property `parentId`
        # @return [String]
        attr_accessor :parent_id
      
        # ResourceAccessSpec holds the access control configuration to be enforced on
        # the resources, for example, Cloud Storage bucket, BigQuery dataset, BigQuery
        # table.
        # Corresponds to the JSON property `resourceAccessSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ResourceAccessSpec]
        attr_accessor :resource_access_spec
      
        # Output only. System generated globally unique ID for the DataAttribute. This
        # ID will be different if the DataAttribute is deleted and re-created with the
        # same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the DataAttribute was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_count = args[:attribute_count] if args.key?(:attribute_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_access_spec = args[:data_access_spec] if args.key?(:data_access_spec)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent_id = args[:parent_id] if args.key?(:parent_id)
          @resource_access_spec = args[:resource_access_spec] if args.key?(:resource_access_spec)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # DataAttributeBinding represents binding of attributes to resources. Eg: Bind '
      # CustomerInfo' entity with 'PII' attribute.
      class GoogleCloudDataplexV1DataAttributeBinding
        include Google::Apis::Core::Hashable
      
        # Optional. List of attributes to be associated with the resource, provided in
        # the form: projects/`project`/locations/`location`/dataTaxonomies/`dataTaxonomy`
        # /attributes/`data_attribute_id`
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # Output only. The time when the DataAttributeBinding was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the DataAttributeBinding.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding. Etags must be used when calling the
        # DeleteDataAttributeBinding and the UpdateDataAttributeBinding method.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. User-defined labels for the DataAttributeBinding.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the Data Attribute Binding, of the
        # form: projects/`project_number`/locations/`location`/dataAttributeBindings/`
        # data_attribute_binding_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The list of paths for items within the associated resource (eg.
        # columns and partitions within a table) along with attribute bindings.
        # Corresponds to the JSON property `paths`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBindingPath>]
        attr_accessor :paths
      
        # Optional. Immutable. The resource name of the resource that is associated to
        # attributes. Presently, only entity resource is supported in the form: projects/
        # `project`/locations/`location`/lakes/`lake`/zones/`zone`/entities/`entity_id`
        # Must belong in the same project and region as the attribute binding, and there
        # can only exist one active binding for a resource.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # Output only. System generated globally unique ID for the DataAttributeBinding.
        # This ID will be different if the DataAttributeBinding is deleted and re-
        # created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the DataAttributeBinding was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @paths = args[:paths] if args.key?(:paths)
          @resource = args[:resource] if args.key?(:resource)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a subresource of the given resource, and associated bindings with
      # it. Currently supported subresources are column and partition schema fields
      # within a table.
      class GoogleCloudDataplexV1DataAttributeBindingPath
        include Google::Apis::Core::Hashable
      
        # Optional. List of attributes to be associated with the path of the resource,
        # provided in the form: projects/`project`/locations/`location`/dataTaxonomies/`
        # dataTaxonomy`/attributes/`data_attribute_id`
        # Corresponds to the JSON property `attributes`
        # @return [Array<String>]
        attr_accessor :attributes
      
        # Required. The name identifier of the path. Nested columns should be of the
        # form: 'address.city'.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # The output of a data discovery scan.
      class GoogleCloudDataplexV1DataDiscoveryResult
        include Google::Apis::Core::Hashable
      
        # Describes BigQuery publishing configurations.
        # Corresponds to the JSON property `bigqueryPublishing`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing]
        attr_accessor :bigquery_publishing
      
        # Describes result statistics of a data scan discovery job.
        # Corresponds to the JSON property `scanStatistics`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResultScanStatistics]
        attr_accessor :scan_statistics
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_publishing = args[:bigquery_publishing] if args.key?(:bigquery_publishing)
          @scan_statistics = args[:scan_statistics] if args.key?(:scan_statistics)
        end
      end
      
      # Describes BigQuery publishing configurations.
      class GoogleCloudDataplexV1DataDiscoveryResultBigQueryPublishing
        include Google::Apis::Core::Hashable
      
        # Output only. The BigQuery dataset the discovered tables are published to.
        # Corresponds to the JSON property `dataset`
        # @return [String]
        attr_accessor :dataset
      
        # Output only. The location of the BigQuery publishing dataset.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset = args[:dataset] if args.key?(:dataset)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Describes result statistics of a data scan discovery job.
      class GoogleCloudDataplexV1DataDiscoveryResultScanStatistics
        include Google::Apis::Core::Hashable
      
        # The data processed in bytes.
        # Corresponds to the JSON property `dataProcessedBytes`
        # @return [Fixnum]
        attr_accessor :data_processed_bytes
      
        # The number of files excluded.
        # Corresponds to the JSON property `filesExcluded`
        # @return [Fixnum]
        attr_accessor :files_excluded
      
        # The number of filesets created.
        # Corresponds to the JSON property `filesetsCreated`
        # @return [Fixnum]
        attr_accessor :filesets_created
      
        # The number of filesets deleted.
        # Corresponds to the JSON property `filesetsDeleted`
        # @return [Fixnum]
        attr_accessor :filesets_deleted
      
        # The number of filesets updated.
        # Corresponds to the JSON property `filesetsUpdated`
        # @return [Fixnum]
        attr_accessor :filesets_updated
      
        # The number of files scanned.
        # Corresponds to the JSON property `scannedFileCount`
        # @return [Fixnum]
        attr_accessor :scanned_file_count
      
        # The number of tables created.
        # Corresponds to the JSON property `tablesCreated`
        # @return [Fixnum]
        attr_accessor :tables_created
      
        # The number of tables deleted.
        # Corresponds to the JSON property `tablesDeleted`
        # @return [Fixnum]
        attr_accessor :tables_deleted
      
        # The number of tables updated.
        # Corresponds to the JSON property `tablesUpdated`
        # @return [Fixnum]
        attr_accessor :tables_updated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_processed_bytes = args[:data_processed_bytes] if args.key?(:data_processed_bytes)
          @files_excluded = args[:files_excluded] if args.key?(:files_excluded)
          @filesets_created = args[:filesets_created] if args.key?(:filesets_created)
          @filesets_deleted = args[:filesets_deleted] if args.key?(:filesets_deleted)
          @filesets_updated = args[:filesets_updated] if args.key?(:filesets_updated)
          @scanned_file_count = args[:scanned_file_count] if args.key?(:scanned_file_count)
          @tables_created = args[:tables_created] if args.key?(:tables_created)
          @tables_deleted = args[:tables_deleted] if args.key?(:tables_deleted)
          @tables_updated = args[:tables_updated] if args.key?(:tables_updated)
        end
      end
      
      # Spec for a data discovery scan.
      class GoogleCloudDataplexV1DataDiscoverySpec
        include Google::Apis::Core::Hashable
      
        # Describes BigQuery publishing configurations.
        # Corresponds to the JSON property `bigqueryPublishingConfig`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig]
        attr_accessor :bigquery_publishing_config
      
        # Configurations related to Cloud Storage as the data source.
        # Corresponds to the JSON property `storageConfig`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfig]
        attr_accessor :storage_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_publishing_config = args[:bigquery_publishing_config] if args.key?(:bigquery_publishing_config)
          @storage_config = args[:storage_config] if args.key?(:storage_config)
        end
      end
      
      # Describes BigQuery publishing configurations.
      class GoogleCloudDataplexV1DataDiscoverySpecBigQueryPublishingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. The BigQuery connection used to create BigLake tables. Must be in
        # the form projects/`project_id`/locations/`location_id`/connections/`
        # connection_id`
        # Corresponds to the JSON property `connection`
        # @return [String]
        attr_accessor :connection
      
        # Optional. The location of the BigQuery dataset to publish BigLake external or
        # non-BigLake external tables to. 1. If the Cloud Storage bucket is located in a
        # multi-region bucket, then BigQuery dataset can be in the same multi-region
        # bucket or any single region that is included in the same multi-region bucket.
        # The datascan can be created in any single region that is included in the same
        # multi-region bucket 2. If the Cloud Storage bucket is located in a dual-region
        # bucket, then BigQuery dataset can be located in regions that are included in
        # the dual-region bucket, or in a multi-region that includes the dual-region.
        # The datascan can be created in any single region that is included in the same
        # dual-region bucket. 3. If the Cloud Storage bucket is located in a single
        # region, then BigQuery dataset can be in the same single region or any multi-
        # region bucket that includes the same single region. The datascan will be
        # created in the same single region as the bucket. 4. If the BigQuery dataset is
        # in single region, it must be in the same single region as the datascan.For
        # supported values, refer to https://cloud.google.com/bigquery/docs/locations#
        # supported_locations.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. The project of the BigQuery dataset to publish BigLake external or
        # non-BigLake external tables to. If not specified, the project of the Cloud
        # Storage bucket will be used. The format is "projects/`project_id_or_number`".
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Optional. Determines whether to publish discovered tables as BigLake external
        # tables or non-BigLake external tables.
        # Corresponds to the JSON property `tableType`
        # @return [String]
        attr_accessor :table_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection = args[:connection] if args.key?(:connection)
          @location = args[:location] if args.key?(:location)
          @project = args[:project] if args.key?(:project)
          @table_type = args[:table_type] if args.key?(:table_type)
        end
      end
      
      # Configurations related to Cloud Storage as the data source.
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfig
        include Google::Apis::Core::Hashable
      
        # Describes CSV and similar semi-structured data formats.
        # Corresponds to the JSON property `csvOptions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions]
        attr_accessor :csv_options
      
        # Optional. Defines the data to exclude during discovery. Provide a list of
        # patterns that identify the data to exclude. For Cloud Storage bucket assets,
        # these patterns are interpreted as glob patterns used to match object names.
        # For BigQuery dataset assets, these patterns are interpreted as patterns to
        # match table names.
        # Corresponds to the JSON property `excludePatterns`
        # @return [Array<String>]
        attr_accessor :exclude_patterns
      
        # Optional. Defines the data to include during discovery when only a subset of
        # the data should be considered. Provide a list of patterns that identify the
        # data to include. For Cloud Storage bucket assets, these patterns are
        # interpreted as glob patterns used to match object names. For BigQuery dataset
        # assets, these patterns are interpreted as patterns to match table names.
        # Corresponds to the JSON property `includePatterns`
        # @return [Array<String>]
        attr_accessor :include_patterns
      
        # Describes JSON data format.
        # Corresponds to the JSON property `jsonOptions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions]
        attr_accessor :json_options
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_options = args[:csv_options] if args.key?(:csv_options)
          @exclude_patterns = args[:exclude_patterns] if args.key?(:exclude_patterns)
          @include_patterns = args[:include_patterns] if args.key?(:include_patterns)
          @json_options = args[:json_options] if args.key?(:json_options)
        end
      end
      
      # Describes CSV and similar semi-structured data formats.
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfigCsvOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The delimiter that is used to separate values. The default is , (
        # comma).
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # Optional. The character encoding of the data. The default is UTF-8.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. The number of rows to interpret as header rows that should be
        # skipped when reading data rows.
        # Corresponds to the JSON property `headerRows`
        # @return [Fixnum]
        attr_accessor :header_rows
      
        # Optional. The character used to quote column values. Accepts " (double
        # quotation mark) or ' (single quotation mark). If unspecified, defaults to " (
        # double quotation mark).
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        # Optional. Whether to disable the inference of data types for CSV data. If true,
        # all columns are registered as strings.
        # Corresponds to the JSON property `typeInferenceDisabled`
        # @return [Boolean]
        attr_accessor :type_inference_disabled
        alias_method :type_inference_disabled?, :type_inference_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @encoding = args[:encoding] if args.key?(:encoding)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @quote = args[:quote] if args.key?(:quote)
          @type_inference_disabled = args[:type_inference_disabled] if args.key?(:type_inference_disabled)
        end
      end
      
      # Describes JSON data format.
      class GoogleCloudDataplexV1DataDiscoverySpecStorageConfigJsonOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The character encoding of the data. The default is UTF-8.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. Whether to disable the inference of data types for JSON data. If
        # true, all columns are registered as their primitive types (strings, number, or
        # boolean).
        # Corresponds to the JSON property `typeInferenceDisabled`
        # @return [Boolean]
        attr_accessor :type_inference_disabled
        alias_method :type_inference_disabled?, :type_inference_disabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
          @type_inference_disabled = args[:type_inference_disabled] if args.key?(:type_inference_disabled)
        end
      end
      
      # The output of a DataDocumentation scan.
      class GoogleCloudDataplexV1DataDocumentationResult
        include Google::Apis::Core::Hashable
      
        # Generated metadata about the table.
        # Corresponds to the JSON property `tableResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationResultTableResult]
        attr_accessor :table_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table_result = args[:table_result] if args.key?(:table_result)
        end
      end
      
      # Column of a table with generated metadata and nested fields.
      class GoogleCloudDataplexV1DataDocumentationResultField
        include Google::Apis::Core::Hashable
      
        # Output only. Generated description for columns and fields.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Nested fields.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationResultField>]
        attr_accessor :fields
      
        # Output only. The name of the column.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @fields = args[:fields] if args.key?(:fields)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A sample SQL query in data documentation.
      class GoogleCloudDataplexV1DataDocumentationResultQuery
        include Google::Apis::Core::Hashable
      
        # Output only. The description for the query.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The SQL query string which can be executed.
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @sql = args[:sql] if args.key?(:sql)
        end
      end
      
      # Schema of the table with generated metadata of columns.
      class GoogleCloudDataplexV1DataDocumentationResultSchema
        include Google::Apis::Core::Hashable
      
        # Output only. The list of columns.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationResultField>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # Generated metadata about the table.
      class GoogleCloudDataplexV1DataDocumentationResultTableResult
        include Google::Apis::Core::Hashable
      
        # Output only. The service-qualified full resource name of the cloud resource.
        # Ex: //bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/
        # TABLE_ID
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Generated description of the table.
        # Corresponds to the JSON property `overview`
        # @return [String]
        attr_accessor :overview
      
        # Output only. Sample SQL queries for the table.
        # Corresponds to the JSON property `queries`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationResultQuery>]
        attr_accessor :queries
      
        # Schema of the table with generated metadata of columns.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationResultSchema]
        attr_accessor :schema
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @overview = args[:overview] if args.key?(:overview)
          @queries = args[:queries] if args.key?(:queries)
          @schema = args[:schema] if args.key?(:schema)
        end
      end
      
      # DataDocumentation scan related spec.
      class GoogleCloudDataplexV1DataDocumentationSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # DataProfileResult defines the output of DataProfileScan. Each field of the
      # table will have field type specific profile result.
      class GoogleCloudDataplexV1DataProfileResult
        include Google::Apis::Core::Hashable
      
        # The result of post scan actions of DataProfileScan job.
        # Corresponds to the JSON property `postScanActionsResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultPostScanActionsResult]
        attr_accessor :post_scan_actions_result
      
        # Contains name, type, mode and field type specific profile information.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfile]
        attr_accessor :profile
      
        # Output only. The count of rows scanned.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # The data scanned during processing (e.g. in incremental DataScan)
        # Corresponds to the JSON property `scannedData`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedData]
        attr_accessor :scanned_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @post_scan_actions_result = args[:post_scan_actions_result] if args.key?(:post_scan_actions_result)
          @profile = args[:profile] if args.key?(:profile)
          @row_count = args[:row_count] if args.key?(:row_count)
          @scanned_data = args[:scanned_data] if args.key?(:scanned_data)
        end
      end
      
      # The result of post scan actions of DataProfileScan job.
      class GoogleCloudDataplexV1DataProfileResultPostScanActionsResult
        include Google::Apis::Core::Hashable
      
        # The result of BigQuery export post scan action.
        # Corresponds to the JSON property `bigqueryExportResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult]
        attr_accessor :bigquery_export_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_export_result = args[:bigquery_export_result] if args.key?(:bigquery_export_result)
        end
      end
      
      # The result of BigQuery export post scan action.
      class GoogleCloudDataplexV1DataProfileResultPostScanActionsResultBigQueryExportResult
        include Google::Apis::Core::Hashable
      
        # Output only. Additional information about the BigQuery exporting.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. Execution state for the BigQuery exporting.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Contains name, type, mode and field type specific profile information.
      class GoogleCloudDataplexV1DataProfileResultProfile
        include Google::Apis::Core::Hashable
      
        # Output only. List of fields with structural and profile information for each
        # field.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileField>]
        attr_accessor :fields
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
        end
      end
      
      # A field within a table.
      class GoogleCloudDataplexV1DataProfileResultProfileField
        include Google::Apis::Core::Hashable
      
        # Output only. The mode of the field. Possible values include: REQUIRED, if it
        # is a required field. NULLABLE, if it is an optional field. REPEATED, if it is
        # a repeated field.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Output only. The name of the field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The profile information for each field type.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo]
        attr_accessor :profile
      
        # Output only. The data type retrieved from the schema of the data source. For
        # instance, for a BigQuery native table, it is the BigQuery Table Schema (https:/
        # /cloud.google.com/bigquery/docs/reference/rest/v2/tables#tablefieldschema).
        # For a Dataplex Universal Catalog Entity, it is the Entity Schema (https://
        # cloud.google.com/dataplex/docs/reference/rpc/google.cloud.dataplex.v1#type_3).
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
          @profile = args[:profile] if args.key?(:profile)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The profile information for each field type.
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Ratio of rows with distinct values against total scanned rows.
        # Not available for complex non-groupable field type, including RECORD, ARRAY,
        # GEOGRAPHY, and JSON, as well as fields with REPEATABLE mode.
        # Corresponds to the JSON property `distinctRatio`
        # @return [Float]
        attr_accessor :distinct_ratio
      
        # The profile information for a double type field.
        # Corresponds to the JSON property `doubleProfile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo]
        attr_accessor :double_profile
      
        # The profile information for an integer type field.
        # Corresponds to the JSON property `integerProfile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo]
        attr_accessor :integer_profile
      
        # Output only. Ratio of rows with null value against total scanned rows.
        # Corresponds to the JSON property `nullRatio`
        # @return [Float]
        attr_accessor :null_ratio
      
        # The profile information for a string type field.
        # Corresponds to the JSON property `stringProfile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo]
        attr_accessor :string_profile
      
        # Output only. The list of top N non-null values, frequency and ratio with which
        # they occur in the scanned data. N is 10 or equal to the number of distinct
        # values in the field, whichever is smaller. Not available for complex non-
        # groupable field type, including RECORD, ARRAY, GEOGRAPHY, and JSON, as well as
        # fields with REPEATABLE mode.
        # Corresponds to the JSON property `topNValues`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue>]
        attr_accessor :top_n_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distinct_ratio = args[:distinct_ratio] if args.key?(:distinct_ratio)
          @double_profile = args[:double_profile] if args.key?(:double_profile)
          @integer_profile = args[:integer_profile] if args.key?(:integer_profile)
          @null_ratio = args[:null_ratio] if args.key?(:null_ratio)
          @string_profile = args[:string_profile] if args.key?(:string_profile)
          @top_n_values = args[:top_n_values] if args.key?(:top_n_values)
        end
      end
      
      # The profile information for a double type field.
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Average of non-null values in the scanned data. NaN, if the field
        # has a NaN.
        # Corresponds to the JSON property `average`
        # @return [Float]
        attr_accessor :average
      
        # Output only. Maximum of non-null values in the scanned data. NaN, if the field
        # has a NaN.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # Output only. Minimum of non-null values in the scanned data. NaN, if the field
        # has a NaN.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        # Output only. A quartile divides the number of data points into four parts, or
        # quarters, of more-or-less equal size. Three main quartiles used are: The first
        # quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is
        # also known as the lower or 25th empirical quartile, as 25% of the data is
        # below this point. The second quartile (Q2) is the median of a data set. So, 50%
        # of the data lies below this point. The third quartile (Q3) splits off the
        # highest 25% of data from the lowest 75%. It is known as the upper or 75th
        # empirical quartile, as 75% of the data lies below this point. Here, the
        # quartiles is provided as an ordered list of quartile values for the scanned
        # data, occurring in order Q1, median, Q3.
        # Corresponds to the JSON property `quartiles`
        # @return [Array<Float>]
        attr_accessor :quartiles
      
        # Output only. Standard deviation of non-null values in the scanned data. NaN,
        # if the field has a NaN.
        # Corresponds to the JSON property `standardDeviation`
        # @return [Float]
        attr_accessor :standard_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average = args[:average] if args.key?(:average)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
          @quartiles = args[:quartiles] if args.key?(:quartiles)
          @standard_deviation = args[:standard_deviation] if args.key?(:standard_deviation)
        end
      end
      
      # The profile information for an integer type field.
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoIntegerFieldInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Average of non-null values in the scanned data. NaN, if the field
        # has a NaN.
        # Corresponds to the JSON property `average`
        # @return [Float]
        attr_accessor :average
      
        # Output only. Maximum of non-null values in the scanned data. NaN, if the field
        # has a NaN.
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # Output only. Minimum of non-null values in the scanned data. NaN, if the field
        # has a NaN.
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        # Output only. A quartile divides the number of data points into four parts, or
        # quarters, of more-or-less equal size. Three main quartiles used are: The first
        # quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is
        # also known as the lower or 25th empirical quartile, as 25% of the data is
        # below this point. The second quartile (Q2) is the median of a data set. So, 50%
        # of the data lies below this point. The third quartile (Q3) splits off the
        # highest 25% of data from the lowest 75%. It is known as the upper or 75th
        # empirical quartile, as 75% of the data lies below this point. Here, the
        # quartiles is provided as an ordered list of approximate quartile values for
        # the scanned data, occurring in order Q1, median, Q3.
        # Corresponds to the JSON property `quartiles`
        # @return [Array<Fixnum>]
        attr_accessor :quartiles
      
        # Output only. Standard deviation of non-null values in the scanned data. NaN,
        # if the field has a NaN.
        # Corresponds to the JSON property `standardDeviation`
        # @return [Float]
        attr_accessor :standard_deviation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average = args[:average] if args.key?(:average)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
          @quartiles = args[:quartiles] if args.key?(:quartiles)
          @standard_deviation = args[:standard_deviation] if args.key?(:standard_deviation)
        end
      end
      
      # The profile information for a string type field.
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Average length of non-null values in the scanned data.
        # Corresponds to the JSON property `averageLength`
        # @return [Float]
        attr_accessor :average_length
      
        # Output only. Maximum length of non-null values in the scanned data.
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Output only. Minimum length of non-null values in the scanned data.
        # Corresponds to the JSON property `minLength`
        # @return [Fixnum]
        attr_accessor :min_length
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_length = args[:average_length] if args.key?(:average_length)
          @max_length = args[:max_length] if args.key?(:max_length)
          @min_length = args[:min_length] if args.key?(:min_length)
        end
      end
      
      # Top N non-null values in the scanned data.
      class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoTopNValue
        include Google::Apis::Core::Hashable
      
        # Output only. Count of the corresponding value in the scanned data.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Output only. Ratio of the corresponding value in the field against the total
        # number of rows in the scanned data.
        # Corresponds to the JSON property `ratio`
        # @return [Float]
        attr_accessor :ratio
      
        # Output only. String value of a top N non-null value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @ratio = args[:ratio] if args.key?(:ratio)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # DataProfileScan related setting.
      class GoogleCloudDataplexV1DataProfileSpec
        include Google::Apis::Core::Hashable
      
        # The specification for fields to include or exclude in data profile scan.
        # Corresponds to the JSON property `excludeFields`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecSelectedFields]
        attr_accessor :exclude_fields
      
        # The specification for fields to include or exclude in data profile scan.
        # Corresponds to the JSON property `includeFields`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecSelectedFields]
        attr_accessor :include_fields
      
        # The configuration of post scan actions of DataProfileScan job.
        # Corresponds to the JSON property `postScanActions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecPostScanActions]
        attr_accessor :post_scan_actions
      
        # Optional. A filter applied to all rows in a single DataScan job. The filter
        # needs to be a valid SQL expression for a WHERE clause in BigQuery standard SQL
        # syntax. Example: col1 >= 0 AND col2 < 10
        # Corresponds to the JSON property `rowFilter`
        # @return [String]
        attr_accessor :row_filter
      
        # Optional. The percentage of the records to be selected from the dataset for
        # DataScan. Value can range between 0.0 and 100.0 with up to 3 significant
        # decimal digits. Sampling is not applied if sampling_percent is not specified,
        # 0 or 100.
        # Corresponds to the JSON property `samplingPercent`
        # @return [Float]
        attr_accessor :sampling_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude_fields = args[:exclude_fields] if args.key?(:exclude_fields)
          @include_fields = args[:include_fields] if args.key?(:include_fields)
          @post_scan_actions = args[:post_scan_actions] if args.key?(:post_scan_actions)
          @row_filter = args[:row_filter] if args.key?(:row_filter)
          @sampling_percent = args[:sampling_percent] if args.key?(:sampling_percent)
        end
      end
      
      # The configuration of post scan actions of DataProfileScan job.
      class GoogleCloudDataplexV1DataProfileSpecPostScanActions
        include Google::Apis::Core::Hashable
      
        # The configuration of BigQuery export post scan action.
        # Corresponds to the JSON property `bigqueryExport`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport]
        attr_accessor :bigquery_export
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_export = args[:bigquery_export] if args.key?(:bigquery_export)
        end
      end
      
      # The configuration of BigQuery export post scan action.
      class GoogleCloudDataplexV1DataProfileSpecPostScanActionsBigQueryExport
        include Google::Apis::Core::Hashable
      
        # Optional. The BigQuery table to export DataProfileScan results to. Format: //
        # bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/
        # TABLE_ID
        # Corresponds to the JSON property `resultsTable`
        # @return [String]
        attr_accessor :results_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results_table = args[:results_table] if args.key?(:results_table)
        end
      end
      
      # The specification for fields to include or exclude in data profile scan.
      class GoogleCloudDataplexV1DataProfileSpecSelectedFields
        include Google::Apis::Core::Hashable
      
        # Optional. Expected input is a list of fully qualified names of fields as in
        # the schema.Only top-level field names for nested fields are supported. For
        # instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z'
        # is not supported. Here 'y' and 'y.z' are nested fields of 'x'.
        # Corresponds to the JSON property `fieldNames`
        # @return [Array<String>]
        attr_accessor :field_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field_names = args[:field_names] if args.key?(:field_names)
        end
      end
      
      # DataQualityColumnResult provides a more detailed, per-column view of the
      # results.
      class GoogleCloudDataplexV1DataQualityColumnResult
        include Google::Apis::Core::Hashable
      
        # Output only. The column specified in the DataQualityRule.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Output only. The dimension-level results for this column.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimensionResult>]
        attr_accessor :dimensions
      
        # Output only. Whether the column passed or failed.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # Output only. The column-level data quality score for this data scan job if and
        # only if the 'column' field is set.The score ranges between between 0, 100 (up
        # to two decimal points).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @passed = args[:passed] if args.key?(:passed)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # A dimension captures data quality intent about a defined subset of the rules
      # specified.
      class GoogleCloudDataplexV1DataQualityDimension
        include Google::Apis::Core::Hashable
      
        # Output only. The dimension name a rule belongs to. Custom dimension name is
        # supported with all uppercase letters and maximum length of 30 characters.
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
      
      # DataQualityDimensionResult provides a more detailed, per-dimension view of the
      # results.
      class GoogleCloudDataplexV1DataQualityDimensionResult
        include Google::Apis::Core::Hashable
      
        # A dimension captures data quality intent about a defined subset of the rules
        # specified.
        # Corresponds to the JSON property `dimension`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimension]
        attr_accessor :dimension
      
        # Output only. Whether the dimension passed or failed.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # Output only. The dimension-level data quality score for this data scan job if
        # and only if the 'dimension' field is set.The score ranges between 0, 100 (up
        # to two decimal points).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @passed = args[:passed] if args.key?(:passed)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # The output of a DataQualityScan.
      class GoogleCloudDataplexV1DataQualityResult
        include Google::Apis::Core::Hashable
      
        # The assets generated by Anomaly Detection Data Scan.
        # Corresponds to the JSON property `anomalyDetectionGeneratedAssets`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResultAnomalyDetectionGeneratedAssets]
        attr_accessor :anomaly_detection_generated_assets
      
        # The status of publishing the data scan result as Dataplex Universal Catalog
        # metadata.
        # Corresponds to the JSON property `catalogPublishingStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanCatalogPublishingStatus]
        attr_accessor :catalog_publishing_status
      
        # Output only. A list of results at the column level.A column will have a
        # corresponding DataQualityColumnResult if and only if there is at least one
        # rule with the 'column' field set to it.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityColumnResult>]
        attr_accessor :columns
      
        # Output only. A list of results at the dimension level.A dimension will have a
        # corresponding DataQualityDimensionResult if and only if there is at least one
        # rule with the 'dimension' field set to it.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimensionResult>]
        attr_accessor :dimensions
      
        # Output only. Overall data quality result -- true if all rules passed.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # The result of post scan actions of DataQualityScan job.
        # Corresponds to the JSON property `postScanActionsResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResultPostScanActionsResult]
        attr_accessor :post_scan_actions_result
      
        # Output only. The count of rows processed.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Output only. A list of all the rules in a job, and their results.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleResult>]
        attr_accessor :rules
      
        # The data scanned during processing (e.g. in incremental DataScan)
        # Corresponds to the JSON property `scannedData`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedData]
        attr_accessor :scanned_data
      
        # Output only. The overall data quality score.The score ranges between 0, 100 (
        # up to two decimal points).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @anomaly_detection_generated_assets = args[:anomaly_detection_generated_assets] if args.key?(:anomaly_detection_generated_assets)
          @catalog_publishing_status = args[:catalog_publishing_status] if args.key?(:catalog_publishing_status)
          @columns = args[:columns] if args.key?(:columns)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @passed = args[:passed] if args.key?(:passed)
          @post_scan_actions_result = args[:post_scan_actions_result] if args.key?(:post_scan_actions_result)
          @row_count = args[:row_count] if args.key?(:row_count)
          @rules = args[:rules] if args.key?(:rules)
          @scanned_data = args[:scanned_data] if args.key?(:scanned_data)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # The assets generated by Anomaly Detection Data Scan.
      class GoogleCloudDataplexV1DataQualityResultAnomalyDetectionGeneratedAssets
        include Google::Apis::Core::Hashable
      
        # Output only. The intermediate table for data anomaly detection. Format:
        # PROJECT_ID.DATASET_ID.TABLE_ID
        # Corresponds to the JSON property `dataIntermediateTable`
        # @return [String]
        attr_accessor :data_intermediate_table
      
        # Output only. The intermediate table for freshness anomaly detection. Format:
        # PROJECT_ID.DATASET_ID.TABLE_ID
        # Corresponds to the JSON property `freshnessIntermediateTable`
        # @return [String]
        attr_accessor :freshness_intermediate_table
      
        # Output only. The result table for anomaly detection. Format: PROJECT_ID.
        # DATASET_ID.TABLE_ID If the result table is set at AnomalyDetectionAssets, the
        # result table here would be the same as the one set in the
        # AnomalyDetectionAssets.result_table.
        # Corresponds to the JSON property `resultTable`
        # @return [String]
        attr_accessor :result_table
      
        # Output only. The intermediate table for volume anomaly detection. Format:
        # PROJECT_ID.DATASET_ID.TABLE_ID
        # Corresponds to the JSON property `volumeIntermediateTable`
        # @return [String]
        attr_accessor :volume_intermediate_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_intermediate_table = args[:data_intermediate_table] if args.key?(:data_intermediate_table)
          @freshness_intermediate_table = args[:freshness_intermediate_table] if args.key?(:freshness_intermediate_table)
          @result_table = args[:result_table] if args.key?(:result_table)
          @volume_intermediate_table = args[:volume_intermediate_table] if args.key?(:volume_intermediate_table)
        end
      end
      
      # The result of post scan actions of DataQualityScan job.
      class GoogleCloudDataplexV1DataQualityResultPostScanActionsResult
        include Google::Apis::Core::Hashable
      
        # The result of BigQuery export post scan action.
        # Corresponds to the JSON property `bigqueryExportResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult]
        attr_accessor :bigquery_export_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_export_result = args[:bigquery_export_result] if args.key?(:bigquery_export_result)
        end
      end
      
      # The result of BigQuery export post scan action.
      class GoogleCloudDataplexV1DataQualityResultPostScanActionsResultBigQueryExportResult
        include Google::Apis::Core::Hashable
      
        # Output only. Additional information about the BigQuery exporting.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. Execution state for the BigQuery exporting.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # A rule captures data quality intent about a data source.
      class GoogleCloudDataplexV1DataQualityRule
        include Google::Apis::Core::Hashable
      
        # Optional. The unnested column which this rule is evaluated against.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Optional. Description of the rule. The maximum length is 1,024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The dimension a rule belongs to. Results are also aggregated at the
        # dimension level. Custom dimension name is supported with all uppercase letters
        # and maximum length of 30 characters.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Optional. Rows with null values will automatically fail a rule, unless
        # ignore_null is true. In that case, such null rows are trivially considered
        # passing.This field is only valid for the following type of rules:
        # RangeExpectation RegexExpectation SetExpectation UniquenessExpectation
        # Corresponds to the JSON property `ignoreNull`
        # @return [Boolean]
        attr_accessor :ignore_null
        alias_method :ignore_null?, :ignore_null
      
        # Optional. A mutable name for the rule. The name must contain only letters (a-z,
        # A-Z), numbers (0-9), or hyphens (-). The maximum length is 63 characters.
        # Must start with a letter. Must end with a number or a letter.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Evaluates whether each column value is null.
        # Corresponds to the JSON property `nonNullExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleNonNullExpectation]
        attr_accessor :non_null_expectation
      
        # Evaluates whether each column value lies between a specified range.
        # Corresponds to the JSON property `rangeExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRangeExpectation]
        attr_accessor :range_expectation
      
        # Evaluates whether each column value matches a specified regex.
        # Corresponds to the JSON property `regexExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRegexExpectation]
        attr_accessor :regex_expectation
      
        # Evaluates whether each row passes the specified condition.The SQL expression
        # needs to use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/
        # reference/standard-sql/query-syntax) and should produce a boolean value per
        # row as the result.Example: col1 >= 0 AND col2 < 10
        # Corresponds to the JSON property `rowConditionExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation]
        attr_accessor :row_condition_expectation
      
        # Evaluates whether each column value is contained by a specified set.
        # Corresponds to the JSON property `setExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleSetExpectation]
        attr_accessor :set_expectation
      
        # A SQL statement that is evaluated to return rows that match an invalid state.
        # If any rows are are returned, this rule fails.The SQL statement must use
        # GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/standard-
        # sql/query-syntax), and must not contain any semicolons.You can use the data
        # reference parameter $`data()` to reference the source table with all of its
        # precondition filters applied. Examples of precondition filters include row
        # filters, incremental data filters, and sampling. For more information, see
        # Data reference parameter (https://cloud.google.com/dataplex/docs/auto-data-
        # quality-overview#data-reference-parameter).Example: SELECT * FROM $`data()`
        # WHERE price < 0
        # Corresponds to the JSON property `sqlAssertion`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleSqlAssertion]
        attr_accessor :sql_assertion
      
        # Evaluates whether the column aggregate statistic lies between a specified
        # range.
        # Corresponds to the JSON property `statisticRangeExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation]
        attr_accessor :statistic_range_expectation
      
        # Optional. Whether the Rule is active or suspended. Default is false.
        # Corresponds to the JSON property `suspended`
        # @return [Boolean]
        attr_accessor :suspended
        alias_method :suspended?, :suspended
      
        # Evaluates whether the provided expression is true.The SQL expression needs to
        # use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/
        # standard-sql/query-syntax) and should produce a scalar boolean result.Example:
        # MIN(col1) >= 0
        # Corresponds to the JSON property `tableConditionExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation]
        attr_accessor :table_condition_expectation
      
        # Optional. The minimum ratio of passing_rows / total_rows required to pass this
        # rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).This field
        # is only valid for row-level type rules.
        # Corresponds to the JSON property `threshold`
        # @return [Float]
        attr_accessor :threshold
      
        # Evaluates whether the column has duplicates.
        # Corresponds to the JSON property `uniquenessExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation]
        attr_accessor :uniqueness_expectation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column = args[:column] if args.key?(:column)
          @description = args[:description] if args.key?(:description)
          @dimension = args[:dimension] if args.key?(:dimension)
          @ignore_null = args[:ignore_null] if args.key?(:ignore_null)
          @name = args[:name] if args.key?(:name)
          @non_null_expectation = args[:non_null_expectation] if args.key?(:non_null_expectation)
          @range_expectation = args[:range_expectation] if args.key?(:range_expectation)
          @regex_expectation = args[:regex_expectation] if args.key?(:regex_expectation)
          @row_condition_expectation = args[:row_condition_expectation] if args.key?(:row_condition_expectation)
          @set_expectation = args[:set_expectation] if args.key?(:set_expectation)
          @sql_assertion = args[:sql_assertion] if args.key?(:sql_assertion)
          @statistic_range_expectation = args[:statistic_range_expectation] if args.key?(:statistic_range_expectation)
          @suspended = args[:suspended] if args.key?(:suspended)
          @table_condition_expectation = args[:table_condition_expectation] if args.key?(:table_condition_expectation)
          @threshold = args[:threshold] if args.key?(:threshold)
          @uniqueness_expectation = args[:uniqueness_expectation] if args.key?(:uniqueness_expectation)
        end
      end
      
      # Evaluates whether each column value is null.
      class GoogleCloudDataplexV1DataQualityRuleNonNullExpectation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Evaluates whether each column value lies between a specified range.
      class GoogleCloudDataplexV1DataQualityRuleRangeExpectation
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum column value allowed for a row to pass this validation.
        # At least one of min_value and max_value need to be provided.
        # Corresponds to the JSON property `maxValue`
        # @return [String]
        attr_accessor :max_value
      
        # Optional. The minimum column value allowed for a row to pass this validation.
        # At least one of min_value and max_value need to be provided.
        # Corresponds to the JSON property `minValue`
        # @return [String]
        attr_accessor :min_value
      
        # Optional. Whether each value needs to be strictly lesser than ('<') the
        # maximum, or if equality is allowed.Only relevant if a max_value has been
        # defined. Default = false.
        # Corresponds to the JSON property `strictMaxEnabled`
        # @return [Boolean]
        attr_accessor :strict_max_enabled
        alias_method :strict_max_enabled?, :strict_max_enabled
      
        # Optional. Whether each value needs to be strictly greater than ('>') the
        # minimum, or if equality is allowed.Only relevant if a min_value has been
        # defined. Default = false.
        # Corresponds to the JSON property `strictMinEnabled`
        # @return [Boolean]
        attr_accessor :strict_min_enabled
        alias_method :strict_min_enabled?, :strict_min_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @strict_max_enabled = args[:strict_max_enabled] if args.key?(:strict_max_enabled)
          @strict_min_enabled = args[:strict_min_enabled] if args.key?(:strict_min_enabled)
        end
      end
      
      # Evaluates whether each column value matches a specified regex.
      class GoogleCloudDataplexV1DataQualityRuleRegexExpectation
        include Google::Apis::Core::Hashable
      
        # Optional. A regular expression the column value is expected to match.
        # Corresponds to the JSON property `regex`
        # @return [String]
        attr_accessor :regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regex = args[:regex] if args.key?(:regex)
        end
      end
      
      # DataQualityRuleResult provides a more detailed, per-rule view of the results.
      class GoogleCloudDataplexV1DataQualityRuleResult
        include Google::Apis::Core::Hashable
      
        # Output only. The number of rows returned by the SQL statement in a SQL
        # assertion rule.This field is only valid for SQL assertion rules.
        # Corresponds to the JSON property `assertionRowCount`
        # @return [Fixnum]
        attr_accessor :assertion_row_count
      
        # Output only. The number of rows a rule was evaluated against.This field is
        # only valid for row-level type rules.Evaluated count can be configured to
        # either include all rows (default) - with null rows automatically failing rule
        # evaluation, or exclude null rows from the evaluated_count, by setting
        # ignore_nulls = true.This field is not set for rule SqlAssertion.
        # Corresponds to the JSON property `evaluatedCount`
        # @return [Fixnum]
        attr_accessor :evaluated_count
      
        # Output only. The query to find rows that did not pass this rule.This field is
        # only valid for row-level type rules.
        # Corresponds to the JSON property `failingRowsQuery`
        # @return [String]
        attr_accessor :failing_rows_query
      
        # Output only. The number of rows with null values in the specified column.
        # Corresponds to the JSON property `nullCount`
        # @return [Fixnum]
        attr_accessor :null_count
      
        # Output only. The ratio of passed_count / evaluated_count.This field is only
        # valid for row-level type rules.
        # Corresponds to the JSON property `passRatio`
        # @return [Float]
        attr_accessor :pass_ratio
      
        # Output only. Whether the rule passed or failed.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # Output only. The number of rows which passed a rule evaluation.This field is
        # only valid for row-level type rules.This field is not set for rule
        # SqlAssertion.
        # Corresponds to the JSON property `passedCount`
        # @return [Fixnum]
        attr_accessor :passed_count
      
        # A rule captures data quality intent about a data source.
        # Corresponds to the JSON property `rule`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_row_count = args[:assertion_row_count] if args.key?(:assertion_row_count)
          @evaluated_count = args[:evaluated_count] if args.key?(:evaluated_count)
          @failing_rows_query = args[:failing_rows_query] if args.key?(:failing_rows_query)
          @null_count = args[:null_count] if args.key?(:null_count)
          @pass_ratio = args[:pass_ratio] if args.key?(:pass_ratio)
          @passed = args[:passed] if args.key?(:passed)
          @passed_count = args[:passed_count] if args.key?(:passed_count)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # Evaluates whether each row passes the specified condition.The SQL expression
      # needs to use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/
      # reference/standard-sql/query-syntax) and should produce a boolean value per
      # row as the result.Example: col1 >= 0 AND col2 < 10
      class GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
        include Google::Apis::Core::Hashable
      
        # Optional. The SQL expression.
        # Corresponds to the JSON property `sqlExpression`
        # @return [String]
        attr_accessor :sql_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_expression = args[:sql_expression] if args.key?(:sql_expression)
        end
      end
      
      # Evaluates whether each column value is contained by a specified set.
      class GoogleCloudDataplexV1DataQualityRuleSetExpectation
        include Google::Apis::Core::Hashable
      
        # Optional. Expected values for the column value.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A SQL statement that is evaluated to return rows that match an invalid state.
      # If any rows are are returned, this rule fails.The SQL statement must use
      # GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/standard-
      # sql/query-syntax), and must not contain any semicolons.You can use the data
      # reference parameter $`data()` to reference the source table with all of its
      # precondition filters applied. Examples of precondition filters include row
      # filters, incremental data filters, and sampling. For more information, see
      # Data reference parameter (https://cloud.google.com/dataplex/docs/auto-data-
      # quality-overview#data-reference-parameter).Example: SELECT * FROM $`data()`
      # WHERE price < 0
      class GoogleCloudDataplexV1DataQualityRuleSqlAssertion
        include Google::Apis::Core::Hashable
      
        # Optional. The SQL statement.
        # Corresponds to the JSON property `sqlStatement`
        # @return [String]
        attr_accessor :sql_statement
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_statement = args[:sql_statement] if args.key?(:sql_statement)
        end
      end
      
      # Evaluates whether the column aggregate statistic lies between a specified
      # range.
      class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
        include Google::Apis::Core::Hashable
      
        # Optional. The maximum column statistic value allowed for a row to pass this
        # validation.At least one of min_value and max_value need to be provided.
        # Corresponds to the JSON property `maxValue`
        # @return [String]
        attr_accessor :max_value
      
        # Optional. The minimum column statistic value allowed for a row to pass this
        # validation.At least one of min_value and max_value need to be provided.
        # Corresponds to the JSON property `minValue`
        # @return [String]
        attr_accessor :min_value
      
        # Optional. The aggregate metric to evaluate.
        # Corresponds to the JSON property `statistic`
        # @return [String]
        attr_accessor :statistic
      
        # Optional. Whether column statistic needs to be strictly lesser than ('<') the
        # maximum, or if equality is allowed.Only relevant if a max_value has been
        # defined. Default = false.
        # Corresponds to the JSON property `strictMaxEnabled`
        # @return [Boolean]
        attr_accessor :strict_max_enabled
        alias_method :strict_max_enabled?, :strict_max_enabled
      
        # Optional. Whether column statistic needs to be strictly greater than ('>') the
        # minimum, or if equality is allowed.Only relevant if a min_value has been
        # defined. Default = false.
        # Corresponds to the JSON property `strictMinEnabled`
        # @return [Boolean]
        attr_accessor :strict_min_enabled
        alias_method :strict_min_enabled?, :strict_min_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_value = args[:max_value] if args.key?(:max_value)
          @min_value = args[:min_value] if args.key?(:min_value)
          @statistic = args[:statistic] if args.key?(:statistic)
          @strict_max_enabled = args[:strict_max_enabled] if args.key?(:strict_max_enabled)
          @strict_min_enabled = args[:strict_min_enabled] if args.key?(:strict_min_enabled)
        end
      end
      
      # Evaluates whether the provided expression is true.The SQL expression needs to
      # use GoogleSQL syntax (https://cloud.google.com/bigquery/docs/reference/
      # standard-sql/query-syntax) and should produce a scalar boolean result.Example:
      # MIN(col1) >= 0
      class GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
        include Google::Apis::Core::Hashable
      
        # Optional. The SQL expression.
        # Corresponds to the JSON property `sqlExpression`
        # @return [String]
        attr_accessor :sql_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sql_expression = args[:sql_expression] if args.key?(:sql_expression)
        end
      end
      
      # Evaluates whether the column has duplicates.
      class GoogleCloudDataplexV1DataQualityRuleUniquenessExpectation
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Information about the result of a data quality rule for data quality scan. The
      # monitored resource is 'DataScan'.
      class GoogleCloudDataplexV1DataQualityScanRuleResult
        include Google::Apis::Core::Hashable
      
        # The number of rows returned by the SQL statement in a SQL assertion rule. This
        # field is only valid for SQL assertion rules.
        # Corresponds to the JSON property `assertionRowCount`
        # @return [Fixnum]
        attr_accessor :assertion_row_count
      
        # The column which this rule is evaluated against.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # The data source of the data scan (e.g. BigQuery table name).
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # The number of rows evaluated against the data quality rule. This field is only
        # valid for rules of PER_ROW evaluation type.
        # Corresponds to the JSON property `evaluatedRowCount`
        # @return [Fixnum]
        attr_accessor :evaluated_row_count
      
        # The evaluation type of the data quality rule.
        # Corresponds to the JSON property `evalutionType`
        # @return [String]
        attr_accessor :evalution_type
      
        # Identifier of the specific data scan job this log entry is for.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # The number of rows with null values in the specified column.
        # Corresponds to the JSON property `nullRowCount`
        # @return [Fixnum]
        attr_accessor :null_row_count
      
        # The number of rows which passed a rule evaluation. This field is only valid
        # for rules of PER_ROW evaluation type.
        # Corresponds to the JSON property `passedRowCount`
        # @return [Fixnum]
        attr_accessor :passed_row_count
      
        # The result of the data quality rule.
        # Corresponds to the JSON property `result`
        # @return [String]
        attr_accessor :result
      
        # The dimension of the data quality rule.
        # Corresponds to the JSON property `ruleDimension`
        # @return [String]
        attr_accessor :rule_dimension
      
        # The name of the data quality rule.
        # Corresponds to the JSON property `ruleName`
        # @return [String]
        attr_accessor :rule_name
      
        # The type of the data quality rule.
        # Corresponds to the JSON property `ruleType`
        # @return [String]
        attr_accessor :rule_type
      
        # The passing threshold (0.0, 100.0) of the data quality rule.
        # Corresponds to the JSON property `thresholdPercent`
        # @return [Float]
        attr_accessor :threshold_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assertion_row_count = args[:assertion_row_count] if args.key?(:assertion_row_count)
          @column = args[:column] if args.key?(:column)
          @data_source = args[:data_source] if args.key?(:data_source)
          @evaluated_row_count = args[:evaluated_row_count] if args.key?(:evaluated_row_count)
          @evalution_type = args[:evalution_type] if args.key?(:evalution_type)
          @job_id = args[:job_id] if args.key?(:job_id)
          @null_row_count = args[:null_row_count] if args.key?(:null_row_count)
          @passed_row_count = args[:passed_row_count] if args.key?(:passed_row_count)
          @result = args[:result] if args.key?(:result)
          @rule_dimension = args[:rule_dimension] if args.key?(:rule_dimension)
          @rule_name = args[:rule_name] if args.key?(:rule_name)
          @rule_type = args[:rule_type] if args.key?(:rule_type)
          @threshold_percent = args[:threshold_percent] if args.key?(:threshold_percent)
        end
      end
      
      # DataQualityScan related setting.
      class GoogleCloudDataplexV1DataQualitySpec
        include Google::Apis::Core::Hashable
      
        # Optional. If set, the latest DataScan job result will be published as Dataplex
        # Universal Catalog metadata.
        # Corresponds to the JSON property `catalogPublishingEnabled`
        # @return [Boolean]
        attr_accessor :catalog_publishing_enabled
        alias_method :catalog_publishing_enabled?, :catalog_publishing_enabled
      
        # The configuration of post scan actions of DataQualityScan.
        # Corresponds to the JSON property `postScanActions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActions]
        attr_accessor :post_scan_actions
      
        # Optional. A filter applied to all rows in a single DataScan job. The filter
        # needs to be a valid SQL expression for a WHERE clause in GoogleSQL syntax (
        # https://cloud.google.com/bigquery/docs/reference/standard-sql/query-syntax#
        # where_clause).Example: col1 >= 0 AND col2 < 10
        # Corresponds to the JSON property `rowFilter`
        # @return [String]
        attr_accessor :row_filter
      
        # Required. The list of rules to evaluate against a data source. At least one
        # rule is required.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule>]
        attr_accessor :rules
      
        # Optional. The percentage of the records to be selected from the dataset for
        # DataScan. Value can range between 0.0 and 100.0 with up to 3 significant
        # decimal digits. Sampling is not applied if sampling_percent is not specified,
        # 0 or 100.
        # Corresponds to the JSON property `samplingPercent`
        # @return [Float]
        attr_accessor :sampling_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_publishing_enabled = args[:catalog_publishing_enabled] if args.key?(:catalog_publishing_enabled)
          @post_scan_actions = args[:post_scan_actions] if args.key?(:post_scan_actions)
          @row_filter = args[:row_filter] if args.key?(:row_filter)
          @rules = args[:rules] if args.key?(:rules)
          @sampling_percent = args[:sampling_percent] if args.key?(:sampling_percent)
        end
      end
      
      # The configuration of post scan actions of DataQualityScan.
      class GoogleCloudDataplexV1DataQualitySpecPostScanActions
        include Google::Apis::Core::Hashable
      
        # The configuration of BigQuery export post scan action.
        # Corresponds to the JSON property `bigqueryExport`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport]
        attr_accessor :bigquery_export
      
        # The configuration of notification report post scan action.
        # Corresponds to the JSON property `notificationReport`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport]
        attr_accessor :notification_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_export = args[:bigquery_export] if args.key?(:bigquery_export)
          @notification_report = args[:notification_report] if args.key?(:notification_report)
        end
      end
      
      # The configuration of BigQuery export post scan action.
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsBigQueryExport
        include Google::Apis::Core::Hashable
      
        # Optional. The BigQuery table to export DataQualityScan results to. Format: //
        # bigquery.googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/
        # TABLE_ID or projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
        # Corresponds to the JSON property `resultsTable`
        # @return [String]
        attr_accessor :results_table
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results_table = args[:results_table] if args.key?(:results_table)
        end
      end
      
      # This trigger is triggered whenever a scan job run ends, regardless of the
      # result.
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # This trigger is triggered when the scan job itself fails, regardless of the
      # result.
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The configuration of notification report post scan action.
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsNotificationReport
        include Google::Apis::Core::Hashable
      
        # This trigger is triggered whenever a scan job run ends, regardless of the
        # result.
        # Corresponds to the JSON property `jobEndTrigger`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobEndTrigger]
        attr_accessor :job_end_trigger
      
        # This trigger is triggered when the scan job itself fails, regardless of the
        # result.
        # Corresponds to the JSON property `jobFailureTrigger`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsJobFailureTrigger]
        attr_accessor :job_failure_trigger
      
        # The individuals or groups who are designated to receive notifications upon
        # triggers.
        # Corresponds to the JSON property `recipients`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients]
        attr_accessor :recipients
      
        # This trigger is triggered when the DQ score in the job result is less than a
        # specified input score.
        # Corresponds to the JSON property `scoreThresholdTrigger`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger]
        attr_accessor :score_threshold_trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_end_trigger = args[:job_end_trigger] if args.key?(:job_end_trigger)
          @job_failure_trigger = args[:job_failure_trigger] if args.key?(:job_failure_trigger)
          @recipients = args[:recipients] if args.key?(:recipients)
          @score_threshold_trigger = args[:score_threshold_trigger] if args.key?(:score_threshold_trigger)
        end
      end
      
      # The individuals or groups who are designated to receive notifications upon
      # triggers.
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsRecipients
        include Google::Apis::Core::Hashable
      
        # Optional. The email recipients who will receive the DataQualityScan results
        # report.
        # Corresponds to the JSON property `emails`
        # @return [Array<String>]
        attr_accessor :emails
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emails = args[:emails] if args.key?(:emails)
        end
      end
      
      # This trigger is triggered when the DQ score in the job result is less than a
      # specified input score.
      class GoogleCloudDataplexV1DataQualitySpecPostScanActionsScoreThresholdTrigger
        include Google::Apis::Core::Hashable
      
        # Optional. The score range is in 0,100.
        # Corresponds to the JSON property `scoreThreshold`
        # @return [Float]
        attr_accessor :score_threshold
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @score_threshold = args[:score_threshold] if args.key?(:score_threshold)
        end
      end
      
      # Represents a user-visible job which provides the insights for the related data
      # source.For example: Data quality: generates queries based on the rules and
      # runs against the data to get data quality check results. For more information,
      # see Auto data quality overview (https://cloud.google.com/dataplex/docs/auto-
      # data-quality-overview). Data profile: analyzes the data in tables and
      # generates insights about the structure, content and relationships (such as
      # null percent, cardinality, min/max/mean, etc). For more information, see About
      # data profiling (https://cloud.google.com/dataplex/docs/data-profiling-overview)
      # . Data discovery: scans data in Cloud Storage buckets to extract and then
      # catalog metadata. For more information, see Discover and catalog Cloud Storage
      # data (https://cloud.google.com/bigquery/docs/automatic-discovery). Data
      # documentation: analyzes the table details and generates insights including
      # descriptions and sample SQL queries for the table. For more information, see
      # Generate data insights in BigQuery (https://cloud.google.com/bigquery/docs/
      # data-insights).
      class GoogleCloudDataplexV1DataScan
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the scan was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The data source for DataScan.
        # Corresponds to the JSON property `data`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataSource]
        attr_accessor :data
      
        # The output of a data discovery scan.
        # Corresponds to the JSON property `dataDiscoveryResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResult]
        attr_accessor :data_discovery_result
      
        # Spec for a data discovery scan.
        # Corresponds to the JSON property `dataDiscoverySpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpec]
        attr_accessor :data_discovery_spec
      
        # The output of a DataDocumentation scan.
        # Corresponds to the JSON property `dataDocumentationResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationResult]
        attr_accessor :data_documentation_result
      
        # DataDocumentation scan related spec.
        # Corresponds to the JSON property `dataDocumentationSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationSpec]
        attr_accessor :data_documentation_spec
      
        # DataProfileResult defines the output of DataProfileScan. Each field of the
        # table will have field type specific profile result.
        # Corresponds to the JSON property `dataProfileResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResult]
        attr_accessor :data_profile_result
      
        # DataProfileScan related setting.
        # Corresponds to the JSON property `dataProfileSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpec]
        attr_accessor :data_profile_spec
      
        # The output of a DataQualityScan.
        # Corresponds to the JSON property `dataQualityResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResult]
        attr_accessor :data_quality_result
      
        # DataQualityScan related setting.
        # Corresponds to the JSON property `dataQualitySpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpec]
        attr_accessor :data_quality_spec
      
        # Optional. Description of the scan. Must be between 1-1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name. Must be between 1-256 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # DataScan execution settings.
        # Corresponds to the JSON property `executionSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanExecutionSpec]
        attr_accessor :execution_spec
      
        # Status of the data scan execution.
        # Corresponds to the JSON property `executionStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanExecutionStatus]
        attr_accessor :execution_status
      
        # Optional. User-defined labels for the scan.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The relative resource name of the scan, of the form:
        # projects/`project`/locations/`location_id`/dataScans/`datascan_id`, where
        # project refers to a project_id or project_number and location_id refers to a
        # Google Cloud region.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Current state of the DataScan.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The type of DataScan.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System generated globally unique ID for the scan. This ID will be
        # different if the scan is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the scan was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data = args[:data] if args.key?(:data)
          @data_discovery_result = args[:data_discovery_result] if args.key?(:data_discovery_result)
          @data_discovery_spec = args[:data_discovery_spec] if args.key?(:data_discovery_spec)
          @data_documentation_result = args[:data_documentation_result] if args.key?(:data_documentation_result)
          @data_documentation_spec = args[:data_documentation_spec] if args.key?(:data_documentation_spec)
          @data_profile_result = args[:data_profile_result] if args.key?(:data_profile_result)
          @data_profile_spec = args[:data_profile_spec] if args.key?(:data_profile_spec)
          @data_quality_result = args[:data_quality_result] if args.key?(:data_quality_result)
          @data_quality_spec = args[:data_quality_spec] if args.key?(:data_quality_spec)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @execution_spec = args[:execution_spec] if args.key?(:execution_spec)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The status of publishing the data scan result as Dataplex Universal Catalog
      # metadata.
      class GoogleCloudDataplexV1DataScanCatalogPublishingStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Execution state for catalog publishing.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # These messages contain information about the execution of a datascan. The
      # monitored resource is 'DataScan'
      class GoogleCloudDataplexV1DataScanEvent
        include Google::Apis::Core::Hashable
      
        # The status of publishing the data scan result as Dataplex Universal Catalog
        # metadata.
        # Corresponds to the JSON property `catalogPublishingStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanCatalogPublishingStatus]
        attr_accessor :catalog_publishing_status
      
        # The time when the data scan job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Data profile result for data scan job.
        # Corresponds to the JSON property `dataProfile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileResult]
        attr_accessor :data_profile
      
        # Applied configs for data profile type data scan job.
        # Corresponds to the JSON property `dataProfileConfigs`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs]
        attr_accessor :data_profile_configs
      
        # Data quality result for data scan job.
        # Corresponds to the JSON property `dataQuality`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityResult]
        attr_accessor :data_quality
      
        # Applied configs for data quality type data scan job.
        # Corresponds to the JSON property `dataQualityConfigs`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs]
        attr_accessor :data_quality_configs
      
        # The data source of the data scan
        # Corresponds to the JSON property `dataSource`
        # @return [String]
        attr_accessor :data_source
      
        # The time when the data scan job finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The identifier of the specific data scan job this log entry is for.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # The message describing the data scan job event.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Post scan actions result for data scan job.
        # Corresponds to the JSON property `postScanActionsResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventPostScanActionsResult]
        attr_accessor :post_scan_actions_result
      
        # The scope of the data scan (e.g. full, incremental).
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # A version identifier of the spec which was used to execute this job.
        # Corresponds to the JSON property `specVersion`
        # @return [String]
        attr_accessor :spec_version
      
        # The time when the data scan job started to run.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The status of the data scan job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The trigger type of the data scan job.
        # Corresponds to the JSON property `trigger`
        # @return [String]
        attr_accessor :trigger
      
        # The type of the data scan.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @catalog_publishing_status = args[:catalog_publishing_status] if args.key?(:catalog_publishing_status)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_profile = args[:data_profile] if args.key?(:data_profile)
          @data_profile_configs = args[:data_profile_configs] if args.key?(:data_profile_configs)
          @data_quality = args[:data_quality] if args.key?(:data_quality)
          @data_quality_configs = args[:data_quality_configs] if args.key?(:data_quality_configs)
          @data_source = args[:data_source] if args.key?(:data_source)
          @end_time = args[:end_time] if args.key?(:end_time)
          @job_id = args[:job_id] if args.key?(:job_id)
          @message = args[:message] if args.key?(:message)
          @post_scan_actions_result = args[:post_scan_actions_result] if args.key?(:post_scan_actions_result)
          @scope = args[:scope] if args.key?(:scope)
          @spec_version = args[:spec_version] if args.key?(:spec_version)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @trigger = args[:trigger] if args.key?(:trigger)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Applied configs for data profile type data scan job.
      class GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs
        include Google::Apis::Core::Hashable
      
        # Boolean indicating whether a column filter was applied in the DataScan job.
        # Corresponds to the JSON property `columnFilterApplied`
        # @return [Boolean]
        attr_accessor :column_filter_applied
        alias_method :column_filter_applied?, :column_filter_applied
      
        # Boolean indicating whether a row filter was applied in the DataScan job.
        # Corresponds to the JSON property `rowFilterApplied`
        # @return [Boolean]
        attr_accessor :row_filter_applied
        alias_method :row_filter_applied?, :row_filter_applied
      
        # The percentage of the records selected from the dataset for DataScan. Value
        # ranges between 0.0 and 100.0. Value 0.0 or 100.0 imply that sampling was not
        # applied.
        # Corresponds to the JSON property `samplingPercent`
        # @return [Float]
        attr_accessor :sampling_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_filter_applied = args[:column_filter_applied] if args.key?(:column_filter_applied)
          @row_filter_applied = args[:row_filter_applied] if args.key?(:row_filter_applied)
          @sampling_percent = args[:sampling_percent] if args.key?(:sampling_percent)
        end
      end
      
      # Data profile result for data scan job.
      class GoogleCloudDataplexV1DataScanEventDataProfileResult
        include Google::Apis::Core::Hashable
      
        # The count of rows processed in the data scan job.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_count = args[:row_count] if args.key?(:row_count)
        end
      end
      
      # Applied configs for data quality type data scan job.
      class GoogleCloudDataplexV1DataScanEventDataQualityAppliedConfigs
        include Google::Apis::Core::Hashable
      
        # Boolean indicating whether a row filter was applied in the DataScan job.
        # Corresponds to the JSON property `rowFilterApplied`
        # @return [Boolean]
        attr_accessor :row_filter_applied
        alias_method :row_filter_applied?, :row_filter_applied
      
        # The percentage of the records selected from the dataset for DataScan. Value
        # ranges between 0.0 and 100.0. Value 0.0 or 100.0 imply that sampling was not
        # applied.
        # Corresponds to the JSON property `samplingPercent`
        # @return [Float]
        attr_accessor :sampling_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @row_filter_applied = args[:row_filter_applied] if args.key?(:row_filter_applied)
          @sampling_percent = args[:sampling_percent] if args.key?(:sampling_percent)
        end
      end
      
      # Data quality result for data scan job.
      class GoogleCloudDataplexV1DataScanEventDataQualityResult
        include Google::Apis::Core::Hashable
      
        # The score of each column scanned in the data scan job. The key of the map is
        # the name of the column. The value is the data quality score for the column.The
        # score ranges between 0, 100 (up to two decimal points).
        # Corresponds to the JSON property `columnScore`
        # @return [Hash<String,Float>]
        attr_accessor :column_score
      
        # The result of each dimension for data quality result. The key of the map is
        # the name of the dimension. The value is the bool value depicting whether the
        # dimension result was pass or not.
        # Corresponds to the JSON property `dimensionPassed`
        # @return [Hash<String,Boolean>]
        attr_accessor :dimension_passed
      
        # The score of each dimension for data quality result. The key of the map is the
        # name of the dimension. The value is the data quality score for the dimension.
        # The score ranges between 0, 100 (up to two decimal points).
        # Corresponds to the JSON property `dimensionScore`
        # @return [Hash<String,Float>]
        attr_accessor :dimension_score
      
        # Whether the data quality result was pass or not.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # The count of rows processed in the data scan job.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # The table-level data quality score for the data scan job.The data quality
        # score ranges between 0, 100 (up to two decimal points).
        # Corresponds to the JSON property `score`
        # @return [Float]
        attr_accessor :score
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_score = args[:column_score] if args.key?(:column_score)
          @dimension_passed = args[:dimension_passed] if args.key?(:dimension_passed)
          @dimension_score = args[:dimension_score] if args.key?(:dimension_score)
          @passed = args[:passed] if args.key?(:passed)
          @row_count = args[:row_count] if args.key?(:row_count)
          @score = args[:score] if args.key?(:score)
        end
      end
      
      # Post scan actions result for data scan job.
      class GoogleCloudDataplexV1DataScanEventPostScanActionsResult
        include Google::Apis::Core::Hashable
      
        # The result of BigQuery export post scan action.
        # Corresponds to the JSON property `bigqueryExportResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult]
        attr_accessor :bigquery_export_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery_export_result = args[:bigquery_export_result] if args.key?(:bigquery_export_result)
        end
      end
      
      # The result of BigQuery export post scan action.
      class GoogleCloudDataplexV1DataScanEventPostScanActionsResultBigQueryExportResult
        include Google::Apis::Core::Hashable
      
        # Additional information about the BigQuery exporting.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Execution state for the BigQuery exporting.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # DataScan execution settings.
      class GoogleCloudDataplexV1DataScanExecutionSpec
        include Google::Apis::Core::Hashable
      
        # Immutable. The unnested field (of type Date or Timestamp) that contains values
        # which monotonically increase over time.If not specified, a data scan will run
        # for all data in the table.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # DataScan scheduling and trigger settings.
        # Corresponds to the JSON property `trigger`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Trigger]
        attr_accessor :trigger
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @trigger = args[:trigger] if args.key?(:trigger)
        end
      end
      
      # Status of the data scan execution.
      class GoogleCloudDataplexV1DataScanExecutionStatus
        include Google::Apis::Core::Hashable
      
        # Optional. The time when the DataScanJob execution was created.
        # Corresponds to the JSON property `latestJobCreateTime`
        # @return [String]
        attr_accessor :latest_job_create_time
      
        # Optional. The time when the latest DataScanJob ended.
        # Corresponds to the JSON property `latestJobEndTime`
        # @return [String]
        attr_accessor :latest_job_end_time
      
        # Optional. The time when the latest DataScanJob started.
        # Corresponds to the JSON property `latestJobStartTime`
        # @return [String]
        attr_accessor :latest_job_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_job_create_time = args[:latest_job_create_time] if args.key?(:latest_job_create_time)
          @latest_job_end_time = args[:latest_job_end_time] if args.key?(:latest_job_end_time)
          @latest_job_start_time = args[:latest_job_start_time] if args.key?(:latest_job_start_time)
        end
      end
      
      # A DataScanJob represents an instance of DataScan execution.
      class GoogleCloudDataplexV1DataScanJob
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the DataScanJob was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The output of a data discovery scan.
        # Corresponds to the JSON property `dataDiscoveryResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoveryResult]
        attr_accessor :data_discovery_result
      
        # Spec for a data discovery scan.
        # Corresponds to the JSON property `dataDiscoverySpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDiscoverySpec]
        attr_accessor :data_discovery_spec
      
        # The output of a DataDocumentation scan.
        # Corresponds to the JSON property `dataDocumentationResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationResult]
        attr_accessor :data_documentation_result
      
        # DataDocumentation scan related spec.
        # Corresponds to the JSON property `dataDocumentationSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataDocumentationSpec]
        attr_accessor :data_documentation_spec
      
        # DataProfileResult defines the output of DataProfileScan. Each field of the
        # table will have field type specific profile result.
        # Corresponds to the JSON property `dataProfileResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResult]
        attr_accessor :data_profile_result
      
        # DataProfileScan related setting.
        # Corresponds to the JSON property `dataProfileSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileSpec]
        attr_accessor :data_profile_spec
      
        # The output of a DataQualityScan.
        # Corresponds to the JSON property `dataQualityResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityResult]
        attr_accessor :data_quality_result
      
        # DataQualityScan related setting.
        # Corresponds to the JSON property `dataQualitySpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualitySpec]
        attr_accessor :data_quality_spec
      
        # Output only. The time when the DataScanJob ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Additional information about the current state.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. Identifier. The relative resource name of the DataScanJob, of the
        # form: projects/`project`/locations/`location_id`/dataScans/`datascan_id`/jobs/`
        # job_id`, where project refers to a project_id or project_number and
        # location_id refers to a Google Cloud region.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time when the DataScanJob was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Execution state for the DataScanJob.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The type of the parent DataScan.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System generated globally unique ID for the DataScanJob.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_discovery_result = args[:data_discovery_result] if args.key?(:data_discovery_result)
          @data_discovery_spec = args[:data_discovery_spec] if args.key?(:data_discovery_spec)
          @data_documentation_result = args[:data_documentation_result] if args.key?(:data_documentation_result)
          @data_documentation_spec = args[:data_documentation_spec] if args.key?(:data_documentation_spec)
          @data_profile_result = args[:data_profile_result] if args.key?(:data_profile_result)
          @data_profile_spec = args[:data_profile_spec] if args.key?(:data_profile_spec)
          @data_quality_result = args[:data_quality_result] if args.key?(:data_quality_result)
          @data_quality_spec = args[:data_quality_spec] if args.key?(:data_quality_spec)
          @end_time = args[:end_time] if args.key?(:end_time)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # The data source for DataScan.
      class GoogleCloudDataplexV1DataSource
        include Google::Apis::Core::Hashable
      
        # Immutable. The Dataplex Universal Catalog entity that represents the data
        # source (e.g. BigQuery table) for DataScan, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/
        # entities/`entity_id`.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # Immutable. The service-qualified full resource name of the cloud resource for
        # a DataScan job to scan against. The field could either be: Cloud Storage
        # bucket for DataDiscoveryScan Format: //storage.googleapis.com/projects/
        # PROJECT_ID/buckets/BUCKET_ID or BigQuery table of type "TABLE" for
        # DataProfileScan/DataQualityScan/DataDocumentationScan Format: //bigquery.
        # googleapis.com/projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # DataTaxonomy represents a set of hierarchical DataAttributes resources,
      # grouped with a common theme Eg: 'SensitiveDataTaxonomy' can have attributes to
      # manage PII data. It is defined at project level.
      class GoogleCloudDataplexV1DataTaxonomy
        include Google::Apis::Core::Hashable
      
        # Output only. The number of attributes in the DataTaxonomy.
        # Corresponds to the JSON property `attributeCount`
        # @return [Fixnum]
        attr_accessor :attribute_count
      
        # Output only. The number of classes in the DataTaxonomy.
        # Corresponds to the JSON property `classCount`
        # @return [Fixnum]
        attr_accessor :class_count
      
        # Output only. The time when the DataTaxonomy was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the DataTaxonomy.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # This checksum is computed by the server based on the value of other fields,
        # and may be sent on update and delete requests to ensure the client has an up-
        # to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. User-defined labels for the DataTaxonomy.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the DataTaxonomy, of the form:
        # projects/`project_number`/locations/`location_id`/dataTaxonomies/`
        # data_taxonomy_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. System generated globally unique ID for the dataTaxonomy. This ID
        # will be different if the DataTaxonomy is deleted and re-created with the same
        # name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the DataTaxonomy was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attribute_count = args[:attribute_count] if args.key?(:attribute_count)
          @class_count = args[:class_count] if args.key?(:class_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The payload associated with Discovery data processing.
      class GoogleCloudDataplexV1DiscoveryEvent
        include Google::Apis::Core::Hashable
      
        # Details about the action.
        # Corresponds to the JSON property `action`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventActionDetails]
        attr_accessor :action
      
        # The id of the associated asset.
        # Corresponds to the JSON property `assetId`
        # @return [String]
        attr_accessor :asset_id
      
        # Details about configuration events.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventConfigDetails]
        attr_accessor :config
      
        # The data location associated with the event.
        # Corresponds to the JSON property `dataLocation`
        # @return [String]
        attr_accessor :data_location
      
        # The id of the associated datascan for standalone discovery.
        # Corresponds to the JSON property `datascanId`
        # @return [String]
        attr_accessor :datascan_id
      
        # Details about the entity.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventEntityDetails]
        attr_accessor :entity
      
        # The id of the associated lake.
        # Corresponds to the JSON property `lakeId`
        # @return [String]
        attr_accessor :lake_id
      
        # The log message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Details about the partition.
        # Corresponds to the JSON property `partition`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventPartitionDetails]
        attr_accessor :partition
      
        # Details about the published table.
        # Corresponds to the JSON property `table`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DiscoveryEventTableDetails]
        attr_accessor :table
      
        # The type of the event being logged.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The id of the associated zone.
        # Corresponds to the JSON property `zoneId`
        # @return [String]
        attr_accessor :zone_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @asset_id = args[:asset_id] if args.key?(:asset_id)
          @config = args[:config] if args.key?(:config)
          @data_location = args[:data_location] if args.key?(:data_location)
          @datascan_id = args[:datascan_id] if args.key?(:datascan_id)
          @entity = args[:entity] if args.key?(:entity)
          @lake_id = args[:lake_id] if args.key?(:lake_id)
          @message = args[:message] if args.key?(:message)
          @partition = args[:partition] if args.key?(:partition)
          @table = args[:table] if args.key?(:table)
          @type = args[:type] if args.key?(:type)
          @zone_id = args[:zone_id] if args.key?(:zone_id)
        end
      end
      
      # Details about the action.
      class GoogleCloudDataplexV1DiscoveryEventActionDetails
        include Google::Apis::Core::Hashable
      
        # The human readable issue associated with the action.
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # The type of action. Eg. IncompatibleDataSchema, InvalidDataFormat
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue = args[:issue] if args.key?(:issue)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Details about configuration events.
      class GoogleCloudDataplexV1DiscoveryEventConfigDetails
        include Google::Apis::Core::Hashable
      
        # A list of discovery configuration parameters in effect. The keys are the field
        # paths within DiscoverySpec. Eg. includePatterns, excludePatterns, csvOptions.
        # disableTypeInference, etc.
        # Corresponds to the JSON property `parameters`
        # @return [Hash<String,String>]
        attr_accessor :parameters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @parameters = args[:parameters] if args.key?(:parameters)
        end
      end
      
      # Details about the entity.
      class GoogleCloudDataplexV1DiscoveryEventEntityDetails
        include Google::Apis::Core::Hashable
      
        # The name of the entity resource. The name is the fully-qualified resource name.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # The type of the entity resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Details about the partition.
      class GoogleCloudDataplexV1DiscoveryEventPartitionDetails
        include Google::Apis::Core::Hashable
      
        # The name to the containing entity resource. The name is the fully-qualified
        # resource name.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # The name to the partition resource. The name is the fully-qualified resource
        # name.
        # Corresponds to the JSON property `partition`
        # @return [String]
        attr_accessor :partition
      
        # The locations of the data items (e.g., a Cloud Storage objects) sampled for
        # metadata inference.
        # Corresponds to the JSON property `sampledDataLocations`
        # @return [Array<String>]
        attr_accessor :sampled_data_locations
      
        # The type of the containing entity resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @partition = args[:partition] if args.key?(:partition)
          @sampled_data_locations = args[:sampled_data_locations] if args.key?(:sampled_data_locations)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Details about the published table.
      class GoogleCloudDataplexV1DiscoveryEventTableDetails
        include Google::Apis::Core::Hashable
      
        # The fully-qualified resource name of the table resource.
        # Corresponds to the JSON property `table`
        # @return [String]
        attr_accessor :table
      
        # The type of the table resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @table = args[:table] if args.key?(:table)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A Resource designed to manage encryption configurations for customers to
      # support Customer Managed Encryption Keys (CMEK).
      class GoogleCloudDataplexV1EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the Encryption configuration was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Represent the state of CMEK opt-in for metastore.
        # Corresponds to the JSON property `enableMetastoreEncryption`
        # @return [Boolean]
        attr_accessor :enable_metastore_encryption
        alias_method :enable_metastore_encryption?, :enable_metastore_encryption
      
        # Output only. The state of encryption of the databases.
        # Corresponds to the JSON property `encryptionState`
        # @return [String]
        attr_accessor :encryption_state
      
        # Etag of the EncryptionConfig. This is a strong etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Details of the failure if anything related to Cmek db fails.
        # Corresponds to the JSON property `failureDetails`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfigFailureDetails]
        attr_accessor :failure_details
      
        # Optional. If a key is chosen, it means that the customer is using CMEK. If a
        # key is not chosen, it means that the customer is using Google managed
        # encryption.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Identifier. The resource name of the EncryptionConfig. Format: organizations/`
        # organization`/locations/`location`/encryptionConfigs/`encryption_config`
        # Global location is not supported.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time when the Encryption configuration was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @enable_metastore_encryption = args[:enable_metastore_encryption] if args.key?(:enable_metastore_encryption)
          @encryption_state = args[:encryption_state] if args.key?(:encryption_state)
          @etag = args[:etag] if args.key?(:etag)
          @failure_details = args[:failure_details] if args.key?(:failure_details)
          @key = args[:key] if args.key?(:key)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Details of the failure if anything related to Cmek db fails.
      class GoogleCloudDataplexV1EncryptionConfigFailureDetails
        include Google::Apis::Core::Hashable
      
        # Output only. The error code for the failure.
        # Corresponds to the JSON property `errorCode`
        # @return [String]
        attr_accessor :error_code
      
        # Output only. The error message will be shown to the user. Set only if the
        # error code is REQUIRE_USER_ACTION.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_code = args[:error_code] if args.key?(:error_code)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # Represents tables and fileset metadata contained within a zone.
      class GoogleCloudDataplexV1Entity
        include Google::Apis::Core::Hashable
      
        # Describes the access mechanism of the data within its storage location.
        # Corresponds to the JSON property `access`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageAccess]
        attr_accessor :access
      
        # Required. Immutable. The ID of the asset associated with the storage location
        # containing the entity data. The entity must be with in the same zone with the
        # asset.
        # Corresponds to the JSON property `asset`
        # @return [String]
        attr_accessor :asset
      
        # Output only. The name of the associated Data Catalog entry.
        # Corresponds to the JSON property `catalogEntry`
        # @return [String]
        attr_accessor :catalog_entry
      
        # Provides compatibility information for various metadata stores.
        # Corresponds to the JSON property `compatibility`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatus]
        attr_accessor :compatibility
      
        # Output only. The time when the entity was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Immutable. The storage path of the entity data. For Cloud Storage
        # data, this is the fully-qualified path to the entity, such as gs://bucket/path/
        # to/data. For BigQuery data, this is the name of the table resource, such as
        # projects/project_id/datasets/dataset_id/tables/table_id.
        # Corresponds to the JSON property `dataPath`
        # @return [String]
        attr_accessor :data_path
      
        # Optional. The set of items within the data path constituting the data in the
        # entity, represented as a glob path. Example: gs://bucket/path/to/data/**/*.csv.
        # Corresponds to the JSON property `dataPathPattern`
        # @return [String]
        attr_accessor :data_path_pattern
      
        # Optional. User friendly longer description text. Must be shorter than or equal
        # to 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Display name must be shorter than or equal to 256 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. The etag associated with the entity, which can be retrieved with a
        # GetEntity request. Required for update and delete requests.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Describes the format of the data within its storage location.
        # Corresponds to the JSON property `format`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormat]
        attr_accessor :format
      
        # Required. A user-provided entity ID. It is mutable, and will be used as the
        # published table name. Specifying a new ID in an update entity request will
        # override the existing value. The ID must contain only letters (a-z, A-Z),
        # numbers (0-9), and underscores, and consist of 256 or fewer characters.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. The resource name of the entity, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/
        # entities/`id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Schema information describing the structure and layout of the data.
        # Corresponds to the JSON property `schema`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Schema]
        attr_accessor :schema
      
        # Required. Immutable. Identifies the storage system of the entity data.
        # Corresponds to the JSON property `system`
        # @return [String]
        attr_accessor :system
      
        # Required. Immutable. The type of entity.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System generated unique ID for the Entity. This ID will be
        # different if the Entity is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the entity was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access = args[:access] if args.key?(:access)
          @asset = args[:asset] if args.key?(:asset)
          @catalog_entry = args[:catalog_entry] if args.key?(:catalog_entry)
          @compatibility = args[:compatibility] if args.key?(:compatibility)
          @create_time = args[:create_time] if args.key?(:create_time)
          @data_path = args[:data_path] if args.key?(:data_path)
          @data_path_pattern = args[:data_path_pattern] if args.key?(:data_path_pattern)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @format = args[:format] if args.key?(:format)
          @id = args[:id] if args.key?(:id)
          @name = args[:name] if args.key?(:name)
          @schema = args[:schema] if args.key?(:schema)
          @system = args[:system] if args.key?(:system)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Provides compatibility information for various metadata stores.
      class GoogleCloudDataplexV1EntityCompatibilityStatus
        include Google::Apis::Core::Hashable
      
        # Provides compatibility information for a specific metadata store.
        # Corresponds to the JSON property `bigquery`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility]
        attr_accessor :bigquery
      
        # Provides compatibility information for a specific metadata store.
        # Corresponds to the JSON property `hiveMetastore`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility]
        attr_accessor :hive_metastore
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bigquery = args[:bigquery] if args.key?(:bigquery)
          @hive_metastore = args[:hive_metastore] if args.key?(:hive_metastore)
        end
      end
      
      # Provides compatibility information for a specific metadata store.
      class GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility
        include Google::Apis::Core::Hashable
      
        # Output only. Whether the entity is compatible and can be represented in the
        # metadata store.
        # Corresponds to the JSON property `compatible`
        # @return [Boolean]
        attr_accessor :compatible
        alias_method :compatible?, :compatible
      
        # Output only. Provides additional detail if the entity is incompatible with the
        # metadata store.
        # Corresponds to the JSON property `reason`
        # @return [String]
        attr_accessor :reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compatible = args[:compatible] if args.key?(:compatible)
          @reason = args[:reason] if args.key?(:reason)
        end
      end
      
      # An entry is a representation of a data resource that can be described by
      # various metadata.
      class GoogleCloudDataplexV1Entry
        include Google::Apis::Core::Hashable
      
        # Optional. The aspects that are attached to the entry. Depending on how the
        # aspect is attached to the entry, the format of the aspect key can be one of
        # the following: If the aspect is attached directly to the entry: `
        # project_id_or_number`.`location_id`.`aspect_type_id` If the aspect is attached
        # to an entry's path: `project_id_or_number`.`location_id`.`aspect_type_id`@`
        # path`
        # Corresponds to the JSON property `aspects`
        # @return [Hash<String,Google::Apis::DataplexV1::GoogleCloudDataplexV1Aspect>]
        attr_accessor :aspects
      
        # Output only. The time when the entry was created in Dataplex Universal Catalog.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Information related to the source system of the data resource that is
        # represented by the entry.
        # Corresponds to the JSON property `entrySource`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntrySource]
        attr_accessor :entry_source
      
        # Required. Immutable. The relative resource name of the entry type that was
        # used to create this entry, in the format projects/`project_id_or_number`/
        # locations/`location_id`/entryTypes/`entry_type_id`.
        # Corresponds to the JSON property `entryType`
        # @return [String]
        attr_accessor :entry_type
      
        # Optional. A name for the entry that can be referenced by an external system.
        # For more information, see Fully qualified names (https://cloud.google.com/data-
        # catalog/docs/fully-qualified-names). The maximum size of the field is 4000
        # characters.
        # Corresponds to the JSON property `fullyQualifiedName`
        # @return [String]
        attr_accessor :fully_qualified_name
      
        # Identifier. The relative resource name of the entry, in the format projects/`
        # project_id_or_number`/locations/`location_id`/entryGroups/`entry_group_id`/
        # entries/`entry_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Immutable. The resource name of the parent entry, in the format
        # projects/`project_id_or_number`/locations/`location_id`/entryGroups/`
        # entry_group_id`/entries/`entry_id`.
        # Corresponds to the JSON property `parentEntry`
        # @return [String]
        attr_accessor :parent_entry
      
        # Output only. The time when the entry was last updated in Dataplex Universal
        # Catalog.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspects = args[:aspects] if args.key?(:aspects)
          @create_time = args[:create_time] if args.key?(:create_time)
          @entry_source = args[:entry_source] if args.key?(:entry_source)
          @entry_type = args[:entry_type] if args.key?(:entry_type)
          @fully_qualified_name = args[:fully_qualified_name] if args.key?(:fully_qualified_name)
          @name = args[:name] if args.key?(:name)
          @parent_entry = args[:parent_entry] if args.key?(:parent_entry)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # An Entry Group represents a logical grouping of one or more Entries.
      class GoogleCloudDataplexV1EntryGroup
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the EntryGroup was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the EntryGroup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # This checksum is computed by the service, and might be sent on update and
        # delete requests to ensure the client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. User-defined labels for the EntryGroup.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the EntryGroup, in the format
        # projects/`project_id_or_number`/locations/`location_id`/entryGroups/`
        # entry_group_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Denotes the transfer status of the Entry Group. It is unspecified
        # for Entry Group created from Dataplex API.
        # Corresponds to the JSON property `transferStatus`
        # @return [String]
        attr_accessor :transfer_status
      
        # Output only. System generated globally unique ID for the EntryGroup. If you
        # delete and recreate the EntryGroup with the same name, this ID will be
        # different.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the EntryGroup was last updated.
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @transfer_status = args[:transfer_status] if args.key?(:transfer_status)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # EntryLink represents a link between two Entries.
      class GoogleCloudDataplexV1EntryLink
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the Entry Link was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Immutable. Relative resource name of the Entry Link Type used to
        # create this Entry Link. For example: Entry link between synonym terms in a
        # glossary: projects/dataplex-types/locations/global/entryLinkTypes/synonym
        # Entry link between related terms in a glossary: projects/dataplex-types/
        # locations/global/entryLinkTypes/related Entry link between glossary terms and
        # data assets: projects/dataplex-types/locations/global/entryLinkTypes/
        # definition
        # Corresponds to the JSON property `entryLinkType`
        # @return [String]
        attr_accessor :entry_link_type
      
        # Required. Specifies the Entries referenced in the Entry Link. There should be
        # exactly two entry references.
        # Corresponds to the JSON property `entryReferences`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLinkEntryReference>]
        attr_accessor :entry_references
      
        # Output only. Immutable. Identifier. The relative resource name of the Entry
        # Link, of the form: projects/`project_id_or_number`/locations/`location_id`/
        # entryGroups/`entry_group_id`/entryLinks/`entry_link_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time when the Entry Link was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @entry_link_type = args[:entry_link_type] if args.key?(:entry_link_type)
          @entry_references = args[:entry_references] if args.key?(:entry_references)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Reference to the Entry that is linked through the Entry Link.
      class GoogleCloudDataplexV1EntryLinkEntryReference
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The relative resource name of the referenced Entry, of
        # the form: projects/`project_id_or_number`/locations/`location_id`/entryGroups/`
        # entry_group_id`/entries/`entry_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Immutable. The path in the Entry that is referenced in the Entry Link. Empty
        # path denotes that the Entry itself is referenced in the Entry Link.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Required. Immutable. The reference type of the Entry.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @path = args[:path] if args.key?(:path)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Payload associated with Entry related log events.
      class GoogleCloudDataplexV1EntryLinkEvent
        include Google::Apis::Core::Hashable
      
        # The type of the event.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # The log message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Name of the resource.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_type = args[:event_type] if args.key?(:event_type)
          @message = args[:message] if args.key?(:message)
          @resource = args[:resource] if args.key?(:resource)
        end
      end
      
      # Information related to the source system of the data resource that is
      # represented by the entry.
      class GoogleCloudDataplexV1EntrySource
        include Google::Apis::Core::Hashable
      
        # Immutable. The entries representing the ancestors of the data resource in the
        # source system.
        # Corresponds to the JSON property `ancestors`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1EntrySourceAncestor>]
        attr_accessor :ancestors
      
        # The time when the resource was created in the source system.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of the data resource. Maximum length is 2,000 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # A user-friendly display name. Maximum length is 500 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # User-defined labels. The maximum size of keys and values is 128 characters
        # each.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Location of the resource in the source system. You can search the
        # entry by this location. By default, this should match the location of the
        # entry group containing this entry. A different value allows capturing the
        # source location for data external to Google Cloud.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The platform containing the source system. Maximum length is 64 characters.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # The name of the resource in the source system. Maximum length is 4,000
        # characters.
        # Corresponds to the JSON property `resource`
        # @return [String]
        attr_accessor :resource
      
        # The name of the source system. Maximum length is 64 characters.
        # Corresponds to the JSON property `system`
        # @return [String]
        attr_accessor :system
      
        # The time when the resource was last updated in the source system. If the entry
        # exists in the system and its EntrySource has update_time populated, further
        # updates to the EntrySource of the entry must provide incremental updates to
        # its update_time.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ancestors = args[:ancestors] if args.key?(:ancestors)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location = args[:location] if args.key?(:location)
          @platform = args[:platform] if args.key?(:platform)
          @resource = args[:resource] if args.key?(:resource)
          @system = args[:system] if args.key?(:system)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Information about individual items in the hierarchy that is associated with
      # the data resource.
      class GoogleCloudDataplexV1EntrySourceAncestor
        include Google::Apis::Core::Hashable
      
        # Optional. The name of the ancestor resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The type of the ancestor resource.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Entry Type is a template for creating Entries.
      class GoogleCloudDataplexV1EntryType
        include Google::Apis::Core::Hashable
      
        # Authorization for an Entry Type.
        # Corresponds to the JSON property `authorization`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryTypeAuthorization]
        attr_accessor :authorization
      
        # Output only. The time when the EntryType was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the EntryType.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. This checksum is computed by the service, and might be sent on
        # update and delete requests to ensure the client has an up-to-date value before
        # proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. User-defined labels for the EntryType.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the EntryType, of the form:
        # projects/`project_number`/locations/`location_id`/entryTypes/`entry_type_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. The platform that Entries of this type belongs to.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        # AspectInfo for the entry type.
        # Corresponds to the JSON property `requiredAspects`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryTypeAspectInfo>]
        attr_accessor :required_aspects
      
        # Optional. The system that Entries of this type belongs to. Examples include
        # CloudSQL, MariaDB etc
        # Corresponds to the JSON property `system`
        # @return [String]
        attr_accessor :system
      
        # Optional. Indicates the classes this Entry Type belongs to, for example, TABLE,
        # DATABASE, MODEL.
        # Corresponds to the JSON property `typeAliases`
        # @return [Array<String>]
        attr_accessor :type_aliases
      
        # Output only. System generated globally unique ID for the EntryType. This ID
        # will be different if the EntryType is deleted and re-created with the same
        # name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the EntryType was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authorization = args[:authorization] if args.key?(:authorization)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @platform = args[:platform] if args.key?(:platform)
          @required_aspects = args[:required_aspects] if args.key?(:required_aspects)
          @system = args[:system] if args.key?(:system)
          @type_aliases = args[:type_aliases] if args.key?(:type_aliases)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # 
      class GoogleCloudDataplexV1EntryTypeAspectInfo
        include Google::Apis::Core::Hashable
      
        # Required aspect type for the entry type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Authorization for an Entry Type.
      class GoogleCloudDataplexV1EntryTypeAuthorization
        include Google::Apis::Core::Hashable
      
        # Immutable. The IAM permission grantable on the Entry Group to allow access to
        # instantiate Entries of Dataplex Universal Catalog owned Entry Types, only
        # settable for Dataplex Universal Catalog owned Types.
        # Corresponds to the JSON property `alternateUsePermission`
        # @return [String]
        attr_accessor :alternate_use_permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alternate_use_permission = args[:alternate_use_permission] if args.key?(:alternate_use_permission)
        end
      end
      
      # Environment represents a user-visible compute infrastructure for analytics
      # within a lake.
      class GoogleCloudDataplexV1Environment
        include Google::Apis::Core::Hashable
      
        # Output only. Environment creation time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the environment.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URI Endpoints to access sessions associated with the Environment.
        # Corresponds to the JSON property `endpoints`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentEndpoints]
        attr_accessor :endpoints
      
        # Configuration for the underlying infrastructure used to run workloads.
        # Corresponds to the JSON property `infrastructureSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpec]
        attr_accessor :infrastructure_spec
      
        # Optional. User defined labels for the environment.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the environment, of the form:
        # projects/`project_id`/locations/`location_id`/lakes/`lake_id`/environment/`
        # environment_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Configuration for sessions created for this environment.
        # Corresponds to the JSON property `sessionSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionSpec]
        attr_accessor :session_spec
      
        # Status of sessions created for this environment.
        # Corresponds to the JSON property `sessionStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentSessionStatus]
        attr_accessor :session_status
      
        # Output only. Current state of the environment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System generated globally unique ID for the environment. This ID
        # will be different if the environment is deleted and re-created with the same
        # name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the environment was last updated.
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @infrastructure_spec = args[:infrastructure_spec] if args.key?(:infrastructure_spec)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @session_spec = args[:session_spec] if args.key?(:session_spec)
          @session_status = args[:session_status] if args.key?(:session_status)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # URI Endpoints to access sessions associated with the Environment.
      class GoogleCloudDataplexV1EnvironmentEndpoints
        include Google::Apis::Core::Hashable
      
        # Output only. URI to serve notebook APIs
        # Corresponds to the JSON property `notebooks`
        # @return [String]
        attr_accessor :notebooks
      
        # Output only. URI to serve SQL APIs
        # Corresponds to the JSON property `sql`
        # @return [String]
        attr_accessor :sql
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @notebooks = args[:notebooks] if args.key?(:notebooks)
          @sql = args[:sql] if args.key?(:sql)
        end
      end
      
      # Configuration for the underlying infrastructure used to run workloads.
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpec
        include Google::Apis::Core::Hashable
      
        # Compute resources associated with the analyze interactive workloads.
        # Corresponds to the JSON property `compute`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources]
        attr_accessor :compute
      
        # Software Runtime Configuration to run Analyze.
        # Corresponds to the JSON property `osImage`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime]
        attr_accessor :os_image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute = args[:compute] if args.key?(:compute)
          @os_image = args[:os_image] if args.key?(:os_image)
        end
      end
      
      # Compute resources associated with the analyze interactive workloads.
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecComputeResources
        include Google::Apis::Core::Hashable
      
        # Optional. Size in GB of the disk. Default is 100 GB.
        # Corresponds to the JSON property `diskSizeGb`
        # @return [Fixnum]
        attr_accessor :disk_size_gb
      
        # Optional. Max configurable nodes. If max_node_count > node_count, then auto-
        # scaling is enabled.
        # Corresponds to the JSON property `maxNodeCount`
        # @return [Fixnum]
        attr_accessor :max_node_count
      
        # Optional. Total number of nodes in the sessions created for this environment.
        # Corresponds to the JSON property `nodeCount`
        # @return [Fixnum]
        attr_accessor :node_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_size_gb = args[:disk_size_gb] if args.key?(:disk_size_gb)
          @max_node_count = args[:max_node_count] if args.key?(:max_node_count)
          @node_count = args[:node_count] if args.key?(:node_count)
        end
      end
      
      # Software Runtime Configuration to run Analyze.
      class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime
        include Google::Apis::Core::Hashable
      
        # Required. Dataplex Universal Catalog Image version.
        # Corresponds to the JSON property `imageVersion`
        # @return [String]
        attr_accessor :image_version
      
        # Optional. List of Java jars to be included in the runtime environment. Valid
        # input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-
        # name/my/path/to/file.jar
        # Corresponds to the JSON property `javaLibraries`
        # @return [Array<String>]
        attr_accessor :java_libraries
      
        # Optional. Spark properties to provide configuration for use in sessions
        # created for this environment. The properties to set on daemon config files.
        # Property keys are specified in prefix:property format. The prefix must be "
        # spark".
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Optional. A list of python packages to be installed. Valid formats include
        # Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/
        # my/path/to/lib.tar.gz
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<String>]
        attr_accessor :python_packages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_version = args[:image_version] if args.key?(:image_version)
          @java_libraries = args[:java_libraries] if args.key?(:java_libraries)
          @properties = args[:properties] if args.key?(:properties)
          @python_packages = args[:python_packages] if args.key?(:python_packages)
        end
      end
      
      # Configuration for sessions created for this environment.
      class GoogleCloudDataplexV1EnvironmentSessionSpec
        include Google::Apis::Core::Hashable
      
        # Optional. If True, this causes sessions to be pre-created and available for
        # faster startup to enable interactive exploration use-cases. This defaults to
        # False to avoid additional billed charges. These can only be set to True for
        # the environment with name set to "default", and with default configuration.
        # Corresponds to the JSON property `enableFastStartup`
        # @return [Boolean]
        attr_accessor :enable_fast_startup
        alias_method :enable_fast_startup?, :enable_fast_startup
      
        # Optional. The idle time configuration of the session. The session will be auto-
        # terminated at the end of this period.
        # Corresponds to the JSON property `maxIdleDuration`
        # @return [String]
        attr_accessor :max_idle_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enable_fast_startup = args[:enable_fast_startup] if args.key?(:enable_fast_startup)
          @max_idle_duration = args[:max_idle_duration] if args.key?(:max_idle_duration)
        end
      end
      
      # Status of sessions created for this environment.
      class GoogleCloudDataplexV1EnvironmentSessionStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Queries over sessions to mark whether the environment is
        # currently active or not
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
        end
      end
      
      # Request details for generating data quality rule recommendations.
      class GoogleCloudDataplexV1GenerateDataQualityRulesRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response details for data quality rule recommendations.
      class GoogleCloudDataplexV1GenerateDataQualityRulesResponse
        include Google::Apis::Core::Hashable
      
        # The data quality rules that Dataplex Universal Catalog generates based on the
        # results of a data profiling scan.
        # Corresponds to the JSON property `rule`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule>]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # A Glossary represents a collection of GlossaryCategories and GlossaryTerms
      # defined by the user. Glossary is a top level resource and is the Google Cloud
      # parent resource of all the GlossaryCategories and GlossaryTerms within it.
      class GoogleCloudDataplexV1Glossary
        include Google::Apis::Core::Hashable
      
        # Output only. The number of GlossaryCategories in the Glossary.
        # Corresponds to the JSON property `categoryCount`
        # @return [Fixnum]
        attr_accessor :category_count
      
        # Output only. The time at which the Glossary was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The user-mutable description of the Glossary.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name of the Glossary. This is user-mutable.
        # This will be same as the GlossaryId, if not specified.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. Needed for resource freshness validation. This checksum is computed
        # by the server based on the value of other fields, and may be sent on update
        # and delete requests to ensure the client has an up-to-date value before
        # proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. User-defined labels for the Glossary.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource name of the Glossary. Format: projects/`
        # project_id_or_number`/locations/`location_id`/glossaries/`glossary_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The number of GlossaryTerms in the Glossary.
        # Corresponds to the JSON property `termCount`
        # @return [Fixnum]
        attr_accessor :term_count
      
        # Output only. System generated unique id for the Glossary. This ID will be
        # different if the Glossary is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which the Glossary was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category_count = args[:category_count] if args.key?(:category_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @term_count = args[:term_count] if args.key?(:term_count)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A GlossaryCategory represents a collection of GlossaryCategories and
      # GlossaryTerms within a Glossary that are related to each other.
      class GoogleCloudDataplexV1GlossaryCategory
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the GlossaryCategory was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The user-mutable description of the GlossaryCategory.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name of the GlossaryCategory. This is user-
        # mutable. This will be same as the GlossaryCategoryId, if not specified.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. User-defined labels for the GlossaryCategory.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource name of the GlossaryCategory. Format:
        # projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        # glossary_id`/categories/`category_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The immediate parent of the GlossaryCategory in the resource-
        # hierarchy. It can either be a Glossary or a GlossaryCategory. Format: projects/
        # `project_id_or_number`/locations/`location_id`/glossaries/`glossary_id` OR
        # projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        # glossary_id`/categories/`category_id`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. System generated unique id for the GlossaryCategory. This ID will
        # be different if the GlossaryCategory is deleted and re-created with the same
        # name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which the GlossaryCategory was last updated.
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # GlossaryTerms are the core of Glossary. A GlossaryTerm holds a rich text
      # description that can be attached to Entries or specific columns to enrich them.
      class GoogleCloudDataplexV1GlossaryTerm
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the GlossaryTerm was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The user-mutable description of the GlossaryTerm.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name of the GlossaryTerm. This is user-mutable.
        # This will be same as the GlossaryTermId, if not specified.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. User-defined labels for the GlossaryTerm.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The resource name of the GlossaryTerm. Format:
        # projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        # glossary_id`/terms/`term_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The immediate parent of the GlossaryTerm in the resource-hierarchy.
        # It can either be a Glossary or a GlossaryCategory. Format: projects/`
        # project_id_or_number`/locations/`location_id`/glossaries/`glossary_id` OR
        # projects/`project_id_or_number`/locations/`location_id`/glossaries/`
        # glossary_id`/categories/`category_id`
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        # Output only. System generated unique id for the GlossaryTerm. This ID will be
        # different if the GlossaryTerm is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time at which the GlossaryTerm was last updated.
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @parent = args[:parent] if args.key?(:parent)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Payload associated with Governance related log events.
      class GoogleCloudDataplexV1GovernanceEvent
        include Google::Apis::Core::Hashable
      
        # Information about Entity resource that the log event is associated with.
        # Corresponds to the JSON property `entity`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1GovernanceEventEntity]
        attr_accessor :entity
      
        # The type of the event.
        # Corresponds to the JSON property `eventType`
        # @return [String]
        attr_accessor :event_type
      
        # The log message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @event_type = args[:event_type] if args.key?(:event_type)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # Information about Entity resource that the log event is associated with.
      class GoogleCloudDataplexV1GovernanceEventEntity
        include Google::Apis::Core::Hashable
      
        # The Entity resource the log event is associated with. Format: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`/
        # entities/`entity_id`
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # Type of entity.
        # Corresponds to the JSON property `entityType`
        # @return [String]
        attr_accessor :entity_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entity = args[:entity] if args.key?(:entity)
          @entity_type = args[:entity_type] if args.key?(:entity_type)
        end
      end
      
      # An object that describes the values that you want to set for an entry and its
      # attached aspects when you import metadata. Used when you run a metadata import
      # job. See CreateMetadataJob.You provide a collection of import items in a
      # metadata import file. For more information about how to create a metadata
      # import file, see Metadata import file (https://cloud.google.com/dataplex/docs/
      # import-metadata#metadata-import-file).
      class GoogleCloudDataplexV1ImportItem
        include Google::Apis::Core::Hashable
      
        # The aspects to modify. Supports the following syntaxes: `aspect_type_reference`
        # : matches aspects that belong to the specified aspect type and are attached
        # directly to the entry. `aspect_type_reference`@`path`: matches aspects that
        # belong to the specified aspect type and path. `aspect_type_reference`@* :
        # matches aspects of the given type for all paths. *@path : matches aspects of
        # all types on the given path.Replace `aspect_type_reference` with a reference
        # to the aspect type, in the format `project_id_or_number`.`location_id`.`
        # aspect_type_id`.In FULL entry sync mode, if you leave this field empty, it is
        # treated as specifying exactly those aspects that are present within the
        # specified entry. Dataplex Universal Catalog implicitly adds the keys for all
        # of the required aspects of an entry.
        # Corresponds to the JSON property `aspectKeys`
        # @return [Array<String>]
        attr_accessor :aspect_keys
      
        # An entry is a representation of a data resource that can be described by
        # various metadata.
        # Corresponds to the JSON property `entry`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        attr_accessor :entry
      
        # EntryLink represents a link between two Entries.
        # Corresponds to the JSON property `entryLink`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryLink]
        attr_accessor :entry_link
      
        # The fields to update, in paths that are relative to the Entry resource.
        # Separate each field with a comma.In FULL entry sync mode, Dataplex Universal
        # Catalog includes the paths of all of the fields for an entry that can be
        # modified, including aspects. This means that Dataplex Universal Catalog
        # replaces the existing entry with the entry in the metadata import file. All
        # modifiable fields are updated, regardless of the fields that are listed in the
        # update mask, and regardless of whether a field is present in the entry object.
        # The update_mask field is ignored when an entry is created or re-created.In an
        # aspect-only metadata job (when entry sync mode is NONE), set this value to
        # aspects.Dataplex Universal Catalog also determines which entries and aspects
        # to modify by comparing the values and timestamps that you provide in the
        # metadata import file with the values and timestamps that exist in your project.
        # For more information, see Comparison logic (https://cloud.google.com/dataplex/
        # docs/import-metadata#data-modification-logic).
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_keys = args[:aspect_keys] if args.key?(:aspect_keys)
          @entry = args[:entry] if args.key?(:entry)
          @entry_link = args[:entry_link] if args.key?(:entry_link)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A job represents an instance of a task.
      class GoogleCloudDataplexV1Job
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the job ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Execution related settings, like retry and service_account.
        # Corresponds to the JSON property `executionSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec]
        attr_accessor :execution_spec
      
        # Output only. User-defined labels for the task.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Additional information about the current state.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. The relative resource name of the job, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/tasks/`task_id`/jobs/`
        # job_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The number of times the job has been retried (excluding the
        # initial attempt).
        # Corresponds to the JSON property `retryCount`
        # @return [Fixnum]
        attr_accessor :retry_count
      
        # Output only. The underlying service running a job.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # Output only. The full resource name for the job run under a particular service.
        # Corresponds to the JSON property `serviceJob`
        # @return [String]
        attr_accessor :service_job
      
        # Output only. The time when the job was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. Execution state for the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Job execution trigger.
        # Corresponds to the JSON property `trigger`
        # @return [String]
        attr_accessor :trigger
      
        # Output only. System generated globally unique ID for the job.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @execution_spec = args[:execution_spec] if args.key?(:execution_spec)
          @labels = args[:labels] if args.key?(:labels)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @retry_count = args[:retry_count] if args.key?(:retry_count)
          @service = args[:service] if args.key?(:service)
          @service_job = args[:service_job] if args.key?(:service_job)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @trigger = args[:trigger] if args.key?(:trigger)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # The payload associated with Job logs that contains events describing jobs that
      # have run within a Lake.
      class GoogleCloudDataplexV1JobEvent
        include Google::Apis::Core::Hashable
      
        # The time when the job ended running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Job execution trigger.
        # Corresponds to the JSON property `executionTrigger`
        # @return [String]
        attr_accessor :execution_trigger
      
        # The unique id identifying the job.
        # Corresponds to the JSON property `jobId`
        # @return [String]
        attr_accessor :job_id
      
        # The log message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # The number of retries.
        # Corresponds to the JSON property `retries`
        # @return [Fixnum]
        attr_accessor :retries
      
        # The service used to execute the job.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        # The reference to the job within the service.
        # Corresponds to the JSON property `serviceJob`
        # @return [String]
        attr_accessor :service_job
      
        # The time when the job started running.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The job state on completion.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The type of the job.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @execution_trigger = args[:execution_trigger] if args.key?(:execution_trigger)
          @job_id = args[:job_id] if args.key?(:job_id)
          @message = args[:message] if args.key?(:message)
          @retries = args[:retries] if args.key?(:retries)
          @service = args[:service] if args.key?(:service)
          @service_job = args[:service_job] if args.key?(:service_job)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A lake is a centralized repository for managing enterprise data across the
      # organization distributed across many cloud projects, and stored in a variety
      # of storage services such as Google Cloud Storage and BigQuery. The resources
      # attached to a lake are referred to as managed resources. Data within these
      # managed resources can be structured or unstructured. A lake provides data
      # admins with tools to organize, secure and manage their data at scale, and
      # provides data scientists and data engineers an integrated experience to easily
      # search, discover, analyze and transform data and associated metadata.
      class GoogleCloudDataplexV1Lake
        include Google::Apis::Core::Hashable
      
        # Aggregated status of the underlying assets of a lake or zone.
        # Corresponds to the JSON property `assetStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus]
        attr_accessor :asset_status
      
        # Output only. The time when the lake was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the lake.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. User-defined labels for the lake.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Settings to manage association of Dataproc Metastore with a lake.
        # Corresponds to the JSON property `metastore`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastore]
        attr_accessor :metastore
      
        # Status of Lake and Dataproc Metastore service instance association.
        # Corresponds to the JSON property `metastoreStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1LakeMetastoreStatus]
        attr_accessor :metastore_status
      
        # Output only. The relative resource name of the lake, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Service account associated with this lake. This service account
        # must be authorized to access or operate on resources managed by the lake.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        # Output only. Current state of the lake.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. System generated globally unique ID for the lake. This ID will be
        # different if the lake is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the lake was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_status = args[:asset_status] if args.key?(:asset_status)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @metastore = args[:metastore] if args.key?(:metastore)
          @metastore_status = args[:metastore_status] if args.key?(:metastore_status)
          @name = args[:name] if args.key?(:name)
          @service_account = args[:service_account] if args.key?(:service_account)
          @state = args[:state] if args.key?(:state)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings to manage association of Dataproc Metastore with a lake.
      class GoogleCloudDataplexV1LakeMetastore
        include Google::Apis::Core::Hashable
      
        # Optional. A relative reference to the Dataproc Metastore (https://cloud.google.
        # com/dataproc-metastore/docs) service associated with the lake: projects/`
        # project_id`/locations/`location_id`/services/`service_id`
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Status of Lake and Dataproc Metastore service instance association.
      class GoogleCloudDataplexV1LakeMetastoreStatus
        include Google::Apis::Core::Hashable
      
        # The URI of the endpoint used to access the Metastore service.
        # Corresponds to the JSON property `endpoint`
        # @return [String]
        attr_accessor :endpoint
      
        # Additional information about the current status.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Current state of association.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Last update time of the metastore status of the lake.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint = args[:endpoint] if args.key?(:endpoint)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # List actions response.
      class GoogleCloudDataplexV1ListActionsResponse
        include Google::Apis::Core::Hashable
      
        # Actions under the given parent lake/zone/asset.
        # Corresponds to the JSON property `actions`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Action>]
        attr_accessor :actions
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @actions = args[:actions] if args.key?(:actions)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List AspectTypes response.
      class GoogleCloudDataplexV1ListAspectTypesResponse
        include Google::Apis::Core::Hashable
      
        # AspectTypes under the given parent location.
        # Corresponds to the JSON property `aspectTypes`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1AspectType>]
        attr_accessor :aspect_types
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that the service couldn't reach.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_types = args[:aspect_types] if args.key?(:aspect_types)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List assets response.
      class GoogleCloudDataplexV1ListAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Asset under the given parent zone.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Asset>]
        attr_accessor :assets
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] if args.key?(:assets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List content response.
      class GoogleCloudDataplexV1ListContentResponse
        include Google::Apis::Core::Hashable
      
        # Content under the given parent lake.
        # Corresponds to the JSON property `content`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Content>]
        attr_accessor :content
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List DataAttributeBindings response.
      class GoogleCloudDataplexV1ListDataAttributeBindingsResponse
        include Google::Apis::Core::Hashable
      
        # DataAttributeBindings under the given parent Location.
        # Corresponds to the JSON property `dataAttributeBindings`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttributeBinding>]
        attr_accessor :data_attribute_bindings
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_attribute_bindings = args[:data_attribute_bindings] if args.key?(:data_attribute_bindings)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List DataAttributes response.
      class GoogleCloudDataplexV1ListDataAttributesResponse
        include Google::Apis::Core::Hashable
      
        # DataAttributes under the given parent DataTaxonomy.
        # Corresponds to the JSON property `dataAttributes`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataAttribute>]
        attr_accessor :data_attributes
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_attributes = args[:data_attributes] if args.key?(:data_attributes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List DataScanJobs response.
      class GoogleCloudDataplexV1ListDataScanJobsResponse
        include Google::Apis::Core::Hashable
      
        # DataScanJobs (BASIC view only) under a given dataScan.
        # Corresponds to the JSON property `dataScanJobs`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob>]
        attr_accessor :data_scan_jobs
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_scan_jobs = args[:data_scan_jobs] if args.key?(:data_scan_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List dataScans response.
      class GoogleCloudDataplexV1ListDataScansResponse
        include Google::Apis::Core::Hashable
      
        # DataScans (BASIC view only) under the given parent location.
        # Corresponds to the JSON property `dataScans`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScan>]
        attr_accessor :data_scans
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_scans = args[:data_scans] if args.key?(:data_scans)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # List DataTaxonomies response.
      class GoogleCloudDataplexV1ListDataTaxonomiesResponse
        include Google::Apis::Core::Hashable
      
        # DataTaxonomies under the given parent location.
        # Corresponds to the JSON property `dataTaxonomies`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataTaxonomy>]
        attr_accessor :data_taxonomies
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_taxonomies = args[:data_taxonomies] if args.key?(:data_taxonomies)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List EncryptionConfigs Response
      class GoogleCloudDataplexV1ListEncryptionConfigsResponse
        include Google::Apis::Core::Hashable
      
        # The list of EncryptionConfigs under the given parent location.
        # Corresponds to the JSON property `encryptionConfigs`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1EncryptionConfig>]
        attr_accessor :encryption_configs
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_configs = args[:encryption_configs] if args.key?(:encryption_configs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List metadata entities response.
      class GoogleCloudDataplexV1ListEntitiesResponse
        include Google::Apis::Core::Hashable
      
        # Entities in the specified parent zone.
        # Corresponds to the JSON property `entities`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Entity>]
        attr_accessor :entities
      
        # Token to retrieve the next page of results, or empty if there are no remaining
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entities = args[:entities] if args.key?(:entities)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List Entries response.
      class GoogleCloudDataplexV1ListEntriesResponse
        include Google::Apis::Core::Hashable
      
        # The list of entries under the given parent location.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry>]
        attr_accessor :entries
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
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
      
      # List entry groups response.
      class GoogleCloudDataplexV1ListEntryGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Entry groups under the given parent location.
        # Corresponds to the JSON property `entryGroups`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryGroup>]
        attr_accessor :entry_groups
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that the service couldn't reach.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entry_groups = args[:entry_groups] if args.key?(:entry_groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List EntryTypes response.
      class GoogleCloudDataplexV1ListEntryTypesResponse
        include Google::Apis::Core::Hashable
      
        # EntryTypes under the given parent location.
        # Corresponds to the JSON property `entryTypes`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1EntryType>]
        attr_accessor :entry_types
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that the service couldn't reach.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entry_types = args[:entry_types] if args.key?(:entry_types)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List environments response.
      class GoogleCloudDataplexV1ListEnvironmentsResponse
        include Google::Apis::Core::Hashable
      
        # Environments under the given parent lake.
        # Corresponds to the JSON property `environments`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Environment>]
        attr_accessor :environments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @environments = args[:environments] if args.key?(:environments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List Glossaries Response
      class GoogleCloudDataplexV1ListGlossariesResponse
        include Google::Apis::Core::Hashable
      
        # Lists the Glossaries in the specified parent.
        # Corresponds to the JSON property `glossaries`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Glossary>]
        attr_accessor :glossaries
      
        # A token, which can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that the service couldn't reach.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @glossaries = args[:glossaries] if args.key?(:glossaries)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List GlossaryCategories Response
      class GoogleCloudDataplexV1ListGlossaryCategoriesResponse
        include Google::Apis::Core::Hashable
      
        # Lists the GlossaryCategories in the specified parent.
        # Corresponds to the JSON property `categories`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryCategory>]
        attr_accessor :categories
      
        # A token, which can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that the service couldn't reach.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @categories = args[:categories] if args.key?(:categories)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List GlossaryTerms Response
      class GoogleCloudDataplexV1ListGlossaryTermsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Lists the GlossaryTerms in the specified parent.
        # Corresponds to the JSON property `terms`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1GlossaryTerm>]
        attr_accessor :terms
      
        # Locations that the service couldn't reach.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @terms = args[:terms] if args.key?(:terms)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List jobs response.
      class GoogleCloudDataplexV1ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # Jobs under a given task.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Job>]
        attr_accessor :jobs
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List lakes response.
      class GoogleCloudDataplexV1ListLakesResponse
        include Google::Apis::Core::Hashable
      
        # Lakes under the given parent location.
        # Corresponds to the JSON property `lakes`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Lake>]
        attr_accessor :lakes
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lakes = args[:lakes] if args.key?(:lakes)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List metadata jobs response.
      class GoogleCloudDataplexV1ListMetadataJobsResponse
        include Google::Apis::Core::Hashable
      
        # Metadata jobs under the specified parent location.
        # Corresponds to the JSON property `metadataJobs`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJob>]
        attr_accessor :metadata_jobs
      
        # A token to retrieve the next page of results. If there are no more results in
        # the list, the value is empty.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that the service couldn't reach.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_jobs = args[:metadata_jobs] if args.key?(:metadata_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List metadata partitions response.
      class GoogleCloudDataplexV1ListPartitionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no remaining
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Partitions under the specified parent entity.
        # Corresponds to the JSON property `partitions`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Partition>]
        attr_accessor :partitions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @partitions = args[:partitions] if args.key?(:partitions)
        end
      end
      
      # List sessions response.
      class GoogleCloudDataplexV1ListSessionsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Sessions under a given environment.
        # Corresponds to the JSON property `sessions`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Session>]
        attr_accessor :sessions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @sessions = args[:sessions] if args.key?(:sessions)
        end
      end
      
      # List tasks response.
      class GoogleCloudDataplexV1ListTasksResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tasks under the given parent lake.
        # Corresponds to the JSON property `tasks`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Task>]
        attr_accessor :tasks
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachableLocations`
        # @return [Array<String>]
        attr_accessor :unreachable_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tasks = args[:tasks] if args.key?(:tasks)
          @unreachable_locations = args[:unreachable_locations] if args.key?(:unreachable_locations)
        end
      end
      
      # List zones response.
      class GoogleCloudDataplexV1ListZonesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Zones under the given parent lake.
        # Corresponds to the JSON property `zones`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1Zone>]
        attr_accessor :zones
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @zones = args[:zones] if args.key?(:zones)
        end
      end
      
      # A metadata job resource.
      class GoogleCloudDataplexV1MetadataJob
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the metadata job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Summary results from a metadata export job. The results are a snapshot of the
        # metadata at the time when the job was created. The exported entries are saved
        # to a Cloud Storage bucket.
        # Corresponds to the JSON property `exportResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobResult]
        attr_accessor :export_result
      
        # Job specification for a metadata export job.
        # Corresponds to the JSON property `exportSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobSpec]
        attr_accessor :export_spec
      
        # Results from a metadata import job.
        # Corresponds to the JSON property `importResult`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobResult]
        attr_accessor :import_result
      
        # Job specification for a metadata import job.You can run the following kinds of
        # metadata import jobs: Full sync of entries with incremental import of their
        # aspects. Supported for custom entries. Incremental import of aspects only.
        # Supported for aspects that belong to custom entries and system entries. For
        # custom entries, you can modify both optional aspects and required aspects. For
        # system entries, you can modify optional aspects.
        # Corresponds to the JSON property `importSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobSpec]
        attr_accessor :import_spec
      
        # Optional. User-defined labels.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. Identifier. The name of the resource that the configuration is
        # applied to, in the format projects/`project_number`/locations/`location_id`/
        # metadataJobs/`metadata_job_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Metadata job status.
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobStatus]
        attr_accessor :status
      
        # Required. Metadata job type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. A system-generated, globally unique ID for the metadata job. If
        # the metadata job is deleted and then re-created with the same name, this ID is
        # different.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the metadata job was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @export_result = args[:export_result] if args.key?(:export_result)
          @export_spec = args[:export_spec] if args.key?(:export_spec)
          @import_result = args[:import_result] if args.key?(:import_result)
          @import_spec = args[:import_spec] if args.key?(:import_spec)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Summary results from a metadata export job. The results are a snapshot of the
      # metadata at the time when the job was created. The exported entries are saved
      # to a Cloud Storage bucket.
      class GoogleCloudDataplexV1MetadataJobExportJobResult
        include Google::Apis::Core::Hashable
      
        # Output only. The error message if the metadata export job failed.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Output only. The number of entries that were exported.
        # Corresponds to the JSON property `exportedEntries`
        # @return [Fixnum]
        attr_accessor :exported_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_message = args[:error_message] if args.key?(:error_message)
          @exported_entries = args[:exported_entries] if args.key?(:exported_entries)
        end
      end
      
      # Job specification for a metadata export job.
      class GoogleCloudDataplexV1MetadataJobExportJobSpec
        include Google::Apis::Core::Hashable
      
        # Required. The root path of the Cloud Storage bucket to export the metadata to,
        # in the format gs://`bucket`/. You can optionally specify a custom prefix after
        # the bucket name, in the format gs://`bucket`/`prefix`/. The maximum length of
        # the custom prefix is 128 characters. Dataplex Universal Catalog constructs the
        # object path for the exported files by using the bucket name and prefix that
        # you provide, followed by a system-generated path.The bucket must be in the
        # same VPC Service Controls perimeter as the job.
        # Corresponds to the JSON property `outputPath`
        # @return [String]
        attr_accessor :output_path
      
        # The scope of the export job.
        # Corresponds to the JSON property `scope`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope]
        attr_accessor :scope
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @output_path = args[:output_path] if args.key?(:output_path)
          @scope = args[:scope] if args.key?(:scope)
        end
      end
      
      # The scope of the export job.
      class GoogleCloudDataplexV1MetadataJobExportJobSpecExportJobScope
        include Google::Apis::Core::Hashable
      
        # The aspect types that are in scope for the export job, specified as relative
        # resource names in the format projects/`project_id_or_number`/locations/`
        # location`/aspectTypes/`aspect_type_id`. Only aspects that belong to the
        # specified aspect types are affected by the job.
        # Corresponds to the JSON property `aspectTypes`
        # @return [Array<String>]
        attr_accessor :aspect_types
      
        # The entry groups whose metadata you want to export, in the format projects/`
        # project_id_or_number`/locations/`location_id`/entryGroups/`entry_group_id`.
        # Only the entries in the specified entry groups are exported.The entry groups
        # must be in the same location and the same VPC Service Controls perimeter as
        # the job.If you set the job scope to be a list of entry groups, then set the
        # organization-level export flag to false and don't provide a list of projects.
        # Corresponds to the JSON property `entryGroups`
        # @return [Array<String>]
        attr_accessor :entry_groups
      
        # The entry types that are in scope for the export job, specified as relative
        # resource names in the format projects/`project_id_or_number`/locations/`
        # location`/entryTypes/`entry_type_id`. Only entries that belong to the
        # specified entry types are affected by the job.
        # Corresponds to the JSON property `entryTypes`
        # @return [Array<String>]
        attr_accessor :entry_types
      
        # Whether the metadata export job is an organization-level export job. If true,
        # the job exports the entries from the same organization and VPC Service
        # Controls perimeter as the job. The project that the job belongs to determines
        # the VPC Service Controls perimeter. If you set the job scope to be at the
        # organization level, then don't provide a list of projects or entry groups. If
        # false, you must specify a list of projects or a list of entry groups whose
        # entries you want to export.The default is false.
        # Corresponds to the JSON property `organizationLevel`
        # @return [Boolean]
        attr_accessor :organization_level
        alias_method :organization_level?, :organization_level
      
        # The projects whose metadata you want to export, in the format projects/`
        # project_id_or_number`. Only the entries from the specified projects are
        # exported.The projects must be in the same organization and VPC Service
        # Controls perimeter as the job.If you set the job scope to be a list of
        # projects, then set the organization-level export flag to false and don't
        # provide a list of entry groups.
        # Corresponds to the JSON property `projects`
        # @return [Array<String>]
        attr_accessor :projects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_types = args[:aspect_types] if args.key?(:aspect_types)
          @entry_groups = args[:entry_groups] if args.key?(:entry_groups)
          @entry_types = args[:entry_types] if args.key?(:entry_types)
          @organization_level = args[:organization_level] if args.key?(:organization_level)
          @projects = args[:projects] if args.key?(:projects)
        end
      end
      
      # Results from a metadata import job.
      class GoogleCloudDataplexV1MetadataJobImportJobResult
        include Google::Apis::Core::Hashable
      
        # Output only. The total number of entries that were created.
        # Corresponds to the JSON property `createdEntries`
        # @return [Fixnum]
        attr_accessor :created_entries
      
        # Output only. The total number of entry links that were successfully created.
        # Corresponds to the JSON property `createdEntryLinks`
        # @return [Fixnum]
        attr_accessor :created_entry_links
      
        # Output only. The total number of entries that were deleted.
        # Corresponds to the JSON property `deletedEntries`
        # @return [Fixnum]
        attr_accessor :deleted_entries
      
        # Output only. The total number of entry links that were successfully deleted.
        # Corresponds to the JSON property `deletedEntryLinks`
        # @return [Fixnum]
        attr_accessor :deleted_entry_links
      
        # Output only. The total number of entries that were recreated.
        # Corresponds to the JSON property `recreatedEntries`
        # @return [Fixnum]
        attr_accessor :recreated_entries
      
        # Output only. The total number of entries that were unchanged.
        # Corresponds to the JSON property `unchangedEntries`
        # @return [Fixnum]
        attr_accessor :unchanged_entries
      
        # Output only. The total number of entry links that were left unchanged.
        # Corresponds to the JSON property `unchangedEntryLinks`
        # @return [Fixnum]
        attr_accessor :unchanged_entry_links
      
        # Output only. The time when the status was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The total number of entries that were updated.
        # Corresponds to the JSON property `updatedEntries`
        # @return [Fixnum]
        attr_accessor :updated_entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @created_entries = args[:created_entries] if args.key?(:created_entries)
          @created_entry_links = args[:created_entry_links] if args.key?(:created_entry_links)
          @deleted_entries = args[:deleted_entries] if args.key?(:deleted_entries)
          @deleted_entry_links = args[:deleted_entry_links] if args.key?(:deleted_entry_links)
          @recreated_entries = args[:recreated_entries] if args.key?(:recreated_entries)
          @unchanged_entries = args[:unchanged_entries] if args.key?(:unchanged_entries)
          @unchanged_entry_links = args[:unchanged_entry_links] if args.key?(:unchanged_entry_links)
          @update_time = args[:update_time] if args.key?(:update_time)
          @updated_entries = args[:updated_entries] if args.key?(:updated_entries)
        end
      end
      
      # Job specification for a metadata import job.You can run the following kinds of
      # metadata import jobs: Full sync of entries with incremental import of their
      # aspects. Supported for custom entries. Incremental import of aspects only.
      # Supported for aspects that belong to custom entries and system entries. For
      # custom entries, you can modify both optional aspects and required aspects. For
      # system entries, you can modify optional aspects.
      class GoogleCloudDataplexV1MetadataJobImportJobSpec
        include Google::Apis::Core::Hashable
      
        # Required. The sync mode for aspects.
        # Corresponds to the JSON property `aspectSyncMode`
        # @return [String]
        attr_accessor :aspect_sync_mode
      
        # Required. The sync mode for entries.
        # Corresponds to the JSON property `entrySyncMode`
        # @return [String]
        attr_accessor :entry_sync_mode
      
        # Optional. The level of logs to write to Cloud Logging for this job.Debug-level
        # logs provide highly-detailed information for troubleshooting, but their
        # increased verbosity could incur additional costs (https://cloud.google.com/
        # stackdriver/pricing) that might not be merited for all jobs.If unspecified,
        # defaults to INFO.
        # Corresponds to the JSON property `logLevel`
        # @return [String]
        attr_accessor :log_level
      
        # A boundary on the scope of impact that the metadata import job can have.
        # Corresponds to the JSON property `scope`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope]
        attr_accessor :scope
      
        # Optional. The time when the process that created the metadata import files
        # began.
        # Corresponds to the JSON property `sourceCreateTime`
        # @return [String]
        attr_accessor :source_create_time
      
        # Optional. The URI of a Cloud Storage bucket or folder (beginning with gs://
        # and ending with /) that contains the metadata import files for this job.A
        # metadata import file defines the values to set for each of the entries and
        # aspects in a metadata import job. For more information about how to create a
        # metadata import file and the file requirements, see Metadata import file (
        # https://cloud.google.com/dataplex/docs/import-metadata#metadata-import-file).
        # You can provide multiple metadata import files in the same metadata job. The
        # bucket or folder must contain at least one metadata import file, in JSON Lines
        # format (either .json or .jsonl file extension).In FULL entry sync mode, don't
        # save the metadata import file in a folder named SOURCE_STORAGE_URI/deletions/.
        # Caution: If the metadata import file contains no data, all entries and aspects
        # that belong to the job's scope are deleted.
        # Corresponds to the JSON property `sourceStorageUri`
        # @return [String]
        attr_accessor :source_storage_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_sync_mode = args[:aspect_sync_mode] if args.key?(:aspect_sync_mode)
          @entry_sync_mode = args[:entry_sync_mode] if args.key?(:entry_sync_mode)
          @log_level = args[:log_level] if args.key?(:log_level)
          @scope = args[:scope] if args.key?(:scope)
          @source_create_time = args[:source_create_time] if args.key?(:source_create_time)
          @source_storage_uri = args[:source_storage_uri] if args.key?(:source_storage_uri)
        end
      end
      
      # A boundary on the scope of impact that the metadata import job can have.
      class GoogleCloudDataplexV1MetadataJobImportJobSpecImportJobScope
        include Google::Apis::Core::Hashable
      
        # Optional. The aspect types that are in scope for the import job, specified as
        # relative resource names in the format projects/`project_number_or_id`/
        # locations/`location_id`/aspectTypes/`aspect_type_id`. The job modifies only
        # the aspects that belong to these aspect types.This field is required when
        # creating an aspect-only import job.If the metadata import file attempts to
        # modify an aspect whose type isn't included in this list, the import job is
        # halted before modifying any entries or aspects.The location of an aspect type
        # must either match the location of the job, or the aspect type must be global.
        # Corresponds to the JSON property `aspectTypes`
        # @return [Array<String>]
        attr_accessor :aspect_types
      
        # Required. The entry groups that are in scope for the import job, specified as
        # relative resource names in the format projects/`project_number_or_id`/
        # locations/`location_id`/entryGroups/`entry_group_id`. Only entries and aspects
        # that belong to the specified entry groups are affected by the job.The entry
        # groups and the job must be in the same location.
        # Corresponds to the JSON property `entryGroups`
        # @return [Array<String>]
        attr_accessor :entry_groups
      
        # Optional. The entry link types that are in scope for the import job, specified
        # as relative resource names in the format projects/`project_number_or_id`/
        # locations/`location_id`/entryLinkTypes/`entry_link_type_id`. The job modifies
        # only the entryLinks that belong to these entry link types.If the metadata
        # import file attempts to create or delete an entry link whose entry link type
        # isn't included in this list, the import job will skip those entry links.
        # Corresponds to the JSON property `entryLinkTypes`
        # @return [Array<String>]
        attr_accessor :entry_link_types
      
        # Required. The entry types that are in scope for the import job, specified as
        # relative resource names in the format projects/`project_number_or_id`/
        # locations/`location_id`/entryTypes/`entry_type_id`. The job modifies only the
        # entries and aspects that belong to these entry types.If the metadata import
        # file attempts to modify an entry whose type isn't included in this list, the
        # import job is halted before modifying any entries or aspects.The location of
        # an entry type must either match the location of the job, or the entry type
        # must be global.
        # Corresponds to the JSON property `entryTypes`
        # @return [Array<String>]
        attr_accessor :entry_types
      
        # Optional. The glossaries that are in scope for the import job, specified as
        # relative resource names in the format projects/`project_number_or_id`/
        # locations/`location_id`/glossaries/`glossary_id`.While importing Business
        # Glossary entries, the user must provide glossaries. While importing entries,
        # the user does not have to provide glossaries. If the metadata import file
        # attempts to modify Business Glossary entries whose glossary isn't included in
        # this list, the import job will skip those entries.The location of a glossary
        # must either match the location of the job, or the glossary must be global.
        # Corresponds to the JSON property `glossaries`
        # @return [Array<String>]
        attr_accessor :glossaries
      
        # Optional. Defines the scope of entries that can be referenced in the entry
        # links.Currently, projects are supported as valid scopes. Format: projects/`
        # project_number_or_id`If the metadata import file attempts to create an entry
        # link which references an entry that is not in the scope, the import job will
        # skip that entry link.
        # Corresponds to the JSON property `referencedEntryScopes`
        # @return [Array<String>]
        attr_accessor :referenced_entry_scopes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aspect_types = args[:aspect_types] if args.key?(:aspect_types)
          @entry_groups = args[:entry_groups] if args.key?(:entry_groups)
          @entry_link_types = args[:entry_link_types] if args.key?(:entry_link_types)
          @entry_types = args[:entry_types] if args.key?(:entry_types)
          @glossaries = args[:glossaries] if args.key?(:glossaries)
          @referenced_entry_scopes = args[:referenced_entry_scopes] if args.key?(:referenced_entry_scopes)
        end
      end
      
      # Metadata job status.
      class GoogleCloudDataplexV1MetadataJobStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Progress tracking.
        # Corresponds to the JSON property `completionPercent`
        # @return [Fixnum]
        attr_accessor :completion_percent
      
        # Output only. Message relating to the progression of a metadata job.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. State of the metadata job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The time when the status was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_percent = args[:completion_percent] if args.key?(:completion_percent)
          @message = args[:message] if args.key?(:message)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the metadata of a long-running operation.
      class GoogleCloudDataplexV1OperationMetadata
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
        # error value with a google.rpc.Status.code of 1, corresponding to Code.
        # CANCELLED.
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
      
      # Represents partition metadata contained within entity instances.
      class GoogleCloudDataplexV1Partition
        include Google::Apis::Core::Hashable
      
        # Optional. The etag for this partition.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Required. Immutable. The location of the entity data within the partition, for
        # example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//
        # datasets//tables/
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Output only. Partition values used in the HTTP URL must be double encoded. For
        # example, url_encode(url_encode(value)) can be used to encode "US:CA/CA#
        # Sunnyvale so that the request URL ends with "/partitions/US%253ACA/CA%
        # 2523Sunnyvale". The name field in the response retains the encoded format.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The set of values representing the partition, which
        # correspond to the partition schema defined in the parent entity.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # ResourceAccessSpec holds the access control configuration to be enforced on
      # the resources, for example, Cloud Storage bucket, BigQuery dataset, BigQuery
      # table.
      class GoogleCloudDataplexV1ResourceAccessSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The set of principals to be granted owner role on the resource.
        # Corresponds to the JSON property `owners`
        # @return [Array<String>]
        attr_accessor :owners
      
        # Optional. The format of strings follows the pattern followed by IAM in the
        # bindings. user:`email`, serviceAccount:`email` group:`email`. The set of
        # principals to be granted reader role on the resource.
        # Corresponds to the JSON property `readers`
        # @return [Array<String>]
        attr_accessor :readers
      
        # Optional. The set of principals to be granted writer role on the resource.
        # Corresponds to the JSON property `writers`
        # @return [Array<String>]
        attr_accessor :writers
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @owners = args[:owners] if args.key?(:owners)
          @readers = args[:readers] if args.key?(:readers)
          @writers = args[:writers] if args.key?(:writers)
        end
      end
      
      # Run DataScan Request
      class GoogleCloudDataplexV1RunDataScanRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Run DataScan Response.
      class GoogleCloudDataplexV1RunDataScanResponse
        include Google::Apis::Core::Hashable
      
        # A DataScanJob represents an instance of DataScan execution.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanJob]
        attr_accessor :job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
        end
      end
      
      # 
      class GoogleCloudDataplexV1RunTaskRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Execution spec arguments. If the map is left empty, the task will
        # run with existing execution spec args from task definition. If the map
        # contains an entry with a new key, the same will be added to existing set of
        # args. If the map contains an entry with an existing arg key in task definition,
        # the task will run with new arg value for that entry. Clearing an existing arg
        # will require arg value to be explicitly set to a hyphen "-". The arg value
        # cannot be empty.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,String>]
        attr_accessor :args
      
        # Optional. User-defined labels for the task. If the map is left empty, the task
        # will run with existing labels from task definition. If the map contains an
        # entry with a new key, the same will be added to existing set of labels. If the
        # map contains an entry with an existing label key in task definition, the task
        # will run with new label value for that entry. Clearing an existing label will
        # require label value to be explicitly set to a hyphen "-". The label value
        # cannot be empty.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # 
      class GoogleCloudDataplexV1RunTaskResponse
        include Google::Apis::Core::Hashable
      
        # A job represents an instance of a task.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Job]
        attr_accessor :job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
        end
      end
      
      # The data scanned during processing (e.g. in incremental DataScan)
      class GoogleCloudDataplexV1ScannedData
        include Google::Apis::Core::Hashable
      
        # A data range denoted by a pair of start/end values of a field.
        # Corresponds to the JSON property `incrementalField`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedDataIncrementalField]
        attr_accessor :incremental_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @incremental_field = args[:incremental_field] if args.key?(:incremental_field)
        end
      end
      
      # A data range denoted by a pair of start/end values of a field.
      class GoogleCloudDataplexV1ScannedDataIncrementalField
        include Google::Apis::Core::Hashable
      
        # Output only. Value that marks the end of the range.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # Output only. The field that contains values which monotonically increases over
        # time (e.g. a timestamp column).
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Output only. Value that marks the start of the range.
        # Corresponds to the JSON property `start`
        # @return [String]
        attr_accessor :start
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end = args[:end] if args.key?(:end)
          @field = args[:field] if args.key?(:field)
          @start = args[:start] if args.key?(:start)
        end
      end
      
      # Schema information describing the structure and layout of the data.
      class GoogleCloudDataplexV1Schema
        include Google::Apis::Core::Hashable
      
        # Optional. The sequence of fields describing data in table entities. Note:
        # BigQuery SchemaFields are immutable.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField>]
        attr_accessor :fields
      
        # Optional. The sequence of fields describing the partition structure in
        # entities. If this field is empty, there are no partitions within the data.
        # Corresponds to the JSON property `partitionFields`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaPartitionField>]
        attr_accessor :partition_fields
      
        # Optional. The structure of paths containing partition data within the entity.
        # Corresponds to the JSON property `partitionStyle`
        # @return [String]
        attr_accessor :partition_style
      
        # Required. Set to true if user-managed or false if managed by Dataplex
        # Universal Catalog. The default is false (managed by Dataplex Universal Catalog)
        # . Set to falseto enable Dataplex Universal Catalog discovery to update the
        # schema. including new data discovery, schema inference, and schema evolution.
        # Users retain the ability to input and edit the schema. Dataplex Universal
        # Catalog treats schema input by the user as though produced by a previous
        # Dataplex Universal Catalog discovery operation, and it will evolve the schema
        # and take action based on that treatment. Set to true to fully manage the
        # entity schema. This setting guarantees that Dataplex Universal Catalog will
        # not change schema fields.
        # Corresponds to the JSON property `userManaged`
        # @return [Boolean]
        attr_accessor :user_managed
        alias_method :user_managed?, :user_managed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fields = args[:fields] if args.key?(:fields)
          @partition_fields = args[:partition_fields] if args.key?(:partition_fields)
          @partition_style = args[:partition_style] if args.key?(:partition_style)
          @user_managed = args[:user_managed] if args.key?(:user_managed)
        end
      end
      
      # Represents a key field within the entity's partition structure. You could have
      # up to 20 partition fields, but only the first 10 partitions have the filtering
      # ability due to performance consideration. Note: Partition fields are immutable.
      class GoogleCloudDataplexV1SchemaPartitionField
        include Google::Apis::Core::Hashable
      
        # Required. Partition field name must consist of letters, numbers, and
        # underscores only, with a maximum of length of 256 characters, and must begin
        # with a letter or underscore..
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. Immutable. The type of field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Represents a column field within a table schema.
      class GoogleCloudDataplexV1SchemaSchemaField
        include Google::Apis::Core::Hashable
      
        # Optional. User friendly field description. Must be less than or equal to 1024
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. Any nested field for complex types.
        # Corresponds to the JSON property `fields`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1SchemaSchemaField>]
        attr_accessor :fields
      
        # Required. Additional field semantics.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Required. The name of the field. Must contain only letters, numbers and
        # underscores, with a maximum length of 767 characters, and must begin with a
        # letter or underscore.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The type of field.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @fields = args[:fields] if args.key?(:fields)
          @mode = args[:mode] if args.key?(:mode)
          @name = args[:name] if args.key?(:name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # 
      class GoogleCloudDataplexV1SearchEntriesResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The results matching the search query.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResult>]
        attr_accessor :results
      
        # The estimated total number of matching entries. This number isn't guaranteed
        # to be accurate.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        # Locations that the service couldn't reach. Search results don't include data
        # from these locations.
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
          @total_size = args[:total_size] if args.key?(:total_size)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A single result of a SearchEntries request.
      class GoogleCloudDataplexV1SearchEntriesResult
        include Google::Apis::Core::Hashable
      
        # An entry is a representation of a data resource that can be described by
        # various metadata.
        # Corresponds to the JSON property `dataplexEntry`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        attr_accessor :dataplex_entry
      
        # Linked resource name.
        # Corresponds to the JSON property `linkedResource`
        # @return [String]
        attr_accessor :linked_resource
      
        # Snippets for the entry, contains HTML-style highlighting for matched tokens,
        # will be used in UI.
        # Corresponds to the JSON property `snippets`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1SearchEntriesResultSnippets]
        attr_accessor :snippets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataplex_entry = args[:dataplex_entry] if args.key?(:dataplex_entry)
          @linked_resource = args[:linked_resource] if args.key?(:linked_resource)
          @snippets = args[:snippets] if args.key?(:snippets)
        end
      end
      
      # Snippets for the entry, contains HTML-style highlighting for matched tokens,
      # will be used in UI.
      class GoogleCloudDataplexV1SearchEntriesResultSnippets
        include Google::Apis::Core::Hashable
      
        # An entry is a representation of a data resource that can be described by
        # various metadata.
        # Corresponds to the JSON property `dataplexEntry`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Entry]
        attr_accessor :dataplex_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataplex_entry = args[:dataplex_entry] if args.key?(:dataplex_entry)
        end
      end
      
      # Represents an active analyze session running for a user.
      class GoogleCloudDataplexV1Session
        include Google::Apis::Core::Hashable
      
        # Output only. Session start time.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The relative resource name of the content, of the form: projects/`
        # project_id`/locations/`location_id`/lakes/`lake_id`/environment/`
        # environment_id`/sessions/`session_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of Session
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Email of user running the session.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # These messages contain information about sessions within an environment. The
      # monitored resource is 'Environment'.
      class GoogleCloudDataplexV1SessionEvent
        include Google::Apis::Core::Hashable
      
        # The status of the event.
        # Corresponds to the JSON property `eventSucceeded`
        # @return [Boolean]
        attr_accessor :event_succeeded
        alias_method :event_succeeded?, :event_succeeded
      
        # If the session is associated with an environment with fast startup enabled,
        # and was created before being assigned to a user.
        # Corresponds to the JSON property `fastStartupEnabled`
        # @return [Boolean]
        attr_accessor :fast_startup_enabled
        alias_method :fast_startup_enabled?, :fast_startup_enabled
      
        # The log message.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Execution details of the query.
        # Corresponds to the JSON property `query`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1SessionEventQueryDetail]
        attr_accessor :query
      
        # Unique identifier for the session.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # The type of the event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The idle duration of a warm pooled session before it is assigned to user.
        # Corresponds to the JSON property `unassignedDuration`
        # @return [String]
        attr_accessor :unassigned_duration
      
        # The information about the user that created the session. It will be the email
        # address of the user.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @event_succeeded = args[:event_succeeded] if args.key?(:event_succeeded)
          @fast_startup_enabled = args[:fast_startup_enabled] if args.key?(:fast_startup_enabled)
          @message = args[:message] if args.key?(:message)
          @query = args[:query] if args.key?(:query)
          @session_id = args[:session_id] if args.key?(:session_id)
          @type = args[:type] if args.key?(:type)
          @unassigned_duration = args[:unassigned_duration] if args.key?(:unassigned_duration)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Execution details of the query.
      class GoogleCloudDataplexV1SessionEventQueryDetail
        include Google::Apis::Core::Hashable
      
        # The data processed by the query.
        # Corresponds to the JSON property `dataProcessedBytes`
        # @return [Fixnum]
        attr_accessor :data_processed_bytes
      
        # Time taken for execution of the query.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Query Execution engine.
        # Corresponds to the JSON property `engine`
        # @return [String]
        attr_accessor :engine
      
        # The unique Query id identifying the query.
        # Corresponds to the JSON property `queryId`
        # @return [String]
        attr_accessor :query_id
      
        # The query text executed.
        # Corresponds to the JSON property `queryText`
        # @return [String]
        attr_accessor :query_text
      
        # The size of results the query produced.
        # Corresponds to the JSON property `resultSizeBytes`
        # @return [Fixnum]
        attr_accessor :result_size_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_processed_bytes = args[:data_processed_bytes] if args.key?(:data_processed_bytes)
          @duration = args[:duration] if args.key?(:duration)
          @engine = args[:engine] if args.key?(:engine)
          @query_id = args[:query_id] if args.key?(:query_id)
          @query_text = args[:query_text] if args.key?(:query_text)
          @result_size_bytes = args[:result_size_bytes] if args.key?(:result_size_bytes)
        end
      end
      
      # Describes the access mechanism of the data within its storage location.
      class GoogleCloudDataplexV1StorageAccess
        include Google::Apis::Core::Hashable
      
        # Output only. Describes the read access mechanism of the data. Not user
        # settable.
        # Corresponds to the JSON property `read`
        # @return [String]
        attr_accessor :read
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @read = args[:read] if args.key?(:read)
        end
      end
      
      # Describes the format of the data within its storage location.
      class GoogleCloudDataplexV1StorageFormat
        include Google::Apis::Core::Hashable
      
        # Optional. The compression type associated with the stored data. If unspecified,
        # the data is uncompressed.
        # Corresponds to the JSON property `compressionFormat`
        # @return [String]
        attr_accessor :compression_format
      
        # Describes CSV and similar semi-structured data formats.
        # Corresponds to the JSON property `csv`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatCsvOptions]
        attr_accessor :csv
      
        # Output only. The data format associated with the stored data, which represents
        # content type values. The value is inferred from mime type.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Describes Iceberg data format.
        # Corresponds to the JSON property `iceberg`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatIcebergOptions]
        attr_accessor :iceberg
      
        # Describes JSON data format.
        # Corresponds to the JSON property `json`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1StorageFormatJsonOptions]
        attr_accessor :json
      
        # Required. The mime type descriptor for the data. Must match the pattern `type`/
        # `subtype`. Supported values: application/x-parquet application/x-avro
        # application/x-orc application/x-tfrecord application/x-parquet+iceberg
        # application/x-avro+iceberg application/x-orc+iceberg application/json
        # application/`subtypes` text/csv text/ image/`image subtype` video/`video
        # subtype` audio/`audio subtype`
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compression_format = args[:compression_format] if args.key?(:compression_format)
          @csv = args[:csv] if args.key?(:csv)
          @format = args[:format] if args.key?(:format)
          @iceberg = args[:iceberg] if args.key?(:iceberg)
          @json = args[:json] if args.key?(:json)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Describes CSV and similar semi-structured data formats.
      class GoogleCloudDataplexV1StorageFormatCsvOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The delimiter used to separate values. Defaults to ','.
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8", and
        # "ISO-8859-1". Defaults to UTF-8 if unspecified.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. The number of rows to interpret as header rows that should be
        # skipped when reading data rows. Defaults to 0.
        # Corresponds to the JSON property `headerRows`
        # @return [Fixnum]
        attr_accessor :header_rows
      
        # Optional. The character used to quote column values. Accepts '"' (double
        # quotation mark) or ''' (single quotation mark). Defaults to '"' (double
        # quotation mark) if unspecified.
        # Corresponds to the JSON property `quote`
        # @return [String]
        attr_accessor :quote
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @encoding = args[:encoding] if args.key?(:encoding)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
          @quote = args[:quote] if args.key?(:quote)
        end
      end
      
      # Describes Iceberg data format.
      class GoogleCloudDataplexV1StorageFormatIcebergOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The location of where the iceberg metadata is present, must be
        # within the table path
        # Corresponds to the JSON property `metadataLocation`
        # @return [String]
        attr_accessor :metadata_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata_location = args[:metadata_location] if args.key?(:metadata_location)
        end
      end
      
      # Describes JSON data format.
      class GoogleCloudDataplexV1StorageFormatJsonOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The character encoding of the data. Accepts "US-ASCII", "UTF-8" and "
        # ISO-8859-1". Defaults to UTF-8 if not specified.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # A task represents a user-visible job.
      class GoogleCloudDataplexV1Task
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the task was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the task.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Execution related settings, like retry and service_account.
        # Corresponds to the JSON property `executionSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionSpec]
        attr_accessor :execution_spec
      
        # Status of the task execution (e.g. Jobs).
        # Corresponds to the JSON property `executionStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskExecutionStatus]
        attr_accessor :execution_status
      
        # Optional. User-defined labels for the task.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the task, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/ tasks/`task_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Config for running scheduled notebooks.
        # Corresponds to the JSON property `notebook`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskNotebookTaskConfig]
        attr_accessor :notebook
      
        # User-specified config for running a Spark task.
        # Corresponds to the JSON property `spark`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskSparkTaskConfig]
        attr_accessor :spark
      
        # Output only. Current state of the task.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Task scheduling and trigger settings.
        # Corresponds to the JSON property `triggerSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskTriggerSpec]
        attr_accessor :trigger_spec
      
        # Output only. System generated globally unique ID for the task. This ID will be
        # different if the task is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the task was last updated.
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
          @display_name = args[:display_name] if args.key?(:display_name)
          @execution_spec = args[:execution_spec] if args.key?(:execution_spec)
          @execution_status = args[:execution_status] if args.key?(:execution_status)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @notebook = args[:notebook] if args.key?(:notebook)
          @spark = args[:spark] if args.key?(:spark)
          @state = args[:state] if args.key?(:state)
          @trigger_spec = args[:trigger_spec] if args.key?(:trigger_spec)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Execution related settings, like retry and service_account.
      class GoogleCloudDataplexV1TaskExecutionSpec
        include Google::Apis::Core::Hashable
      
        # Optional. The arguments to pass to the task. The args can use placeholders of
        # the format $`placeholder` as part of key/value string. These will be
        # interpolated before passing the args to the driver. Currently supported
        # placeholders: - $`task_id` - $`job_time` To pass positional args, set the key
        # as TASK_ARGS. The value should be a comma-separated string of all the
        # positional arguments. To use a delimiter other than comma, refer to https://
        # cloud.google.com/sdk/gcloud/reference/topic/escaping. In case of other keys
        # being present in the args, then TASK_ARGS will be passed as the last argument.
        # Corresponds to the JSON property `args`
        # @return [Hash<String,String>]
        attr_accessor :args
      
        # Optional. The Cloud KMS key to use for encryption, of the form: projects/`
        # project_number`/locations/`location_id`/keyRings/`key-ring-name`/cryptoKeys/`
        # key-name`.
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Optional. The maximum duration after which the job execution is expired.
        # Corresponds to the JSON property `maxJobExecutionLifetime`
        # @return [String]
        attr_accessor :max_job_execution_lifetime
      
        # Optional. The project in which jobs are run. By default, the project
        # containing the Lake is used. If a project is provided, the ExecutionSpec.
        # service_account must belong to this project.
        # Corresponds to the JSON property `project`
        # @return [String]
        attr_accessor :project
      
        # Required. Service account to use to execute a task. If not provided, the
        # default Compute service account for the project is used.
        # Corresponds to the JSON property `serviceAccount`
        # @return [String]
        attr_accessor :service_account
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @max_job_execution_lifetime = args[:max_job_execution_lifetime] if args.key?(:max_job_execution_lifetime)
          @project = args[:project] if args.key?(:project)
          @service_account = args[:service_account] if args.key?(:service_account)
        end
      end
      
      # Status of the task execution (e.g. Jobs).
      class GoogleCloudDataplexV1TaskExecutionStatus
        include Google::Apis::Core::Hashable
      
        # A job represents an instance of a task.
        # Corresponds to the JSON property `latestJob`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1Job]
        attr_accessor :latest_job
      
        # Output only. Last update time of the status.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_job = args[:latest_job] if args.key?(:latest_job)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Configuration for the underlying infrastructure used to run workloads.
      class GoogleCloudDataplexV1TaskInfrastructureSpec
        include Google::Apis::Core::Hashable
      
        # Batch compute resources associated with the task.
        # Corresponds to the JSON property `batch`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources]
        attr_accessor :batch
      
        # Container Image Runtime Configuration used with Batch execution.
        # Corresponds to the JSON property `containerImage`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime]
        attr_accessor :container_image
      
        # Cloud VPC Network used to run the infrastructure.
        # Corresponds to the JSON property `vpcNetwork`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork]
        attr_accessor :vpc_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @batch = args[:batch] if args.key?(:batch)
          @container_image = args[:container_image] if args.key?(:container_image)
          @vpc_network = args[:vpc_network] if args.key?(:vpc_network)
        end
      end
      
      # Batch compute resources associated with the task.
      class GoogleCloudDataplexV1TaskInfrastructureSpecBatchComputeResources
        include Google::Apis::Core::Hashable
      
        # Optional. Total number of job executors. Executor Count should be between 2
        # and 100. Default=2
        # Corresponds to the JSON property `executorsCount`
        # @return [Fixnum]
        attr_accessor :executors_count
      
        # Optional. Max configurable executors. If max_executors_count > executors_count,
        # then auto-scaling is enabled. Max Executor Count should be between 2 and 1000.
        # Default=1000
        # Corresponds to the JSON property `maxExecutorsCount`
        # @return [Fixnum]
        attr_accessor :max_executors_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @executors_count = args[:executors_count] if args.key?(:executors_count)
          @max_executors_count = args[:max_executors_count] if args.key?(:max_executors_count)
        end
      end
      
      # Container Image Runtime Configuration used with Batch execution.
      class GoogleCloudDataplexV1TaskInfrastructureSpecContainerImageRuntime
        include Google::Apis::Core::Hashable
      
        # Optional. Container image to use.
        # Corresponds to the JSON property `image`
        # @return [String]
        attr_accessor :image
      
        # Optional. A list of Java JARS to add to the classpath. Valid input includes
        # Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/
        # file.jar
        # Corresponds to the JSON property `javaJars`
        # @return [Array<String>]
        attr_accessor :java_jars
      
        # Optional. Override to common configuration of open source components installed
        # on the Dataproc cluster. The properties to set on daemon config files.
        # Property keys are specified in prefix:property format, for example core:hadoop.
        # tmp.dir. For more information, see Cluster properties (https://cloud.google.
        # com/dataproc/docs/concepts/cluster-properties).
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Optional. A list of python packages to be installed. Valid formats include
        # Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/
        # my/path/to/lib.tar.gz
        # Corresponds to the JSON property `pythonPackages`
        # @return [Array<String>]
        attr_accessor :python_packages
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image = args[:image] if args.key?(:image)
          @java_jars = args[:java_jars] if args.key?(:java_jars)
          @properties = args[:properties] if args.key?(:properties)
          @python_packages = args[:python_packages] if args.key?(:python_packages)
        end
      end
      
      # Cloud VPC Network used to run the infrastructure.
      class GoogleCloudDataplexV1TaskInfrastructureSpecVpcNetwork
        include Google::Apis::Core::Hashable
      
        # Optional. The Cloud VPC network in which the job is run. By default, the Cloud
        # VPC network named Default within the project is used.
        # Corresponds to the JSON property `network`
        # @return [String]
        attr_accessor :network
      
        # Optional. List of network tags to apply to the job.
        # Corresponds to the JSON property `networkTags`
        # @return [Array<String>]
        attr_accessor :network_tags
      
        # Optional. The Cloud VPC sub-network in which the job is run.
        # Corresponds to the JSON property `subNetwork`
        # @return [String]
        attr_accessor :sub_network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network = args[:network] if args.key?(:network)
          @network_tags = args[:network_tags] if args.key?(:network_tags)
          @sub_network = args[:sub_network] if args.key?(:sub_network)
        end
      end
      
      # Config for running scheduled notebooks.
      class GoogleCloudDataplexV1TaskNotebookTaskConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud Storage URIs of archives to be extracted into the working
        # directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz,
        # and .zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. Cloud Storage URIs of files to be placed in the working directory of
        # each executor.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Configuration for the underlying infrastructure used to run workloads.
        # Corresponds to the JSON property `infrastructureSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec]
        attr_accessor :infrastructure_spec
      
        # Required. Path to input notebook. This can be the Cloud Storage URI of the
        # notebook file or the path to a Notebook Content. The execution args are
        # accessible as environment variables (TASK_key=value).
        # Corresponds to the JSON property `notebook`
        # @return [String]
        attr_accessor :notebook
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @infrastructure_spec = args[:infrastructure_spec] if args.key?(:infrastructure_spec)
          @notebook = args[:notebook] if args.key?(:notebook)
        end
      end
      
      # User-specified config for running a Spark task.
      class GoogleCloudDataplexV1TaskSparkTaskConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Cloud Storage URIs of archives to be extracted into the working
        # directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz,
        # and .zip.
        # Corresponds to the JSON property `archiveUris`
        # @return [Array<String>]
        attr_accessor :archive_uris
      
        # Optional. Cloud Storage URIs of files to be placed in the working directory of
        # each executor.
        # Corresponds to the JSON property `fileUris`
        # @return [Array<String>]
        attr_accessor :file_uris
      
        # Configuration for the underlying infrastructure used to run workloads.
        # Corresponds to the JSON property `infrastructureSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TaskInfrastructureSpec]
        attr_accessor :infrastructure_spec
      
        # The name of the driver's main class. The jar file that contains the class must
        # be in the default CLASSPATH or specified in jar_file_uris. The execution args
        # are passed in as a sequence of named process arguments (--key=value).
        # Corresponds to the JSON property `mainClass`
        # @return [String]
        attr_accessor :main_class
      
        # The Cloud Storage URI of the jar file that contains the main class. The
        # execution args are passed in as a sequence of named process arguments (--key=
        # value).
        # Corresponds to the JSON property `mainJarFileUri`
        # @return [String]
        attr_accessor :main_jar_file_uri
      
        # The Gcloud Storage URI of the main Python file to use as the driver. Must be a
        # .py file. The execution args are passed in as a sequence of named process
        # arguments (--key=value).
        # Corresponds to the JSON property `pythonScriptFile`
        # @return [String]
        attr_accessor :python_script_file
      
        # The query text. The execution args are used to declare a set of script
        # variables (set key="value";).
        # Corresponds to the JSON property `sqlScript`
        # @return [String]
        attr_accessor :sql_script
      
        # A reference to a query file. This should be the Cloud Storage URI of the query
        # file. The execution args are used to declare a set of script variables (set
        # key="value";).
        # Corresponds to the JSON property `sqlScriptFile`
        # @return [String]
        attr_accessor :sql_script_file
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_uris = args[:archive_uris] if args.key?(:archive_uris)
          @file_uris = args[:file_uris] if args.key?(:file_uris)
          @infrastructure_spec = args[:infrastructure_spec] if args.key?(:infrastructure_spec)
          @main_class = args[:main_class] if args.key?(:main_class)
          @main_jar_file_uri = args[:main_jar_file_uri] if args.key?(:main_jar_file_uri)
          @python_script_file = args[:python_script_file] if args.key?(:python_script_file)
          @sql_script = args[:sql_script] if args.key?(:sql_script)
          @sql_script_file = args[:sql_script_file] if args.key?(:sql_script_file)
        end
      end
      
      # Task scheduling and trigger settings.
      class GoogleCloudDataplexV1TaskTriggerSpec
        include Google::Apis::Core::Hashable
      
        # Optional. Prevent the task from executing. This does not cancel already
        # running tasks. It is intended to temporarily disable RECURRING tasks.
        # Corresponds to the JSON property `disabled`
        # @return [Boolean]
        attr_accessor :disabled
        alias_method :disabled?, :disabled
      
        # Optional. Number of retry attempts before aborting. Set to zero to never
        # attempt to retry a failed task.
        # Corresponds to the JSON property `maxRetries`
        # @return [Fixnum]
        attr_accessor :max_retries
      
        # Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running tasks
        # periodically. To explicitly set a timezone to the cron tab, apply a prefix in
        # the cron tab: "CRON_TZ=$`IANA_TIME_ZONE`" or "TZ=$`IANA_TIME_ZONE`". The $`
        # IANA_TIME_ZONE` may only be a valid string from IANA time zone database. For
        # example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
        # This field is required for RECURRING tasks.
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        # Optional. The first run of the task will be after this time. If not specified,
        # the task will run shortly after being submitted if ON_DEMAND and based on the
        # schedule if RECURRING.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Required. Immutable. Trigger type of the user-specified Task.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disabled = args[:disabled] if args.key?(:disabled)
          @max_retries = args[:max_retries] if args.key?(:max_retries)
          @schedule = args[:schedule] if args.key?(:schedule)
          @start_time = args[:start_time] if args.key?(:start_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # DataScan scheduling and trigger settings.
      class GoogleCloudDataplexV1Trigger
        include Google::Apis::Core::Hashable
      
        # The scan runs once via RunDataScan API.
        # Corresponds to the JSON property `onDemand`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TriggerOnDemand]
        attr_accessor :on_demand
      
        # The scan is scheduled to run periodically.
        # Corresponds to the JSON property `schedule`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1TriggerSchedule]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @on_demand = args[:on_demand] if args.key?(:on_demand)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
      
      # The scan runs once via RunDataScan API.
      class GoogleCloudDataplexV1TriggerOnDemand
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The scan is scheduled to run periodically.
      class GoogleCloudDataplexV1TriggerSchedule
        include Google::Apis::Core::Hashable
      
        # Required. Cron (https://en.wikipedia.org/wiki/Cron) schedule for running scans
        # periodically.To explicitly set a timezone in the cron tab, apply a prefix in
        # the cron tab: "CRON_TZ=$`IANA_TIME_ZONE`" or "TZ=$`IANA_TIME_ZONE`". The $`
        # IANA_TIME_ZONE` may only be a valid string from IANA time zone database (
        # wikipedia (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones#List)).
        # For example, CRON_TZ=America/New_York 1 * * * *, or TZ=America/New_York 1 * *
        # * *.This field is required for Schedule scans.
        # Corresponds to the JSON property `cron`
        # @return [String]
        attr_accessor :cron
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cron = args[:cron] if args.key?(:cron)
        end
      end
      
      # A zone represents a logical group of related assets within a lake. A zone can
      # be used to map to organizational structure or represent stages of data
      # readiness from raw to curated. It provides managing behavior that is shared or
      # inherited by all contained assets.
      class GoogleCloudDataplexV1Zone
        include Google::Apis::Core::Hashable
      
        # Aggregated status of the underlying assets of a lake or zone.
        # Corresponds to the JSON property `assetStatus`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1AssetStatus]
        attr_accessor :asset_status
      
        # Output only. The time when the zone was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Description of the zone.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Settings to manage the metadata discovery and publishing in a zone.
        # Corresponds to the JSON property `discoverySpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpec]
        attr_accessor :discovery_spec
      
        # Optional. User friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Optional. User defined labels for the zone.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The relative resource name of the zone, of the form: projects/`
        # project_number`/locations/`location_id`/lakes/`lake_id`/zones/`zone_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Settings for resources attached as assets within a zone.
        # Corresponds to the JSON property `resourceSpec`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneResourceSpec]
        attr_accessor :resource_spec
      
        # Output only. Current state of the zone.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. Immutable. The type of the zone.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. System generated globally unique ID for the zone. This ID will be
        # different if the zone is deleted and re-created with the same name.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the zone was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_status = args[:asset_status] if args.key?(:asset_status)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @discovery_spec = args[:discovery_spec] if args.key?(:discovery_spec)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @resource_spec = args[:resource_spec] if args.key?(:resource_spec)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Settings to manage the metadata discovery and publishing in a zone.
      class GoogleCloudDataplexV1ZoneDiscoverySpec
        include Google::Apis::Core::Hashable
      
        # Describe CSV and similar semi-structured data formats.
        # Corresponds to the JSON property `csvOptions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions]
        attr_accessor :csv_options
      
        # Required. Whether discovery is enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Optional. The list of patterns to apply for selecting data to exclude during
        # discovery. For Cloud Storage bucket assets, these are interpreted as glob
        # patterns used to match object names. For BigQuery dataset assets, these are
        # interpreted as patterns to match table names.
        # Corresponds to the JSON property `excludePatterns`
        # @return [Array<String>]
        attr_accessor :exclude_patterns
      
        # Optional. The list of patterns to apply for selecting data to include during
        # discovery if only a subset of the data should considered. For Cloud Storage
        # bucket assets, these are interpreted as glob patterns used to match object
        # names. For BigQuery dataset assets, these are interpreted as patterns to match
        # table names.
        # Corresponds to the JSON property `includePatterns`
        # @return [Array<String>]
        attr_accessor :include_patterns
      
        # Describe JSON data format.
        # Corresponds to the JSON property `jsonOptions`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions]
        attr_accessor :json_options
      
        # Optional. Cron schedule (https://en.wikipedia.org/wiki/Cron) for running
        # discovery periodically. Successive discovery runs must be scheduled at least
        # 60 minutes apart. The default value is to run discovery every 60 minutes.To
        # explicitly set a timezone to the cron tab, apply a prefix in the cron tab: "
        # CRON_TZ=$`IANA_TIME_ZONE`" or TZ=$`IANA_TIME_ZONE`". The $`IANA_TIME_ZONE` may
        # only be a valid string from IANA time zone database. For example, CRON_TZ=
        # America/New_York 1 * * * *, or TZ=America/New_York 1 * * * *.
        # Corresponds to the JSON property `schedule`
        # @return [String]
        attr_accessor :schedule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @csv_options = args[:csv_options] if args.key?(:csv_options)
          @enabled = args[:enabled] if args.key?(:enabled)
          @exclude_patterns = args[:exclude_patterns] if args.key?(:exclude_patterns)
          @include_patterns = args[:include_patterns] if args.key?(:include_patterns)
          @json_options = args[:json_options] if args.key?(:json_options)
          @schedule = args[:schedule] if args.key?(:schedule)
        end
      end
      
      # Describe CSV and similar semi-structured data formats.
      class GoogleCloudDataplexV1ZoneDiscoverySpecCsvOptions
        include Google::Apis::Core::Hashable
      
        # Optional. The delimiter being used to separate values. This defaults to ','.
        # Corresponds to the JSON property `delimiter`
        # @return [String]
        attr_accessor :delimiter
      
        # Optional. Whether to disable the inference of data type for CSV data. If true,
        # all columns will be registered as strings.
        # Corresponds to the JSON property `disableTypeInference`
        # @return [Boolean]
        attr_accessor :disable_type_inference
        alias_method :disable_type_inference?, :disable_type_inference
      
        # Optional. The character encoding of the data. The default is UTF-8.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        # Optional. The number of rows to interpret as header rows that should be
        # skipped when reading data rows.
        # Corresponds to the JSON property `headerRows`
        # @return [Fixnum]
        attr_accessor :header_rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delimiter = args[:delimiter] if args.key?(:delimiter)
          @disable_type_inference = args[:disable_type_inference] if args.key?(:disable_type_inference)
          @encoding = args[:encoding] if args.key?(:encoding)
          @header_rows = args[:header_rows] if args.key?(:header_rows)
        end
      end
      
      # Describe JSON data format.
      class GoogleCloudDataplexV1ZoneDiscoverySpecJsonOptions
        include Google::Apis::Core::Hashable
      
        # Optional. Whether to disable the inference of data type for Json data. If true,
        # all columns will be registered as their primitive types (strings, number or
        # boolean).
        # Corresponds to the JSON property `disableTypeInference`
        # @return [Boolean]
        attr_accessor :disable_type_inference
        alias_method :disable_type_inference?, :disable_type_inference
      
        # Optional. The character encoding of the data. The default is UTF-8.
        # Corresponds to the JSON property `encoding`
        # @return [String]
        attr_accessor :encoding
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_type_inference = args[:disable_type_inference] if args.key?(:disable_type_inference)
          @encoding = args[:encoding] if args.key?(:encoding)
        end
      end
      
      # Settings for resources attached as assets within a zone.
      class GoogleCloudDataplexV1ZoneResourceSpec
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The location type of the resources that are allowed to be
        # attached to the assets within this zone.
        # Corresponds to the JSON property `locationType`
        # @return [String]
        attr_accessor :location_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_type = args[:location_type] if args.key?(:location_type)
        end
      end
      
      # The response message for Locations.ListLocations.
      class GoogleCloudLocationListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudLocationLocation>]
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
      
      # A resource that represents a Google Cloud location.
      class GoogleCloudLocationLocation
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
      class GoogleIamV1AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::DataplexV1::GoogleIamV1AuditLogConfig>]
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
      
      # Associates members, or principals, with a role.
      class GoogleIamV1Binding
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
        # @return [Google::Apis::DataplexV1::GoogleTypeExpr]
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
      class GoogleIamV1Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::DataplexV1::GoogleIamV1AuditConfig>]
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
        # @return [Array<Google::Apis::DataplexV1::GoogleIamV1Binding>]
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
      
      # Request message for SetIamPolicy method.
      class GoogleIamV1SetIamPolicyRequest
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
        # @return [Google::Apis::DataplexV1::GoogleIamV1Policy]
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
      
      # Request message for TestIamPermissions method.
      class GoogleIamV1TestIamPermissionsRequest
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
      class GoogleIamV1TestIamPermissionsResponse
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
      
      # The request message for Operations.CancelOperation.
      class GoogleLongrunningCancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for Operations.ListOperations.
      class GoogleLongrunningListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::DataplexV1::GoogleLongrunningOperation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets
        # ListOperationsRequest.return_partial_success and reads across collections e.g.
        # when attempting to list all resources across all supported locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class GoogleLongrunningOperation
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
        # @return [Google::Apis::DataplexV1::GoogleRpcStatus]
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
      
      # The Status type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by gRPC
      # (https://github.com/grpc). Each Status message contains three pieces of data:
      # error code, error message, and error details.You can find out more about this
      # error model and how to work with it in the API Design Guide (https://cloud.
      # google.com/apis/design/errors).
      class GoogleRpcStatus
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
      class GoogleTypeExpr
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
    end
  end
end
