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
    module MigrationcenterV1alpha1
      
      # A request to add assets to a group.
      class AddAssetsToGroupRequest
        include Google::Apis::Core::Hashable
      
        # Optional. When this value is set to `false` and one of the given assets is
        # already an existing member of the group, the operation fails with an `Already
        # Exists` error. When set to `true` this situation is silently ignored by the
        # server. Default value is `false`.
        # Corresponds to the JSON property `allowExisting`
        # @return [Boolean]
        attr_accessor :allow_existing
        alias_method :allow_existing?, :allow_existing
      
        # Lists the asset IDs of all assets.
        # Corresponds to the JSON property `assets`
        # @return [Google::Apis::MigrationcenterV1alpha1::AssetList]
        attr_accessor :assets
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_existing = args[:allow_existing] if args.key?(:allow_existing)
          @assets = args[:assets] if args.key?(:assets)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A request to aggregate one or more values.
      class AggregateAssetsValuesRequest
        include Google::Apis::Core::Hashable
      
        # Array of aggregations to perform. Up to 25 aggregations can be defined.
        # Corresponds to the JSON property `aggregations`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Aggregation>]
        attr_accessor :aggregations
      
        # The aggregation will be performed on assets that match the provided filter.
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregations = args[:aggregations] if args.key?(:aggregations)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # A response to a request to aggregated assets values.
      class AggregateAssetsValuesResponse
        include Google::Apis::Core::Hashable
      
        # The aggregation results.
        # Corresponds to the JSON property `results`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::AggregationResult>]
        attr_accessor :results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @results = args[:results] if args.key?(:results)
        end
      end
      
      # Message describing an aggregation. The message includes the aggregation type,
      # parameters, and the field on which to perform the aggregation.
      class Aggregation
        include Google::Apis::Core::Hashable
      
        # Object count.
        # Corresponds to the JSON property `count`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationCount]
        attr_accessor :count
      
        # The name of the field on which to aggregate.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # Frequency distribution of all field values.
        # Corresponds to the JSON property `frequency`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationFrequency]
        attr_accessor :frequency
      
        # Histogram of bucketed assets counts by field value.
        # Corresponds to the JSON property `histogram`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationHistogram]
        attr_accessor :histogram
      
        # Sum of field values.
        # Corresponds to the JSON property `sum`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationSum]
        attr_accessor :sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @field = args[:field] if args.key?(:field)
          @frequency = args[:frequency] if args.key?(:frequency)
          @histogram = args[:histogram] if args.key?(:histogram)
          @sum = args[:sum] if args.key?(:sum)
        end
      end
      
      # Object count.
      class AggregationCount
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Frequency distribution of all field values.
      class AggregationFrequency
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Histogram of bucketed assets counts by field value.
      class AggregationHistogram
        include Google::Apis::Core::Hashable
      
        # Lower bounds of buckets. The response will contain `n+1` buckets for `n`
        # bounds. The first bucket will count all assets for which the field value is
        # smaller than the first bound. Subsequent buckets will count assets for which
        # the field value is greater or equal to a lower bound and smaller than the next
        # one. The last bucket will count assets for which the field value is greater or
        # equal to the final lower bound. You can define up to 20 lower bounds.
        # Corresponds to the JSON property `lowerBounds`
        # @return [Array<Float>]
        attr_accessor :lower_bounds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lower_bounds = args[:lower_bounds] if args.key?(:lower_bounds)
        end
      end
      
      # Message describing a result of an aggregation.
      class AggregationResult
        include Google::Apis::Core::Hashable
      
        # The result of a count aggregation.
        # Corresponds to the JSON property `count`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationResultCount]
        attr_accessor :count
      
        # 
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # The result of a frequency distribution aggregation.
        # Corresponds to the JSON property `frequency`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationResultFrequency]
        attr_accessor :frequency
      
        # The result of a bucketed histogram aggregation.
        # Corresponds to the JSON property `histogram`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogram]
        attr_accessor :histogram
      
        # The result of a sum aggregation.
        # Corresponds to the JSON property `sum`
        # @return [Google::Apis::MigrationcenterV1alpha1::AggregationResultSum]
        attr_accessor :sum
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @field = args[:field] if args.key?(:field)
          @frequency = args[:frequency] if args.key?(:frequency)
          @histogram = args[:histogram] if args.key?(:histogram)
          @sum = args[:sum] if args.key?(:sum)
        end
      end
      
      # The result of a count aggregation.
      class AggregationResultCount
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Fixnum]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # The result of a frequency distribution aggregation.
      class AggregationResultFrequency
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `values`
        # @return [Hash<String,Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # The result of a bucketed histogram aggregation.
      class AggregationResultHistogram
        include Google::Apis::Core::Hashable
      
        # Buckets in the histogram. There will be `n+1` buckets matching `n` lower
        # bounds in the request. The first bucket will be from -infinity to the first
        # bound. Subsequent buckets will be between one bound and the next. The final
        # bucket will be from the final bound to infinity.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogramBucket>]
        attr_accessor :buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
        end
      end
      
      # A histogram bucket with a lower and upper bound, and a count of items with a
      # field value between those bounds. The lower bound is inclusive and the upper
      # bound is exclusive. Lower bound may be -infinity and upper bound may be
      # infinity.
      class AggregationResultHistogramBucket
        include Google::Apis::Core::Hashable
      
        # Count of items in the bucket.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Lower bound - inclusive.
        # Corresponds to the JSON property `lowerBound`
        # @return [Float]
        attr_accessor :lower_bound
      
        # Upper bound - exclusive.
        # Corresponds to the JSON property `upperBound`
        # @return [Float]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # The result of a sum aggregation.
      class AggregationResultSum
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Sum of field values.
      class AggregationSum
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An asset represents a resource in your environment. Asset types include
      # virtual machines and databases.
      class Asset
        include Google::Apis::Core::Hashable
      
        # Output only. The list of groups that the asset is assigned to.
        # Corresponds to the JSON property `assignedGroups`
        # @return [Array<String>]
        attr_accessor :assigned_groups
      
        # Generic asset attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Output only. The timestamp when the asset was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Message containing insights list.
        # Corresponds to the JSON property `insightList`
        # @return [Google::Apis::MigrationcenterV1alpha1::InsightList]
        attr_accessor :insight_list
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The full name of the asset.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Performance data for an asset.
        # Corresponds to the JSON property `performanceData`
        # @return [Google::Apis::MigrationcenterV1alpha1::AssetPerformanceData]
        attr_accessor :performance_data
      
        # Output only. The list of sources contributing to the asset.
        # Corresponds to the JSON property `sources`
        # @return [Array<String>]
        attr_accessor :sources
      
        # Output only. The timestamp when the asset was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Details of a VirtualMachine.
        # Corresponds to the JSON property `virtualMachineDetails`
        # @return [Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails]
        attr_accessor :virtual_machine_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assigned_groups = args[:assigned_groups] if args.key?(:assigned_groups)
          @attributes = args[:attributes] if args.key?(:attributes)
          @create_time = args[:create_time] if args.key?(:create_time)
          @insight_list = args[:insight_list] if args.key?(:insight_list)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @performance_data = args[:performance_data] if args.key?(:performance_data)
          @sources = args[:sources] if args.key?(:sources)
          @update_time = args[:update_time] if args.key?(:update_time)
          @virtual_machine_details = args[:virtual_machine_details] if args.key?(:virtual_machine_details)
        end
      end
      
      # Contains data reported from an inventory source on an asset.
      class AssetFrame
        include Google::Apis::Core::Hashable
      
        # Generic asset attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Asset performance data samples.
        # Corresponds to the JSON property `performanceSamples`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::PerformanceSample>]
        attr_accessor :performance_samples
      
        # The time the data was reported.
        # Corresponds to the JSON property `reportTime`
        # @return [String]
        attr_accessor :report_time
      
        # Optional. Trace token is optionally provided to assist with debugging and
        # traceability.
        # Corresponds to the JSON property `traceToken`
        # @return [String]
        attr_accessor :trace_token
      
        # Details of a VirtualMachine.
        # Corresponds to the JSON property `virtualMachineDetails`
        # @return [Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails]
        attr_accessor :virtual_machine_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @labels = args[:labels] if args.key?(:labels)
          @performance_samples = args[:performance_samples] if args.key?(:performance_samples)
          @report_time = args[:report_time] if args.key?(:report_time)
          @trace_token = args[:trace_token] if args.key?(:trace_token)
          @virtual_machine_details = args[:virtual_machine_details] if args.key?(:virtual_machine_details)
        end
      end
      
      # Lists the asset IDs of all assets.
      class AssetList
        include Google::Apis::Core::Hashable
      
        # Required. A list of asset IDs
        # Corresponds to the JSON property `assetIds`
        # @return [Array<String>]
        attr_accessor :asset_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_ids = args[:asset_ids] if args.key?(:asset_ids)
        end
      end
      
      # Performance data for an asset.
      class AssetPerformanceData
        include Google::Apis::Core::Hashable
      
        # Daily resource usage aggregations. Contains all of the data available for an
        # asset, up to the last 420 days.
        # Corresponds to the JSON property `dailyResourceUsageAggregations`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregation>]
        attr_accessor :daily_resource_usage_aggregations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @daily_resource_usage_aggregations = args[:daily_resource_usage_aggregations] if args.key?(:daily_resource_usage_aggregations)
        end
      end
      
      # AWS EC2 specific details.
      class AwsEc2PlatformDetails
        include Google::Apis::Core::Hashable
      
        # The location of the machine in the AWS format.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # AWS platform's machine type label.
        # Corresponds to the JSON property `machineTypeLabel`
        # @return [String]
        attr_accessor :machine_type_label
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @machine_type_label = args[:machine_type_label] if args.key?(:machine_type_label)
        end
      end
      
      # Azure VM specific details.
      class AzureVmPlatformDetails
        include Google::Apis::Core::Hashable
      
        # The location of the machine in the Azure format.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Azure platform's machine type label.
        # Corresponds to the JSON property `machineTypeLabel`
        # @return [String]
        attr_accessor :machine_type_label
      
        # Azure platform's provisioning state.
        # Corresponds to the JSON property `provisioningState`
        # @return [String]
        attr_accessor :provisioning_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
          @machine_type_label = args[:machine_type_label] if args.key?(:machine_type_label)
          @provisioning_state = args[:provisioning_state] if args.key?(:provisioning_state)
        end
      end
      
      # A request to delete a list of asset.
      class BatchDeleteAssetsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. When this value is set to `true` the request is a no-op for non-
        # existing assets. See https://google.aip.dev/135#delete-if-existing for
        # additional details. Default value is `false`.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Required. The IDs of the assets to delete. A maximum of 1000 assets can be
        # deleted in a batch. format: projects/`project`/locations/`location`/asset/`
        # name`.
        # Corresponds to the JSON property `names`
        # @return [Array<String>]
        attr_accessor :names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @names = args[:names] if args.key?(:names)
        end
      end
      
      # A request to update a list of assets.
      class BatchUpdateAssetsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The request message specifying the resources to update. A maximum of
        # 1000 assets can be modified in a batch.
        # Corresponds to the JSON property `requests`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::UpdateAssetRequest>]
        attr_accessor :requests
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @requests = args[:requests] if args.key?(:requests)
        end
      end
      
      # Response for updating a list of assets.
      class BatchUpdateAssetsResponse
        include Google::Apis::Core::Hashable
      
        # Update asset content. The content only includes values after field mask being
        # applied.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Asset>]
        attr_accessor :assets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assets = args[:assets] if args.key?(:assets)
        end
      end
      
      # Details about the BIOS.
      class BiosDetails
        include Google::Apis::Core::Hashable
      
        # BIOS manufacturer.
        # Corresponds to the JSON property `biosManufacturer`
        # @return [String]
        attr_accessor :bios_manufacturer
      
        # BIOS name.
        # Corresponds to the JSON property `biosName`
        # @return [String]
        attr_accessor :bios_name
      
        # BIOS release date.
        # Corresponds to the JSON property `biosReleaseDate`
        # @return [String]
        attr_accessor :bios_release_date
      
        # BIOS version.
        # Corresponds to the JSON property `biosVersion`
        # @return [String]
        attr_accessor :bios_version
      
        # SMBIOS UUID.
        # Corresponds to the JSON property `smbiosUuid`
        # @return [String]
        attr_accessor :smbios_uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bios_manufacturer = args[:bios_manufacturer] if args.key?(:bios_manufacturer)
          @bios_name = args[:bios_name] if args.key?(:bios_name)
          @bios_release_date = args[:bios_release_date] if args.key?(:bios_release_date)
          @bios_version = args[:bios_version] if args.key?(:bios_version)
          @smbios_uuid = args[:smbios_uuid] if args.key?(:smbios_uuid)
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
      
      # Compute engine migration target.
      class ComputeEngineMigrationTarget
        include Google::Apis::Core::Hashable
      
        # Compute Engine target shape descriptor.
        # Corresponds to the JSON property `shape`
        # @return [Google::Apis::MigrationcenterV1alpha1::ComputeEngineShapeDescriptor]
        attr_accessor :shape
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @shape = args[:shape] if args.key?(:shape)
        end
      end
      
      # The user preferences relating to Compute Engine target platform.
      class ComputeEnginePreferences
        include Google::Apis::Core::Hashable
      
        # License type to consider when calculating costs for virtual machine insights
        # and recommendations. If unspecified, costs are calculated based on the default
        # licensing plan.
        # Corresponds to the JSON property `licenseType`
        # @return [String]
        attr_accessor :license_type
      
        # The type of machines to consider when calculating virtual machine migration
        # insights and recommendations. Not all machine types are available in all zones
        # and regions.
        # Corresponds to the JSON property `machinePreferences`
        # @return [Google::Apis::MigrationcenterV1alpha1::MachinePreferences]
        attr_accessor :machine_preferences
      
        # Persistent disk type to use. If unspecified (default), all types are
        # considered, based on available usage data.
        # Corresponds to the JSON property `persistentDiskType`
        # @return [String]
        attr_accessor :persistent_disk_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @license_type = args[:license_type] if args.key?(:license_type)
          @machine_preferences = args[:machine_preferences] if args.key?(:machine_preferences)
          @persistent_disk_type = args[:persistent_disk_type] if args.key?(:persistent_disk_type)
        end
      end
      
      # Compute Engine target shape descriptor.
      class ComputeEngineShapeDescriptor
        include Google::Apis::Core::Hashable
      
        # Number of logical cores.
        # Corresponds to the JSON property `logicalCoreCount`
        # @return [Fixnum]
        attr_accessor :logical_core_count
      
        # Compute Engine machine type.
        # Corresponds to the JSON property `machineType`
        # @return [String]
        attr_accessor :machine_type
      
        # Memory in mebibytes.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # Number of physical cores.
        # Corresponds to the JSON property `physicalCoreCount`
        # @return [Fixnum]
        attr_accessor :physical_core_count
      
        # Compute Engine machine series.
        # Corresponds to the JSON property `series`
        # @return [String]
        attr_accessor :series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @logical_core_count = args[:logical_core_count] if args.key?(:logical_core_count)
          @machine_type = args[:machine_type] if args.key?(:machine_type)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @physical_core_count = args[:physical_core_count] if args.key?(:physical_core_count)
          @series = args[:series] if args.key?(:series)
        end
      end
      
      # CPU usage sample.
      class CpuUsageSample
        include Google::Apis::Core::Hashable
      
        # Percentage of total CPU capacity utilized. Must be in the interval [0, 100].
        # On most systems can be calculated using 100 - idle percentage.
        # Corresponds to the JSON property `utilizedPercentage`
        # @return [Float]
        attr_accessor :utilized_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilized_percentage = args[:utilized_percentage] if args.key?(:utilized_percentage)
        end
      end
      
      # Usage data aggregation for a single day.
      class DailyResourceUsageAggregation
        include Google::Apis::Core::Hashable
      
        # Statistical aggregation of CPU usage.
        # Corresponds to the JSON property `cpu`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationCpu]
        attr_accessor :cpu
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `date`
        # @return [Google::Apis::MigrationcenterV1alpha1::Date]
        attr_accessor :date
      
        # Statistical aggregation of disk usage.
        # Corresponds to the JSON property `disk`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationDisk]
        attr_accessor :disk
      
        # Statistical aggregation of memory usage.
        # Corresponds to the JSON property `memory`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationMemory]
        attr_accessor :memory
      
        # Statistical aggregation of network usage.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationNetwork]
        attr_accessor :network
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @date = args[:date] if args.key?(:date)
          @disk = args[:disk] if args.key?(:disk)
          @memory = args[:memory] if args.key?(:memory)
          @network = args[:network] if args.key?(:network)
        end
      end
      
      # Statistical aggregation of CPU usage.
      class DailyResourceUsageAggregationCpu
        include Google::Apis::Core::Hashable
      
        # Statistical aggregation of samples for a single resource usage.
        # Corresponds to the JSON property `utilizationPercentage`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats]
        attr_accessor :utilization_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_percentage = args[:utilization_percentage] if args.key?(:utilization_percentage)
        end
      end
      
      # Statistical aggregation of disk usage.
      class DailyResourceUsageAggregationDisk
        include Google::Apis::Core::Hashable
      
        # Statistical aggregation of samples for a single resource usage.
        # Corresponds to the JSON property `iops`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats]
        attr_accessor :iops
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @iops = args[:iops] if args.key?(:iops)
        end
      end
      
      # Statistical aggregation of memory usage.
      class DailyResourceUsageAggregationMemory
        include Google::Apis::Core::Hashable
      
        # Statistical aggregation of samples for a single resource usage.
        # Corresponds to the JSON property `utilizationPercentage`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats]
        attr_accessor :utilization_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilization_percentage = args[:utilization_percentage] if args.key?(:utilization_percentage)
        end
      end
      
      # Statistical aggregation of network usage.
      class DailyResourceUsageAggregationNetwork
        include Google::Apis::Core::Hashable
      
        # Statistical aggregation of samples for a single resource usage.
        # Corresponds to the JSON property `egressBps`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats]
        attr_accessor :egress_bps
      
        # Statistical aggregation of samples for a single resource usage.
        # Corresponds to the JSON property `ingressBps`
        # @return [Google::Apis::MigrationcenterV1alpha1::DailyResourceUsageAggregationStats]
        attr_accessor :ingress_bps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_bps = args[:egress_bps] if args.key?(:egress_bps)
          @ingress_bps = args[:ingress_bps] if args.key?(:ingress_bps)
        end
      end
      
      # Statistical aggregation of samples for a single resource usage.
      class DailyResourceUsageAggregationStats
        include Google::Apis::Core::Hashable
      
        # Average usage value.
        # Corresponds to the JSON property `average`
        # @return [Float]
        attr_accessor :average
      
        # Median usage value.
        # Corresponds to the JSON property `median`
        # @return [Float]
        attr_accessor :median
      
        # 95th percentile usage value.
        # Corresponds to the JSON property `ninteyFifthPercentile`
        # @return [Float]
        attr_accessor :nintey_fifth_percentile
      
        # Peak usage value.
        # Corresponds to the JSON property `peak`
        # @return [Float]
        attr_accessor :peak
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average = args[:average] if args.key?(:average)
          @median = args[:median] if args.key?(:median)
          @nintey_fifth_percentile = args[:nintey_fifth_percentile] if args.key?(:nintey_fifth_percentile)
          @peak = args[:peak] if args.key?(:peak)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class DateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::MigrationcenterV1alpha1::TimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # Single disk entry.
      class DiskEntry
        include Google::Apis::Core::Hashable
      
        # Disk label.
        # Corresponds to the JSON property `diskLabel`
        # @return [String]
        attr_accessor :disk_label
      
        # Disk label type (e.g. BIOS/GPT)
        # Corresponds to the JSON property `diskLabelType`
        # @return [String]
        attr_accessor :disk_label_type
      
        # Disk hardware address (e.g. 0:1 for SCSI).
        # Corresponds to the JSON property `hwAddress`
        # @return [String]
        attr_accessor :hw_address
      
        # Disks interface type (e.g. SATA/SCSI)
        # Corresponds to the JSON property `interfaceType`
        # @return [String]
        attr_accessor :interface_type
      
        # Disk partition list.
        # Corresponds to the JSON property `partitions`
        # @return [Google::Apis::MigrationcenterV1alpha1::DiskPartitionList]
        attr_accessor :partitions
      
        # Disk status (e.g. online).
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Disk capacity.
        # Corresponds to the JSON property `totalCapacityBytes`
        # @return [Fixnum]
        attr_accessor :total_capacity_bytes
      
        # Disk free space.
        # Corresponds to the JSON property `totalFreeBytes`
        # @return [Fixnum]
        attr_accessor :total_free_bytes
      
        # VMware disk config details.
        # Corresponds to the JSON property `vmwareConfig`
        # @return [Google::Apis::MigrationcenterV1alpha1::VmwareDiskConfig]
        attr_accessor :vmware_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disk_label = args[:disk_label] if args.key?(:disk_label)
          @disk_label_type = args[:disk_label_type] if args.key?(:disk_label_type)
          @hw_address = args[:hw_address] if args.key?(:hw_address)
          @interface_type = args[:interface_type] if args.key?(:interface_type)
          @partitions = args[:partitions] if args.key?(:partitions)
          @status = args[:status] if args.key?(:status)
          @total_capacity_bytes = args[:total_capacity_bytes] if args.key?(:total_capacity_bytes)
          @total_free_bytes = args[:total_free_bytes] if args.key?(:total_free_bytes)
          @vmware_config = args[:vmware_config] if args.key?(:vmware_config)
        end
      end
      
      # VM disks.
      class DiskEntryList
        include Google::Apis::Core::Hashable
      
        # Disk entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::DiskEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Disk Partition details.
      class DiskPartition
        include Google::Apis::Core::Hashable
      
        # Partition capacity.
        # Corresponds to the JSON property `capacityBytes`
        # @return [Fixnum]
        attr_accessor :capacity_bytes
      
        # Partition file system.
        # Corresponds to the JSON property `fileSystem`
        # @return [String]
        attr_accessor :file_system
      
        # Partition free space.
        # Corresponds to the JSON property `freeBytes`
        # @return [Fixnum]
        attr_accessor :free_bytes
      
        # Mount pount (Linux/Windows) or drive letter (Windows).
        # Corresponds to the JSON property `mountPoint`
        # @return [String]
        attr_accessor :mount_point
      
        # Disk partition list.
        # Corresponds to the JSON property `subPartitions`
        # @return [Google::Apis::MigrationcenterV1alpha1::DiskPartitionList]
        attr_accessor :sub_partitions
      
        # Partition type (e.g. BIOS boot).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Partition UUID.
        # Corresponds to the JSON property `uuid`
        # @return [String]
        attr_accessor :uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_bytes = args[:capacity_bytes] if args.key?(:capacity_bytes)
          @file_system = args[:file_system] if args.key?(:file_system)
          @free_bytes = args[:free_bytes] if args.key?(:free_bytes)
          @mount_point = args[:mount_point] if args.key?(:mount_point)
          @sub_partitions = args[:sub_partitions] if args.key?(:sub_partitions)
          @type = args[:type] if args.key?(:type)
          @uuid = args[:uuid] if args.key?(:uuid)
        end
      end
      
      # Disk partition list.
      class DiskPartitionList
        include Google::Apis::Core::Hashable
      
        # Partition entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::DiskPartition>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Disk usage sample. Values are across all disks.
      class DiskUsageSample
        include Google::Apis::Core::Hashable
      
        # Average IOPS sampled over a short window. Must be non-negative.
        # Corresponds to the JSON property `averageIops`
        # @return [Float]
        attr_accessor :average_iops
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_iops = args[:average_iops] if args.key?(:average_iops)
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
      
      # Message representing a frame which failed to be processed due to an error.
      class ErrorFrame
        include Google::Apis::Core::Hashable
      
        # Output only. Frame ingestion time.
        # Corresponds to the JSON property `ingestionTime`
        # @return [String]
        attr_accessor :ingestion_time
      
        # Output only. The identifier of the ErrorFrame.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Contains data reported from an inventory source on an asset.
        # Corresponds to the JSON property `originalFrame`
        # @return [Google::Apis::MigrationcenterV1alpha1::AssetFrame]
        attr_accessor :original_frame
      
        # Output only. All the violations that were detected for the frame.
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::FrameViolationEntry>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ingestion_time = args[:ingestion_time] if args.key?(:ingestion_time)
          @name = args[:name] if args.key?(:name)
          @original_frame = args[:original_frame] if args.key?(:original_frame)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # A resource that reports result of the import job execution.
      class ExecutionReport
        include Google::Apis::Core::Hashable
      
        # A resource that aggregates errors across import job files.
        # Corresponds to the JSON property `executionErrors`
        # @return [Google::Apis::MigrationcenterV1alpha1::ValidationReport]
        attr_accessor :execution_errors
      
        # Total number of asset frames reported for the import job.
        # Corresponds to the JSON property `framesReported`
        # @return [Fixnum]
        attr_accessor :frames_reported
      
        # List of job-level errors. Deprecated, use the job errors under
        # execution_errors instead.
        # Corresponds to the JSON property `jobErrors`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ImportError>]
        attr_accessor :job_errors
      
        # Total number of rows in the import job.
        # Corresponds to the JSON property `totalRowsCount`
        # @return [Fixnum]
        attr_accessor :total_rows_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @execution_errors = args[:execution_errors] if args.key?(:execution_errors)
          @frames_reported = args[:frames_reported] if args.key?(:frames_reported)
          @job_errors = args[:job_errors] if args.key?(:job_errors)
          @total_rows_count = args[:total_rows_count] if args.key?(:total_rows_count)
        end
      end
      
      # A resource that aggregates the validation errors found in an import job file.
      class FileValidationReport
        include Google::Apis::Core::Hashable
      
        # List of file level errors.
        # Corresponds to the JSON property `fileErrors`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ImportError>]
        attr_accessor :file_errors
      
        # The name of the file.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Flag indicating that processing was aborted due to maximum number of errors.
        # Corresponds to the JSON property `partialReport`
        # @return [Boolean]
        attr_accessor :partial_report
        alias_method :partial_report?, :partial_report
      
        # Partial list of rows that encountered validation error.
        # Corresponds to the JSON property `rowErrors`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ImportRowError>]
        attr_accessor :row_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_errors = args[:file_errors] if args.key?(:file_errors)
          @file_name = args[:file_name] if args.key?(:file_name)
          @partial_report = args[:partial_report] if args.key?(:partial_report)
          @row_errors = args[:row_errors] if args.key?(:row_errors)
        end
      end
      
      # Describes the fit level of an asset for migration to a specific target.
      class FitDescriptor
        include Google::Apis::Core::Hashable
      
        # Fit level.
        # Corresponds to the JSON property `fitLevel`
        # @return [String]
        attr_accessor :fit_level
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fit_level = args[:fit_level] if args.key?(:fit_level)
        end
      end
      
      # A resource that contains a single violation of a reported `AssetFrame`
      # resource.
      class FrameViolationEntry
        include Google::Apis::Core::Hashable
      
        # The field of the original frame where the violation occurred.
        # Corresponds to the JSON property `field`
        # @return [String]
        attr_accessor :field
      
        # A message describing the violation.
        # Corresponds to the JSON property `violation`
        # @return [String]
        attr_accessor :violation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @violation = args[:violation] if args.key?(:violation)
        end
      end
      
      # Collection of frame data.
      class Frames
        include Google::Apis::Core::Hashable
      
        # A repeated field of asset data.
        # Corresponds to the JSON property `framesData`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::AssetFrame>]
        attr_accessor :frames_data
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frames_data = args[:frames_data] if args.key?(:frames_data)
        end
      end
      
      # Single fstab entry.
      class FstabEntry
        include Google::Apis::Core::Hashable
      
        # The mount point for the filesystem.
        # Corresponds to the JSON property `file`
        # @return [String]
        attr_accessor :file
      
        # Used by dump to determine which filesystems need to be dumped.
        # Corresponds to the JSON property `freq`
        # @return [Fixnum]
        attr_accessor :freq
      
        # Mount options associated with the filesystem.
        # Corresponds to the JSON property `mntops`
        # @return [String]
        attr_accessor :mntops
      
        # Used by the fsck(8) program to determine the order in which filesystem checks
        # are done at reboot time.
        # Corresponds to the JSON property `passno`
        # @return [Fixnum]
        attr_accessor :passno
      
        # The block special device or remote filesystem to be mounted.
        # Corresponds to the JSON property `spec`
        # @return [String]
        attr_accessor :spec
      
        # The type of the filesystem.
        # Corresponds to the JSON property `vfstype`
        # @return [String]
        attr_accessor :vfstype
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file = args[:file] if args.key?(:file)
          @freq = args[:freq] if args.key?(:freq)
          @mntops = args[:mntops] if args.key?(:mntops)
          @passno = args[:passno] if args.key?(:passno)
          @spec = args[:spec] if args.key?(:spec)
          @vfstype = args[:vfstype] if args.key?(:vfstype)
        end
      end
      
      # Fstab content.
      class FstabEntryList
        include Google::Apis::Core::Hashable
      
        # Fstab entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::FstabEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A resource that represents a payload hosted on Google Cloud Storage.
      class GcsPayloadInfo
        include Google::Apis::Core::Hashable
      
        # The import job format.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # The payload path in Google Cloud Storage.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @path = args[:path] if args.key?(:path)
        end
      end
      
      # Generic platform details.
      class GenericPlatformDetails
        include Google::Apis::Core::Hashable
      
        # Free text representation of the machine location. The format of this field
        # should not be relied on. Different VMs in the same location may have different
        # string values for this field.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # GKE migration target.
      class GoogleKubernetesEngineMigrationTarget
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A resource that represents an asset group. The purpose of an asset group is to
      # bundle a set of assets that have something in common, while allowing users to
      # add annotations to the group. An asset can belong to multiple groups.
      class Group
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the group was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The description of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The name of the group.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the group was last updated.
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
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Guest OS config information.
      class GuestConfigDetails
        include Google::Apis::Core::Hashable
      
        # Fstab content.
        # Corresponds to the JSON property `fstab`
        # @return [Google::Apis::MigrationcenterV1alpha1::FstabEntryList]
        attr_accessor :fstab
      
        # Hosts content.
        # Corresponds to the JSON property `hosts`
        # @return [Google::Apis::MigrationcenterV1alpha1::HostsEntryList]
        attr_accessor :hosts
      
        # OS issue (typically /etc/issue in Linux).
        # Corresponds to the JSON property `issue`
        # @return [String]
        attr_accessor :issue
      
        # NFS exports.
        # Corresponds to the JSON property `nfsExports`
        # @return [Google::Apis::MigrationcenterV1alpha1::NfsExportList]
        attr_accessor :nfs_exports
      
        # SELinux details.
        # Corresponds to the JSON property `selinux`
        # @return [Google::Apis::MigrationcenterV1alpha1::Selinux]
        attr_accessor :selinux
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fstab = args[:fstab] if args.key?(:fstab)
          @hosts = args[:hosts] if args.key?(:hosts)
          @issue = args[:issue] if args.key?(:issue)
          @nfs_exports = args[:nfs_exports] if args.key?(:nfs_exports)
          @selinux = args[:selinux] if args.key?(:selinux)
        end
      end
      
      # Guest installed application information.
      class GuestInstalledApplication
        include Google::Apis::Core::Hashable
      
        # Installed application name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Source path.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Date application was installed.
        # Corresponds to the JSON property `time`
        # @return [String]
        attr_accessor :time
      
        # Installed application vendor.
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        # Installed application version.
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @path = args[:path] if args.key?(:path)
          @time = args[:time] if args.key?(:time)
          @vendor = args[:vendor] if args.key?(:vendor)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Guest installed application list.
      class GuestInstalledApplicationList
        include Google::Apis::Core::Hashable
      
        # Application entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplication>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Information from Guest-level collections.
      class GuestOsDetails
        include Google::Apis::Core::Hashable
      
        # Guest OS config information.
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::MigrationcenterV1alpha1::GuestConfigDetails]
        attr_accessor :config
      
        # Guest OS runtime information.
        # Corresponds to the JSON property `runtime`
        # @return [Google::Apis::MigrationcenterV1alpha1::GuestRuntimeDetails]
        attr_accessor :runtime
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @runtime = args[:runtime] if args.key?(:runtime)
        end
      end
      
      # Guest OS runtime information.
      class GuestRuntimeDetails
        include Google::Apis::Core::Hashable
      
        # Domain, e.g. c.stratozone-development.internal.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Guest installed application list.
        # Corresponds to the JSON property `installedApps`
        # @return [Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplicationList]
        attr_accessor :installed_apps
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `lastUptime`
        # @return [Google::Apis::MigrationcenterV1alpha1::Date]
        attr_accessor :last_uptime
      
        # Machine name.
        # Corresponds to the JSON property `machineName`
        # @return [String]
        attr_accessor :machine_name
      
        # Runtime networking information.
        # Corresponds to the JSON property `networkInfo`
        # @return [Google::Apis::MigrationcenterV1alpha1::RuntimeNetworkInfo]
        attr_accessor :network_info
      
        # Open file list.
        # Corresponds to the JSON property `openFileList`
        # @return [Google::Apis::MigrationcenterV1alpha1::OpenFileList]
        attr_accessor :open_file_list
      
        # List of running guest OS processes.
        # Corresponds to the JSON property `processes`
        # @return [Google::Apis::MigrationcenterV1alpha1::RunningProcessList]
        attr_accessor :processes
      
        # List of running guest OS services.
        # Corresponds to the JSON property `services`
        # @return [Google::Apis::MigrationcenterV1alpha1::RunningServiceList]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain = args[:domain] if args.key?(:domain)
          @installed_apps = args[:installed_apps] if args.key?(:installed_apps)
          @last_uptime = args[:last_uptime] if args.key?(:last_uptime)
          @machine_name = args[:machine_name] if args.key?(:machine_name)
          @network_info = args[:network_info] if args.key?(:network_info)
          @open_file_list = args[:open_file_list] if args.key?(:open_file_list)
          @processes = args[:processes] if args.key?(:processes)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # Single /etc/hosts entry.
      class HostsEntry
        include Google::Apis::Core::Hashable
      
        # List of host names / aliases.
        # Corresponds to the JSON property `hostNames`
        # @return [Array<String>]
        attr_accessor :host_names
      
        # IP (raw, IPv4/6 agnostic).
        # Corresponds to the JSON property `ip`
        # @return [String]
        attr_accessor :ip
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @host_names = args[:host_names] if args.key?(:host_names)
          @ip = args[:ip] if args.key?(:ip)
        end
      end
      
      # Hosts content.
      class HostsEntryList
        include Google::Apis::Core::Hashable
      
        # Hosts entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::HostsEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # A resource that represents a payload file in an import job.
      class ImportDataFile
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the file was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-friendly display name. Maximum length is 63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. The payload format.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Output only. The name of the file.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the import data file.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # A resource that contains a URI to which a data file can be uploaded.
        # Corresponds to the JSON property `uploadFileInfo`
        # @return [Google::Apis::MigrationcenterV1alpha1::UploadFileInfo]
        attr_accessor :upload_file_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @format = args[:format] if args.key?(:format)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @upload_file_info = args[:upload_file_info] if args.key?(:upload_file_info)
        end
      end
      
      # A resource that reports the errors encountered while processing an import job.
      class ImportError
        include Google::Apis::Core::Hashable
      
        # The error information.
        # Corresponds to the JSON property `errorDetails`
        # @return [String]
        attr_accessor :error_details
      
        # The severity of the error.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_details = args[:error_details] if args.key?(:error_details)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # A resource that represents the background job that imports asset frames.
      class ImportJob
        include Google::Apis::Core::Hashable
      
        # Required. Reference to a source.
        # Corresponds to the JSON property `assetSource`
        # @return [String]
        attr_accessor :asset_source
      
        # Output only. The timestamp when the import job was completed.
        # Corresponds to the JSON property `completeTime`
        # @return [String]
        attr_accessor :complete_time
      
        # Output only. The timestamp when the import job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # User-friendly display name. Maximum length is 63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A resource that reports result of the import job execution.
        # Corresponds to the JSON property `executionReport`
        # @return [Google::Apis::MigrationcenterV1alpha1::ExecutionReport]
        attr_accessor :execution_report
      
        # A resource that represents a payload hosted on Google Cloud Storage.
        # Corresponds to the JSON property `gcsPayload`
        # @return [Google::Apis::MigrationcenterV1alpha1::GcsPayloadInfo]
        attr_accessor :gcs_payload
      
        # A resource that represents the inline import job payload.
        # Corresponds to the JSON property `inlinePayload`
        # @return [Google::Apis::MigrationcenterV1alpha1::InlinePayloadInfo]
        attr_accessor :inline_payload
      
        # Labels as key value pairs.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Output only. The full name of the import job.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the import job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The timestamp when the import job was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # A resource that aggregates errors across import job files.
        # Corresponds to the JSON property `validationReport`
        # @return [Google::Apis::MigrationcenterV1alpha1::ValidationReport]
        attr_accessor :validation_report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_source = args[:asset_source] if args.key?(:asset_source)
          @complete_time = args[:complete_time] if args.key?(:complete_time)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @execution_report = args[:execution_report] if args.key?(:execution_report)
          @gcs_payload = args[:gcs_payload] if args.key?(:gcs_payload)
          @inline_payload = args[:inline_payload] if args.key?(:inline_payload)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @validation_report = args[:validation_report] if args.key?(:validation_report)
        end
      end
      
      # A resource that reports the import job errors at row level.
      class ImportRowError
        include Google::Apis::Core::Hashable
      
        # The list of errors detected in the row.
        # Corresponds to the JSON property `errors`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ImportError>]
        attr_accessor :errors
      
        # The row number where the error was detected.
        # Corresponds to the JSON property `rowNumber`
        # @return [Fixnum]
        attr_accessor :row_number
      
        # The name of the VM in the row.
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        # The VM UUID.
        # Corresponds to the JSON property `vmUuid`
        # @return [String]
        attr_accessor :vm_uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @errors = args[:errors] if args.key?(:errors)
          @row_number = args[:row_number] if args.key?(:row_number)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
          @vm_uuid = args[:vm_uuid] if args.key?(:vm_uuid)
        end
      end
      
      # A resource that represents the inline import job payload.
      class InlinePayloadInfo
        include Google::Apis::Core::Hashable
      
        # The import job format.
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # List of payload files.
        # Corresponds to the JSON property `payload`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::PayloadFile>]
        attr_accessor :payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @format = args[:format] if args.key?(:format)
          @payload = args[:payload] if args.key?(:payload)
        end
      end
      
      # An insight about an asset.
      class Insight
        include Google::Apis::Core::Hashable
      
        # An insight about potential migrations for an asset.
        # Corresponds to the JSON property `migrationInsight`
        # @return [Google::Apis::MigrationcenterV1alpha1::MigrationInsight]
        attr_accessor :migration_insight
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @migration_insight = args[:migration_insight] if args.key?(:migration_insight)
        end
      end
      
      # Message containing insights list.
      class InsightList
        include Google::Apis::Core::Hashable
      
        # Output only. Insights of the list.
        # Corresponds to the JSON property `insights`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Insight>]
        attr_accessor :insights
      
        # Output only. Update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @insights = args[:insights] if args.key?(:insights)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Response message for listing assets.
      class ListAssetsResponse
        include Google::Apis::Core::Hashable
      
        # A list of assets.
        # Corresponds to the JSON property `assets`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Asset>]
        attr_accessor :assets
      
        # A token identifying a page of results the server should return.
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
          @assets = args[:assets] if args.key?(:assets)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A response for listing error frames.
      class ListErrorFramesResponse
        include Google::Apis::Core::Hashable
      
        # The list of error frames.
        # Corresponds to the JSON property `errorFrames`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ErrorFrame>]
        attr_accessor :error_frames
      
        # A token identifying a page of results the server should return.
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
          @error_frames = args[:error_frames] if args.key?(:error_frames)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A response for listing groups.
      class ListGroupsResponse
        include Google::Apis::Core::Hashable
      
        # The list of Group
        # Corresponds to the JSON property `groups`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Group>]
        attr_accessor :groups
      
        # A token identifying a page of results the server should return.
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
          @groups = args[:groups] if args.key?(:groups)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response for listing payload files of an import job.
      class ListImportDataFilesResponse
        include Google::Apis::Core::Hashable
      
        # The list of import data files.
        # Corresponds to the JSON property `importDataFiles`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ImportDataFile>]
        attr_accessor :import_data_files
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
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
          @import_data_files = args[:import_data_files] if args.key?(:import_data_files)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # A response for listing import jobs.
      class ListImportJobsResponse
        include Google::Apis::Core::Hashable
      
        # The list of import jobs.
        # Corresponds to the JSON property `importJobs`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ImportJob>]
        attr_accessor :import_jobs
      
        # A token identifying a page of results the server should return.
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
          @import_jobs = args[:import_jobs] if args.key?(:import_jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Location>]
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
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Operation>]
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
      
      # Response message for listing preference sets.
      class ListPreferenceSetsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of PreferenceSets
        # Corresponds to the JSON property `preferenceSets`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::PreferenceSet>]
        attr_accessor :preference_sets
      
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
          @preference_sets = args[:preference_sets] if args.key?(:preference_sets)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing report configs.
      class ListReportConfigsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of report configs.
        # Corresponds to the JSON property `reportConfigs`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ReportConfig>]
        attr_accessor :report_configs
      
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
          @report_configs = args[:report_configs] if args.key?(:report_configs)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing Reports.
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of Reports.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Report>]
        attr_accessor :reports
      
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
          @reports = args[:reports] if args.key?(:reports)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for listing sources.
      class ListSourcesResponse
        include Google::Apis::Core::Hashable
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of sources.
        # Corresponds to the JSON property `sources`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::Source>]
        attr_accessor :sources
      
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
          @sources = args[:sources] if args.key?(:sources)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
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
      
      # The type of machines to consider when calculating virtual machine migration
      # insights and recommendations. Not all machine types are available in all zones
      # and regions.
      class MachinePreferences
        include Google::Apis::Core::Hashable
      
        # Compute Engine machine series to consider for insights and recommendations. If
        # empty, no restriction is applied on the machine series.
        # Corresponds to the JSON property `allowedMachineSeries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::MachineSeries>]
        attr_accessor :allowed_machine_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_machine_series = args[:allowed_machine_series] if args.key?(:allowed_machine_series)
        end
      end
      
      # A Compute Engine machine series.
      class MachineSeries
        include Google::Apis::Core::Hashable
      
        # Code to identify a Compute Engine machine series. Consult https://cloud.google.
        # com/compute/docs/machine-resource#machine_type_comparison for more details on
        # the available series.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
        end
      end
      
      # Memory usage sample.
      class MemoryUsageSample
        include Google::Apis::Core::Hashable
      
        # Percentage of system memory utilized. Must be in the interval [0, 100].
        # Corresponds to the JSON property `utilizedPercentage`
        # @return [Float]
        attr_accessor :utilized_percentage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @utilized_percentage = args[:utilized_percentage] if args.key?(:utilized_percentage)
        end
      end
      
      # An insight about potential migrations for an asset.
      class MigrationInsight
        include Google::Apis::Core::Hashable
      
        # Compute engine migration target.
        # Corresponds to the JSON property `computeEngineTarget`
        # @return [Google::Apis::MigrationcenterV1alpha1::ComputeEngineMigrationTarget]
        attr_accessor :compute_engine_target
      
        # Describes the fit level of an asset for migration to a specific target.
        # Corresponds to the JSON property `fit`
        # @return [Google::Apis::MigrationcenterV1alpha1::FitDescriptor]
        attr_accessor :fit
      
        # GKE migration target.
        # Corresponds to the JSON property `gkeTarget`
        # @return [Google::Apis::MigrationcenterV1alpha1::GoogleKubernetesEngineMigrationTarget]
        attr_accessor :gke_target
      
        # VMWare engine migration target.
        # Corresponds to the JSON property `vmwareEngineTarget`
        # @return [Google::Apis::MigrationcenterV1alpha1::VmwareEngineMigrationTarget]
        attr_accessor :vmware_engine_target
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compute_engine_target = args[:compute_engine_target] if args.key?(:compute_engine_target)
          @fit = args[:fit] if args.key?(:fit)
          @gke_target = args[:gke_target] if args.key?(:gke_target)
          @vmware_engine_target = args[:vmware_engine_target] if args.key?(:vmware_engine_target)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Details of network adapter.
      class NetworkAdapterDetails
        include Google::Apis::Core::Hashable
      
        # Network adapter type (e.g. VMXNET3).
        # Corresponds to the JSON property `adapterType`
        # @return [String]
        attr_accessor :adapter_type
      
        # List of allocated/assigned network addresses.
        # Corresponds to the JSON property `addresses`
        # @return [Google::Apis::MigrationcenterV1alpha1::NetworkAddressList]
        attr_accessor :addresses
      
        # MAC address.
        # Corresponds to the JSON property `macAddress`
        # @return [String]
        attr_accessor :mac_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @adapter_type = args[:adapter_type] if args.key?(:adapter_type)
          @addresses = args[:addresses] if args.key?(:addresses)
          @mac_address = args[:mac_address] if args.key?(:mac_address)
        end
      end
      
      # List of network adapters.
      class NetworkAdapterList
        include Google::Apis::Core::Hashable
      
        # Network adapter descriptions.
        # Corresponds to the JSON property `networkAdapters`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::NetworkAdapterDetails>]
        attr_accessor :network_adapters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @network_adapters = args[:network_adapters] if args.key?(:network_adapters)
        end
      end
      
      # Details of network address.
      class NetworkAddress
        include Google::Apis::Core::Hashable
      
        # Whether DHCP is used to assign addresses.
        # Corresponds to the JSON property `assignment`
        # @return [String]
        attr_accessor :assignment
      
        # Broadcast address.
        # Corresponds to the JSON property `bcast`
        # @return [String]
        attr_accessor :bcast
      
        # Fully qualified domain name.
        # Corresponds to the JSON property `fqdn`
        # @return [String]
        attr_accessor :fqdn
      
        # Assigned or configured IP Address.
        # Corresponds to the JSON property `ipAddress`
        # @return [String]
        attr_accessor :ip_address
      
        # Subnet mask.
        # Corresponds to the JSON property `subnetMask`
        # @return [String]
        attr_accessor :subnet_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignment = args[:assignment] if args.key?(:assignment)
          @bcast = args[:bcast] if args.key?(:bcast)
          @fqdn = args[:fqdn] if args.key?(:fqdn)
          @ip_address = args[:ip_address] if args.key?(:ip_address)
          @subnet_mask = args[:subnet_mask] if args.key?(:subnet_mask)
        end
      end
      
      # List of allocated/assigned network addresses.
      class NetworkAddressList
        include Google::Apis::Core::Hashable
      
        # Network address entries.
        # Corresponds to the JSON property `addresses`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::NetworkAddress>]
        attr_accessor :addresses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
        end
      end
      
      # 
      class NetworkConnection
        include Google::Apis::Core::Hashable
      
        # Local IP address.
        # Corresponds to the JSON property `localIpAddress`
        # @return [String]
        attr_accessor :local_ip_address
      
        # Local port.
        # Corresponds to the JSON property `localPort`
        # @return [Fixnum]
        attr_accessor :local_port
      
        # Process ID.
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # Process or service name.
        # Corresponds to the JSON property `processName`
        # @return [String]
        attr_accessor :process_name
      
        # Connection protocol (e.g. TCP/UDP).
        # Corresponds to the JSON property `protocol`
        # @return [String]
        attr_accessor :protocol
      
        # Remote IP address.
        # Corresponds to the JSON property `remoteIpAddress`
        # @return [String]
        attr_accessor :remote_ip_address
      
        # Remote port.
        # Corresponds to the JSON property `remotePort`
        # @return [Fixnum]
        attr_accessor :remote_port
      
        # Connection state (e.g. CONNECTED).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @local_ip_address = args[:local_ip_address] if args.key?(:local_ip_address)
          @local_port = args[:local_port] if args.key?(:local_port)
          @pid = args[:pid] if args.key?(:pid)
          @process_name = args[:process_name] if args.key?(:process_name)
          @protocol = args[:protocol] if args.key?(:protocol)
          @remote_ip_address = args[:remote_ip_address] if args.key?(:remote_ip_address)
          @remote_port = args[:remote_port] if args.key?(:remote_port)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Network connection list.
      class NetworkConnectionList
        include Google::Apis::Core::Hashable
      
        # Network connection entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::NetworkConnection>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Network usage sample. Values are across all network interfaces.
      class NetworkUsageSample
        include Google::Apis::Core::Hashable
      
        # Average network egress in B/s sampled over a short window. Must be non-
        # negative.
        # Corresponds to the JSON property `averageEgressBps`
        # @return [Float]
        attr_accessor :average_egress_bps
      
        # Average network ingress in B/s sampled over a short window. Must be non-
        # negative.
        # Corresponds to the JSON property `averageIngressBps`
        # @return [Float]
        attr_accessor :average_ingress_bps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @average_egress_bps = args[:average_egress_bps] if args.key?(:average_egress_bps)
          @average_ingress_bps = args[:average_ingress_bps] if args.key?(:average_ingress_bps)
        end
      end
      
      # NFS export.
      class NfsExport
        include Google::Apis::Core::Hashable
      
        # The directory being exported.
        # Corresponds to the JSON property `exportDirectory`
        # @return [String]
        attr_accessor :export_directory
      
        # The hosts or networks to which the export is being shared.
        # Corresponds to the JSON property `hosts`
        # @return [Array<String>]
        attr_accessor :hosts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @export_directory = args[:export_directory] if args.key?(:export_directory)
          @hosts = args[:hosts] if args.key?(:hosts)
        end
      end
      
      # NFS exports.
      class NfsExportList
        include Google::Apis::Core::Hashable
      
        # NFS export entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::NfsExport>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Open file Information.
      class OpenFileDetails
        include Google::Apis::Core::Hashable
      
        # Opened file command.
        # Corresponds to the JSON property `command`
        # @return [String]
        attr_accessor :command
      
        # Opened file file path.
        # Corresponds to the JSON property `filePath`
        # @return [String]
        attr_accessor :file_path
      
        # Opened file file type.
        # Corresponds to the JSON property `fileType`
        # @return [String]
        attr_accessor :file_type
      
        # Opened file user.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @command = args[:command] if args.key?(:command)
          @file_path = args[:file_path] if args.key?(:file_path)
          @file_type = args[:file_type] if args.key?(:file_type)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # Open file list.
      class OpenFileList
        include Google::Apis::Core::Hashable
      
        # Open file details entries.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::OpenFileDetails>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @entries = args[:entries] if args.key?(:entries)
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
        # @return [Google::Apis::MigrationcenterV1alpha1::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # Represents the metadata of the long-running operation.
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
        # operation. Operations that have been cancelled successfully have Operation.
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
      
      # Payload file for inline import job payload.
      class PayloadFile
        include Google::Apis::Core::Hashable
      
        # The file data.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # The file name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Performance data sample.
      class PerformanceSample
        include Google::Apis::Core::Hashable
      
        # CPU usage sample.
        # Corresponds to the JSON property `cpu`
        # @return [Google::Apis::MigrationcenterV1alpha1::CpuUsageSample]
        attr_accessor :cpu
      
        # Disk usage sample. Values are across all disks.
        # Corresponds to the JSON property `disk`
        # @return [Google::Apis::MigrationcenterV1alpha1::DiskUsageSample]
        attr_accessor :disk
      
        # Memory usage sample.
        # Corresponds to the JSON property `memory`
        # @return [Google::Apis::MigrationcenterV1alpha1::MemoryUsageSample]
        attr_accessor :memory
      
        # Network usage sample. Values are across all network interfaces.
        # Corresponds to the JSON property `network`
        # @return [Google::Apis::MigrationcenterV1alpha1::NetworkUsageSample]
        attr_accessor :network
      
        # Time the sample was collected.
        # Corresponds to the JSON property `sampleTime`
        # @return [String]
        attr_accessor :sample_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu = args[:cpu] if args.key?(:cpu)
          @disk = args[:disk] if args.key?(:disk)
          @memory = args[:memory] if args.key?(:memory)
          @network = args[:network] if args.key?(:network)
          @sample_time = args[:sample_time] if args.key?(:sample_time)
        end
      end
      
      # Platform specific details for Physical Machines.
      class PhysicalPlatformDetails
        include Google::Apis::Core::Hashable
      
        # Free text representation of the machine location. The format of this field
        # should not be relied on. Different machines in the same location may have
        # different string values for this field.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location = args[:location] if args.key?(:location)
        end
      end
      
      # Information about the platform.
      class PlatformDetails
        include Google::Apis::Core::Hashable
      
        # AWS EC2 specific details.
        # Corresponds to the JSON property `awsEc2Details`
        # @return [Google::Apis::MigrationcenterV1alpha1::AwsEc2PlatformDetails]
        attr_accessor :aws_ec2_details
      
        # Azure VM specific details.
        # Corresponds to the JSON property `azureVmDetails`
        # @return [Google::Apis::MigrationcenterV1alpha1::AzureVmPlatformDetails]
        attr_accessor :azure_vm_details
      
        # Generic platform details.
        # Corresponds to the JSON property `genericDetails`
        # @return [Google::Apis::MigrationcenterV1alpha1::GenericPlatformDetails]
        attr_accessor :generic_details
      
        # Platform specific details for Physical Machines.
        # Corresponds to the JSON property `physicalDetails`
        # @return [Google::Apis::MigrationcenterV1alpha1::PhysicalPlatformDetails]
        attr_accessor :physical_details
      
        # VMware specific details.
        # Corresponds to the JSON property `vmwareDetails`
        # @return [Google::Apis::MigrationcenterV1alpha1::VmwarePlatformDetails]
        attr_accessor :vmware_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aws_ec2_details = args[:aws_ec2_details] if args.key?(:aws_ec2_details)
          @azure_vm_details = args[:azure_vm_details] if args.key?(:azure_vm_details)
          @generic_details = args[:generic_details] if args.key?(:generic_details)
          @physical_details = args[:physical_details] if args.key?(:physical_details)
          @vmware_details = args[:vmware_details] if args.key?(:vmware_details)
        end
      end
      
      # The preferences that apply to all assets in a given context.
      class PreferenceSet
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the preference set was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A description of the preference set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-friendly display name. Maximum length is 63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Name of the preference set.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the preference set was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # VirtualMachinePreferences enables you to create sets of assumptions, for
        # example, a geographical location and pricing track, for your migrated virtual
        # machines. The set of preferences influence recommendations for migrating
        # virtual machine assets.
        # Corresponds to the JSON property `virtualMachinePreferences`
        # @return [Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences]
        attr_accessor :virtual_machine_preferences
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
          @virtual_machine_preferences = args[:virtual_machine_preferences] if args.key?(:virtual_machine_preferences)
        end
      end
      
      # The user preferences relating to target regions.
      class RegionPreferences
        include Google::Apis::Core::Hashable
      
        # A list of preferred regions, ordered by the most preferred region first. Set
        # only valid Google Cloud region names. See https://cloud.google.com/compute/
        # docs/regions-zones for available regions.
        # Corresponds to the JSON property `preferredRegions`
        # @return [Array<String>]
        attr_accessor :preferred_regions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @preferred_regions = args[:preferred_regions] if args.key?(:preferred_regions)
        end
      end
      
      # A request to remove assets from a group.
      class RemoveAssetsFromGroupRequest
        include Google::Apis::Core::Hashable
      
        # Optional. When this value is set to `false` and one of the given assets is not
        # an existing member of the group, the operation fails with a `Not Found` error.
        # When set to `true` this situation is silently ignored by the server. Default
        # value is `false`.
        # Corresponds to the JSON property `allowMissing`
        # @return [Boolean]
        attr_accessor :allow_missing
        alias_method :allow_missing?, :allow_missing
      
        # Lists the asset IDs of all assets.
        # Corresponds to the JSON property `assets`
        # @return [Google::Apis::MigrationcenterV1alpha1::AssetList]
        attr_accessor :assets
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing = args[:allow_missing] if args.key?(:allow_missing)
          @assets = args[:assets] if args.key?(:assets)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Report represents a point-in-time rendering of the ReportConfig results.
      class Report
        include Google::Apis::Core::Hashable
      
        # Output only. Creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Free-text description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-friendly display name. Maximum length is 63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Name of resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Report creation state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Describes the Summary view of a Report, which contains aggregated values for
        # all the groups and preference sets included in this Report.
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummary]
        attr_accessor :summary
      
        # Report type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. Last update timestamp.
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
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @summary = args[:summary] if args.key?(:summary)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A response to a call to `ReportAssetFrame`.
      class ReportAssetFramesResponse
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The groups and associated preference sets on which we can generate reports.
      class ReportConfig
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Free-text description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-friendly display name. Maximum length is 63 characters.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Collection of combinations of groups and preference sets.
        # Corresponds to the JSON property `groupPreferencesetAssignments`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ReportConfigGroupPreferenceSetAssignment>]
        attr_accessor :group_preferenceset_assignments
      
        # Output only. Name of resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when the resource was last updated.
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
          @group_preferenceset_assignments = args[:group_preferenceset_assignments] if args.key?(:group_preferenceset_assignments)
          @name = args[:name] if args.key?(:name)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents a combination of a group with a preference set.
      class ReportConfigGroupPreferenceSetAssignment
        include Google::Apis::Core::Hashable
      
        # Required. Name of the group.
        # Corresponds to the JSON property `group`
        # @return [String]
        attr_accessor :group
      
        # Required. Name of the Preference Set.
        # Corresponds to the JSON property `preferenceSet`
        # @return [String]
        attr_accessor :preference_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @group = args[:group] if args.key?(:group)
          @preference_set = args[:preference_set] if args.key?(:preference_set)
        end
      end
      
      # Describes the Summary view of a Report, which contains aggregated values for
      # all the groups and preference sets included in this Report.
      class ReportSummary
        include Google::Apis::Core::Hashable
      
        # Aggregate statistics for a collection of assets.
        # Corresponds to the JSON property `allAssetsStats`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats]
        attr_accessor :all_assets_stats
      
        # Findings for each Group included in this report.
        # Corresponds to the JSON property `groupFindings`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupFinding>]
        attr_accessor :group_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_assets_stats = args[:all_assets_stats] if args.key?(:all_assets_stats)
          @group_findings = args[:group_findings] if args.key?(:group_findings)
        end
      end
      
      # Aggregate statistics for a collection of assets.
      class ReportSummaryAssetAggregateStats
        include Google::Apis::Core::Hashable
      
        # Describes a collection of data points rendered as a Chart.
        # Corresponds to the JSON property `assetAge`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData]
        attr_accessor :asset_age
      
        # A Histogram Chart shows a distribution of values into buckets, showing a count
        # of values which fall into a bucket.
        # Corresponds to the JSON property `coreCountHistogram`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData]
        attr_accessor :core_count_histogram
      
        # A Histogram Chart shows a distribution of values into buckets, showing a count
        # of values which fall into a bucket.
        # Corresponds to the JSON property `memoryBytesHistogram`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData]
        attr_accessor :memory_bytes_histogram
      
        # Describes a collection of data points rendered as a Chart.
        # Corresponds to the JSON property `memoryUtilization`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData]
        attr_accessor :memory_utilization
      
        # Utilization Chart is a specific type of visualization which displays a metric
        # classified into "Used" and "Free" buckets.
        # Corresponds to the JSON property `memoryUtilizationChart`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryUtilizationChartData]
        attr_accessor :memory_utilization_chart
      
        # Describes a collection of data points rendered as a Chart.
        # Corresponds to the JSON property `operatingSystem`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData]
        attr_accessor :operating_system
      
        # A Histogram Chart shows a distribution of values into buckets, showing a count
        # of values which fall into a bucket.
        # Corresponds to the JSON property `storageBytesHistogram`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartData]
        attr_accessor :storage_bytes_histogram
      
        # Describes a collection of data points rendered as a Chart.
        # Corresponds to the JSON property `storageUtilization`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartData]
        attr_accessor :storage_utilization
      
        # Utilization Chart is a specific type of visualization which displays a metric
        # classified into "Used" and "Free" buckets.
        # Corresponds to the JSON property `storageUtilizationChart`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryUtilizationChartData]
        attr_accessor :storage_utilization_chart
      
        # Count of the number of unique assets in this collection.
        # Corresponds to the JSON property `totalAssets`
        # @return [Fixnum]
        attr_accessor :total_assets
      
        # Sum of the CPU core count of all the assets in this collection.
        # Corresponds to the JSON property `totalCores`
        # @return [Fixnum]
        attr_accessor :total_cores
      
        # Sum of the memory in bytes of all the assets in this collection.
        # Corresponds to the JSON property `totalMemoryBytes`
        # @return [Fixnum]
        attr_accessor :total_memory_bytes
      
        # Sum of persistent storage in bytes of all the assets in this collection.
        # Corresponds to the JSON property `totalStorageBytes`
        # @return [Fixnum]
        attr_accessor :total_storage_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_age = args[:asset_age] if args.key?(:asset_age)
          @core_count_histogram = args[:core_count_histogram] if args.key?(:core_count_histogram)
          @memory_bytes_histogram = args[:memory_bytes_histogram] if args.key?(:memory_bytes_histogram)
          @memory_utilization = args[:memory_utilization] if args.key?(:memory_utilization)
          @memory_utilization_chart = args[:memory_utilization_chart] if args.key?(:memory_utilization_chart)
          @operating_system = args[:operating_system] if args.key?(:operating_system)
          @storage_bytes_histogram = args[:storage_bytes_histogram] if args.key?(:storage_bytes_histogram)
          @storage_utilization = args[:storage_utilization] if args.key?(:storage_utilization)
          @storage_utilization_chart = args[:storage_utilization_chart] if args.key?(:storage_utilization_chart)
          @total_assets = args[:total_assets] if args.key?(:total_assets)
          @total_cores = args[:total_cores] if args.key?(:total_cores)
          @total_memory_bytes = args[:total_memory_bytes] if args.key?(:total_memory_bytes)
          @total_storage_bytes = args[:total_storage_bytes] if args.key?(:total_storage_bytes)
        end
      end
      
      # Describes a collection of data points rendered as a Chart.
      class ReportSummaryChartData
        include Google::Apis::Core::Hashable
      
        # Each data point in the chart is represented as a name-value pair with the name
        # being the x-axis label, and the value being the y-axis value.
        # Corresponds to the JSON property `dataPoints`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ReportSummaryChartDataDataPoint>]
        attr_accessor :data_points
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_points = args[:data_points] if args.key?(:data_points)
        end
      end
      
      # Describes a single data point in the Chart.
      class ReportSummaryChartDataDataPoint
        include Google::Apis::Core::Hashable
      
        # The X-axis label for this data point.
        # Corresponds to the JSON property `label`
        # @return [String]
        attr_accessor :label
      
        # The Y-axis value for this data point.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @label = args[:label] if args.key?(:label)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Summary Findings for a specific Group.
      class ReportSummaryGroupFinding
        include Google::Apis::Core::Hashable
      
        # Aggregate statistics for a collection of assets.
        # Corresponds to the JSON property `assetAggregateStats`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryAssetAggregateStats]
        attr_accessor :asset_aggregate_stats
      
        # Description for the Group.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display Name for the Group.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Count of the number of assets in this group which are also included in another
        # group within the same report.
        # Corresponds to the JSON property `overlappingAssetCount`
        # @return [Fixnum]
        attr_accessor :overlapping_asset_count
      
        # Findings for each of the PreferenceSets for this group.
        # Corresponds to the JSON property `preferenceSetFindings`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ReportSummaryGroupPreferenceSetFinding>]
        attr_accessor :preference_set_findings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset_aggregate_stats = args[:asset_aggregate_stats] if args.key?(:asset_aggregate_stats)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @overlapping_asset_count = args[:overlapping_asset_count] if args.key?(:overlapping_asset_count)
          @preference_set_findings = args[:preference_set_findings] if args.key?(:preference_set_findings)
        end
      end
      
      # Summary Findings for a specific Group/PreferenceSet combination.
      class ReportSummaryGroupPreferenceSetFinding
        include Google::Apis::Core::Hashable
      
        # Description for the Preference Set.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Display Name of the Preference Set
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A set of findings that applies to assets of type Virtual/Physical Machine.
        # Corresponds to the JSON property `machineFinding`
        # @return [Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineFinding]
        attr_accessor :machine_finding
      
        # VirtualMachinePreferences enables you to create sets of assumptions, for
        # example, a geographical location and pricing track, for your migrated virtual
        # machines. The set of preferences influence recommendations for migrating
        # virtual machine assets.
        # Corresponds to the JSON property `machinePreferences`
        # @return [Google::Apis::MigrationcenterV1alpha1::VirtualMachinePreferences]
        attr_accessor :machine_preferences
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `monthlyCostCompute`
        # @return [Google::Apis::MigrationcenterV1alpha1::Money]
        attr_accessor :monthly_cost_compute
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `monthlyCostNetworkEgress`
        # @return [Google::Apis::MigrationcenterV1alpha1::Money]
        attr_accessor :monthly_cost_network_egress
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `monthlyCostOsLicense`
        # @return [Google::Apis::MigrationcenterV1alpha1::Money]
        attr_accessor :monthly_cost_os_license
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `monthlyCostOther`
        # @return [Google::Apis::MigrationcenterV1alpha1::Money]
        attr_accessor :monthly_cost_other
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `monthlyCostStorage`
        # @return [Google::Apis::MigrationcenterV1alpha1::Money]
        attr_accessor :monthly_cost_storage
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `monthlyCostTotal`
        # @return [Google::Apis::MigrationcenterV1alpha1::Money]
        attr_accessor :monthly_cost_total
      
        # Target region for this Preference Set
        # Corresponds to the JSON property `preferredRegion`
        # @return [String]
        attr_accessor :preferred_region
      
        # Text describing the pricing track specified for this Preference Set
        # Corresponds to the JSON property `pricingTrack`
        # @return [String]
        attr_accessor :pricing_track
      
        # Text describing the business priority specified for this Preference Set
        # Corresponds to the JSON property `topPriority`
        # @return [String]
        attr_accessor :top_priority
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @machine_finding = args[:machine_finding] if args.key?(:machine_finding)
          @machine_preferences = args[:machine_preferences] if args.key?(:machine_preferences)
          @monthly_cost_compute = args[:monthly_cost_compute] if args.key?(:monthly_cost_compute)
          @monthly_cost_network_egress = args[:monthly_cost_network_egress] if args.key?(:monthly_cost_network_egress)
          @monthly_cost_os_license = args[:monthly_cost_os_license] if args.key?(:monthly_cost_os_license)
          @monthly_cost_other = args[:monthly_cost_other] if args.key?(:monthly_cost_other)
          @monthly_cost_storage = args[:monthly_cost_storage] if args.key?(:monthly_cost_storage)
          @monthly_cost_total = args[:monthly_cost_total] if args.key?(:monthly_cost_total)
          @preferred_region = args[:preferred_region] if args.key?(:preferred_region)
          @pricing_track = args[:pricing_track] if args.key?(:pricing_track)
          @top_priority = args[:top_priority] if args.key?(:top_priority)
        end
      end
      
      # A Histogram Chart shows a distribution of values into buckets, showing a count
      # of values which fall into a bucket.
      class ReportSummaryHistogramChartData
        include Google::Apis::Core::Hashable
      
        # Buckets in the histogram. There will be `n+1` buckets matching `n` lower
        # bounds in the request. The first bucket will be from -infinity to the first
        # bound. Subsequent buckets will be between one bound and the next. The final
        # bucket will be from the final bound to infinity.
        # Corresponds to the JSON property `buckets`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ReportSummaryHistogramChartDataBucket>]
        attr_accessor :buckets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @buckets = args[:buckets] if args.key?(:buckets)
        end
      end
      
      # A histogram bucket with a lower and upper bound, and a count of items with a
      # field value between those bounds. The lower bound is inclusive and the upper
      # bound is exclusive. Lower bound may be -infinity and upper bound may be
      # infinity.
      class ReportSummaryHistogramChartDataBucket
        include Google::Apis::Core::Hashable
      
        # Count of items in the bucket.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Lower bound - inclusive.
        # Corresponds to the JSON property `lowerBound`
        # @return [Fixnum]
        attr_accessor :lower_bound
      
        # Upper bound - exclusive.
        # Corresponds to the JSON property `upperBound`
        # @return [Fixnum]
        attr_accessor :upper_bound
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @lower_bound = args[:lower_bound] if args.key?(:lower_bound)
          @upper_bound = args[:upper_bound] if args.key?(:upper_bound)
        end
      end
      
      # A set of findings that applies to assets of type Virtual/Physical Machine.
      class ReportSummaryMachineFinding
        include Google::Apis::Core::Hashable
      
        # Count of assets which were allocated.
        # Corresponds to the JSON property `allocatedAssetCount`
        # @return [Fixnum]
        attr_accessor :allocated_asset_count
      
        # Set of disk types allocated to assets.
        # Corresponds to the JSON property `allocatedDiskTypes`
        # @return [Array<String>]
        attr_accessor :allocated_disk_types
      
        # Set of regions in which the assets were allocated.
        # Corresponds to the JSON property `allocatedRegions`
        # @return [Array<String>]
        attr_accessor :allocated_regions
      
        # Distribution of assets based on the Machine Series.
        # Corresponds to the JSON property `machineSeriesAllocations`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ReportSummaryMachineSeriesAllocation>]
        attr_accessor :machine_series_allocations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_asset_count = args[:allocated_asset_count] if args.key?(:allocated_asset_count)
          @allocated_disk_types = args[:allocated_disk_types] if args.key?(:allocated_disk_types)
          @allocated_regions = args[:allocated_regions] if args.key?(:allocated_regions)
          @machine_series_allocations = args[:machine_series_allocations] if args.key?(:machine_series_allocations)
        end
      end
      
      # Represents a data point tracking the count of assets allocated for a specific
      # Machine Series.
      class ReportSummaryMachineSeriesAllocation
        include Google::Apis::Core::Hashable
      
        # Count of assets allocated to this machine series.
        # Corresponds to the JSON property `allocatedAssetCount`
        # @return [Fixnum]
        attr_accessor :allocated_asset_count
      
        # A Compute Engine machine series.
        # Corresponds to the JSON property `machineSeries`
        # @return [Google::Apis::MigrationcenterV1alpha1::MachineSeries]
        attr_accessor :machine_series
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allocated_asset_count = args[:allocated_asset_count] if args.key?(:allocated_asset_count)
          @machine_series = args[:machine_series] if args.key?(:machine_series)
        end
      end
      
      # Utilization Chart is a specific type of visualization which displays a metric
      # classified into "Used" and "Free" buckets.
      class ReportSummaryUtilizationChartData
        include Google::Apis::Core::Hashable
      
        # Aggregate value which falls into the "Free" bucket.
        # Corresponds to the JSON property `free`
        # @return [Fixnum]
        attr_accessor :free
      
        # Aggregate value which falls into the "Used" bucket.
        # Corresponds to the JSON property `used`
        # @return [Fixnum]
        attr_accessor :used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @free = args[:free] if args.key?(:free)
          @used = args[:used] if args.key?(:used)
        end
      end
      
      # A request to run an import job.
      class RunImportJobRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Guest OS running process details.
      class RunningProcess
        include Google::Apis::Core::Hashable
      
        # Process extended attributes.
        # Corresponds to the JSON property `attributes`
        # @return [Hash<String,String>]
        attr_accessor :attributes
      
        # Process full command line.
        # Corresponds to the JSON property `cmdline`
        # @return [String]
        attr_accessor :cmdline
      
        # Process binary path.
        # Corresponds to the JSON property `exePath`
        # @return [String]
        attr_accessor :exe_path
      
        # Process ID.
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # User running the process.
        # Corresponds to the JSON property `user`
        # @return [String]
        attr_accessor :user
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @attributes = args[:attributes] if args.key?(:attributes)
          @cmdline = args[:cmdline] if args.key?(:cmdline)
          @exe_path = args[:exe_path] if args.key?(:exe_path)
          @pid = args[:pid] if args.key?(:pid)
          @user = args[:user] if args.key?(:user)
        end
      end
      
      # List of running guest OS processes.
      class RunningProcessList
        include Google::Apis::Core::Hashable
      
        # Running process entries.
        # Corresponds to the JSON property `processes`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::RunningProcess>]
        attr_accessor :processes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @processes = args[:processes] if args.key?(:processes)
        end
      end
      
      # Guest OS running service details.
      class RunningService
        include Google::Apis::Core::Hashable
      
        # Service command line.
        # Corresponds to the JSON property `cmdline`
        # @return [String]
        attr_accessor :cmdline
      
        # Service binary path.
        # Corresponds to the JSON property `exePath`
        # @return [String]
        attr_accessor :exe_path
      
        # Service name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Service pid.
        # Corresponds to the JSON property `pid`
        # @return [Fixnum]
        attr_accessor :pid
      
        # Service start mode (raw, OS-agnostic).
        # Corresponds to the JSON property `startMode`
        # @return [String]
        attr_accessor :start_mode
      
        # Service state (raw, OS-agnostic).
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Service status.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cmdline = args[:cmdline] if args.key?(:cmdline)
          @exe_path = args[:exe_path] if args.key?(:exe_path)
          @name = args[:name] if args.key?(:name)
          @pid = args[:pid] if args.key?(:pid)
          @start_mode = args[:start_mode] if args.key?(:start_mode)
          @state = args[:state] if args.key?(:state)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # List of running guest OS services.
      class RunningServiceList
        include Google::Apis::Core::Hashable
      
        # Running service entries.
        # Corresponds to the JSON property `services`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::RunningService>]
        attr_accessor :services
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @services = args[:services] if args.key?(:services)
        end
      end
      
      # Runtime networking information.
      class RuntimeNetworkInfo
        include Google::Apis::Core::Hashable
      
        # Network connection list.
        # Corresponds to the JSON property `connections`
        # @return [Google::Apis::MigrationcenterV1alpha1::NetworkConnectionList]
        attr_accessor :connections
      
        # Netstat (raw, OS-agnostic).
        # Corresponds to the JSON property `netstat`
        # @return [String]
        attr_accessor :netstat
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `netstatTime`
        # @return [Google::Apis::MigrationcenterV1alpha1::DateTime]
        attr_accessor :netstat_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connections = args[:connections] if args.key?(:connections)
          @netstat = args[:netstat] if args.key?(:netstat)
          @netstat_time = args[:netstat_time] if args.key?(:netstat_time)
        end
      end
      
      # SELinux details.
      class Selinux
        include Google::Apis::Core::Hashable
      
        # Is SELinux enabled.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # SELinux mode enforcing / permissive.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @mode = args[:mode] if args.key?(:mode)
        end
      end
      
      # Describes the Migration Center settings related to the project.
      class Settings
        include Google::Apis::Core::Hashable
      
        # Output only. The name of the resource.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The preference set used by default for a project.
        # Corresponds to the JSON property `preferenceSet`
        # @return [String]
        attr_accessor :preference_set
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @preference_set = args[:preference_set] if args.key?(:preference_set)
        end
      end
      
      # Source represents an object from which asset information is streamed to
      # Migration Center.
      class Source
        include Google::Apis::Core::Hashable
      
        # Output only. The timestamp when the source was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Free-text description.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # User-friendly display name.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The number of frames that were reported by the source and
        # contained errors.
        # Corresponds to the JSON property `errorFrameCount`
        # @return [Fixnum]
        attr_accessor :error_frame_count
      
        # If `true`, the source is managed by other service(s).
        # Corresponds to the JSON property `isManaged`
        # @return [Boolean]
        attr_accessor :is_managed
        alias_method :is_managed?, :is_managed
      
        # Output only. The full name of the source.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Number of frames that are still being processed.
        # Corresponds to the JSON property `pendingFrameCount`
        # @return [Fixnum]
        attr_accessor :pending_frame_count
      
        # The information confidence of the source. The higher the value, the higher the
        # confidence.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Output only. The state of the source.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Data source type.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Output only. The timestamp when the source was last updated.
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
          @error_frame_count = args[:error_frame_count] if args.key?(:error_frame_count)
          @is_managed = args[:is_managed] if args.key?(:is_managed)
          @name = args[:name] if args.key?(:name)
          @pending_frame_count = args[:pending_frame_count] if args.key?(:pending_frame_count)
          @priority = args[:priority] if args.key?(:priority)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
          @update_time = args[:update_time] if args.key?(:update_time)
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
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone, e.g. "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number, e.g. "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A request to update an asset.
      class UpdateAssetRequest
        include Google::Apis::Core::Hashable
      
        # An asset represents a resource in your environment. Asset types include
        # virtual machines and databases.
        # Corresponds to the JSON property `asset`
        # @return [Google::Apis::MigrationcenterV1alpha1::Asset]
        attr_accessor :asset
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes since the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        # Required. Field mask is used to specify the fields to be overwritten in the `
        # Asset` resource by the update. The values specified in the `update_mask` field
        # are relative to the resource, not the full request. A field will be
        # overwritten if it is in the mask. A single * value in the mask lets you to
        # overwrite all fields.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @asset = args[:asset] if args.key?(:asset)
          @request_id = args[:request_id] if args.key?(:request_id)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # A resource that contains a URI to which a data file can be uploaded.
      class UploadFileInfo
        include Google::Apis::Core::Hashable
      
        # Output only. The headers that were used to sign the URL.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # Output only. Upload URI for the file.
        # Corresponds to the JSON property `signedUri`
        # @return [String]
        attr_accessor :signed_uri
      
        # Output only. Expiration time of the upload URI.
        # Corresponds to the JSON property `uriExpirationTime`
        # @return [String]
        attr_accessor :uri_expiration_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headers = args[:headers] if args.key?(:headers)
          @signed_uri = args[:signed_uri] if args.key?(:signed_uri)
          @uri_expiration_time = args[:uri_expiration_time] if args.key?(:uri_expiration_time)
        end
      end
      
      # A request to validate an import job.
      class ValidateImportJobRequest
        include Google::Apis::Core::Hashable
      
        # Optional. An optional request ID to identify requests. Specify a unique
        # request ID so that if you must retry your request, the server will know to
        # ignore the request if it has already been completed. The server will guarantee
        # that for at least 60 minutes after the first request. For example, consider a
        # situation where you make an initial request and the request times out. If you
        # make the request again with the same request ID, the server can check if
        # original operation with the same request ID was received, and if so, will
        # ignore the second request. This prevents clients from accidentally creating
        # duplicate commitments. The request ID must be a valid UUID with the exception
        # that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # A resource that aggregates errors across import job files.
      class ValidationReport
        include Google::Apis::Core::Hashable
      
        # List of errors found in files.
        # Corresponds to the JSON property `fileValidations`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::FileValidationReport>]
        attr_accessor :file_validations
      
        # List of job level errors.
        # Corresponds to the JSON property `jobErrors`
        # @return [Array<Google::Apis::MigrationcenterV1alpha1::ImportError>]
        attr_accessor :job_errors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_validations = args[:file_validations] if args.key?(:file_validations)
          @job_errors = args[:job_errors] if args.key?(:job_errors)
        end
      end
      
      # Details of the VM architecture.
      class VirtualMachineArchitectureDetails
        include Google::Apis::Core::Hashable
      
        # Details about the BIOS.
        # Corresponds to the JSON property `bios`
        # @return [Google::Apis::MigrationcenterV1alpha1::BiosDetails]
        attr_accessor :bios
      
        # CPU architecture, e.g., "x64-based PC", "x86_64", "i686" etc.
        # Corresponds to the JSON property `cpuArchitecture`
        # @return [String]
        attr_accessor :cpu_architecture
      
        # CPU manufacturer, e.g., "Intel", "AMD".
        # Corresponds to the JSON property `cpuManufacturer`
        # @return [String]
        attr_accessor :cpu_manufacturer
      
        # CPU name, e.g., "Intel Xeon E5-2690", "AMD EPYC 7571" etc.
        # Corresponds to the JSON property `cpuName`
        # @return [String]
        attr_accessor :cpu_name
      
        # Number of processor sockets allocated to the machine.
        # Corresponds to the JSON property `cpuSocketCount`
        # @return [Fixnum]
        attr_accessor :cpu_socket_count
      
        # Number of CPU threads allocated to the machine.
        # Corresponds to the JSON property `cpuThreadCount`
        # @return [Fixnum]
        attr_accessor :cpu_thread_count
      
        # Firmware (BIOS/efi).
        # Corresponds to the JSON property `firmware`
        # @return [String]
        attr_accessor :firmware
      
        # CPU hyperthreading support.
        # Corresponds to the JSON property `hyperthreading`
        # @return [String]
        attr_accessor :hyperthreading
      
        # Hardware vendor.
        # Corresponds to the JSON property `vendor`
        # @return [String]
        attr_accessor :vendor
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bios = args[:bios] if args.key?(:bios)
          @cpu_architecture = args[:cpu_architecture] if args.key?(:cpu_architecture)
          @cpu_manufacturer = args[:cpu_manufacturer] if args.key?(:cpu_manufacturer)
          @cpu_name = args[:cpu_name] if args.key?(:cpu_name)
          @cpu_socket_count = args[:cpu_socket_count] if args.key?(:cpu_socket_count)
          @cpu_thread_count = args[:cpu_thread_count] if args.key?(:cpu_thread_count)
          @firmware = args[:firmware] if args.key?(:firmware)
          @hyperthreading = args[:hyperthreading] if args.key?(:hyperthreading)
          @vendor = args[:vendor] if args.key?(:vendor)
        end
      end
      
      # Details of a VirtualMachine.
      class VirtualMachineDetails
        include Google::Apis::Core::Hashable
      
        # Number of CPU cores in the VirtualMachine. Must be non-negative.
        # Corresponds to the JSON property `coreCount`
        # @return [Fixnum]
        attr_accessor :core_count
      
        # VM creation timestamp.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Information from Guest-level collections.
        # Corresponds to the JSON property `guestOs`
        # @return [Google::Apis::MigrationcenterV1alpha1::GuestOsDetails]
        attr_accessor :guest_os
      
        # The amount of memory in the VirtualMachine. Must be non-negative.
        # Corresponds to the JSON property `memoryMb`
        # @return [Fixnum]
        attr_accessor :memory_mb
      
        # What family the OS belong to, if known.
        # Corresponds to the JSON property `osFamily`
        # @return [String]
        attr_accessor :os_family
      
        # The name of the operating system running on the VirtualMachine.
        # Corresponds to the JSON property `osName`
        # @return [String]
        attr_accessor :os_name
      
        # The version of the operating system running on the virtual machine.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        # Information about the platform.
        # Corresponds to the JSON property `platform`
        # @return [Google::Apis::MigrationcenterV1alpha1::PlatformDetails]
        attr_accessor :platform
      
        # Power state of VM (poweredOn or poweredOff).
        # Corresponds to the JSON property `powerState`
        # @return [String]
        attr_accessor :power_state
      
        # Folder name in vCenter where asset resides.
        # Corresponds to the JSON property `vcenterFolder`
        # @return [String]
        attr_accessor :vcenter_folder
      
        # vCenter URL used in collection.
        # Corresponds to the JSON property `vcenterUrl`
        # @return [String]
        attr_accessor :vcenter_url
      
        # vCenter VM ID.
        # Corresponds to the JSON property `vcenterVmId`
        # @return [String]
        attr_accessor :vcenter_vm_id
      
        # Details of the VM architecture.
        # Corresponds to the JSON property `vmArchitecture`
        # @return [Google::Apis::MigrationcenterV1alpha1::VirtualMachineArchitectureDetails]
        attr_accessor :vm_architecture
      
        # Details of VM disks.
        # Corresponds to the JSON property `vmDisks`
        # @return [Google::Apis::MigrationcenterV1alpha1::VirtualMachineDiskDetails]
        attr_accessor :vm_disks
      
        # Virtual Machine display name.
        # Corresponds to the JSON property `vmName`
        # @return [String]
        attr_accessor :vm_name
      
        # Details of network adapters and settings.
        # Corresponds to the JSON property `vmNetwork`
        # @return [Google::Apis::MigrationcenterV1alpha1::VirtualMachineNetworkDetails]
        attr_accessor :vm_network
      
        # Virtual Machine unique identifier.
        # Corresponds to the JSON property `vmUuid`
        # @return [String]
        attr_accessor :vm_uuid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @core_count = args[:core_count] if args.key?(:core_count)
          @create_time = args[:create_time] if args.key?(:create_time)
          @guest_os = args[:guest_os] if args.key?(:guest_os)
          @memory_mb = args[:memory_mb] if args.key?(:memory_mb)
          @os_family = args[:os_family] if args.key?(:os_family)
          @os_name = args[:os_name] if args.key?(:os_name)
          @os_version = args[:os_version] if args.key?(:os_version)
          @platform = args[:platform] if args.key?(:platform)
          @power_state = args[:power_state] if args.key?(:power_state)
          @vcenter_folder = args[:vcenter_folder] if args.key?(:vcenter_folder)
          @vcenter_url = args[:vcenter_url] if args.key?(:vcenter_url)
          @vcenter_vm_id = args[:vcenter_vm_id] if args.key?(:vcenter_vm_id)
          @vm_architecture = args[:vm_architecture] if args.key?(:vm_architecture)
          @vm_disks = args[:vm_disks] if args.key?(:vm_disks)
          @vm_name = args[:vm_name] if args.key?(:vm_name)
          @vm_network = args[:vm_network] if args.key?(:vm_network)
          @vm_uuid = args[:vm_uuid] if args.key?(:vm_uuid)
        end
      end
      
      # Details of VM disks.
      class VirtualMachineDiskDetails
        include Google::Apis::Core::Hashable
      
        # VM disks.
        # Corresponds to the JSON property `disks`
        # @return [Google::Apis::MigrationcenterV1alpha1::DiskEntryList]
        attr_accessor :disks
      
        # Disk total Capacity.
        # Corresponds to the JSON property `hddTotalCapacityBytes`
        # @return [Fixnum]
        attr_accessor :hdd_total_capacity_bytes
      
        # Total Disk Free Space.
        # Corresponds to the JSON property `hddTotalFreeBytes`
        # @return [Fixnum]
        attr_accessor :hdd_total_free_bytes
      
        # Raw lsblk output in json.
        # Corresponds to the JSON property `lsblkJson`
        # @return [String]
        attr_accessor :lsblk_json
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disks = args[:disks] if args.key?(:disks)
          @hdd_total_capacity_bytes = args[:hdd_total_capacity_bytes] if args.key?(:hdd_total_capacity_bytes)
          @hdd_total_free_bytes = args[:hdd_total_free_bytes] if args.key?(:hdd_total_free_bytes)
          @lsblk_json = args[:lsblk_json] if args.key?(:lsblk_json)
        end
      end
      
      # Details of network adapters and settings.
      class VirtualMachineNetworkDetails
        include Google::Apis::Core::Hashable
      
        # Default gateway address.
        # Corresponds to the JSON property `defaultGw`
        # @return [String]
        attr_accessor :default_gw
      
        # List of network adapters.
        # Corresponds to the JSON property `networkAdapters`
        # @return [Google::Apis::MigrationcenterV1alpha1::NetworkAdapterList]
        attr_accessor :network_adapters
      
        # IP address of the machine.
        # Corresponds to the JSON property `primaryIpAddress`
        # @return [String]
        attr_accessor :primary_ip_address
      
        # MAC address of the machine. This property is used to uniqly identify the
        # machine.
        # Corresponds to the JSON property `primaryMacAddress`
        # @return [String]
        attr_accessor :primary_mac_address
      
        # Public IP address of the machine.
        # Corresponds to the JSON property `publicIpAddress`
        # @return [String]
        attr_accessor :public_ip_address
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_gw = args[:default_gw] if args.key?(:default_gw)
          @network_adapters = args[:network_adapters] if args.key?(:network_adapters)
          @primary_ip_address = args[:primary_ip_address] if args.key?(:primary_ip_address)
          @primary_mac_address = args[:primary_mac_address] if args.key?(:primary_mac_address)
          @public_ip_address = args[:public_ip_address] if args.key?(:public_ip_address)
        end
      end
      
      # VirtualMachinePreferences enables you to create sets of assumptions, for
      # example, a geographical location and pricing track, for your migrated virtual
      # machines. The set of preferences influence recommendations for migrating
      # virtual machine assets.
      class VirtualMachinePreferences
        include Google::Apis::Core::Hashable
      
        # Commitment plan to consider when calculating costs for virtual machine
        # insights and recommendations. If you are unsure which value to set, a 3 year
        # commitment plan is often a good value to start with.
        # Corresponds to the JSON property `commitmentPlan`
        # @return [String]
        attr_accessor :commitment_plan
      
        # The user preferences relating to Compute Engine target platform.
        # Corresponds to the JSON property `computeEnginePreferences`
        # @return [Google::Apis::MigrationcenterV1alpha1::ComputeEnginePreferences]
        attr_accessor :compute_engine_preferences
      
        # The user preferences relating to target regions.
        # Corresponds to the JSON property `regionPreferences`
        # @return [Google::Apis::MigrationcenterV1alpha1::RegionPreferences]
        attr_accessor :region_preferences
      
        # Sizing optimization strategy specifies the preferred strategy used when
        # extrapolating usage data to calculate insights and recommendations for a
        # virtual machine. If you are unsure which value to set, a moderate sizing
        # optimization strategy is often a good value to start with.
        # Corresponds to the JSON property `sizingOptimizationStrategy`
        # @return [String]
        attr_accessor :sizing_optimization_strategy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitment_plan = args[:commitment_plan] if args.key?(:commitment_plan)
          @compute_engine_preferences = args[:compute_engine_preferences] if args.key?(:compute_engine_preferences)
          @region_preferences = args[:region_preferences] if args.key?(:region_preferences)
          @sizing_optimization_strategy = args[:sizing_optimization_strategy] if args.key?(:sizing_optimization_strategy)
        end
      end
      
      # VMware disk config details.
      class VmwareDiskConfig
        include Google::Apis::Core::Hashable
      
        # VMDK backing type.
        # Corresponds to the JSON property `backingType`
        # @return [String]
        attr_accessor :backing_type
      
        # RDM compatibility mode.
        # Corresponds to the JSON property `rdmCompatibilityMode`
        # @return [String]
        attr_accessor :rdm_compatibility_mode
      
        # Is VMDK shared with other VMs.
        # Corresponds to the JSON property `shared`
        # @return [Boolean]
        attr_accessor :shared
        alias_method :shared?, :shared
      
        # VMDK disk mode.
        # Corresponds to the JSON property `vmdkDiskMode`
        # @return [String]
        attr_accessor :vmdk_disk_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backing_type = args[:backing_type] if args.key?(:backing_type)
          @rdm_compatibility_mode = args[:rdm_compatibility_mode] if args.key?(:rdm_compatibility_mode)
          @shared = args[:shared] if args.key?(:shared)
          @vmdk_disk_mode = args[:vmdk_disk_mode] if args.key?(:vmdk_disk_mode)
        end
      end
      
      # VMWare engine migration target.
      class VmwareEngineMigrationTarget
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # VMware specific details.
      class VmwarePlatformDetails
        include Google::Apis::Core::Hashable
      
        # ESX version.
        # Corresponds to the JSON property `esxVersion`
        # @return [String]
        attr_accessor :esx_version
      
        # VMware os enum - https://vdc-repo.vmware.com/vmwb-repository/dcr-public/
        # da47f910-60ac-438b-8b9b-6122f4d14524/16b7274a-bf8b-4b4c-a05e-746f2aa93c8c/doc/
        # vim.vm.GuestOsDescriptor.GuestOsIdentifier.html.
        # Corresponds to the JSON property `osid`
        # @return [String]
        attr_accessor :osid
      
        # vCenter version.
        # Corresponds to the JSON property `vcenterVersion`
        # @return [String]
        attr_accessor :vcenter_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @esx_version = args[:esx_version] if args.key?(:esx_version)
          @osid = args[:osid] if args.key?(:osid)
          @vcenter_version = args[:vcenter_version] if args.key?(:vcenter_version)
        end
      end
    end
  end
end
