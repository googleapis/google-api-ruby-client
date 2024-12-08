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
    module MetastoreV2
      
      # Response message for DataprocMetastore.AlterMetadataResourceLocation.
      class GoogleCloudMetastoreV1AlterMetadataResourceLocationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Metadata about a custom region. This is only populated if the region is a
      # custom region. For single/multi regions, it will be empty.
      class GoogleCloudMetastoreV1CustomRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The read-only regions for this custom region.
        # Corresponds to the JSON property `optionalReadOnlyRegions`
        # @return [Array<String>]
        attr_accessor :optional_read_only_regions
      
        # The read-write regions for this custom region.
        # Corresponds to the JSON property `requiredReadWriteRegions`
        # @return [Array<String>]
        attr_accessor :required_read_write_regions
      
        # The Spanner witness region for this custom region.
        # Corresponds to the JSON property `witnessRegion`
        # @return [String]
        attr_accessor :witness_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optional_read_only_regions = args[:optional_read_only_regions] if args.key?(:optional_read_only_regions)
          @required_read_write_regions = args[:required_read_write_regions] if args.key?(:required_read_write_regions)
          @witness_region = args[:witness_region] if args.key?(:witness_region)
        end
      end
      
      # Error details in public error message for DataprocMetastore.QueryMetadata.
      class GoogleCloudMetastoreV1ErrorDetails
        include Google::Apis::Core::Hashable
      
        # Additional structured details about this error.Keys define the failure items.
        # Value describes the exception or details of the item.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # A specification of a supported version of the Hive Metastore software.
      class GoogleCloudMetastoreV1HiveMetastoreVersion
        include Google::Apis::Core::Hashable
      
        # Whether version will be chosen by the server if a metastore service is created
        # with a HiveMetastoreConfig that omits the version.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # The semantic version of the Hive Metastore software.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_default = args[:is_default] if args.key?(:is_default)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Metadata about the service in a location.
      class GoogleCloudMetastoreV1LocationMetadata
        include Google::Apis::Core::Hashable
      
        # Possible configurations supported if the current region is a custom region.
        # Corresponds to the JSON property `customRegionMetadata`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV1CustomRegionMetadata>]
        attr_accessor :custom_region_metadata
      
        # The metadata for the multi-region that includes the constituent regions. The
        # metadata is only populated if the region is multi-region. For single region or
        # custom dual region, it will be empty.
        # Corresponds to the JSON property `multiRegionMetadata`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV1MultiRegionMetadata]
        attr_accessor :multi_region_metadata
      
        # The versions of Hive Metastore that can be used when creating a new metastore
        # service in this location. The server guarantees that exactly one
        # HiveMetastoreVersion in the list will set is_default.
        # Corresponds to the JSON property `supportedHiveMetastoreVersions`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV1HiveMetastoreVersion>]
        attr_accessor :supported_hive_metastore_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_region_metadata = args[:custom_region_metadata] if args.key?(:custom_region_metadata)
          @multi_region_metadata = args[:multi_region_metadata] if args.key?(:multi_region_metadata)
          @supported_hive_metastore_versions = args[:supported_hive_metastore_versions] if args.key?(:supported_hive_metastore_versions)
        end
      end
      
      # Response message for DataprocMetastore.MoveTableToDatabase.
      class GoogleCloudMetastoreV1MoveTableToDatabaseResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for the multi-region that includes the constituent regions. The
      # metadata is only populated if the region is multi-region. For single region or
      # custom dual region, it will be empty.
      class GoogleCloudMetastoreV1MultiRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The regions constituting the multi-region.
        # Corresponds to the JSON property `constituentRegions`
        # @return [Array<String>]
        attr_accessor :constituent_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constituent_regions = args[:constituent_regions] if args.key?(:constituent_regions)
        end
      end
      
      # Represents the metadata of a long-running operation.
      class GoogleCloudMetastoreV1OperationMetadata
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
      
        # Output only. Identifies whether the caller has requested cancellation of the
        # operation. Operations that have successfully been cancelled have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
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
      
      # Response message for DataprocMetastore.QueryMetadata.
      class GoogleCloudMetastoreV1QueryMetadataResponse
        include Google::Apis::Core::Hashable
      
        # The manifest URI is link to a JSON instance in Cloud Storage. This instance
        # manifests immediately along with QueryMetadataResponse. The content of the URI
        # is not retriable until the long-running operation query against the metadata
        # finishes.
        # Corresponds to the JSON property `resultManifestUri`
        # @return [String]
        attr_accessor :result_manifest_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_manifest_uri = args[:result_manifest_uri] if args.key?(:result_manifest_uri)
        end
      end
      
      # Response message for DataprocMetastore.AlterMetadataResourceLocation.
      class GoogleCloudMetastoreV1alphaAlterMetadataResourceLocationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for DataprocMetastore.CancelMigration.
      class GoogleCloudMetastoreV1alphaCancelMigrationResponse
        include Google::Apis::Core::Hashable
      
        # The relative resource name of the migration execution, in the following form:
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # migrationExecutions/`migration_execution_id`.
        # Corresponds to the JSON property `migrationExecution`
        # @return [String]
        attr_accessor :migration_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_execution = args[:migration_execution] if args.key?(:migration_execution)
        end
      end
      
      # Response message for DataprocMetastore.CompleteMigration.
      class GoogleCloudMetastoreV1alphaCompleteMigrationResponse
        include Google::Apis::Core::Hashable
      
        # The relative resource name of the migration execution, in the following form:
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # migrationExecutions/`migration_execution_id`.
        # Corresponds to the JSON property `migrationExecution`
        # @return [String]
        attr_accessor :migration_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_execution = args[:migration_execution] if args.key?(:migration_execution)
        end
      end
      
      # Metadata about a custom region. This is only populated if the region is a
      # custom region. For single/multi regions, it will be empty.
      class GoogleCloudMetastoreV1alphaCustomRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The read-only regions for this custom region.
        # Corresponds to the JSON property `optionalReadOnlyRegions`
        # @return [Array<String>]
        attr_accessor :optional_read_only_regions
      
        # The read-write regions for this custom region.
        # Corresponds to the JSON property `requiredReadWriteRegions`
        # @return [Array<String>]
        attr_accessor :required_read_write_regions
      
        # The Spanner witness region for this custom region.
        # Corresponds to the JSON property `witnessRegion`
        # @return [String]
        attr_accessor :witness_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optional_read_only_regions = args[:optional_read_only_regions] if args.key?(:optional_read_only_regions)
          @required_read_write_regions = args[:required_read_write_regions] if args.key?(:required_read_write_regions)
          @witness_region = args[:witness_region] if args.key?(:witness_region)
        end
      end
      
      # Error details in public error message for DataprocMetastore.QueryMetadata.
      class GoogleCloudMetastoreV1alphaErrorDetails
        include Google::Apis::Core::Hashable
      
        # Additional structured details about this error.Keys define the failure items.
        # Value describes the exception or details of the item.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # A specification of a supported version of the Hive Metastore software.
      class GoogleCloudMetastoreV1alphaHiveMetastoreVersion
        include Google::Apis::Core::Hashable
      
        # Whether version will be chosen by the server if a metastore service is created
        # with a HiveMetastoreConfig that omits the version.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # The semantic version of the Hive Metastore software.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_default = args[:is_default] if args.key?(:is_default)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Metadata about the service in a location.
      class GoogleCloudMetastoreV1alphaLocationMetadata
        include Google::Apis::Core::Hashable
      
        # Possible configurations supported if the current region is a custom region.
        # Corresponds to the JSON property `customRegionMetadata`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaCustomRegionMetadata>]
        attr_accessor :custom_region_metadata
      
        # The metadata for the multi-region that includes the constituent regions. The
        # metadata is only populated if the region is multi-region. For single region or
        # custom dual region, it will be empty.
        # Corresponds to the JSON property `multiRegionMetadata`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaMultiRegionMetadata]
        attr_accessor :multi_region_metadata
      
        # The versions of Hive Metastore that can be used when creating a new metastore
        # service in this location. The server guarantees that exactly one
        # HiveMetastoreVersion in the list will set is_default.
        # Corresponds to the JSON property `supportedHiveMetastoreVersions`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV1alphaHiveMetastoreVersion>]
        attr_accessor :supported_hive_metastore_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_region_metadata = args[:custom_region_metadata] if args.key?(:custom_region_metadata)
          @multi_region_metadata = args[:multi_region_metadata] if args.key?(:multi_region_metadata)
          @supported_hive_metastore_versions = args[:supported_hive_metastore_versions] if args.key?(:supported_hive_metastore_versions)
        end
      end
      
      # Response message for DataprocMetastore.MoveTableToDatabase.
      class GoogleCloudMetastoreV1alphaMoveTableToDatabaseResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for the multi-region that includes the constituent regions. The
      # metadata is only populated if the region is multi-region. For single region or
      # custom dual region, it will be empty.
      class GoogleCloudMetastoreV1alphaMultiRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The regions constituting the multi-region.
        # Corresponds to the JSON property `constituentRegions`
        # @return [Array<String>]
        attr_accessor :constituent_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constituent_regions = args[:constituent_regions] if args.key?(:constituent_regions)
        end
      end
      
      # Represents the metadata of a long-running operation.
      class GoogleCloudMetastoreV1alphaOperationMetadata
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
      
        # Output only. Identifies whether the caller has requested cancellation of the
        # operation. Operations that have successfully been cancelled have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
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
      
      # Response message for DataprocMetastore.QueryMetadata.
      class GoogleCloudMetastoreV1alphaQueryMetadataResponse
        include Google::Apis::Core::Hashable
      
        # The manifest URI is link to a JSON instance in Cloud Storage. This instance
        # manifests immediately along with QueryMetadataResponse. The content of the URI
        # is not retriable until the long-running operation query against the metadata
        # finishes.
        # Corresponds to the JSON property `resultManifestUri`
        # @return [String]
        attr_accessor :result_manifest_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_manifest_uri = args[:result_manifest_uri] if args.key?(:result_manifest_uri)
        end
      end
      
      # Response message for DataprocMetastore.AlterMetadataResourceLocation.
      class GoogleCloudMetastoreV1betaAlterMetadataResourceLocationResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for DataprocMetastore.CancelMigration.
      class GoogleCloudMetastoreV1betaCancelMigrationResponse
        include Google::Apis::Core::Hashable
      
        # The relative resource name of the migration execution, in the following form:
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # migrationExecutions/`migration_execution_id`.
        # Corresponds to the JSON property `migrationExecution`
        # @return [String]
        attr_accessor :migration_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_execution = args[:migration_execution] if args.key?(:migration_execution)
        end
      end
      
      # Response message for DataprocMetastore.CompleteMigration.
      class GoogleCloudMetastoreV1betaCompleteMigrationResponse
        include Google::Apis::Core::Hashable
      
        # The relative resource name of the migration execution, in the following form:
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # migrationExecutions/`migration_execution_id`.
        # Corresponds to the JSON property `migrationExecution`
        # @return [String]
        attr_accessor :migration_execution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_execution = args[:migration_execution] if args.key?(:migration_execution)
        end
      end
      
      # Metadata about a custom region. This is only populated if the region is a
      # custom region. For single/multi regions, it will be empty.
      class GoogleCloudMetastoreV1betaCustomRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The read-only regions for this custom region.
        # Corresponds to the JSON property `optionalReadOnlyRegions`
        # @return [Array<String>]
        attr_accessor :optional_read_only_regions
      
        # The read-write regions for this custom region.
        # Corresponds to the JSON property `requiredReadWriteRegions`
        # @return [Array<String>]
        attr_accessor :required_read_write_regions
      
        # The Spanner witness region for this custom region.
        # Corresponds to the JSON property `witnessRegion`
        # @return [String]
        attr_accessor :witness_region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @optional_read_only_regions = args[:optional_read_only_regions] if args.key?(:optional_read_only_regions)
          @required_read_write_regions = args[:required_read_write_regions] if args.key?(:required_read_write_regions)
          @witness_region = args[:witness_region] if args.key?(:witness_region)
        end
      end
      
      # Error details in public error message for DataprocMetastore.QueryMetadata.
      class GoogleCloudMetastoreV1betaErrorDetails
        include Google::Apis::Core::Hashable
      
        # Additional structured details about this error.Keys define the failure items.
        # Value describes the exception or details of the item.
        # Corresponds to the JSON property `details`
        # @return [Hash<String,String>]
        attr_accessor :details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
        end
      end
      
      # A specification of a supported version of the Hive Metastore software.
      class GoogleCloudMetastoreV1betaHiveMetastoreVersion
        include Google::Apis::Core::Hashable
      
        # Whether version will be chosen by the server if a metastore service is created
        # with a HiveMetastoreConfig that omits the version.
        # Corresponds to the JSON property `isDefault`
        # @return [Boolean]
        attr_accessor :is_default
        alias_method :is_default?, :is_default
      
        # The semantic version of the Hive Metastore software.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @is_default = args[:is_default] if args.key?(:is_default)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Metadata about the service in a location.
      class GoogleCloudMetastoreV1betaLocationMetadata
        include Google::Apis::Core::Hashable
      
        # Possible configurations supported if the current region is a custom region.
        # Corresponds to the JSON property `customRegionMetadata`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaCustomRegionMetadata>]
        attr_accessor :custom_region_metadata
      
        # The metadata for the multi-region that includes the constituent regions. The
        # metadata is only populated if the region is multi-region. For single region or
        # custom dual region, it will be empty.
        # Corresponds to the JSON property `multiRegionMetadata`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaMultiRegionMetadata]
        attr_accessor :multi_region_metadata
      
        # The versions of Hive Metastore that can be used when creating a new metastore
        # service in this location. The server guarantees that exactly one
        # HiveMetastoreVersion in the list will set is_default.
        # Corresponds to the JSON property `supportedHiveMetastoreVersions`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV1betaHiveMetastoreVersion>]
        attr_accessor :supported_hive_metastore_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_region_metadata = args[:custom_region_metadata] if args.key?(:custom_region_metadata)
          @multi_region_metadata = args[:multi_region_metadata] if args.key?(:multi_region_metadata)
          @supported_hive_metastore_versions = args[:supported_hive_metastore_versions] if args.key?(:supported_hive_metastore_versions)
        end
      end
      
      # Response message for DataprocMetastore.MoveTableToDatabase.
      class GoogleCloudMetastoreV1betaMoveTableToDatabaseResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for the multi-region that includes the constituent regions. The
      # metadata is only populated if the region is multi-region. For single region or
      # custom dual region, it will be empty.
      class GoogleCloudMetastoreV1betaMultiRegionMetadata
        include Google::Apis::Core::Hashable
      
        # The regions constituting the multi-region.
        # Corresponds to the JSON property `constituentRegions`
        # @return [Array<String>]
        attr_accessor :constituent_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @constituent_regions = args[:constituent_regions] if args.key?(:constituent_regions)
        end
      end
      
      # Represents the metadata of a long-running operation.
      class GoogleCloudMetastoreV1betaOperationMetadata
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
      
        # Output only. Identifies whether the caller has requested cancellation of the
        # operation. Operations that have successfully been cancelled have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to Code.CANCELLED.
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
      
      # Response message for DataprocMetastore.QueryMetadata.
      class GoogleCloudMetastoreV1betaQueryMetadataResponse
        include Google::Apis::Core::Hashable
      
        # The manifest URI is link to a JSON instance in Cloud Storage. This instance
        # manifests immediately along with QueryMetadataResponse. The content of the URI
        # is not retriable until the long-running operation query against the metadata
        # finishes.
        # Corresponds to the JSON property `resultManifestUri`
        # @return [String]
        attr_accessor :result_manifest_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @result_manifest_uri = args[:result_manifest_uri] if args.key?(:result_manifest_uri)
        end
      end
      
      # Request message for DataprocMetastore.AlterMetadataResourceLocation.
      class GoogleCloudMetastoreV2AlterMetadataResourceLocationRequest
        include Google::Apis::Core::Hashable
      
        # Required. The new location URI for the metadata resource.
        # Corresponds to the JSON property `locationUri`
        # @return [String]
        attr_accessor :location_uri
      
        # Required. The relative metadata resource name in the following format.
        # databases/`database_id` or databases/`database_id`/tables/`table_id` or
        # databases/`database_id`/tables/`table_id`/partitions/`partition_id`
        # Corresponds to the JSON property `resourceName`
        # @return [String]
        attr_accessor :resource_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_uri = args[:location_uri] if args.key?(:location_uri)
          @resource_name = args[:resource_name] if args.key?(:resource_name)
        end
      end
      
      # Request message for DataprocMetastore.AlterTableProperties.
      class GoogleCloudMetastoreV2AlterTablePropertiesRequest
        include Google::Apis::Core::Hashable
      
        # A map that describes the desired values to mutate. If update_mask is empty,
        # the properties will not update. Otherwise, the properties only alters the
        # value whose associated paths exist in the update mask
        # Corresponds to the JSON property `properties`
        # @return [Hash<String,String>]
        attr_accessor :properties
      
        # Required. The name of the table containing the properties you're altering in
        # the following format.databases/`database_id`/tables/`table_id`
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        # A field mask that specifies the metadata table properties that are overwritten
        # by the update. Fields specified in the update_mask are relative to the
        # resource (not to the full request). A field is overwritten if it is in the
        # mask.For example, given the target properties: properties ` a: 1 b: 2 ` And an
        # update properties: properties ` a: 2 b: 3 c: 4 ` then if the field mask is:
        # paths: "properties.b", "properties.c"then the result will be: properties ` a:
        # 1 b: 3 c: 4 `
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @table_name = args[:table_name] if args.key?(:table_name)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Configuration information for the auxiliary service versions.
      class GoogleCloudMetastoreV2AuxiliaryVersionConfig
        include Google::Apis::Core::Hashable
      
        # A mapping of Hive metastore configuration key-value pairs to apply to the
        # auxiliary Hive metastore (configured in hive-site.xml) in addition to the
        # primary version's overrides. If keys are present in both the auxiliary version'
        # s overrides and the primary version's overrides, the value from the auxiliary
        # version's overrides takes precedence.
        # Corresponds to the JSON property `configOverrides`
        # @return [Hash<String,String>]
        attr_accessor :config_overrides
      
        # Output only. The list of endpoints used to access the auxiliary metastore
        # service, includes version and region data.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Endpoint>]
        attr_accessor :endpoints
      
        # The Hive metastore version of the auxiliary service. It must be less than the
        # primary Hive metastore service's version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config_overrides = args[:config_overrides] if args.key?(:config_overrides)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # The details of a backup resource.
      class GoogleCloudMetastoreV2Backup
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the backup was started.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The description of the backup.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. The time when the backup finished creating.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Immutable. The relative resource name of the backup, in the following form:
        # projects/`project_number`/locations/`location_id`/services/`service_id`/
        # backups/`backup_id`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Services that are restoring from the backup.
        # Corresponds to the JSON property `restoringServices`
        # @return [Array<String>]
        attr_accessor :restoring_services
      
        # A managed metastore service that serves metadata queries.
        # Corresponds to the JSON property `serviceRevision`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service]
        attr_accessor :service_revision
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @restoring_services = args[:restoring_services] if args.key?(:restoring_services)
          @service_revision = args[:service_revision] if args.key?(:service_revision)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Specifies how metastore metadata should be integrated with the Data Catalog
      # service.
      class GoogleCloudMetastoreV2DataCatalogConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Defines whether the metastore metadata should be synced to Data
        # Catalog. The default value is to disable syncing metastore metadata to Data
        # Catalog.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
        end
      end
      
      # A specification of the location of and metadata about a database dump from a
      # relational database management system.
      class GoogleCloudMetastoreV2DatabaseDump
        include Google::Apis::Core::Hashable
      
        # Required. A Cloud Storage object or folder URI that specifies the source from
        # which to import metadata. It must begin with gs://.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # Optional. The type of the database dump. If unspecified, defaults to MYSQL.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encryption settings for the service.
      class GoogleCloudMetastoreV2EncryptionConfig
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An endpoint used to access the metastore service.
      class GoogleCloudMetastoreV2Endpoint
        include Google::Apis::Core::Hashable
      
        # Output only. The URI of the endpoint used to access the metastore service.
        # Corresponds to the JSON property `endpointUri`
        # @return [String]
        attr_accessor :endpoint_uri
      
        # Output only. The region where the endpoint is located.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @endpoint_uri = args[:endpoint_uri] if args.key?(:endpoint_uri)
          @region = args[:region] if args.key?(:region)
        end
      end
      
      # Request message for DataprocMetastore.ExportMetadata.
      class GoogleCloudMetastoreV2ExportMetadataRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The type of the database dump. If unspecified, defaults to MYSQL.
        # Corresponds to the JSON property `databaseDumpType`
        # @return [String]
        attr_accessor :database_dump_type
      
        # A Cloud Storage URI of a folder, in the format gs:///. A sub-folder containing
        # exported files will be created below it.
        # Corresponds to the JSON property `destinationGcsFolder`
        # @return [String]
        attr_accessor :destination_gcs_folder
      
        # Optional. A request ID. Specify a unique request ID to allow the server to
        # ignore the request if it has completed. The server will ignore subsequent
        # requests that provide a duplicate request ID for at least 60 minutes after the
        # first request.For example, if an initial request times out, followed by
        # another request with the same request ID, the server ignores the second
        # request to prevent the creation of duplicate commitments.The request ID must
        # be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        # Format). A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_dump_type = args[:database_dump_type] if args.key?(:database_dump_type)
          @destination_gcs_folder = args[:destination_gcs_folder] if args.key?(:destination_gcs_folder)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Specifies configuration information specific to running Hive metastore
      # software as the metastore service.
      class GoogleCloudMetastoreV2HiveMetastoreConfig
        include Google::Apis::Core::Hashable
      
        # Optional. A mapping of Hive metastore version to the auxiliary version
        # configuration. When specified, a secondary Hive metastore service is created
        # along with the primary service. All auxiliary versions must be less than the
        # service's primary version. The key is the auxiliary service name and it must
        # match the regular expression a-z?. This means that the first character must be
        # a lowercase letter, and all the following characters must be hyphens,
        # lowercase letters, or digits, except the last character, which cannot be a
        # hyphen.
        # Corresponds to the JSON property `auxiliaryVersions`
        # @return [Hash<String,Google::Apis::MetastoreV2::GoogleCloudMetastoreV2AuxiliaryVersionConfig>]
        attr_accessor :auxiliary_versions
      
        # Optional. A mapping of Hive metastore configuration key-value pairs to apply
        # to the Hive metastore (configured in hive-site.xml). The mappings override
        # system defaults (some keys cannot be overridden). These overrides are also
        # applied to auxiliary versions and can be further customized in the auxiliary
        # version's AuxiliaryVersionConfig.
        # Corresponds to the JSON property `configOverrides`
        # @return [Hash<String,String>]
        attr_accessor :config_overrides
      
        # Optional. The protocol to use for the metastore service endpoint. If
        # unspecified, defaults to GRPC.
        # Corresponds to the JSON property `endpointProtocol`
        # @return [String]
        attr_accessor :endpoint_protocol
      
        # Immutable. The Hive metastore schema version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @auxiliary_versions = args[:auxiliary_versions] if args.key?(:auxiliary_versions)
          @config_overrides = args[:config_overrides] if args.key?(:config_overrides)
          @endpoint_protocol = args[:endpoint_protocol] if args.key?(:endpoint_protocol)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Request message for DataprocMetastore.CreateMetadataImport.
      class GoogleCloudMetastoreV2ImportMetadataRequest
        include Google::Apis::Core::Hashable
      
        # A specification of the location of and metadata about a database dump from a
        # relational database management system.
        # Corresponds to the JSON property `databaseDump`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2DatabaseDump]
        attr_accessor :database_dump
      
        # Optional. The description of the metadata import.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Optional. A request ID. Specify a unique request ID to allow the server to
        # ignore the request if it has completed. The server will ignore subsequent
        # requests that provide a duplicate request ID for at least 60 minutes after the
        # first request.For example, if an initial request times out, followed by
        # another request with the same request ID, the server ignores the second
        # request to prevent the creation of duplicate commitments.The request ID must
        # be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        # Format). A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @database_dump = args[:database_dump] if args.key?(:database_dump)
          @description = args[:description] if args.key?(:description)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # The details of the latest scheduled backup.
      class GoogleCloudMetastoreV2LatestBackup
        include Google::Apis::Core::Hashable
      
        # Output only. The ID of an in-progress scheduled backup. Empty if no backup is
        # in progress.
        # Corresponds to the JSON property `backupId`
        # @return [String]
        attr_accessor :backup_id
      
        # Output only. The duration of the backup completion.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Output only. The time when the backup was started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the backup.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_id = args[:backup_id] if args.key?(:backup_id)
          @duration = args[:duration] if args.key?(:duration)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Response message for DataprocMetastore.ListBackups.
      class GoogleCloudMetastoreV2ListBackupsResponse
        include Google::Apis::Core::Hashable
      
        # The backups of the specified service.
        # Corresponds to the JSON property `backups`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Backup>]
        attr_accessor :backups
      
        # A token that can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
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
          @backups = args[:backups] if args.key?(:backups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for DataprocMetastore.ListServices.
      class GoogleCloudMetastoreV2ListServicesResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as page_token to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The services in the specified location.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Service>]
        attr_accessor :services
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @services = args[:services] if args.key?(:services)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Specifies how metastore metadata should be integrated with external services.
      class GoogleCloudMetastoreV2MetadataIntegration
        include Google::Apis::Core::Hashable
      
        # Specifies how metastore metadata should be integrated with the Data Catalog
        # service.
        # Corresponds to the JSON property `dataCatalogConfig`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2DataCatalogConfig]
        attr_accessor :data_catalog_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_catalog_config = args[:data_catalog_config] if args.key?(:data_catalog_config)
        end
      end
      
      # Request message for DataprocMetastore.MoveTableToDatabase.
      class GoogleCloudMetastoreV2MoveTableToDatabaseRequest
        include Google::Apis::Core::Hashable
      
        # Required. The name of the database where the table resides.
        # Corresponds to the JSON property `dbName`
        # @return [String]
        attr_accessor :db_name
      
        # Required. The name of the database where the table should be moved.
        # Corresponds to the JSON property `destinationDbName`
        # @return [String]
        attr_accessor :destination_db_name
      
        # Required. The name of the table to be moved.
        # Corresponds to the JSON property `tableName`
        # @return [String]
        attr_accessor :table_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @db_name = args[:db_name] if args.key?(:db_name)
          @destination_db_name = args[:destination_db_name] if args.key?(:destination_db_name)
          @table_name = args[:table_name] if args.key?(:table_name)
        end
      end
      
      # Request message for DataprocMetastore.QueryMetadata.
      class GoogleCloudMetastoreV2QueryMetadataRequest
        include Google::Apis::Core::Hashable
      
        # Required. A read-only SQL query to execute against the metadata database. The
        # query cannot change or mutate the data.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @query = args[:query] if args.key?(:query)
        end
      end
      
      # Request message for DataprocMetastore.Restore.
      class GoogleCloudMetastoreV2RestoreServiceRequest
        include Google::Apis::Core::Hashable
      
        # Optional. The relative resource name of the metastore service backup to
        # restore from, in the following form:projects/`project_id`/locations/`
        # location_id`/services/`service_id`/backups/`backup_id`. Mutually exclusive
        # with backup_location, and exactly one of the two must be set.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Optional. A Cloud Storage URI specifying the location of the backup artifacts,
        # namely - backup avro files under "avro/", backup_metastore.json and service.
        # json, in the following form:gs://. Mutually exclusive with backup, and exactly
        # one of the two must be set.
        # Corresponds to the JSON property `backupLocation`
        # @return [String]
        attr_accessor :backup_location
      
        # Optional. A request ID. Specify a unique request ID to allow the server to
        # ignore the request if it has completed. The server will ignore subsequent
        # requests that provide a duplicate request ID for at least 60 minutes after the
        # first request.For example, if an initial request times out, followed by
        # another request with the same request ID, the server ignores the second
        # request to prevent the creation of duplicate commitments.The request ID must
        # be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#
        # Format). A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Optional. The type of restore. If unspecified, defaults to METADATA_ONLY.
        # Corresponds to the JSON property `restoreType`
        # @return [String]
        attr_accessor :restore_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @backup_location = args[:backup_location] if args.key?(:backup_location)
          @request_id = args[:request_id] if args.key?(:request_id)
          @restore_type = args[:restore_type] if args.key?(:restore_type)
        end
      end
      
      # Represents the scaling configuration of a metastore service.
      class GoogleCloudMetastoreV2ScalingConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Scaling factor from 1 to 5, increments of 1.
        # Corresponds to the JSON property `scalingFactor`
        # @return [Fixnum]
        attr_accessor :scaling_factor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @scaling_factor = args[:scaling_factor] if args.key?(:scaling_factor)
        end
      end
      
      # This specifies the configuration of scheduled backup.
      class GoogleCloudMetastoreV2ScheduledBackup
        include Google::Apis::Core::Hashable
      
        # Optional. A Cloud Storage URI of a folder, in the format gs:///. A sub-folder
        # containing backup files will be stored below it.
        # Corresponds to the JSON property `backupLocation`
        # @return [String]
        attr_accessor :backup_location
      
        # Optional. The scheduled interval in Cron format, see https://en.wikipedia.org/
        # wiki/Cron The default is empty: scheduled backup is not enabled. Must be
        # specified to enable scheduled backups.
        # Corresponds to the JSON property `cronSchedule`
        # @return [String]
        attr_accessor :cron_schedule
      
        # Optional. Defines whether the scheduled backup is enabled. The default value
        # is false.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # The details of the latest scheduled backup.
        # Corresponds to the JSON property `latestBackup`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2LatestBackup]
        attr_accessor :latest_backup
      
        # Output only. The time when the next backups execution is scheduled to start.
        # Corresponds to the JSON property `nextScheduledTime`
        # @return [String]
        attr_accessor :next_scheduled_time
      
        # Optional. Specifies the time zone to be used when interpreting cron_schedule.
        # Must be a time zone name from the time zone database (https://en.wikipedia.org/
        # wiki/List_of_tz_database_time_zones), e.g. America/Los_Angeles or Africa/
        # Abidjan. If left unspecified, the default is UTC.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_location = args[:backup_location] if args.key?(:backup_location)
          @cron_schedule = args[:cron_schedule] if args.key?(:cron_schedule)
          @enabled = args[:enabled] if args.key?(:enabled)
          @latest_backup = args[:latest_backup] if args.key?(:latest_backup)
          @next_scheduled_time = args[:next_scheduled_time] if args.key?(:next_scheduled_time)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # A managed metastore service that serves metadata queries.
      class GoogleCloudMetastoreV2Service
        include Google::Apis::Core::Hashable
      
        # Output only. The time when the metastore service was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Encryption settings for the service.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2EncryptionConfig]
        attr_accessor :encryption_config
      
        # Output only. The list of endpoints used to access the metastore service.
        # Corresponds to the JSON property `endpoints`
        # @return [Array<Google::Apis::MetastoreV2::GoogleCloudMetastoreV2Endpoint>]
        attr_accessor :endpoints
      
        # Specifies configuration information specific to running Hive metastore
        # software as the metastore service.
        # Corresponds to the JSON property `hiveMetastoreConfig`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2HiveMetastoreConfig]
        attr_accessor :hive_metastore_config
      
        # User-defined labels for the metastore service.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Specifies how metastore metadata should be integrated with external services.
        # Corresponds to the JSON property `metadataIntegration`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2MetadataIntegration]
        attr_accessor :metadata_integration
      
        # Immutable. The relative resource name of the metastore service, in the
        # following format:projects/`project_number`/locations/`location_id`/services/`
        # service_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents the scaling configuration of a metastore service.
        # Corresponds to the JSON property `scalingConfig`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ScalingConfig]
        attr_accessor :scaling_config
      
        # This specifies the configuration of scheduled backup.
        # Corresponds to the JSON property `scheduledBackup`
        # @return [Google::Apis::MetastoreV2::GoogleCloudMetastoreV2ScheduledBackup]
        attr_accessor :scheduled_backup
      
        # Output only. The current state of the metastore service.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Additional information about the current state of the metastore
        # service, if available.
        # Corresponds to the JSON property `stateMessage`
        # @return [String]
        attr_accessor :state_message
      
        # Output only. The globally unique resource identifier of the metastore service.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        # Output only. The time when the metastore service was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Required. A Cloud Storage URI (starting with gs://) that specifies the default
        # warehouse directory of the Hive Metastore.
        # Corresponds to the JSON property `warehouseGcsUri`
        # @return [String]
        attr_accessor :warehouse_gcs_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @endpoints = args[:endpoints] if args.key?(:endpoints)
          @hive_metastore_config = args[:hive_metastore_config] if args.key?(:hive_metastore_config)
          @labels = args[:labels] if args.key?(:labels)
          @metadata_integration = args[:metadata_integration] if args.key?(:metadata_integration)
          @name = args[:name] if args.key?(:name)
          @scaling_config = args[:scaling_config] if args.key?(:scaling_config)
          @scheduled_backup = args[:scheduled_backup] if args.key?(:scheduled_backup)
          @state = args[:state] if args.key?(:state)
          @state_message = args[:state_message] if args.key?(:state_message)
          @uid = args[:uid] if args.key?(:uid)
          @update_time = args[:update_time] if args.key?(:update_time)
          @warehouse_gcs_uri = args[:warehouse_gcs_uri] if args.key?(:warehouse_gcs_uri)
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
        # @return [Google::Apis::MetastoreV2::GoogleRpcStatus]
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
    end
  end
end
