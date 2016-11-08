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
    module DataprocV1
      
      class Cluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GceClusterConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceGroupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiskConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ManagedGroupConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SoftwareConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NodeInitializationAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterMetrics
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListClustersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnoseClusterRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SubmitJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobPlacement
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HadoopJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LoggingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PySparkJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HiveJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class QueryList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PigJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SparkSqlJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class YarnApplication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnoseClusterResults
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClusterOperationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DiagnoseClusterOutputLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Cluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :cluster_name, as: 'clusterName'
          property :config, as: 'config', class: Google::Apis::DataprocV1::ClusterConfig, decorator: Google::Apis::DataprocV1::ClusterConfig::Representation
      
          hash :labels, as: 'labels'
          property :status, as: 'status', class: Google::Apis::DataprocV1::ClusterStatus, decorator: Google::Apis::DataprocV1::ClusterStatus::Representation
      
          collection :status_history, as: 'statusHistory', class: Google::Apis::DataprocV1::ClusterStatus, decorator: Google::Apis::DataprocV1::ClusterStatus::Representation
      
          property :cluster_uuid, as: 'clusterUuid'
          property :metrics, as: 'metrics', class: Google::Apis::DataprocV1::ClusterMetrics, decorator: Google::Apis::DataprocV1::ClusterMetrics::Representation
      
        end
      end
      
      class ClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config_bucket, as: 'configBucket'
          property :gce_cluster_config, as: 'gceClusterConfig', class: Google::Apis::DataprocV1::GceClusterConfig, decorator: Google::Apis::DataprocV1::GceClusterConfig::Representation
      
          property :master_config, as: 'masterConfig', class: Google::Apis::DataprocV1::InstanceGroupConfig, decorator: Google::Apis::DataprocV1::InstanceGroupConfig::Representation
      
          property :worker_config, as: 'workerConfig', class: Google::Apis::DataprocV1::InstanceGroupConfig, decorator: Google::Apis::DataprocV1::InstanceGroupConfig::Representation
      
          property :secondary_worker_config, as: 'secondaryWorkerConfig', class: Google::Apis::DataprocV1::InstanceGroupConfig, decorator: Google::Apis::DataprocV1::InstanceGroupConfig::Representation
      
          property :software_config, as: 'softwareConfig', class: Google::Apis::DataprocV1::SoftwareConfig, decorator: Google::Apis::DataprocV1::SoftwareConfig::Representation
      
          collection :initialization_actions, as: 'initializationActions', class: Google::Apis::DataprocV1::NodeInitializationAction, decorator: Google::Apis::DataprocV1::NodeInitializationAction::Representation
      
        end
      end
      
      class GceClusterConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :zone_uri, as: 'zoneUri'
          property :network_uri, as: 'networkUri'
          property :subnetwork_uri, as: 'subnetworkUri'
          property :internal_ip_only, as: 'internalIpOnly'
          collection :service_account_scopes, as: 'serviceAccountScopes'
          collection :tags, as: 'tags'
          hash :metadata, as: 'metadata'
        end
      end
      
      class InstanceGroupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_instances, as: 'numInstances'
          collection :instance_names, as: 'instanceNames'
          property :image_uri, as: 'imageUri'
          property :machine_type_uri, as: 'machineTypeUri'
          property :disk_config, as: 'diskConfig', class: Google::Apis::DataprocV1::DiskConfig, decorator: Google::Apis::DataprocV1::DiskConfig::Representation
      
          property :is_preemptible, as: 'isPreemptible'
          property :managed_group_config, as: 'managedGroupConfig', class: Google::Apis::DataprocV1::ManagedGroupConfig, decorator: Google::Apis::DataprocV1::ManagedGroupConfig::Representation
      
        end
      end
      
      class DiskConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_size_gb, as: 'bootDiskSizeGb'
          property :num_local_ssds, as: 'numLocalSsds'
        end
      end
      
      class ManagedGroupConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :instance_template_name, as: 'instanceTemplateName'
          property :instance_group_manager_name, as: 'instanceGroupManagerName'
        end
      end
      
      class SoftwareConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_version, as: 'imageVersion'
          hash :properties, as: 'properties'
        end
      end
      
      class NodeInitializationAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :executable_file, as: 'executableFile'
          property :execution_timeout, as: 'executionTimeout'
        end
      end
      
      class ClusterStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :detail, as: 'detail'
          property :state_start_time, as: 'stateStartTime'
        end
      end
      
      class ClusterMetrics
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :hdfs_metrics, as: 'hdfsMetrics'
          hash :yarn_metrics, as: 'yarnMetrics'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          hash :metadata, as: 'metadata'
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::DataprocV1::Status, decorator: Google::Apis::DataprocV1::Status::Representation
      
          hash :response, as: 'response'
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          property :message, as: 'message'
          collection :details, as: 'details'
        end
      end
      
      class ListClustersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :clusters, as: 'clusters', class: Google::Apis::DataprocV1::Cluster, decorator: Google::Apis::DataprocV1::Cluster::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DiagnoseClusterRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class SubmitJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::DataprocV1::Job, decorator: Google::Apis::DataprocV1::Job::Representation
      
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :reference, as: 'reference', class: Google::Apis::DataprocV1::JobReference, decorator: Google::Apis::DataprocV1::JobReference::Representation
      
          property :placement, as: 'placement', class: Google::Apis::DataprocV1::JobPlacement, decorator: Google::Apis::DataprocV1::JobPlacement::Representation
      
          property :hadoop_job, as: 'hadoopJob', class: Google::Apis::DataprocV1::HadoopJob, decorator: Google::Apis::DataprocV1::HadoopJob::Representation
      
          property :spark_job, as: 'sparkJob', class: Google::Apis::DataprocV1::SparkJob, decorator: Google::Apis::DataprocV1::SparkJob::Representation
      
          property :pyspark_job, as: 'pysparkJob', class: Google::Apis::DataprocV1::PySparkJob, decorator: Google::Apis::DataprocV1::PySparkJob::Representation
      
          property :hive_job, as: 'hiveJob', class: Google::Apis::DataprocV1::HiveJob, decorator: Google::Apis::DataprocV1::HiveJob::Representation
      
          property :pig_job, as: 'pigJob', class: Google::Apis::DataprocV1::PigJob, decorator: Google::Apis::DataprocV1::PigJob::Representation
      
          property :spark_sql_job, as: 'sparkSqlJob', class: Google::Apis::DataprocV1::SparkSqlJob, decorator: Google::Apis::DataprocV1::SparkSqlJob::Representation
      
          property :status, as: 'status', class: Google::Apis::DataprocV1::JobStatus, decorator: Google::Apis::DataprocV1::JobStatus::Representation
      
          collection :status_history, as: 'statusHistory', class: Google::Apis::DataprocV1::JobStatus, decorator: Google::Apis::DataprocV1::JobStatus::Representation
      
          collection :yarn_applications, as: 'yarnApplications', class: Google::Apis::DataprocV1::YarnApplication, decorator: Google::Apis::DataprocV1::YarnApplication::Representation
      
          property :driver_output_resource_uri, as: 'driverOutputResourceUri'
          property :driver_control_files_uri, as: 'driverControlFilesUri'
          hash :labels, as: 'labels'
        end
      end
      
      class JobReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :project_id, as: 'projectId'
          property :job_id, as: 'jobId'
        end
      end
      
      class JobPlacement
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :cluster_uuid, as: 'clusterUuid'
        end
      end
      
      class HadoopJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :main_jar_file_uri, as: 'mainJarFileUri'
          property :main_class, as: 'mainClass'
          collection :args, as: 'args'
          collection :jar_file_uris, as: 'jarFileUris'
          collection :file_uris, as: 'fileUris'
          collection :archive_uris, as: 'archiveUris'
          hash :properties, as: 'properties'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::DataprocV1::LoggingConfig, decorator: Google::Apis::DataprocV1::LoggingConfig::Representation
      
        end
      end
      
      class LoggingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :driver_log_levels, as: 'driverLogLevels'
        end
      end
      
      class SparkJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :main_jar_file_uri, as: 'mainJarFileUri'
          property :main_class, as: 'mainClass'
          collection :args, as: 'args'
          collection :jar_file_uris, as: 'jarFileUris'
          collection :file_uris, as: 'fileUris'
          collection :archive_uris, as: 'archiveUris'
          hash :properties, as: 'properties'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::DataprocV1::LoggingConfig, decorator: Google::Apis::DataprocV1::LoggingConfig::Representation
      
        end
      end
      
      class PySparkJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :main_python_file_uri, as: 'mainPythonFileUri'
          collection :args, as: 'args'
          collection :python_file_uris, as: 'pythonFileUris'
          collection :jar_file_uris, as: 'jarFileUris'
          collection :file_uris, as: 'fileUris'
          collection :archive_uris, as: 'archiveUris'
          hash :properties, as: 'properties'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::DataprocV1::LoggingConfig, decorator: Google::Apis::DataprocV1::LoggingConfig::Representation
      
        end
      end
      
      class HiveJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_file_uri, as: 'queryFileUri'
          property :query_list, as: 'queryList', class: Google::Apis::DataprocV1::QueryList, decorator: Google::Apis::DataprocV1::QueryList::Representation
      
          property :continue_on_failure, as: 'continueOnFailure'
          hash :script_variables, as: 'scriptVariables'
          hash :properties, as: 'properties'
          collection :jar_file_uris, as: 'jarFileUris'
        end
      end
      
      class QueryList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :queries, as: 'queries'
        end
      end
      
      class PigJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_file_uri, as: 'queryFileUri'
          property :query_list, as: 'queryList', class: Google::Apis::DataprocV1::QueryList, decorator: Google::Apis::DataprocV1::QueryList::Representation
      
          property :continue_on_failure, as: 'continueOnFailure'
          hash :script_variables, as: 'scriptVariables'
          hash :properties, as: 'properties'
          collection :jar_file_uris, as: 'jarFileUris'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::DataprocV1::LoggingConfig, decorator: Google::Apis::DataprocV1::LoggingConfig::Representation
      
        end
      end
      
      class SparkSqlJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :query_file_uri, as: 'queryFileUri'
          property :query_list, as: 'queryList', class: Google::Apis::DataprocV1::QueryList, decorator: Google::Apis::DataprocV1::QueryList::Representation
      
          hash :script_variables, as: 'scriptVariables'
          hash :properties, as: 'properties'
          collection :jar_file_uris, as: 'jarFileUris'
          property :logging_config, as: 'loggingConfig', class: Google::Apis::DataprocV1::LoggingConfig, decorator: Google::Apis::DataprocV1::LoggingConfig::Representation
      
        end
      end
      
      class JobStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :details, as: 'details'
          property :state_start_time, as: 'stateStartTime'
        end
      end
      
      class YarnApplication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :state, as: 'state'
          property :progress, as: 'progress'
          property :tracking_url, as: 'trackingUrl'
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::DataprocV1::Job, decorator: Google::Apis::DataprocV1::Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class CancelJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :operations, as: 'operations', class: Google::Apis::DataprocV1::Operation, decorator: Google::Apis::DataprocV1::Operation::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class DiagnoseClusterResults
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class ClusterOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster_name, as: 'clusterName'
          property :cluster_uuid, as: 'clusterUuid'
          property :status, as: 'status', class: Google::Apis::DataprocV1::ClusterOperationStatus, decorator: Google::Apis::DataprocV1::ClusterOperationStatus::Representation
      
          collection :status_history, as: 'statusHistory', class: Google::Apis::DataprocV1::ClusterOperationStatus, decorator: Google::Apis::DataprocV1::ClusterOperationStatus::Representation
      
          property :operation_type, as: 'operationType'
          property :description, as: 'description'
          hash :labels, as: 'labels'
        end
      end
      
      class ClusterOperationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :inner_state, as: 'innerState'
          property :details, as: 'details'
          property :state_start_time, as: 'stateStartTime'
        end
      end
      
      class DiagnoseClusterOutputLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :output_uri, as: 'outputUri'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :inner_state, as: 'innerState'
          property :details, as: 'details'
          property :insert_time, as: 'insertTime'
          property :start_time, as: 'startTime'
          property :end_time, as: 'endTime'
          property :cluster_name, as: 'clusterName'
          property :cluster_uuid, as: 'clusterUuid'
          property :status, as: 'status', class: Google::Apis::DataprocV1::OperationStatus, decorator: Google::Apis::DataprocV1::OperationStatus::Representation
      
          collection :status_history, as: 'statusHistory', class: Google::Apis::DataprocV1::OperationStatus, decorator: Google::Apis::DataprocV1::OperationStatus::Representation
      
          property :operation_type, as: 'operationType'
          property :description, as: 'description'
        end
      end
      
      class OperationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          property :inner_state, as: 'innerState'
          property :details, as: 'details'
          property :state_start_time, as: 'stateStartTime'
        end
      end
    end
  end
end
