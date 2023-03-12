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
      
      class AggregateAssetsValuesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateAssetsValuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aggregation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationHistogram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultFrequency
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultHistogram
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultHistogramBucket
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationResultSum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregationSum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Asset
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AssetFrame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateAssetsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BiosDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CpuUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskEntryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskPartition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskPartitionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FileValidationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Frames
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FstabEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FstabEntryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GcsPayloadInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestConfigDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestInstalledApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestInstalledApplicationList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestOsDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GuestRuntimeDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostsEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HostsEntryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ImportRowError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InlinePayloadInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListImportJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListSourcesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MemoryUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAdapterDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAdapterList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkAddressList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConnection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkConnectionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkUsageSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NfsExportList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenFileDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OpenFileList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PayloadFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PerformanceSample
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportAssetFramesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunImportJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningProcess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningProcessList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningService
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunningServiceList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RuntimeNetworkInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Selinux
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAssetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidateImportJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ValidationReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineArchitectureDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineDiskDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VirtualMachineNetworkDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwareDiskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VmwarePlatformDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AggregateAssetsValuesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :aggregations, as: 'aggregations', class: Google::Apis::MigrationcenterV1alpha1::Aggregation, decorator: Google::Apis::MigrationcenterV1alpha1::Aggregation::Representation
      
          property :filter, as: 'filter'
        end
      end
      
      class AggregateAssetsValuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :results, as: 'results', class: Google::Apis::MigrationcenterV1alpha1::AggregationResult, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResult::Representation
      
        end
      end
      
      class Aggregation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count', class: Google::Apis::MigrationcenterV1alpha1::AggregationCount, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationCount::Representation
      
          property :field, as: 'field'
          property :frequency, as: 'frequency', class: Google::Apis::MigrationcenterV1alpha1::AggregationFrequency, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationFrequency::Representation
      
          property :histogram, as: 'histogram', class: Google::Apis::MigrationcenterV1alpha1::AggregationHistogram, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationHistogram::Representation
      
          property :sum, as: 'sum', class: Google::Apis::MigrationcenterV1alpha1::AggregationSum, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationSum::Representation
      
        end
      end
      
      class AggregationCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AggregationFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AggregationHistogram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :lower_bounds, as: 'lowerBounds'
        end
      end
      
      class AggregationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, as: 'count', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultCount, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultCount::Representation
      
          property :field, as: 'field'
          property :frequency, as: 'frequency', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultFrequency, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultFrequency::Representation
      
          property :histogram, as: 'histogram', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogram, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogram::Representation
      
          property :sum, as: 'sum', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultSum, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultSum::Representation
      
        end
      end
      
      class AggregationResultCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, :numeric_string => true, as: 'value'
        end
      end
      
      class AggregationResultFrequency
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :values, as: 'values'
        end
      end
      
      class AggregationResultHistogram
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :buckets, as: 'buckets', class: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogramBucket, decorator: Google::Apis::MigrationcenterV1alpha1::AggregationResultHistogramBucket::Representation
      
        end
      end
      
      class AggregationResultHistogramBucket
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :lower_bound, as: 'lowerBound'
          property :upper_bound, as: 'upperBound'
        end
      end
      
      class AggregationResultSum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class AggregationSum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Asset
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          collection :sources, as: 'sources'
          property :update_time, as: 'updateTime'
          property :virtual_machine_details, as: 'virtualMachineDetails', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails::Representation
      
        end
      end
      
      class AssetFrame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          hash :labels, as: 'labels'
          collection :performance_samples, as: 'performanceSamples', class: Google::Apis::MigrationcenterV1alpha1::PerformanceSample, decorator: Google::Apis::MigrationcenterV1alpha1::PerformanceSample::Representation
      
          property :report_time, as: 'reportTime'
          property :trace_token, as: 'traceToken'
          property :virtual_machine_details, as: 'virtualMachineDetails', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDetails::Representation
      
        end
      end
      
      class BatchUpdateAssetsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :requests, as: 'requests', class: Google::Apis::MigrationcenterV1alpha1::UpdateAssetRequest, decorator: Google::Apis::MigrationcenterV1alpha1::UpdateAssetRequest::Representation
      
        end
      end
      
      class BatchUpdateAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::MigrationcenterV1alpha1::Asset, decorator: Google::Apis::MigrationcenterV1alpha1::Asset::Representation
      
        end
      end
      
      class BiosDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bios_manufacturer, as: 'biosManufacturer'
          property :bios_name, as: 'biosName'
          property :bios_release_date, as: 'biosReleaseDate'
          property :bios_version, as: 'biosVersion'
          property :smbios_uuid, as: 'smbiosUuid'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CpuUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilized_percentage, as: 'utilizedPercentage'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::MigrationcenterV1alpha1::TimeZone, decorator: Google::Apis::MigrationcenterV1alpha1::TimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class DiskEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_label, as: 'diskLabel'
          property :disk_label_type, as: 'diskLabelType'
          property :hw_address, as: 'hwAddress'
          property :interface_type, as: 'interfaceType'
          property :partitions, as: 'partitions', class: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList::Representation
      
          property :status, as: 'status'
          property :total_capacity_bytes, :numeric_string => true, as: 'totalCapacityBytes'
          property :total_free_bytes, :numeric_string => true, as: 'totalFreeBytes'
          property :vmware_config, as: 'vmwareConfig', class: Google::Apis::MigrationcenterV1alpha1::VmwareDiskConfig, decorator: Google::Apis::MigrationcenterV1alpha1::VmwareDiskConfig::Representation
      
        end
      end
      
      class DiskEntryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::DiskEntry, decorator: Google::Apis::MigrationcenterV1alpha1::DiskEntry::Representation
      
        end
      end
      
      class DiskPartition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_bytes, :numeric_string => true, as: 'capacityBytes'
          property :file_system, as: 'fileSystem'
          property :free_bytes, :numeric_string => true, as: 'freeBytes'
          property :mount_point, as: 'mountPoint'
          property :sub_partitions, as: 'subPartitions', class: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartitionList::Representation
      
          property :type, as: 'type'
          property :uuid, as: 'uuid'
        end
      end
      
      class DiskPartitionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::DiskPartition, decorator: Google::Apis::MigrationcenterV1alpha1::DiskPartition::Representation
      
        end
      end
      
      class DiskUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_iops, as: 'averageIops'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExecutionReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_errors, as: 'executionErrors', class: Google::Apis::MigrationcenterV1alpha1::ValidationReport, decorator: Google::Apis::MigrationcenterV1alpha1::ValidationReport::Representation
      
          property :frames_reported, as: 'framesReported'
          collection :job_errors, as: 'jobErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
          property :total_rows_count, as: 'totalRowsCount'
        end
      end
      
      class FileValidationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_errors, as: 'fileErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
          property :file_name, as: 'fileName'
          property :partial_report, as: 'partialReport'
          collection :row_errors, as: 'rowErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportRowError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportRowError::Representation
      
        end
      end
      
      class Frames
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames_data, as: 'framesData', class: Google::Apis::MigrationcenterV1alpha1::AssetFrame, decorator: Google::Apis::MigrationcenterV1alpha1::AssetFrame::Representation
      
        end
      end
      
      class FstabEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file, as: 'file'
          property :freq, as: 'freq'
          property :mntops, as: 'mntops'
          property :passno, as: 'passno'
          property :spec, as: 'spec'
          property :vfstype, as: 'vfstype'
        end
      end
      
      class FstabEntryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::FstabEntry, decorator: Google::Apis::MigrationcenterV1alpha1::FstabEntry::Representation
      
        end
      end
      
      class GcsPayloadInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          property :path, as: 'path'
        end
      end
      
      class GuestConfigDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fstab, as: 'fstab', class: Google::Apis::MigrationcenterV1alpha1::FstabEntryList, decorator: Google::Apis::MigrationcenterV1alpha1::FstabEntryList::Representation
      
          property :hosts, as: 'hosts', class: Google::Apis::MigrationcenterV1alpha1::HostsEntryList, decorator: Google::Apis::MigrationcenterV1alpha1::HostsEntryList::Representation
      
          property :issue, as: 'issue'
          property :nfs_exports, as: 'nfsExports', class: Google::Apis::MigrationcenterV1alpha1::NfsExportList, decorator: Google::Apis::MigrationcenterV1alpha1::NfsExportList::Representation
      
          property :selinux, as: 'selinux', class: Google::Apis::MigrationcenterV1alpha1::Selinux, decorator: Google::Apis::MigrationcenterV1alpha1::Selinux::Representation
      
        end
      end
      
      class GuestInstalledApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
          property :time, as: 'time'
          property :vendor, as: 'vendor'
          property :version, as: 'version'
        end
      end
      
      class GuestInstalledApplicationList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplication, decorator: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplication::Representation
      
        end
      end
      
      class GuestOsDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::MigrationcenterV1alpha1::GuestConfigDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GuestConfigDetails::Representation
      
          property :runtime, as: 'runtime', class: Google::Apis::MigrationcenterV1alpha1::GuestRuntimeDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GuestRuntimeDetails::Representation
      
        end
      end
      
      class GuestRuntimeDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :domain, as: 'domain'
          property :installed_apps, as: 'installedApps', class: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplicationList, decorator: Google::Apis::MigrationcenterV1alpha1::GuestInstalledApplicationList::Representation
      
          property :last_uptime, as: 'lastUptime', class: Google::Apis::MigrationcenterV1alpha1::Date, decorator: Google::Apis::MigrationcenterV1alpha1::Date::Representation
      
          property :machine_name, as: 'machineName'
          property :network_info, as: 'networkInfo', class: Google::Apis::MigrationcenterV1alpha1::RuntimeNetworkInfo, decorator: Google::Apis::MigrationcenterV1alpha1::RuntimeNetworkInfo::Representation
      
          property :open_file_list, as: 'openFileList', class: Google::Apis::MigrationcenterV1alpha1::OpenFileList, decorator: Google::Apis::MigrationcenterV1alpha1::OpenFileList::Representation
      
          property :processes, as: 'processes', class: Google::Apis::MigrationcenterV1alpha1::RunningProcessList, decorator: Google::Apis::MigrationcenterV1alpha1::RunningProcessList::Representation
      
          property :services, as: 'services', class: Google::Apis::MigrationcenterV1alpha1::RunningServiceList, decorator: Google::Apis::MigrationcenterV1alpha1::RunningServiceList::Representation
      
        end
      end
      
      class HostsEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :host_names, as: 'hostNames'
          property :ip, as: 'ip'
        end
      end
      
      class HostsEntryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::HostsEntry, decorator: Google::Apis::MigrationcenterV1alpha1::HostsEntry::Representation
      
        end
      end
      
      class ImportError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_details, as: 'errorDetails'
          property :severity, as: 'severity'
        end
      end
      
      class ImportJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset_source, as: 'assetSource'
          property :complete_time, as: 'completeTime'
          property :create_time, as: 'createTime'
          property :execution_report, as: 'executionReport', class: Google::Apis::MigrationcenterV1alpha1::ExecutionReport, decorator: Google::Apis::MigrationcenterV1alpha1::ExecutionReport::Representation
      
          property :gcs_payload, as: 'gcsPayload', class: Google::Apis::MigrationcenterV1alpha1::GcsPayloadInfo, decorator: Google::Apis::MigrationcenterV1alpha1::GcsPayloadInfo::Representation
      
          property :inline_payload, as: 'inlinePayload', class: Google::Apis::MigrationcenterV1alpha1::InlinePayloadInfo, decorator: Google::Apis::MigrationcenterV1alpha1::InlinePayloadInfo::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :validation_report, as: 'validationReport', class: Google::Apis::MigrationcenterV1alpha1::ValidationReport, decorator: Google::Apis::MigrationcenterV1alpha1::ValidationReport::Representation
      
        end
      end
      
      class ImportRowError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :errors, as: 'errors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
          property :row_number, as: 'rowNumber'
          property :vm_name, as: 'vmName'
          property :vm_uuid, as: 'vmUuid'
        end
      end
      
      class InlinePayloadInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :format, as: 'format'
          collection :payload, as: 'payload', class: Google::Apis::MigrationcenterV1alpha1::PayloadFile, decorator: Google::Apis::MigrationcenterV1alpha1::PayloadFile::Representation
      
        end
      end
      
      class ListAssetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assets, as: 'assets', class: Google::Apis::MigrationcenterV1alpha1::Asset, decorator: Google::Apis::MigrationcenterV1alpha1::Asset::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListImportJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :import_jobs, as: 'importJobs', class: Google::Apis::MigrationcenterV1alpha1::ImportJob, decorator: Google::Apis::MigrationcenterV1alpha1::ImportJob::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::MigrationcenterV1alpha1::Location, decorator: Google::Apis::MigrationcenterV1alpha1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::MigrationcenterV1alpha1::Operation, decorator: Google::Apis::MigrationcenterV1alpha1::Operation::Representation
      
        end
      end
      
      class ListSourcesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :sources, as: 'sources', class: Google::Apis::MigrationcenterV1alpha1::Source, decorator: Google::Apis::MigrationcenterV1alpha1::Source::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class MemoryUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :utilized_percentage, as: 'utilizedPercentage'
        end
      end
      
      class NetworkAdapterDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :adapter_type, as: 'adapterType'
          property :addresses, as: 'addresses', class: Google::Apis::MigrationcenterV1alpha1::NetworkAddressList, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAddressList::Representation
      
          property :mac_address, as: 'macAddress'
        end
      end
      
      class NetworkAdapterList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_adapters, as: 'networkAdapters', class: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterDetails, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterDetails::Representation
      
        end
      end
      
      class NetworkAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignment, as: 'assignment'
          property :bcast, as: 'bcast'
          property :fqdn, as: 'fqdn'
          property :ip_address, as: 'ipAddress'
          property :subnet_mask, as: 'subnetMask'
        end
      end
      
      class NetworkAddressList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses', class: Google::Apis::MigrationcenterV1alpha1::NetworkAddress, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAddress::Representation
      
        end
      end
      
      class NetworkConnection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :local_ip_address, as: 'localIpAddress'
          property :local_port, as: 'localPort'
          property :pid, :numeric_string => true, as: 'pid'
          property :process_name, as: 'processName'
          property :protocol, as: 'protocol'
          property :remote_ip_address, as: 'remoteIpAddress'
          property :remote_port, as: 'remotePort'
          property :state, as: 'state'
        end
      end
      
      class NetworkConnectionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::NetworkConnection, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkConnection::Representation
      
        end
      end
      
      class NetworkUsageSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :average_egress_bps, as: 'averageEgressBps'
          property :average_ingress_bps, as: 'averageIngressBps'
        end
      end
      
      class NfsExport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_directory, as: 'exportDirectory'
          collection :hosts, as: 'hosts'
        end
      end
      
      class NfsExportList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::NfsExport, decorator: Google::Apis::MigrationcenterV1alpha1::NfsExport::Representation
      
        end
      end
      
      class OpenFileDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :command, as: 'command'
          property :file_path, as: 'filePath'
          property :file_type, as: 'fileType'
          property :user, as: 'user'
        end
      end
      
      class OpenFileList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :entries, as: 'entries', class: Google::Apis::MigrationcenterV1alpha1::OpenFileDetails, decorator: Google::Apis::MigrationcenterV1alpha1::OpenFileDetails::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::MigrationcenterV1alpha1::Status, decorator: Google::Apis::MigrationcenterV1alpha1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class PayloadFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :name, as: 'name'
        end
      end
      
      class PerformanceSample
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu, as: 'cpu', class: Google::Apis::MigrationcenterV1alpha1::CpuUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::CpuUsageSample::Representation
      
          property :disk, as: 'disk', class: Google::Apis::MigrationcenterV1alpha1::DiskUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::DiskUsageSample::Representation
      
          property :memory, as: 'memory', class: Google::Apis::MigrationcenterV1alpha1::MemoryUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::MemoryUsageSample::Representation
      
          property :network, as: 'network', class: Google::Apis::MigrationcenterV1alpha1::NetworkUsageSample, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkUsageSample::Representation
      
          property :sample_time, as: 'sampleTime'
        end
      end
      
      class PlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :vmware_details, as: 'vmwareDetails', class: Google::Apis::MigrationcenterV1alpha1::VmwarePlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VmwarePlatformDetails::Representation
      
        end
      end
      
      class ReportAssetFramesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RunImportJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class RunningProcess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :attributes, as: 'attributes'
          property :cmdline, as: 'cmdline'
          property :exe_path, as: 'exePath'
          property :pid, :numeric_string => true, as: 'pid'
          property :user, as: 'user'
        end
      end
      
      class RunningProcessList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :processes, as: 'processes', class: Google::Apis::MigrationcenterV1alpha1::RunningProcess, decorator: Google::Apis::MigrationcenterV1alpha1::RunningProcess::Representation
      
        end
      end
      
      class RunningService
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cmdline, as: 'cmdline'
          property :exe_path, as: 'exePath'
          property :name, as: 'name'
          property :pid, :numeric_string => true, as: 'pid'
          property :start_mode, as: 'startMode'
          property :state, as: 'state'
          property :status, as: 'status'
        end
      end
      
      class RunningServiceList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :services, as: 'services', class: Google::Apis::MigrationcenterV1alpha1::RunningService, decorator: Google::Apis::MigrationcenterV1alpha1::RunningService::Representation
      
        end
      end
      
      class RuntimeNetworkInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connections, as: 'connections', class: Google::Apis::MigrationcenterV1alpha1::NetworkConnectionList, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkConnectionList::Representation
      
          property :netstat, as: 'netstat'
          property :netstat_time, as: 'netstatTime', class: Google::Apis::MigrationcenterV1alpha1::DateTime, decorator: Google::Apis::MigrationcenterV1alpha1::DateTime::Representation
      
        end
      end
      
      class Selinux
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :mode, as: 'mode'
        end
      end
      
      class Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :is_managed, as: 'isManaged'
          property :name, as: 'name'
          property :pending_frame_count, as: 'pendingFrameCount'
          property :priority, as: 'priority'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class TimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
      
      class UpdateAssetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :asset, as: 'asset', class: Google::Apis::MigrationcenterV1alpha1::Asset, decorator: Google::Apis::MigrationcenterV1alpha1::Asset::Representation
      
          property :request_id, as: 'requestId'
          property :update_mask, as: 'updateMask'
        end
      end
      
      class ValidateImportJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class ValidationReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_validations, as: 'fileValidations', class: Google::Apis::MigrationcenterV1alpha1::FileValidationReport, decorator: Google::Apis::MigrationcenterV1alpha1::FileValidationReport::Representation
      
          collection :job_errors, as: 'jobErrors', class: Google::Apis::MigrationcenterV1alpha1::ImportError, decorator: Google::Apis::MigrationcenterV1alpha1::ImportError::Representation
      
        end
      end
      
      class VirtualMachineArchitectureDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bios, as: 'bios', class: Google::Apis::MigrationcenterV1alpha1::BiosDetails, decorator: Google::Apis::MigrationcenterV1alpha1::BiosDetails::Representation
      
          property :cpu_architecture, as: 'cpuArchitecture'
          property :cpu_manufacturer, as: 'cpuManufacturer'
          property :cpu_name, as: 'cpuName'
          property :cpu_socket_count, as: 'cpuSocketCount'
          property :cpu_thread_count, as: 'cpuThreadCount'
          property :firmware, as: 'firmware'
          property :hyperthreading, as: 'hyperthreading'
          property :vendor, as: 'vendor'
        end
      end
      
      class VirtualMachineDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :core_count, as: 'coreCount'
          property :guest_os, as: 'guestOs', class: Google::Apis::MigrationcenterV1alpha1::GuestOsDetails, decorator: Google::Apis::MigrationcenterV1alpha1::GuestOsDetails::Representation
      
          property :memory_mb, as: 'memoryMb'
          property :os_family, as: 'osFamily'
          property :os_name, as: 'osName'
          property :platform, as: 'platform', class: Google::Apis::MigrationcenterV1alpha1::PlatformDetails, decorator: Google::Apis::MigrationcenterV1alpha1::PlatformDetails::Representation
      
          property :power_state, as: 'powerState'
          property :vcenter_folder, as: 'vcenterFolder'
          property :vcenter_url, as: 'vcenterUrl'
          property :vcenter_vm_id, as: 'vcenterVmId'
          property :vm_architecture, as: 'vmArchitecture', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineArchitectureDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineArchitectureDetails::Representation
      
          property :vm_disks, as: 'vmDisks', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDiskDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineDiskDetails::Representation
      
          property :vm_name, as: 'vmName'
          property :vm_network, as: 'vmNetwork', class: Google::Apis::MigrationcenterV1alpha1::VirtualMachineNetworkDetails, decorator: Google::Apis::MigrationcenterV1alpha1::VirtualMachineNetworkDetails::Representation
      
          property :vm_uuid, as: 'vmUuid'
        end
      end
      
      class VirtualMachineDiskDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disks, as: 'disks', class: Google::Apis::MigrationcenterV1alpha1::DiskEntryList, decorator: Google::Apis::MigrationcenterV1alpha1::DiskEntryList::Representation
      
          property :hdd_total_capacity_bytes, :numeric_string => true, as: 'hddTotalCapacityBytes'
          property :hdd_total_free_bytes, :numeric_string => true, as: 'hddTotalFreeBytes'
          property :lsblk_json, as: 'lsblkJson'
        end
      end
      
      class VirtualMachineNetworkDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_gw, as: 'defaultGw'
          property :network_adapters, as: 'networkAdapters', class: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterList, decorator: Google::Apis::MigrationcenterV1alpha1::NetworkAdapterList::Representation
      
          property :primary_ip_address, as: 'primaryIpAddress'
          property :primary_mac_address, as: 'primaryMacAddress'
        end
      end
      
      class VmwareDiskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backing_type, as: 'backingType'
          property :rdm_compatibility_mode, as: 'rdmCompatibilityMode'
          property :shared, as: 'shared'
          property :vmdk_disk_mode, as: 'vmdkDiskMode'
        end
      end
      
      class VmwarePlatformDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :esx_version, as: 'esxVersion'
          property :osid, as: 'osid'
          property :vcenter_version, as: 'vcenterVersion'
        end
      end
    end
  end
end
