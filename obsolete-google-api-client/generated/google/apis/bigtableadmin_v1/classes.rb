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
    module BigtableadminV1
      
      # A backup of a Cloud Bigtable table.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Output only. `end_time` is the time that the backup was finished. The row data
        # in the backup will be no newer than this timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. The expiration time of the backup, with microseconds granularity
        # that must be at least 6 hours and at most 30 days from the time the request is
        # received. Once the `expire_time` has passed, Cloud Bigtable will delete the
        # backup and free the resources used by the backup.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # A globally unique identifier for the backup which cannot be changed. Values
        # are of the form `projects/`project`/instances/`instance`/clusters/`cluster`/
        # backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50
        # characters in length. The backup is stored in the cluster identified by the
        # prefix of the backup name of the form `projects/`project`/instances/`instance`/
        # clusters/`cluster``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Size of the backup in bytes.
        # Corresponds to the JSON property `sizeBytes`
        # @return [Fixnum]
        attr_accessor :size_bytes
      
        # Required. Immutable. Name of the table from which this backup was created.
        # This needs to be in the same instance as the backup. Values are of the form `
        # projects/`project`/instances/`instance`/tables/`source_table``.
        # Corresponds to the JSON property `sourceTable`
        # @return [String]
        attr_accessor :source_table
      
        # Output only. `start_time` is the time that the backup was started (i.e.
        # approximately the time the CreateBackup request is received). The row data in
        # this backup will be no older than this timestamp.
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
          @end_time = args[:end_time] if args.key?(:end_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @name = args[:name] if args.key?(:name)
          @size_bytes = args[:size_bytes] if args.key?(:size_bytes)
          @source_table = args[:source_table] if args.key?(:source_table)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Information about a backup.
      class BackupInfo
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the backup.
        # Corresponds to the JSON property `backup`
        # @return [String]
        attr_accessor :backup
      
        # Output only. This time that the backup was finished. Row data in the backup
        # will be no newer than this timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Name of the table the backup was created from.
        # Corresponds to the JSON property `sourceTable`
        # @return [String]
        attr_accessor :source_table
      
        # Output only. The time that the backup was started. Row data in the backup will
        # be no older than this timestamp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup = args[:backup] if args.key?(:backup)
          @end_time = args[:end_time] if args.key?(:end_time)
          @source_table = args[:source_table] if args.key?(:source_table)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # A resizable group of nodes in a particular cloud location, capable of serving
      # all Tables in the parent Instance.
      class Cluster
        include Google::Apis::Core::Hashable
      
        # Immutable. The type of storage used by this cluster to serve its parent
        # instance's tables, unless explicitly overridden.
        # Corresponds to the JSON property `defaultStorageType`
        # @return [String]
        attr_accessor :default_storage_type
      
        # Immutable. The location where this cluster's nodes and storage reside. For
        # best performance, clients should be located as close as possible to this
        # cluster. Currently only zones are supported, so values should be of the form `
        # projects/`project`/locations/`zone``.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The unique name of the cluster. Values are of the form `projects/`project`/
        # instances/`instance`/clusters/a-z*`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The number of nodes allocated to this cluster. More nodes enable
        # higher throughput and more consistent performance.
        # Corresponds to the JSON property `serveNodes`
        # @return [Fixnum]
        attr_accessor :serve_nodes
      
        # Output only. The current state of the cluster.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @default_storage_type = args[:default_storage_type] if args.key?(:default_storage_type)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @serve_nodes = args[:serve_nodes] if args.key?(:serve_nodes)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Metadata type for the operation returned by CreateBackup.
      class CreateBackupMetadata
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation finished or was cancelled.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # The name of the backup being created.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The name of the table the backup is created from.
        # Corresponds to the JSON property `sourceTable`
        # @return [String]
        attr_accessor :source_table
      
        # The time at which this operation started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @name = args[:name] if args.key?(:name)
          @source_table = args[:source_table] if args.key?(:source_table)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # The metadata for the Operation returned by CreateCluster.
      class CreateClusterMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.CreateCluster.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV1::CreateClusterRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # Keys: the full `name` of each table that existed in the instance when
        # CreateCluster was first called, i.e. `projects//instances//tables/`. Any table
        # added to the instance by a later API call will be created in the new cluster
        # by that API call, not this one. Values: information on how much of a table's
        # data has been copied to the newly-created cluster so far.
        # Corresponds to the JSON property `tables`
        # @return [Hash<String,Google::Apis::BigtableadminV1::TableProgress>]
        attr_accessor :tables
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
          @tables = args[:tables] if args.key?(:tables)
        end
      end
      
      # Request message for BigtableInstanceAdmin.CreateCluster.
      class CreateClusterRequest
        include Google::Apis::Core::Hashable
      
        # A resizable group of nodes in a particular cloud location, capable of serving
        # all Tables in the parent Instance.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::BigtableadminV1::Cluster]
        attr_accessor :cluster
      
        # Required. The ID to be used when referring to the new cluster within its
        # instance, e.g., just `mycluster` rather than `projects/myproject/instances/
        # myinstance/clusters/mycluster`.
        # Corresponds to the JSON property `clusterId`
        # @return [String]
        attr_accessor :cluster_id
      
        # Required. The unique name of the instance in which to create the new cluster.
        # Values are of the form `projects/`project`/instances/`instance``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @cluster_id = args[:cluster_id] if args.key?(:cluster_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # The metadata for the Operation returned by CreateInstance.
      class CreateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.CreateInstance.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV1::CreateInstanceRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # Request message for BigtableInstanceAdmin.CreateInstance.
      class CreateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # Required. The clusters to be created within the instance, mapped by desired
        # cluster ID, e.g., just `mycluster` rather than `projects/myproject/instances/
        # myinstance/clusters/mycluster`. Fields marked `OutputOnly` must be left blank.
        # Currently, at most four clusters can be specified.
        # Corresponds to the JSON property `clusters`
        # @return [Hash<String,Google::Apis::BigtableadminV1::Cluster>]
        attr_accessor :clusters
      
        # A collection of Bigtable Tables and the resources that serve them. All tables
        # in an instance are served from all Clusters in the instance.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::BigtableadminV1::Instance]
        attr_accessor :instance
      
        # Required. The ID to be used when referring to the new instance within its
        # project, e.g., just `myinstance` rather than `projects/myproject/instances/
        # myinstance`.
        # Corresponds to the JSON property `instanceId`
        # @return [String]
        attr_accessor :instance_id
      
        # Required. The unique name of the project in which to create the new instance.
        # Values are of the form `projects/`project``.
        # Corresponds to the JSON property `parent`
        # @return [String]
        attr_accessor :parent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clusters = args[:clusters] if args.key?(:clusters)
          @instance = args[:instance] if args.key?(:instance)
          @instance_id = args[:instance_id] if args.key?(:instance_id)
          @parent = args[:parent] if args.key?(:parent)
        end
      end
      
      # Added to the error payload.
      class FailureTrace
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `frames`
        # @return [Array<Google::Apis::BigtableadminV1::Frame>]
        attr_accessor :frames
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @frames = args[:frames] if args.key?(:frames)
        end
      end
      
      # 
      class Frame
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `targetName`
        # @return [String]
        attr_accessor :target_name
      
        # 
        # Corresponds to the JSON property `workflowGuid`
        # @return [String]
        attr_accessor :workflow_guid
      
        # 
        # Corresponds to the JSON property `zoneId`
        # @return [String]
        attr_accessor :zone_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @target_name = args[:target_name] if args.key?(:target_name)
          @workflow_guid = args[:workflow_guid] if args.key?(:workflow_guid)
          @zone_id = args[:zone_id] if args.key?(:zone_id)
        end
      end
      
      # A collection of Bigtable Tables and the resources that serve them. All tables
      # in an instance are served from all Clusters in the instance.
      class Instance
        include Google::Apis::Core::Hashable
      
        # Required. The descriptive name for this instance as it appears in UIs. Can be
        # changed at any time, but should be kept globally unique to avoid confusion.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Required. Labels are a flexible and lightweight mechanism for organizing cloud
        # resources into groups that reflect a customer's organizational needs and
        # deployment strategies. They can be used to filter resources and aggregate
        # metrics. * Label keys must be between 1 and 63 characters long and must
        # conform to the regular expression: `\p`Ll`\p`Lo``0,62``. * Label values must
        # be between 0 and 63 characters long and must conform to the regular expression:
        # `[\p`Ll`\p`Lo`\p`N`_-]`0,63``. * No more than 64 labels can be associated
        # with a given resource. * Keys and values must both be under 128 bytes.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The unique name of the instance. Values are of the form `projects/`project`/
        # instances/a-z+[a-z0-9]`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The current state of the instance.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Required. The type of the instance. Defaults to `PRODUCTION`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Encapsulates progress related information for a Cloud Bigtable long running
      # operation.
      class OperationProgress
        include Google::Apis::Core::Hashable
      
        # If set, the time at which this operation failed or was completed successfully.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Percent completion of the operation. Values are between 0 and 100 inclusive.
        # Corresponds to the JSON property `progressPercent`
        # @return [Fixnum]
        attr_accessor :progress_percent
      
        # Time the request was received.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @progress_percent = args[:progress_percent] if args.key?(:progress_percent)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Metadata type for the long-running operation used to track the progress of
      # optimizations performed on a newly restored table. This long-running operation
      # is automatically created by the system after the successful completion of a
      # table restore, and cannot be cancelled.
      class OptimizeRestoredTableMetadata
        include Google::Apis::Core::Hashable
      
        # Name of the restored table being optimized.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Encapsulates progress related information for a Cloud Bigtable long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::BigtableadminV1::OperationProgress]
        attr_accessor :progress
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @progress = args[:progress] if args.key?(:progress)
        end
      end
      
      # Request message for BigtableInstanceAdmin.PartialUpdateInstance.
      class PartialUpdateInstanceRequest
        include Google::Apis::Core::Hashable
      
        # A collection of Bigtable Tables and the resources that serve them. All tables
        # in an instance are served from all Clusters in the instance.
        # Corresponds to the JSON property `instance`
        # @return [Google::Apis::BigtableadminV1::Instance]
        attr_accessor :instance
      
        # Required. The subset of Instance fields which should be replaced. Must be
        # explicitly set.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance = args[:instance] if args.key?(:instance)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Metadata type for the long-running operation returned by RestoreTable.
      class RestoreTableMetadata
        include Google::Apis::Core::Hashable
      
        # Information about a backup.
        # Corresponds to the JSON property `backupInfo`
        # @return [Google::Apis::BigtableadminV1::BackupInfo]
        attr_accessor :backup_info
      
        # Name of the table being created and restored to.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # If exists, the name of the long-running operation that will be used to track
        # the post-restore optimization process to optimize the performance of the
        # restored table. The metadata type of the long-running operation is
        # OptimizeRestoreTableMetadata. The response type is Empty. This long-running
        # operation may be automatically created by the system if applicable after the
        # RestoreTable long-running operation completes successfully. This operation may
        # not be created if the table is already optimized or the restore was not
        # successful.
        # Corresponds to the JSON property `optimizeTableOperationName`
        # @return [String]
        attr_accessor :optimize_table_operation_name
      
        # Encapsulates progress related information for a Cloud Bigtable long running
        # operation.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::BigtableadminV1::OperationProgress]
        attr_accessor :progress
      
        # The type of the restore source.
        # Corresponds to the JSON property `sourceType`
        # @return [String]
        attr_accessor :source_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @backup_info = args[:backup_info] if args.key?(:backup_info)
          @name = args[:name] if args.key?(:name)
          @optimize_table_operation_name = args[:optimize_table_operation_name] if args.key?(:optimize_table_operation_name)
          @progress = args[:progress] if args.key?(:progress)
          @source_type = args[:source_type] if args.key?(:source_type)
        end
      end
      
      # Progress info for copying a table's data to the new cluster.
      class TableProgress
        include Google::Apis::Core::Hashable
      
        # Estimate of the number of bytes copied so far for this table. This will
        # eventually reach 'estimated_size_bytes' unless the table copy is CANCELLED.
        # Corresponds to the JSON property `estimatedCopiedBytes`
        # @return [Fixnum]
        attr_accessor :estimated_copied_bytes
      
        # Estimate of the size of the table to be copied.
        # Corresponds to the JSON property `estimatedSizeBytes`
        # @return [Fixnum]
        attr_accessor :estimated_size_bytes
      
        # 
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_copied_bytes = args[:estimated_copied_bytes] if args.key?(:estimated_copied_bytes)
          @estimated_size_bytes = args[:estimated_size_bytes] if args.key?(:estimated_size_bytes)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The metadata for the Operation returned by UpdateAppProfile.
      class UpdateAppProfileMetadata
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The metadata for the Operation returned by UpdateCluster.
      class UpdateClusterMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # A resizable group of nodes in a particular cloud location, capable of serving
        # all Tables in the parent Instance.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV1::Cluster]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
      
      # The metadata for the Operation returned by UpdateInstance.
      class UpdateInstanceMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.PartialUpdateInstance.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV1::PartialUpdateInstanceRequest]
        attr_accessor :original_request
      
        # The time at which the original request was received.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @original_request = args[:original_request] if args.key?(:original_request)
          @request_time = args[:request_time] if args.key?(:request_time)
        end
      end
    end
  end
end
