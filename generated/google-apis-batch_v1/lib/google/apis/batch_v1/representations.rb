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
    module BatchV1
      
      class Accelerator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActionCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentTask
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentTaskInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AgentTimingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AllocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AttachedDisk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Barrier
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ComputeResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Disk
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Environment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Gcs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstancePolicyOrTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InstanceStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobNotification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class KmsEnvMap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LifecyclePolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
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
      
      class ListTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LogsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Message
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Nfs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NetworkPolicy
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
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportAgentStateRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportAgentStateResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Runnable
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Script
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ServiceAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StatusEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Task
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskExecution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskGroupStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaskStatus
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
      
      class Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Accelerator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :install_gpu_drivers, as: 'installGpuDrivers'
          property :type, as: 'type'
        end
      end
      
      class ActionCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exit_codes, as: 'exitCodes'
        end
      end
      
      class AgentInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_id, as: 'jobId'
          property :report_time, as: 'reportTime'
          property :state, as: 'state'
          property :task_group_id, as: 'taskGroupId'
          collection :tasks, as: 'tasks', class: Google::Apis::BatchV1::AgentTaskInfo, decorator: Google::Apis::BatchV1::AgentTaskInfo::Representation
      
        end
      end
      
      class AgentMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :creator, as: 'creator'
          property :image_version, as: 'imageVersion'
          property :instance, as: 'instance'
          property :instance_id, :numeric_string => true, as: 'instanceId'
          property :instance_preemption_notice_received, as: 'instancePreemptionNoticeReceived'
          hash :os_release, as: 'osRelease'
          property :version, as: 'version'
          property :zone, as: 'zone'
        end
      end
      
      class AgentTask
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :intended_state, as: 'intendedState'
          property :reached_barrier, :numeric_string => true, as: 'reachedBarrier'
          property :spec, as: 'spec', class: Google::Apis::BatchV1::TaskSpec, decorator: Google::Apis::BatchV1::TaskSpec::Representation
      
          property :status, as: 'status', class: Google::Apis::BatchV1::TaskStatus, decorator: Google::Apis::BatchV1::TaskStatus::Representation
      
          property :task, as: 'task'
        end
      end
      
      class AgentTaskInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :runnable, :numeric_string => true, as: 'runnable'
          property :task_id, as: 'taskId'
          property :task_status, as: 'taskStatus', class: Google::Apis::BatchV1::TaskStatus, decorator: Google::Apis::BatchV1::TaskStatus::Representation
      
        end
      end
      
      class AgentTimingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_startup_time, as: 'agentStartupTime'
          property :boot_time, as: 'bootTime'
          property :script_startup_time, as: 'scriptStartupTime'
        end
      end
      
      class AllocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances', class: Google::Apis::BatchV1::InstancePolicyOrTemplate, decorator: Google::Apis::BatchV1::InstancePolicyOrTemplate::Representation
      
          hash :labels, as: 'labels'
          property :location, as: 'location', class: Google::Apis::BatchV1::LocationPolicy, decorator: Google::Apis::BatchV1::LocationPolicy::Representation
      
          property :network, as: 'network', class: Google::Apis::BatchV1::NetworkPolicy, decorator: Google::Apis::BatchV1::NetworkPolicy::Representation
      
          property :service_account, as: 'serviceAccount', class: Google::Apis::BatchV1::ServiceAccount, decorator: Google::Apis::BatchV1::ServiceAccount::Representation
      
        end
      end
      
      class AttachedDisk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_name, as: 'deviceName'
          property :existing_disk, as: 'existingDisk'
          property :new_disk, as: 'newDisk', class: Google::Apis::BatchV1::Disk, decorator: Google::Apis::BatchV1::Disk::Representation
      
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BatchV1::AuditLogConfig, decorator: Google::Apis::BatchV1::AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class Barrier
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BatchV1::Expr, decorator: Google::Apis::BatchV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ComputeResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :boot_disk_mib, :numeric_string => true, as: 'bootDiskMib'
          property :cpu_milli, :numeric_string => true, as: 'cpuMilli'
          property :memory_mib, :numeric_string => true, as: 'memoryMib'
        end
      end
      
      class Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :block_external_network, as: 'blockExternalNetwork'
          collection :commands, as: 'commands'
          property :entrypoint, as: 'entrypoint'
          property :image_uri, as: 'imageUri'
          property :options, as: 'options'
          property :password, as: 'password'
          property :username, as: 'username'
          collection :volumes, as: 'volumes'
        end
      end
      
      class Disk
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disk_interface, as: 'diskInterface'
          property :image, as: 'image'
          property :size_gb, :numeric_string => true, as: 'sizeGb'
          property :snapshot, as: 'snapshot'
          property :type, as: 'type'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Environment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :encrypted_variables, as: 'encryptedVariables', class: Google::Apis::BatchV1::KmsEnvMap, decorator: Google::Apis::BatchV1::KmsEnvMap::Representation
      
          hash :secret_variables, as: 'secretVariables'
          hash :variables, as: 'variables'
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
      
      class Gcs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :remote_path, as: 'remotePath'
        end
      end
      
      class InstancePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accelerators, as: 'accelerators', class: Google::Apis::BatchV1::Accelerator, decorator: Google::Apis::BatchV1::Accelerator::Representation
      
          collection :disks, as: 'disks', class: Google::Apis::BatchV1::AttachedDisk, decorator: Google::Apis::BatchV1::AttachedDisk::Representation
      
          property :machine_type, as: 'machineType'
          property :min_cpu_platform, as: 'minCpuPlatform'
          property :provisioning_model, as: 'provisioningModel'
        end
      end
      
      class InstancePolicyOrTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :install_gpu_drivers, as: 'installGpuDrivers'
          property :instance_template, as: 'instanceTemplate'
          property :policy, as: 'policy', class: Google::Apis::BatchV1::InstancePolicy, decorator: Google::Apis::BatchV1::InstancePolicy::Representation
      
        end
      end
      
      class InstanceStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :machine_type, as: 'machineType'
          property :provisioning_model, as: 'provisioningModel'
          property :task_pack, :numeric_string => true, as: 'taskPack'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allocation_policy, as: 'allocationPolicy', class: Google::Apis::BatchV1::AllocationPolicy, decorator: Google::Apis::BatchV1::AllocationPolicy::Representation
      
          property :create_time, as: 'createTime'
          hash :labels, as: 'labels'
          property :logs_policy, as: 'logsPolicy', class: Google::Apis::BatchV1::LogsPolicy, decorator: Google::Apis::BatchV1::LogsPolicy::Representation
      
          property :name, as: 'name'
          collection :notifications, as: 'notifications', class: Google::Apis::BatchV1::JobNotification, decorator: Google::Apis::BatchV1::JobNotification::Representation
      
          property :priority, :numeric_string => true, as: 'priority'
          property :status, as: 'status', class: Google::Apis::BatchV1::JobStatus, decorator: Google::Apis::BatchV1::JobStatus::Representation
      
          collection :task_groups, as: 'taskGroups', class: Google::Apis::BatchV1::TaskGroup, decorator: Google::Apis::BatchV1::TaskGroup::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class JobNotification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message', class: Google::Apis::BatchV1::Message, decorator: Google::Apis::BatchV1::Message::Representation
      
          property :pubsub_topic, as: 'pubsubTopic'
        end
      end
      
      class JobStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :run_duration, as: 'runDuration'
          property :state, as: 'state'
          collection :status_events, as: 'statusEvents', class: Google::Apis::BatchV1::StatusEvent, decorator: Google::Apis::BatchV1::StatusEvent::Representation
      
          hash :task_groups, as: 'taskGroups', class: Google::Apis::BatchV1::TaskGroupStatus, decorator: Google::Apis::BatchV1::TaskGroupStatus::Representation
      
        end
      end
      
      class KmsEnvMap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cipher_text, as: 'cipherText'
          property :key_name, as: 'keyName'
        end
      end
      
      class LifecyclePolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :action_condition, as: 'actionCondition', class: Google::Apis::BatchV1::ActionCondition, decorator: Google::Apis::BatchV1::ActionCondition::Representation
      
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::BatchV1::Job, decorator: Google::Apis::BatchV1::Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::BatchV1::Location, decorator: Google::Apis::BatchV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::BatchV1::Operation, decorator: Google::Apis::BatchV1::Operation::Representation
      
        end
      end
      
      class ListTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tasks, as: 'tasks', class: Google::Apis::BatchV1::Task, decorator: Google::Apis::BatchV1::Task::Representation
      
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
      
      class LocationPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowed_locations, as: 'allowedLocations'
        end
      end
      
      class LogsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination, as: 'destination'
          property :logs_path, as: 'logsPath'
        end
      end
      
      class Message
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :new_job_state, as: 'newJobState'
          property :new_task_state, as: 'newTaskState'
          property :type, as: 'type'
        end
      end
      
      class Nfs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :remote_path, as: 'remotePath'
          property :server, as: 'server'
        end
      end
      
      class NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :no_external_ip_address, as: 'noExternalIpAddress'
          property :subnetwork, as: 'subnetwork'
        end
      end
      
      class NetworkPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::BatchV1::NetworkInterface, decorator: Google::Apis::BatchV1::NetworkInterface::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BatchV1::Status, decorator: Google::Apis::BatchV1::Status::Representation
      
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
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BatchV1::AuditConfig, decorator: Google::Apis::BatchV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BatchV1::Binding, decorator: Google::Apis::BatchV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ReportAgentStateRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :agent_info, as: 'agentInfo', class: Google::Apis::BatchV1::AgentInfo, decorator: Google::Apis::BatchV1::AgentInfo::Representation
      
          property :agent_timing_info, as: 'agentTimingInfo', class: Google::Apis::BatchV1::AgentTimingInfo, decorator: Google::Apis::BatchV1::AgentTimingInfo::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::BatchV1::AgentMetadata, decorator: Google::Apis::BatchV1::AgentMetadata::Representation
      
        end
      end
      
      class ReportAgentStateResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_report_interval, as: 'defaultReportInterval'
          property :min_report_interval, as: 'minReportInterval'
          collection :tasks, as: 'tasks', class: Google::Apis::BatchV1::AgentTask, decorator: Google::Apis::BatchV1::AgentTask::Representation
      
        end
      end
      
      class Runnable
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :always_run, as: 'alwaysRun'
          property :background, as: 'background'
          property :barrier, as: 'barrier', class: Google::Apis::BatchV1::Barrier, decorator: Google::Apis::BatchV1::Barrier::Representation
      
          property :container, as: 'container', class: Google::Apis::BatchV1::Container, decorator: Google::Apis::BatchV1::Container::Representation
      
          property :environment, as: 'environment', class: Google::Apis::BatchV1::Environment, decorator: Google::Apis::BatchV1::Environment::Representation
      
          property :ignore_exit_status, as: 'ignoreExitStatus'
          property :script, as: 'script', class: Google::Apis::BatchV1::Script, decorator: Google::Apis::BatchV1::Script::Representation
      
          property :timeout, as: 'timeout'
        end
      end
      
      class Script
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :text, as: 'text'
        end
      end
      
      class ServiceAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email, as: 'email'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BatchV1::Policy, decorator: Google::Apis::BatchV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
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
      
      class StatusEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :event_time, as: 'eventTime'
          property :task_execution, as: 'taskExecution', class: Google::Apis::BatchV1::TaskExecution, decorator: Google::Apis::BatchV1::TaskExecution::Representation
      
          property :type, as: 'type'
        end
      end
      
      class Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :status, as: 'status', class: Google::Apis::BatchV1::TaskStatus, decorator: Google::Apis::BatchV1::TaskStatus::Representation
      
        end
      end
      
      class TaskExecution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exit_code, as: 'exitCode'
        end
      end
      
      class TaskGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :parallelism, :numeric_string => true, as: 'parallelism'
          property :permissive_ssh, as: 'permissiveSsh'
          property :require_hosts_file, as: 'requireHostsFile'
          property :task_count, :numeric_string => true, as: 'taskCount'
          property :task_count_per_node, :numeric_string => true, as: 'taskCountPerNode'
          collection :task_environments, as: 'taskEnvironments', class: Google::Apis::BatchV1::Environment, decorator: Google::Apis::BatchV1::Environment::Representation
      
          property :task_spec, as: 'taskSpec', class: Google::Apis::BatchV1::TaskSpec, decorator: Google::Apis::BatchV1::TaskSpec::Representation
      
        end
      end
      
      class TaskGroupStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :counts, as: 'counts'
          collection :instances, as: 'instances', class: Google::Apis::BatchV1::InstanceStatus, decorator: Google::Apis::BatchV1::InstanceStatus::Representation
      
        end
      end
      
      class TaskSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compute_resource, as: 'computeResource', class: Google::Apis::BatchV1::ComputeResource, decorator: Google::Apis::BatchV1::ComputeResource::Representation
      
          property :environment, as: 'environment', class: Google::Apis::BatchV1::Environment, decorator: Google::Apis::BatchV1::Environment::Representation
      
          hash :environments, as: 'environments'
          collection :lifecycle_policies, as: 'lifecyclePolicies', class: Google::Apis::BatchV1::LifecyclePolicy, decorator: Google::Apis::BatchV1::LifecyclePolicy::Representation
      
          property :max_retry_count, as: 'maxRetryCount'
          property :max_run_duration, as: 'maxRunDuration'
          collection :runnables, as: 'runnables', class: Google::Apis::BatchV1::Runnable, decorator: Google::Apis::BatchV1::Runnable::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::BatchV1::Volume, decorator: Google::Apis::BatchV1::Volume::Representation
      
        end
      end
      
      class TaskStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :state, as: 'state'
          collection :status_events, as: 'statusEvents', class: Google::Apis::BatchV1::StatusEvent, decorator: Google::Apis::BatchV1::StatusEvent::Representation
      
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
      
      class Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_name, as: 'deviceName'
          property :gcs, as: 'gcs', class: Google::Apis::BatchV1::Gcs, decorator: Google::Apis::BatchV1::Gcs::Representation
      
          collection :mount_options, as: 'mountOptions'
          property :mount_path, as: 'mountPath'
          property :nfs, as: 'nfs', class: Google::Apis::BatchV1::Nfs, decorator: Google::Apis::BatchV1::Nfs::Representation
      
        end
      end
    end
  end
end
