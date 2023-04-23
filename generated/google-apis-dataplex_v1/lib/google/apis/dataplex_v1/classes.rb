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
        # 60 minutes apart. The default value is to run discovery every 60 minutes. To
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
      
      # DataProfileResult defines the output of DataProfileScan. Each field of the
      # table will have field type specific profile result.
      class GoogleCloudDataplexV1DataProfileResult
        include Google::Apis::Core::Hashable
      
        # Contains name, type, mode and field type specific profile information.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfile]
        attr_accessor :profile
      
        # The count of rows scanned.
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
          @profile = args[:profile] if args.key?(:profile)
          @row_count = args[:row_count] if args.key?(:row_count)
          @scanned_data = args[:scanned_data] if args.key?(:scanned_data)
        end
      end
      
      # Contains name, type, mode and field type specific profile information.
      class GoogleCloudDataplexV1DataProfileResultProfile
        include Google::Apis::Core::Hashable
      
        # List of fields with structural and profile information for each field.
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
      
        # The mode of the field. Possible values include: REQUIRED, if it is a required
        # field. NULLABLE, if it is an optional field. REPEATED, if it is a repeated
        # field.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # The name of the field.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The profile information for each field type.
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfo]
        attr_accessor :profile
      
        # The data type retrieved from the schema of the data source. For instance, for
        # a BigQuery native table, it is the BigQuery Table Schema (https://cloud.google.
        # com/bigquery/docs/reference/rest/v2/tables#tablefieldschema). For a Dataplex
        # Entity, it is the Entity Schema (https://cloud.google.com/dataplex/docs/
        # reference/rpc/google.cloud.dataplex.v1#type_3).
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
      
        # Ratio of rows with distinct values against total scanned rows. Not available
        # for complex non-groupable field type RECORD and fields with REPEATABLE mode.
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
      
        # Ratio of rows with null value against total scanned rows.
        # Corresponds to the JSON property `nullRatio`
        # @return [Float]
        attr_accessor :null_ratio
      
        # The profile information for a string type field.
        # Corresponds to the JSON property `stringProfile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoStringFieldInfo]
        attr_accessor :string_profile
      
        # The list of top N non-null values and number of times they occur in the
        # scanned data. N is 10 or equal to the number of distinct values in the field,
        # whichever is smaller. Not available for complex non-groupable field type
        # RECORD and fields with REPEATABLE mode.
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
      
        # Average of non-null values in the scanned data. NaN, if the field has a NaN.
        # Corresponds to the JSON property `average`
        # @return [Float]
        attr_accessor :average
      
        # Maximum of non-null values in the scanned data. NaN, if the field has a NaN.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # Minimum of non-null values in the scanned data. NaN, if the field has a NaN.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        # A quartile divides the number of data points into four parts, or quarters, of
        # more-or-less equal size. Three main quartiles used are: The first quartile (Q1)
        # splits off the lowest 25% of data from the highest 75%. It is also known as
        # the lower or 25th empirical quartile, as 25% of the data is below this point.
        # The second quartile (Q2) is the median of a data set. So, 50% of the data lies
        # below this point. The third quartile (Q3) splits off the highest 25% of data
        # from the lowest 75%. It is known as the upper or 75th empirical quartile, as
        # 75% of the data lies below this point. Here, the quartiles is provided as an
        # ordered list of quartile values for the scanned data, occurring in order Q1,
        # median, Q3.
        # Corresponds to the JSON property `quartiles`
        # @return [Array<Float>]
        attr_accessor :quartiles
      
        # Standard deviation of non-null values in the scanned data. NaN, if the field
        # has a NaN.
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
      
        # Average of non-null values in the scanned data. NaN, if the field has a NaN.
        # Corresponds to the JSON property `average`
        # @return [Float]
        attr_accessor :average
      
        # Maximum of non-null values in the scanned data. NaN, if the field has a NaN.
        # Corresponds to the JSON property `max`
        # @return [Fixnum]
        attr_accessor :max
      
        # Minimum of non-null values in the scanned data. NaN, if the field has a NaN.
        # Corresponds to the JSON property `min`
        # @return [Fixnum]
        attr_accessor :min
      
        # A quartile divides the number of data points into four parts, or quarters, of
        # more-or-less equal size. Three main quartiles used are: The first quartile (Q1)
        # splits off the lowest 25% of data from the highest 75%. It is also known as
        # the lower or 25th empirical quartile, as 25% of the data is below this point.
        # The second quartile (Q2) is the median of a data set. So, 50% of the data lies
        # below this point. The third quartile (Q3) splits off the highest 25% of data
        # from the lowest 75%. It is known as the upper or 75th empirical quartile, as
        # 75% of the data lies below this point. Here, the quartiles is provided as an
        # ordered list of quartile values for the scanned data, occurring in order Q1,
        # median, Q3.
        # Corresponds to the JSON property `quartiles`
        # @return [Array<Fixnum>]
        attr_accessor :quartiles
      
        # Standard deviation of non-null values in the scanned data. NaN, if the field
        # has a NaN.
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
      
        # Average length of non-null values in the scanned data.
        # Corresponds to the JSON property `averageLength`
        # @return [Float]
        attr_accessor :average_length
      
        # Maximum length of non-null values in the scanned data.
        # Corresponds to the JSON property `maxLength`
        # @return [Fixnum]
        attr_accessor :max_length
      
        # Minimum length of non-null values in the scanned data.
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
      
        # Count of the corresponding value in the scanned data.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # String value of a top N non-null value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # DataProfileScan related setting.
      class GoogleCloudDataplexV1DataProfileSpec
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # DataQualityDimensionResult provides a more detailed, per-dimension view of the
      # results.
      class GoogleCloudDataplexV1DataQualityDimensionResult
        include Google::Apis::Core::Hashable
      
        # Whether the dimension passed or failed.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @passed = args[:passed] if args.key?(:passed)
        end
      end
      
      # The output of a DataQualityScan.
      class GoogleCloudDataplexV1DataQualityResult
        include Google::Apis::Core::Hashable
      
        # A list of results at the dimension level.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityDimensionResult>]
        attr_accessor :dimensions
      
        # Overall data quality result -- true if all rules passed.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # The count of rows processed.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # A list of all the rules in a job, and their results.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleResult>]
        attr_accessor :rules
      
        # The data scanned during processing (e.g. in incremental DataScan)
        # Corresponds to the JSON property `scannedData`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1ScannedData]
        attr_accessor :scanned_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @passed = args[:passed] if args.key?(:passed)
          @row_count = args[:row_count] if args.key?(:row_count)
          @rules = args[:rules] if args.key?(:rules)
          @scanned_data = args[:scanned_data] if args.key?(:scanned_data)
        end
      end
      
      # A rule captures data quality intent about a data source.
      class GoogleCloudDataplexV1DataQualityRule
        include Google::Apis::Core::Hashable
      
        # Optional. The unnested column which this rule is evaluated against.
        # Corresponds to the JSON property `column`
        # @return [String]
        attr_accessor :column
      
        # Required. The dimension a rule belongs to. Results are also aggregated at the
        # dimension level. Supported dimensions are "COMPLETENESS", "ACCURACY", "
        # CONSISTENCY", "VALIDITY", "UNIQUENESS", "INTEGRITY"
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Optional. Rows with null values will automatically fail a rule, unless
        # ignore_null is true. In that case, such null rows are trivially considered
        # passing.Only applicable to ColumnMap rules.
        # Corresponds to the JSON property `ignoreNull`
        # @return [Boolean]
        attr_accessor :ignore_null
        alias_method :ignore_null?, :ignore_null
      
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
        # needs to use BigQuery standard SQL syntax and should produce a boolean value
        # per row as the result.Example: col1 >= 0 AND col2 < 10
        # Corresponds to the JSON property `rowConditionExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation]
        attr_accessor :row_condition_expectation
      
        # Evaluates whether each column value is contained by a specified set.
        # Corresponds to the JSON property `setExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleSetExpectation]
        attr_accessor :set_expectation
      
        # Evaluates whether the column aggregate statistic lies between a specified
        # range.
        # Corresponds to the JSON property `statisticRangeExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation]
        attr_accessor :statistic_range_expectation
      
        # Evaluates whether the provided expression is true.The SQL expression needs to
        # use BigQuery standard SQL syntax and should produce a scalar boolean result.
        # Example: MIN(col1) >= 0
        # Corresponds to the JSON property `tableConditionExpectation`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation]
        attr_accessor :table_condition_expectation
      
        # Optional. The minimum ratio of passing_rows / total_rows required to pass this
        # rule, with a range of 0.0, 1.0.0 indicates default value (i.e. 1.0).
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
          @dimension = args[:dimension] if args.key?(:dimension)
          @ignore_null = args[:ignore_null] if args.key?(:ignore_null)
          @non_null_expectation = args[:non_null_expectation] if args.key?(:non_null_expectation)
          @range_expectation = args[:range_expectation] if args.key?(:range_expectation)
          @regex_expectation = args[:regex_expectation] if args.key?(:regex_expectation)
          @row_condition_expectation = args[:row_condition_expectation] if args.key?(:row_condition_expectation)
          @set_expectation = args[:set_expectation] if args.key?(:set_expectation)
          @statistic_range_expectation = args[:statistic_range_expectation] if args.key?(:statistic_range_expectation)
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
      
        # A regular expression the column value is expected to match.
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
      
        # The number of rows a rule was evaluated against. This field is only valid for
        # ColumnMap type rules.Evaluated count can be configured to either include all
        # rows (default) - with null rows automatically failing rule evaluation, or
        # exclude null rows from the evaluated_count, by setting ignore_nulls = true.
        # Corresponds to the JSON property `evaluatedCount`
        # @return [Fixnum]
        attr_accessor :evaluated_count
      
        # The query to find rows that did not pass this rule. Only applies to ColumnMap
        # and RowCondition rules.
        # Corresponds to the JSON property `failingRowsQuery`
        # @return [String]
        attr_accessor :failing_rows_query
      
        # The number of rows with null values in the specified column.
        # Corresponds to the JSON property `nullCount`
        # @return [Fixnum]
        attr_accessor :null_count
      
        # The ratio of passed_count / evaluated_count. This field is only valid for
        # ColumnMap type rules.
        # Corresponds to the JSON property `passRatio`
        # @return [Float]
        attr_accessor :pass_ratio
      
        # Whether the rule passed or failed.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # The number of rows which passed a rule evaluation. This field is only valid
        # for ColumnMap type rules.
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
      # needs to use BigQuery standard SQL syntax and should produce a boolean value
      # per row as the result.Example: col1 >= 0 AND col2 < 10
      class GoogleCloudDataplexV1DataQualityRuleRowConditionExpectation
        include Google::Apis::Core::Hashable
      
        # The SQL expression.
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
      
        # Expected values for the column value.
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
      
      # Evaluates whether the column aggregate statistic lies between a specified
      # range.
      class GoogleCloudDataplexV1DataQualityRuleStatisticRangeExpectation
        include Google::Apis::Core::Hashable
      
        # The maximum column statistic value allowed for a row to pass this validation.
        # At least one of min_value and max_value need to be provided.
        # Corresponds to the JSON property `maxValue`
        # @return [String]
        attr_accessor :max_value
      
        # The minimum column statistic value allowed for a row to pass this validation.
        # At least one of min_value and max_value need to be provided.
        # Corresponds to the JSON property `minValue`
        # @return [String]
        attr_accessor :min_value
      
        # The aggregate metric to evaluate.
        # Corresponds to the JSON property `statistic`
        # @return [String]
        attr_accessor :statistic
      
        # Whether column statistic needs to be strictly lesser than ('<') the maximum,
        # or if equality is allowed.Only relevant if a max_value has been defined.
        # Default = false.
        # Corresponds to the JSON property `strictMaxEnabled`
        # @return [Boolean]
        attr_accessor :strict_max_enabled
        alias_method :strict_max_enabled?, :strict_max_enabled
      
        # Whether column statistic needs to be strictly greater than ('>') the minimum,
        # or if equality is allowed.Only relevant if a min_value has been defined.
        # Default = false.
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
      # use BigQuery standard SQL syntax and should produce a scalar boolean result.
      # Example: MIN(col1) >= 0
      class GoogleCloudDataplexV1DataQualityRuleTableConditionExpectation
        include Google::Apis::Core::Hashable
      
        # The SQL expression.
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
      
      # DataQualityScan related setting.
      class GoogleCloudDataplexV1DataQualitySpec
        include Google::Apis::Core::Hashable
      
        # The list of rules to evaluate against a data source. At least one rule is
        # required.
        # Corresponds to the JSON property `rules`
        # @return [Array<Google::Apis::DataplexV1::GoogleCloudDataplexV1DataQualityRule>]
        attr_accessor :rules
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rules = args[:rules] if args.key?(:rules)
        end
      end
      
      # Represents a user-visible job which provides the insights for the related data
      # source.For example: Data Quality: generates queries based on the rules and
      # runs against the data to get data quality check results. Data Profile:
      # analyzes the data in table(s) and generates insights about the structure,
      # content and relationships (such as null percent, cardinality, min/max/mean,
      # etc).
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
      
        # Output only. The relative resource name of the scan, of the form: projects/`
        # project`/locations/`location_id`/dataScans/`datascan_id`, where project refers
        # to a project_id or project_number and location_id refers to a GCP region.
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
      
      # These messages contain information about the execution of a datascan. The
      # monitored resource is 'DataScan'
      class GoogleCloudDataplexV1DataScanEvent
        include Google::Apis::Core::Hashable
      
        # Data profile result for data scan job.
        # Corresponds to the JSON property `dataProfile`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataProfileResult]
        attr_accessor :data_profile
      
        # Data quality result for data scan job.
        # Corresponds to the JSON property `dataQuality`
        # @return [Google::Apis::DataplexV1::GoogleCloudDataplexV1DataScanEventDataQualityResult]
        attr_accessor :data_quality
      
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
          @data_profile = args[:data_profile] if args.key?(:data_profile)
          @data_quality = args[:data_quality] if args.key?(:data_quality)
          @data_source = args[:data_source] if args.key?(:data_source)
          @end_time = args[:end_time] if args.key?(:end_time)
          @job_id = args[:job_id] if args.key?(:job_id)
          @message = args[:message] if args.key?(:message)
          @scope = args[:scope] if args.key?(:scope)
          @spec_version = args[:spec_version] if args.key?(:spec_version)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @trigger = args[:trigger] if args.key?(:trigger)
          @type = args[:type] if args.key?(:type)
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
      
      # Data quality result for data scan job.
      class GoogleCloudDataplexV1DataScanEventDataQualityResult
        include Google::Apis::Core::Hashable
      
        # The result of each dimension for data quality result. The key of the map is
        # the name of the dimension. The value is the bool value depicting whether the
        # dimension result was pass or not.
        # Corresponds to the JSON property `dimensionPassed`
        # @return [Hash<String,Boolean>]
        attr_accessor :dimension_passed
      
        # Whether the data quality result was pass or not.
        # Corresponds to the JSON property `passed`
        # @return [Boolean]
        attr_accessor :passed
        alias_method :passed?, :passed
      
        # The count of rows processed in the data scan job.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_passed = args[:dimension_passed] if args.key?(:dimension_passed)
          @passed = args[:passed] if args.key?(:passed)
          @row_count = args[:row_count] if args.key?(:row_count)
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
      
        # The time when the latest DataScanJob ended.
        # Corresponds to the JSON property `latestJobEndTime`
        # @return [String]
        attr_accessor :latest_job_end_time
      
        # The time when the latest DataScanJob started.
        # Corresponds to the JSON property `latestJobStartTime`
        # @return [String]
        attr_accessor :latest_job_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latest_job_end_time = args[:latest_job_end_time] if args.key?(:latest_job_end_time)
          @latest_job_start_time = args[:latest_job_start_time] if args.key?(:latest_job_start_time)
        end
      end
      
      # A DataScanJob represents an instance of DataScan execution.
      class GoogleCloudDataplexV1DataScanJob
        include Google::Apis::Core::Hashable
      
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
      
        # Output only. The relative resource name of the DataScanJob, of the form:
        # projects/`project`/locations/`location_id`/dataScans/`datascan_id`/jobs/`
        # job_id`, where project refers to a project_id or project_number and
        # location_id refers to a GCP region.
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
      
        # Immutable. The Dataplex entity that represents the data source (e.g. BigQuery
        # table) for DataScan, of the form: projects/`project_number`/locations/`
        # location_id`/lakes/`lake_id`/zones/`zone_id`/entities/`entity_id`.
        # Corresponds to the JSON property `entity`
        # @return [String]
        attr_accessor :entity
      
        # Immutable. The service-qualified full resource name of the cloud resource for
        # a DataScan job to scan against. The field could be: BigQuery table of type "
        # TABLE" for DataProfileScan/DataQualityScan Format: //bigquery.googleapis.com/
        # projects/PROJECT_ID/datasets/DATASET_ID/tables/TABLE_ID
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
          @entity = args[:entity] if args.key?(:entity)
          @lake_id = args[:lake_id] if args.key?(:lake_id)
          @message = args[:message] if args.key?(:message)
          @partition = args[:partition] if args.key?(:partition)
          @type = args[:type] if args.key?(:type)
          @zone_id = args[:zone_id] if args.key?(:zone_id)
        end
      end
      
      # Details about the action.
      class GoogleCloudDataplexV1DiscoveryEventActionDetails
        include Google::Apis::Core::Hashable
      
        # The type of action. Eg. IncompatibleDataSchema, InvalidDataFormat
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
      
        # Required. Dataplex Image version.
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
      
      # A job represents an instance of a task.
      class GoogleCloudDataplexV1Job
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the job ended.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
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
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @retry_count = args[:retry_count] if args.key?(:retry_count)
          @service = args[:service] if args.key?(:service)
          @service_job = args[:service_job] if args.key?(:service_job)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
      
        # Value that marks the end of the range.
        # Corresponds to the JSON property `end`
        # @return [String]
        attr_accessor :end
      
        # The field that contains values which monotonically increases over time (e.g. a
        # timestamp column).
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Value that marks the start of the range.
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
      
        # Required. Set to true if user-managed or false if managed by Dataplex. The
        # default is false (managed by Dataplex). Set to falseto enable Dataplex
        # discovery to update the schema. including new data discovery, schema inference,
        # and schema evolution. Users retain the ability to input and edit the schema.
        # Dataplex treats schema input by the user as though produced by a previous
        # Dataplex discovery operation, and it will evolve the schema and take action
        # based on that treatment. Set to true to fully manage the entity schema. This
        # setting guarantees that Dataplex will not change schema fields.
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
      
        # A reference to a query file. This can be the Cloud Storage URI of the query
        # file or it can the path to a SqlScript Content. The execution args are used to
        # declare a set of script variables (set key="value";).
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
        # 60 minutes apart. The default value is to run discovery every 60 minutes. To
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
      
      # A resource that represents Google Cloud Platform location.
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
        # the users of that domain. For example, google.com or example.com. deleted:user:
        # `emailid`?uid=`uniqueid`: An email address (plus unique identifier)
        # representing a user that has been recently deleted. For example, alice@example.
        # com?uid=123456789012345678901. If the user is recovered, this value reverts to
        # user:`emailid` and the recovered user retains the role in the binding. deleted:
        # serviceAccount:`emailid`?uid=`uniqueid`: An email address (plus unique
        # identifier) representing a service account that has been recently deleted. For
        # example, my-other-app@appspot.gserviceaccount.com?uid=123456789012345678901.
        # If the service account is undeleted, this value reverts to serviceAccount:`
        # emailid` and the undeleted service account retains the role in the binding.
        # deleted:group:`emailid`?uid=`uniqueid`: An email address (plus unique
        # identifier) representing a Google group that has been recently deleted. For
        # example, admins@example.com?uid=123456789012345678901. If the group is
        # recovered, this value reverts to group:`emailid` and the recovered group
        # retains the role in the binding.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of members, or principals. For example,
        # roles/viewer, roles/editor, or roles/owner.
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
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as Delete, the response is google.
        # protobuf.Empty. If the original method is standard Get/Create/Update, the
        # response should be the resource. For other methods, the response should have
        # the type XxxResponse, where Xxx is the original method name. For example, if
        # the original method name is TakeSnapshot(), the inferred response type is
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
