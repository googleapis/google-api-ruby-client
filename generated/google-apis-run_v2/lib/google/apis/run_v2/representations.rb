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
    module RunV2
      
      class GoogleCloudRunV2BinaryAuthorization
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2CloudSqlInstance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Condition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Container
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ContainerPort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2EmptyDirVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2EnvVar
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2EnvVarSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Execution
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ExecutionReference
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ExecutionTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2GrpcAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2HttpGetAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2HttpHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ListExecutionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ListRevisionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ListServicesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ListTasksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Probe
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ResourceRequirements
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Revision
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2RevisionScaling
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2RevisionTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2RunJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2SecretKeySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2SecretVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Service
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2TcpSocketAction
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Task
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2TaskAttemptResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2TaskTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2TrafficTarget
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2TrafficTargetStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2VersionToPath
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2VolumeMount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2VpcAccess
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1AuditLogConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningOperation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleLongrunningWaitOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleRpcStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeExpr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2BinaryAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breakglass_justification, as: 'breakglassJustification'
          property :use_default, as: 'useDefault'
        end
      end
      
      class GoogleCloudRunV2CloudSqlInstance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :instances, as: 'instances'
        end
      end
      
      class GoogleCloudRunV2Condition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :execution_reason, as: 'executionReason'
          property :last_transition_time, as: 'lastTransitionTime'
          property :message, as: 'message'
          property :reason, as: 'reason'
          property :revision_reason, as: 'revisionReason'
          property :severity, as: 'severity'
          property :state, as: 'state'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRunV2Container
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          collection :command, as: 'command'
          collection :depends_on, as: 'dependsOn'
          collection :env, as: 'env', class: Google::Apis::RunV2::GoogleCloudRunV2EnvVar, decorator: Google::Apis::RunV2::GoogleCloudRunV2EnvVar::Representation
      
          property :image, as: 'image'
          property :liveness_probe, as: 'livenessProbe', class: Google::Apis::RunV2::GoogleCloudRunV2Probe, decorator: Google::Apis::RunV2::GoogleCloudRunV2Probe::Representation
      
          property :name, as: 'name'
          collection :ports, as: 'ports', class: Google::Apis::RunV2::GoogleCloudRunV2ContainerPort, decorator: Google::Apis::RunV2::GoogleCloudRunV2ContainerPort::Representation
      
          property :resources, as: 'resources', class: Google::Apis::RunV2::GoogleCloudRunV2ResourceRequirements, decorator: Google::Apis::RunV2::GoogleCloudRunV2ResourceRequirements::Representation
      
          property :startup_probe, as: 'startupProbe', class: Google::Apis::RunV2::GoogleCloudRunV2Probe, decorator: Google::Apis::RunV2::GoogleCloudRunV2Probe::Representation
      
          collection :volume_mounts, as: 'volumeMounts', class: Google::Apis::RunV2::GoogleCloudRunV2VolumeMount, decorator: Google::Apis::RunV2::GoogleCloudRunV2VolumeMount::Representation
      
          property :working_dir, as: 'workingDir'
        end
      end
      
      class GoogleCloudRunV2ContainerPort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container_port, as: 'containerPort'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRunV2EmptyDirVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :medium, as: 'medium'
          property :size_limit, as: 'sizeLimit'
        end
      end
      
      class GoogleCloudRunV2EnvVar
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
          property :value_source, as: 'valueSource', class: Google::Apis::RunV2::GoogleCloudRunV2EnvVarSource, decorator: Google::Apis::RunV2::GoogleCloudRunV2EnvVarSource::Representation
      
        end
      end
      
      class GoogleCloudRunV2EnvVarSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret_key_ref, as: 'secretKeyRef', class: Google::Apis::RunV2::GoogleCloudRunV2SecretKeySelector, decorator: Google::Apis::RunV2::GoogleCloudRunV2SecretKeySelector::Representation
      
        end
      end
      
      class GoogleCloudRunV2Execution
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :cancelled_count, as: 'cancelledCount'
          property :completion_time, as: 'completionTime'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :failed_count, as: 'failedCount'
          property :generation, :numeric_string => true, as: 'generation'
          property :job, as: 'job'
          hash :labels, as: 'labels'
          property :launch_stage, as: 'launchStage'
          property :log_uri, as: 'logUri'
          property :name, as: 'name'
          property :observed_generation, :numeric_string => true, as: 'observedGeneration'
          property :parallelism, as: 'parallelism'
          property :reconciling, as: 'reconciling'
          property :retried_count, as: 'retriedCount'
          property :running_count, as: 'runningCount'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :start_time, as: 'startTime'
          property :succeeded_count, as: 'succeededCount'
          property :task_count, as: 'taskCount'
          property :template, as: 'template', class: Google::Apis::RunV2::GoogleCloudRunV2TaskTemplate, decorator: Google::Apis::RunV2::GoogleCloudRunV2TaskTemplate::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRunV2ExecutionReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :completion_time, as: 'completionTime'
          property :create_time, as: 'createTime'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRunV2ExecutionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          hash :labels, as: 'labels'
          property :parallelism, as: 'parallelism'
          property :task_count, as: 'taskCount'
          property :template, as: 'template', class: Google::Apis::RunV2::GoogleCloudRunV2TaskTemplate, decorator: Google::Apis::RunV2::GoogleCloudRunV2TaskTemplate::Representation
      
        end
      end
      
      class GoogleCloudRunV2GrpcAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
          property :service, as: 'service'
        end
      end
      
      class GoogleCloudRunV2HttpGetAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :http_headers, as: 'httpHeaders', class: Google::Apis::RunV2::GoogleCloudRunV2HttpHeader, decorator: Google::Apis::RunV2::GoogleCloudRunV2HttpHeader::Representation
      
          property :path, as: 'path'
          property :port, as: 'port'
        end
      end
      
      class GoogleCloudRunV2HttpHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :value, as: 'value'
        end
      end
      
      class GoogleCloudRunV2Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :binary_authorization, as: 'binaryAuthorization', class: Google::Apis::RunV2::GoogleCloudRunV2BinaryAuthorization, decorator: Google::Apis::RunV2::GoogleCloudRunV2BinaryAuthorization::Representation
      
          property :client, as: 'client'
          property :client_version, as: 'clientVersion'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :delete_time, as: 'deleteTime'
          property :etag, as: 'etag'
          property :execution_count, as: 'executionCount'
          property :expire_time, as: 'expireTime'
          property :generation, :numeric_string => true, as: 'generation'
          hash :labels, as: 'labels'
          property :last_modifier, as: 'lastModifier'
          property :latest_created_execution, as: 'latestCreatedExecution', class: Google::Apis::RunV2::GoogleCloudRunV2ExecutionReference, decorator: Google::Apis::RunV2::GoogleCloudRunV2ExecutionReference::Representation
      
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :observed_generation, :numeric_string => true, as: 'observedGeneration'
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :template, as: 'template', class: Google::Apis::RunV2::GoogleCloudRunV2ExecutionTemplate, decorator: Google::Apis::RunV2::GoogleCloudRunV2ExecutionTemplate::Representation
      
          property :terminal_condition, as: 'terminalCondition', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudRunV2ListExecutionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :executions, as: 'executions', class: Google::Apis::RunV2::GoogleCloudRunV2Execution, decorator: Google::Apis::RunV2::GoogleCloudRunV2Execution::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRunV2ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::RunV2::GoogleCloudRunV2Job, decorator: Google::Apis::RunV2::GoogleCloudRunV2Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudRunV2ListRevisionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :revisions, as: 'revisions', class: Google::Apis::RunV2::GoogleCloudRunV2Revision, decorator: Google::Apis::RunV2::GoogleCloudRunV2Revision::Representation
      
        end
      end
      
      class GoogleCloudRunV2ListServicesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :services, as: 'services', class: Google::Apis::RunV2::GoogleCloudRunV2Service, decorator: Google::Apis::RunV2::GoogleCloudRunV2Service::Representation
      
        end
      end
      
      class GoogleCloudRunV2ListTasksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :tasks, as: 'tasks', class: Google::Apis::RunV2::GoogleCloudRunV2Task, decorator: Google::Apis::RunV2::GoogleCloudRunV2Task::Representation
      
        end
      end
      
      class GoogleCloudRunV2Probe
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_threshold, as: 'failureThreshold'
          property :grpc, as: 'grpc', class: Google::Apis::RunV2::GoogleCloudRunV2GrpcAction, decorator: Google::Apis::RunV2::GoogleCloudRunV2GrpcAction::Representation
      
          property :http_get, as: 'httpGet', class: Google::Apis::RunV2::GoogleCloudRunV2HttpGetAction, decorator: Google::Apis::RunV2::GoogleCloudRunV2HttpGetAction::Representation
      
          property :initial_delay_seconds, as: 'initialDelaySeconds'
          property :period_seconds, as: 'periodSeconds'
          property :tcp_socket, as: 'tcpSocket', class: Google::Apis::RunV2::GoogleCloudRunV2TcpSocketAction, decorator: Google::Apis::RunV2::GoogleCloudRunV2TcpSocketAction::Representation
      
          property :timeout_seconds, as: 'timeoutSeconds'
        end
      end
      
      class GoogleCloudRunV2ResourceRequirements
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpu_idle, as: 'cpuIdle'
          hash :limits, as: 'limits'
          property :startup_cpu_boost, as: 'startupCpuBoost'
        end
      end
      
      class GoogleCloudRunV2Revision
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          collection :containers, as: 'containers', class: Google::Apis::RunV2::GoogleCloudRunV2Container, decorator: Google::Apis::RunV2::GoogleCloudRunV2Container::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :encryption_key, as: 'encryptionKey'
          property :encryption_key_revocation_action, as: 'encryptionKeyRevocationAction'
          property :encryption_key_shutdown_duration, as: 'encryptionKeyShutdownDuration'
          property :etag, as: 'etag'
          property :execution_environment, as: 'executionEnvironment'
          property :expire_time, as: 'expireTime'
          property :generation, :numeric_string => true, as: 'generation'
          hash :labels, as: 'labels'
          property :launch_stage, as: 'launchStage'
          property :log_uri, as: 'logUri'
          property :max_instance_request_concurrency, as: 'maxInstanceRequestConcurrency'
          property :name, as: 'name'
          property :observed_generation, :numeric_string => true, as: 'observedGeneration'
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :scaling, as: 'scaling', class: Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling, decorator: Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling::Representation
      
          property :service, as: 'service'
          property :service_account, as: 'serviceAccount'
          property :session_affinity, as: 'sessionAffinity'
          property :timeout, as: 'timeout'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleCloudRunV2Volume, decorator: Google::Apis::RunV2::GoogleCloudRunV2Volume::Representation
      
          property :vpc_access, as: 'vpcAccess', class: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess, decorator: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess::Representation
      
        end
      end
      
      class GoogleCloudRunV2RevisionScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_instance_count, as: 'maxInstanceCount'
          property :min_instance_count, as: 'minInstanceCount'
        end
      end
      
      class GoogleCloudRunV2RevisionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :containers, as: 'containers', class: Google::Apis::RunV2::GoogleCloudRunV2Container, decorator: Google::Apis::RunV2::GoogleCloudRunV2Container::Representation
      
          property :encryption_key, as: 'encryptionKey'
          property :execution_environment, as: 'executionEnvironment'
          hash :labels, as: 'labels'
          property :max_instance_request_concurrency, as: 'maxInstanceRequestConcurrency'
          property :revision, as: 'revision'
          property :scaling, as: 'scaling', class: Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling, decorator: Google::Apis::RunV2::GoogleCloudRunV2RevisionScaling::Representation
      
          property :service_account, as: 'serviceAccount'
          property :session_affinity, as: 'sessionAffinity'
          property :timeout, as: 'timeout'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleCloudRunV2Volume, decorator: Google::Apis::RunV2::GoogleCloudRunV2Volume::Representation
      
          property :vpc_access, as: 'vpcAccess', class: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess, decorator: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess::Representation
      
        end
      end
      
      class GoogleCloudRunV2RunJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GoogleCloudRunV2SecretKeySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :secret, as: 'secret'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudRunV2SecretVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_mode, as: 'defaultMode'
          collection :items, as: 'items', class: Google::Apis::RunV2::GoogleCloudRunV2VersionToPath, decorator: Google::Apis::RunV2::GoogleCloudRunV2VersionToPath::Representation
      
          property :secret, as: 'secret'
        end
      end
      
      class GoogleCloudRunV2Service
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :binary_authorization, as: 'binaryAuthorization', class: Google::Apis::RunV2::GoogleCloudRunV2BinaryAuthorization, decorator: Google::Apis::RunV2::GoogleCloudRunV2BinaryAuthorization::Representation
      
          property :client, as: 'client'
          property :client_version, as: 'clientVersion'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          property :create_time, as: 'createTime'
          property :creator, as: 'creator'
          property :delete_time, as: 'deleteTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :expire_time, as: 'expireTime'
          property :generation, :numeric_string => true, as: 'generation'
          property :ingress, as: 'ingress'
          hash :labels, as: 'labels'
          property :last_modifier, as: 'lastModifier'
          property :latest_created_revision, as: 'latestCreatedRevision'
          property :latest_ready_revision, as: 'latestReadyRevision'
          property :launch_stage, as: 'launchStage'
          property :name, as: 'name'
          property :observed_generation, :numeric_string => true, as: 'observedGeneration'
          property :reconciling, as: 'reconciling'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :template, as: 'template', class: Google::Apis::RunV2::GoogleCloudRunV2RevisionTemplate, decorator: Google::Apis::RunV2::GoogleCloudRunV2RevisionTemplate::Representation
      
          property :terminal_condition, as: 'terminalCondition', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          collection :traffic, as: 'traffic', class: Google::Apis::RunV2::GoogleCloudRunV2TrafficTarget, decorator: Google::Apis::RunV2::GoogleCloudRunV2TrafficTarget::Representation
      
          collection :traffic_statuses, as: 'trafficStatuses', class: Google::Apis::RunV2::GoogleCloudRunV2TrafficTargetStatus, decorator: Google::Apis::RunV2::GoogleCloudRunV2TrafficTargetStatus::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudRunV2TcpSocketAction
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :port, as: 'port'
        end
      end
      
      class GoogleCloudRunV2Task
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :completion_time, as: 'completionTime'
          collection :conditions, as: 'conditions', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          collection :containers, as: 'containers', class: Google::Apis::RunV2::GoogleCloudRunV2Container, decorator: Google::Apis::RunV2::GoogleCloudRunV2Container::Representation
      
          property :create_time, as: 'createTime'
          property :delete_time, as: 'deleteTime'
          property :encryption_key, as: 'encryptionKey'
          property :etag, as: 'etag'
          property :execution, as: 'execution'
          property :execution_environment, as: 'executionEnvironment'
          property :expire_time, as: 'expireTime'
          property :generation, :numeric_string => true, as: 'generation'
          property :index, as: 'index'
          property :job, as: 'job'
          hash :labels, as: 'labels'
          property :last_attempt_result, as: 'lastAttemptResult', class: Google::Apis::RunV2::GoogleCloudRunV2TaskAttemptResult, decorator: Google::Apis::RunV2::GoogleCloudRunV2TaskAttemptResult::Representation
      
          property :log_uri, as: 'logUri'
          property :max_retries, as: 'maxRetries'
          property :name, as: 'name'
          property :observed_generation, :numeric_string => true, as: 'observedGeneration'
          property :reconciling, as: 'reconciling'
          property :retried, as: 'retried'
          property :satisfies_pzs, as: 'satisfiesPzs'
          property :service_account, as: 'serviceAccount'
          property :start_time, as: 'startTime'
          property :timeout, as: 'timeout'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleCloudRunV2Volume, decorator: Google::Apis::RunV2::GoogleCloudRunV2Volume::Representation
      
          property :vpc_access, as: 'vpcAccess', class: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess, decorator: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess::Representation
      
        end
      end
      
      class GoogleCloudRunV2TaskAttemptResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exit_code, as: 'exitCode'
          property :status, as: 'status', class: Google::Apis::RunV2::GoogleRpcStatus, decorator: Google::Apis::RunV2::GoogleRpcStatus::Representation
      
        end
      end
      
      class GoogleCloudRunV2TaskTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :containers, as: 'containers', class: Google::Apis::RunV2::GoogleCloudRunV2Container, decorator: Google::Apis::RunV2::GoogleCloudRunV2Container::Representation
      
          property :encryption_key, as: 'encryptionKey'
          property :execution_environment, as: 'executionEnvironment'
          property :max_retries, as: 'maxRetries'
          property :service_account, as: 'serviceAccount'
          property :timeout, as: 'timeout'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleCloudRunV2Volume, decorator: Google::Apis::RunV2::GoogleCloudRunV2Volume::Representation
      
          property :vpc_access, as: 'vpcAccess', class: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess, decorator: Google::Apis::RunV2::GoogleCloudRunV2VpcAccess::Representation
      
        end
      end
      
      class GoogleCloudRunV2TrafficTarget
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percent, as: 'percent'
          property :revision, as: 'revision'
          property :tag, as: 'tag'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudRunV2TrafficTargetStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percent, as: 'percent'
          property :revision, as: 'revision'
          property :tag, as: 'tag'
          property :type, as: 'type'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudRunV2VersionToPath
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mode, as: 'mode'
          property :path, as: 'path'
          property :version, as: 'version'
        end
      end
      
      class GoogleCloudRunV2Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_sql_instance, as: 'cloudSqlInstance', class: Google::Apis::RunV2::GoogleCloudRunV2CloudSqlInstance, decorator: Google::Apis::RunV2::GoogleCloudRunV2CloudSqlInstance::Representation
      
          property :empty_dir, as: 'emptyDir', class: Google::Apis::RunV2::GoogleCloudRunV2EmptyDirVolumeSource, decorator: Google::Apis::RunV2::GoogleCloudRunV2EmptyDirVolumeSource::Representation
      
          property :name, as: 'name'
          property :secret, as: 'secret', class: Google::Apis::RunV2::GoogleCloudRunV2SecretVolumeSource, decorator: Google::Apis::RunV2::GoogleCloudRunV2SecretVolumeSource::Representation
      
        end
      end
      
      class GoogleCloudRunV2VolumeMount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mount_path, as: 'mountPath'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudRunV2VpcAccess
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connector, as: 'connector'
          property :egress, as: 'egress'
        end
      end
      
      class GoogleIamV1AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::RunV2::GoogleIamV1AuditLogConfig, decorator: Google::Apis::RunV2::GoogleIamV1AuditLogConfig::Representation
      
          property :service, as: 'service'
        end
      end
      
      class GoogleIamV1AuditLogConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :exempted_members, as: 'exemptedMembers'
          property :log_type, as: 'logType'
        end
      end
      
      class GoogleIamV1Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::RunV2::GoogleTypeExpr, decorator: Google::Apis::RunV2::GoogleTypeExpr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class GoogleIamV1Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::RunV2::GoogleIamV1AuditConfig, decorator: Google::Apis::RunV2::GoogleIamV1AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::RunV2::GoogleIamV1Binding, decorator: Google::Apis::RunV2::GoogleIamV1Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class GoogleIamV1SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::RunV2::GoogleIamV1Policy, decorator: Google::Apis::RunV2::GoogleIamV1Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleIamV1TestIamPermissionsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleIamV1TestIamPermissionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :permissions, as: 'permissions'
        end
      end
      
      class GoogleLongrunningListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::RunV2::GoogleLongrunningOperation, decorator: Google::Apis::RunV2::GoogleLongrunningOperation::Representation
      
        end
      end
      
      class GoogleLongrunningOperation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::RunV2::GoogleRpcStatus, decorator: Google::Apis::RunV2::GoogleRpcStatus::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class GoogleLongrunningWaitOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :timeout, as: 'timeout'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleRpcStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class GoogleTypeExpr
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :expression, as: 'expression'
          property :location, as: 'location'
          property :title, as: 'title'
        end
      end
    end
  end
end
