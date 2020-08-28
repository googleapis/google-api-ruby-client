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
      
      class Backup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BackupInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateBackupMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailureTrace
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Frame
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Instance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OptimizeRestoredTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PartialUpdateInstanceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RestoreTableMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateAppProfileMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateClusterMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateInstanceMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Backup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :expire_time, as: 'expireTime'
          property :name, as: 'name'
          property :size_bytes, :numeric_string => true, as: 'sizeBytes'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class BackupInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup, as: 'backup'
          property :end_time, as: 'endTime'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_storage_type, as: 'defaultStorageType'
          property :location, as: 'location'
          property :name, as: 'name'
          property :serve_nodes, as: 'serveNodes'
          property :state, as: 'state'
        end
      end
      
      class CreateBackupMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :name, as: 'name'
          property :source_table, as: 'sourceTable'
          property :start_time, as: 'startTime'
        end
      end
      
      class CreateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::CreateClusterRequest, decorator: Google::Apis::BigtableadminV1::CreateClusterRequest::Representation
      
          property :request_time, as: 'requestTime'
          hash :tables, as: 'tables', class: Google::Apis::BigtableadminV1::TableProgress, decorator: Google::Apis::BigtableadminV1::TableProgress::Representation
      
        end
      end
      
      class CreateClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster', class: Google::Apis::BigtableadminV1::Cluster, decorator: Google::Apis::BigtableadminV1::Cluster::Representation
      
          property :cluster_id, as: 'clusterId'
          property :parent, as: 'parent'
        end
      end
      
      class CreateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::CreateInstanceRequest, decorator: Google::Apis::BigtableadminV1::CreateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class CreateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :clusters, as: 'clusters', class: Google::Apis::BigtableadminV1::Cluster, decorator: Google::Apis::BigtableadminV1::Cluster::Representation
      
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV1::Instance, decorator: Google::Apis::BigtableadminV1::Instance::Representation
      
          property :instance_id, as: 'instanceId'
          property :parent, as: 'parent'
        end
      end
      
      class FailureTrace
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :frames, as: 'frames', class: Google::Apis::BigtableadminV1::Frame, decorator: Google::Apis::BigtableadminV1::Frame::Representation
      
        end
      end
      
      class Frame
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :target_name, as: 'targetName'
          property :workflow_guid, as: 'workflowGuid'
          property :zone_id, as: 'zoneId'
        end
      end
      
      class Instance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class OperationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :progress_percent, as: 'progressPercent'
          property :start_time, as: 'startTime'
        end
      end
      
      class OptimizeRestoredTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV1::OperationProgress, decorator: Google::Apis::BigtableadminV1::OperationProgress::Representation
      
        end
      end
      
      class PartialUpdateInstanceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance, as: 'instance', class: Google::Apis::BigtableadminV1::Instance, decorator: Google::Apis::BigtableadminV1::Instance::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class RestoreTableMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :backup_info, as: 'backupInfo', class: Google::Apis::BigtableadminV1::BackupInfo, decorator: Google::Apis::BigtableadminV1::BackupInfo::Representation
      
          property :name, as: 'name'
          property :optimize_table_operation_name, as: 'optimizeTableOperationName'
          property :progress, as: 'progress', class: Google::Apis::BigtableadminV1::OperationProgress, decorator: Google::Apis::BigtableadminV1::OperationProgress::Representation
      
          property :source_type, as: 'sourceType'
        end
      end
      
      class TableProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_copied_bytes, :numeric_string => true, as: 'estimatedCopiedBytes'
          property :estimated_size_bytes, :numeric_string => true, as: 'estimatedSizeBytes'
          property :state, as: 'state'
        end
      end
      
      class UpdateAppProfileMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UpdateClusterMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::Cluster, decorator: Google::Apis::BigtableadminV1::Cluster::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
      
      class UpdateInstanceMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :finish_time, as: 'finishTime'
          property :original_request, as: 'originalRequest', class: Google::Apis::BigtableadminV1::PartialUpdateInstanceRequest, decorator: Google::Apis::BigtableadminV1::PartialUpdateInstanceRequest::Representation
      
          property :request_time, as: 'requestTime'
        end
      end
    end
  end
end
