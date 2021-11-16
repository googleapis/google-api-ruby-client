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
    module BigtableadminV1
      
      # Limits for the number of nodes a Cluster can autoscale up/down to.
      class AutoscalingLimits
        include Google::Apis::Core::Hashable
      
        # Required. Maximum number of nodes to scale up to.
        # Corresponds to the JSON property `maxServeNodes`
        # @return [Fixnum]
        attr_accessor :max_serve_nodes
      
        # Required. Minimum number of nodes to scale down to.
        # Corresponds to the JSON property `minServeNodes`
        # @return [Fixnum]
        attr_accessor :min_serve_nodes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_serve_nodes = args[:max_serve_nodes] if args.key?(:max_serve_nodes)
          @min_serve_nodes = args[:min_serve_nodes] if args.key?(:min_serve_nodes)
        end
      end
      
      # The Autoscaling targets for a Cluster. These determine the recommended nodes.
      class AutoscalingTargets
        include Google::Apis::Core::Hashable
      
        # The cpu utilization that the Autoscaler should be trying to achieve. This
        # number is on a scale from 0 (no utilization) to 100 (total utilization).
        # Corresponds to the JSON property `cpuUtilizationPercent`
        # @return [Fixnum]
        attr_accessor :cpu_utilization_percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpu_utilization_percent = args[:cpu_utilization_percent] if args.key?(:cpu_utilization_percent)
        end
      end
      
      # A backup of a Cloud Bigtable table.
      class Backup
        include Google::Apis::Core::Hashable
      
        # Encryption information for a given resource. If this resource is protected
        # with customer managed encryption, the in-use Cloud Key Management Service (
        # Cloud KMS) key version is specified along with its status.
        # Corresponds to the JSON property `encryptionInfo`
        # @return [Google::Apis::BigtableadminV1::EncryptionInfo]
        attr_accessor :encryption_info
      
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
          @encryption_info = args[:encryption_info] if args.key?(:encryption_info)
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
      
        # Configuration for a cluster.
        # Corresponds to the JSON property `clusterConfig`
        # @return [Google::Apis::BigtableadminV1::ClusterConfig]
        attr_accessor :cluster_config
      
        # Immutable. The type of storage used by this cluster to serve its parent
        # instance's tables, unless explicitly overridden.
        # Corresponds to the JSON property `defaultStorageType`
        # @return [String]
        attr_accessor :default_storage_type
      
        # Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
        # Corresponds to the JSON property `encryptionConfig`
        # @return [Google::Apis::BigtableadminV1::EncryptionConfig]
        attr_accessor :encryption_config
      
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
          @cluster_config = args[:cluster_config] if args.key?(:cluster_config)
          @default_storage_type = args[:default_storage_type] if args.key?(:default_storage_type)
          @encryption_config = args[:encryption_config] if args.key?(:encryption_config)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @serve_nodes = args[:serve_nodes] if args.key?(:serve_nodes)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Autoscaling config for a cluster.
      class ClusterAutoscalingConfig
        include Google::Apis::Core::Hashable
      
        # Limits for the number of nodes a Cluster can autoscale up/down to.
        # Corresponds to the JSON property `autoscalingLimits`
        # @return [Google::Apis::BigtableadminV1::AutoscalingLimits]
        attr_accessor :autoscaling_limits
      
        # The Autoscaling targets for a Cluster. These determine the recommended nodes.
        # Corresponds to the JSON property `autoscalingTargets`
        # @return [Google::Apis::BigtableadminV1::AutoscalingTargets]
        attr_accessor :autoscaling_targets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @autoscaling_limits = args[:autoscaling_limits] if args.key?(:autoscaling_limits)
          @autoscaling_targets = args[:autoscaling_targets] if args.key?(:autoscaling_targets)
        end
      end
      
      # Configuration for a cluster.
      class ClusterConfig
        include Google::Apis::Core::Hashable
      
        # Autoscaling config for a cluster.
        # Corresponds to the JSON property `clusterAutoscalingConfig`
        # @return [Google::Apis::BigtableadminV1::ClusterAutoscalingConfig]
        attr_accessor :cluster_autoscaling_config
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster_autoscaling_config = args[:cluster_autoscaling_config] if args.key?(:cluster_autoscaling_config)
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
      
      # Cloud Key Management Service (Cloud KMS) settings for a CMEK-protected cluster.
      class EncryptionConfig
        include Google::Apis::Core::Hashable
      
        # Describes the Cloud KMS encryption key that will be used to protect the
        # destination Bigtable cluster. The requirements for this key are: 1) The Cloud
        # Bigtable service account associated with the project that contains this
        # cluster must be granted the `cloudkms.cryptoKeyEncrypterDecrypter` role on the
        # CMEK key. 2) Only regional keys can be used and the region of the CMEK key
        # must match the region of the cluster. 3) All clusters within an instance must
        # use the same CMEK key. Values are of the form `projects/`project`/locations/`
        # location`/keyRings/`keyring`/cryptoKeys/`key``
        # Corresponds to the JSON property `kmsKeyName`
        # @return [String]
        attr_accessor :kms_key_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kms_key_name = args[:kms_key_name] if args.key?(:kms_key_name)
        end
      end
      
      # Encryption information for a given resource. If this resource is protected
      # with customer managed encryption, the in-use Cloud Key Management Service (
      # Cloud KMS) key version is specified along with its status.
      class EncryptionInfo
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `encryptionStatus`
        # @return [Google::Apis::BigtableadminV1::Status]
        attr_accessor :encryption_status
      
        # Output only. The type of encryption used to protect this resource.
        # Corresponds to the JSON property `encryptionType`
        # @return [String]
        attr_accessor :encryption_type
      
        # Output only. The version of the Cloud KMS key specified in the parent cluster
        # that is in use for the data underlying this table.
        # Corresponds to the JSON property `kmsKeyVersion`
        # @return [String]
        attr_accessor :kms_key_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @encryption_status = args[:encryption_status] if args.key?(:encryption_status)
          @encryption_type = args[:encryption_type] if args.key?(:encryption_type)
          @kms_key_version = args[:kms_key_version] if args.key?(:kms_key_version)
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
      
        # Output only. A server-assigned timestamp representing when this Instance was
        # created. For instances created before this field was added (August 2021), this
        # value is `seconds: 0, nanos: 1`.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
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
          @create_time = args[:create_time] if args.key?(:create_time)
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
      
      # The metadata for the Operation returned by PartialUpdateCluster.
      class PartialUpdateClusterMetadata
        include Google::Apis::Core::Hashable
      
        # The time at which the operation failed or was completed successfully.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Request message for BigtableInstanceAdmin.PartialUpdateCluster.
        # Corresponds to the JSON property `originalRequest`
        # @return [Google::Apis::BigtableadminV1::PartialUpdateClusterRequest]
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
      
      # Request message for BigtableInstanceAdmin.PartialUpdateCluster.
      class PartialUpdateClusterRequest
        include Google::Apis::Core::Hashable
      
        # A resizable group of nodes in a particular cloud location, capable of serving
        # all Tables in the parent Instance.
        # Corresponds to the JSON property `cluster`
        # @return [Google::Apis::BigtableadminV1::Cluster]
        attr_accessor :cluster
      
        # Required. The subset of Cluster fields which should be replaced. Must be
        # explicitly set.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cluster = args[:cluster] if args.key?(:cluster)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
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
