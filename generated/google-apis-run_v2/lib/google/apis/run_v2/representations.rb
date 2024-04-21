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
      
      class GoogleCloudRunV2CancelExecutionRequest
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
      
      class GoogleCloudRunV2ContainerOverride
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
      
      class GoogleCloudRunV2ExportImageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ExportImageResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2ExportStatusResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2GcsVolumeSource
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
      
      class GoogleCloudRunV2ImageExportStatus
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
      
      class GoogleCloudRunV2Metadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2NfsVolumeSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2NetworkInterface
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2Overrides
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
      
      class GoogleCloudRunV2RevisionScalingStatus
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
      
      class GoogleCloudRunV2ServiceScaling
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
      
      class GoogleDevtoolsCloudbuildV1ApprovalConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1ApprovalResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1ArtifactObjects
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Artifacts
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Build
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildApproval
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuildStep
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1BuiltImage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1ConnectedRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1FailureInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1FileHashes
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1GitSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Hash
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1InlineSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1MavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1NpmPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1PoolOption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1PythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1RepoSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Results
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Secret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1SecretManagerSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Secrets
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Source
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1SourceProvenance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSourceManifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1TimeSpan
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedNpmPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedPythonPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Volume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleDevtoolsCloudbuildV1Warning
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
      
      class Proto2BridgeMessageSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UtilStatusProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudRunV2BinaryAuthorization
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :breakglass_justification, as: 'breakglassJustification'
          property :policy, as: 'policy'
          property :use_default, as: 'useDefault'
        end
      end
      
      class GoogleCloudRunV2CancelExecutionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :etag, as: 'etag'
          property :validate_only, as: 'validateOnly'
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
      
      class GoogleCloudRunV2ContainerOverride
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :clear_args, as: 'clearArgs'
          collection :env, as: 'env', class: Google::Apis::RunV2::GoogleCloudRunV2EnvVar, decorator: Google::Apis::RunV2::GoogleCloudRunV2EnvVar::Representation
      
          property :name, as: 'name'
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
      
      class GoogleCloudRunV2ExportImageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_repo, as: 'destinationRepo'
        end
      end
      
      class GoogleCloudRunV2ExportImageResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation_id, as: 'operationId'
        end
      end
      
      class GoogleCloudRunV2ExportStatusResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :image_export_statuses, as: 'imageExportStatuses', class: Google::Apis::RunV2::GoogleCloudRunV2ImageExportStatus, decorator: Google::Apis::RunV2::GoogleCloudRunV2ImageExportStatus::Representation
      
          property :operation_id, as: 'operationId'
          property :operation_state, as: 'operationState'
        end
      end
      
      class GoogleCloudRunV2GcsVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :read_only, as: 'readOnly'
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
      
      class GoogleCloudRunV2ImageExportStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :export_job_state, as: 'exportJobState'
          property :exported_image_digest, as: 'exportedImageDigest'
          property :status, as: 'status', class: Google::Apis::RunV2::UtilStatusProto, decorator: Google::Apis::RunV2::UtilStatusProto::Representation
      
          property :tag, as: 'tag'
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
          property :start_execution_token, as: 'startExecutionToken'
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
      
      class GoogleCloudRunV2Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata'
        end
      end
      
      class GoogleCloudRunV2NfsVolumeSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :path, as: 'path'
          property :read_only, as: 'readOnly'
          property :server, as: 'server'
        end
      end
      
      class GoogleCloudRunV2NetworkInterface
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :network, as: 'network'
          property :subnetwork, as: 'subnetwork'
          collection :tags, as: 'tags'
        end
      end
      
      class GoogleCloudRunV2Overrides
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :container_overrides, as: 'containerOverrides', class: Google::Apis::RunV2::GoogleCloudRunV2ContainerOverride, decorator: Google::Apis::RunV2::GoogleCloudRunV2ContainerOverride::Representation
      
          property :task_count, as: 'taskCount'
          property :timeout, as: 'timeout'
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
      
          property :scaling_status, as: 'scalingStatus', class: Google::Apis::RunV2::GoogleCloudRunV2RevisionScalingStatus, decorator: Google::Apis::RunV2::GoogleCloudRunV2RevisionScalingStatus::Representation
      
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
      
      class GoogleCloudRunV2RevisionScalingStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desired_min_instance_count, as: 'desiredMinInstanceCount'
        end
      end
      
      class GoogleCloudRunV2RevisionTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          collection :containers, as: 'containers', class: Google::Apis::RunV2::GoogleCloudRunV2Container, decorator: Google::Apis::RunV2::GoogleCloudRunV2Container::Representation
      
          property :encryption_key, as: 'encryptionKey'
          property :execution_environment, as: 'executionEnvironment'
          property :health_check_disabled, as: 'healthCheckDisabled'
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
          property :overrides, as: 'overrides', class: Google::Apis::RunV2::GoogleCloudRunV2Overrides, decorator: Google::Apis::RunV2::GoogleCloudRunV2Overrides::Representation
      
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
          collection :custom_audiences, as: 'customAudiences'
          property :default_uri_disabled, as: 'defaultUriDisabled'
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
          property :scaling, as: 'scaling', class: Google::Apis::RunV2::GoogleCloudRunV2ServiceScaling, decorator: Google::Apis::RunV2::GoogleCloudRunV2ServiceScaling::Representation
      
          property :template, as: 'template', class: Google::Apis::RunV2::GoogleCloudRunV2RevisionTemplate, decorator: Google::Apis::RunV2::GoogleCloudRunV2RevisionTemplate::Representation
      
          property :terminal_condition, as: 'terminalCondition', class: Google::Apis::RunV2::GoogleCloudRunV2Condition, decorator: Google::Apis::RunV2::GoogleCloudRunV2Condition::Representation
      
          collection :traffic, as: 'traffic', class: Google::Apis::RunV2::GoogleCloudRunV2TrafficTarget, decorator: Google::Apis::RunV2::GoogleCloudRunV2TrafficTarget::Representation
      
          collection :traffic_statuses, as: 'trafficStatuses', class: Google::Apis::RunV2::GoogleCloudRunV2TrafficTargetStatus, decorator: Google::Apis::RunV2::GoogleCloudRunV2TrafficTargetStatus::Representation
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class GoogleCloudRunV2ServiceScaling
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :min_instance_count, as: 'minInstanceCount'
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
          property :scheduled_time, as: 'scheduledTime'
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
      
          property :gcs, as: 'gcs', class: Google::Apis::RunV2::GoogleCloudRunV2GcsVolumeSource, decorator: Google::Apis::RunV2::GoogleCloudRunV2GcsVolumeSource::Representation
      
          property :name, as: 'name'
          property :nfs, as: 'nfs', class: Google::Apis::RunV2::GoogleCloudRunV2NfsVolumeSource, decorator: Google::Apis::RunV2::GoogleCloudRunV2NfsVolumeSource::Representation
      
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
          collection :network_interfaces, as: 'networkInterfaces', class: Google::Apis::RunV2::GoogleCloudRunV2NetworkInterface, decorator: Google::Apis::RunV2::GoogleCloudRunV2NetworkInterface::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ApprovalConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_required, as: 'approvalRequired'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ApprovalResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval_time, as: 'approvalTime'
          property :approver_account, as: 'approverAccount'
          property :comment, as: 'comment'
          property :decision, as: 'decision'
          property :url, as: 'url'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ArtifactObjects
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
          collection :paths, as: 'paths'
          property :timing, as: 'timing', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Artifacts
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :images, as: 'images'
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1MavenArtifact, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1MavenArtifact::Representation
      
          collection :npm_packages, as: 'npmPackages', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1NpmPackage, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1NpmPackage::Representation
      
          property :objects, as: 'objects', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ArtifactObjects, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ArtifactObjects::Representation
      
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1PythonPackage, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1PythonPackage::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Build
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approval, as: 'approval', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildApproval, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildApproval::Representation
      
          property :artifacts, as: 'artifacts', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Artifacts, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Artifacts::Representation
      
          property :available_secrets, as: 'availableSecrets', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Secrets, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Secrets::Representation
      
          property :build_trigger_id, as: 'buildTriggerId'
          property :create_time, as: 'createTime'
          property :failure_info, as: 'failureInfo', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FailureInfo, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FailureInfo::Representation
      
          property :finish_time, as: 'finishTime'
          property :id, as: 'id'
          collection :images, as: 'images'
          property :log_url, as: 'logUrl'
          property :logs_bucket, as: 'logsBucket'
          property :name, as: 'name'
          property :options, as: 'options', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildOptions, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildOptions::Representation
      
          property :project_id, as: 'projectId'
          property :queue_ttl, as: 'queueTtl'
          property :results, as: 'results', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Results, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Results::Representation
      
          collection :secrets, as: 'secrets', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Secret, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Secret::Representation
      
          property :service_account, as: 'serviceAccount'
          property :source, as: 'source', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Source, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Source::Representation
      
          property :source_provenance, as: 'sourceProvenance', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1SourceProvenance, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1SourceProvenance::Representation
      
          property :start_time, as: 'startTime'
          property :status, as: 'status'
          property :status_detail, as: 'statusDetail'
          collection :steps, as: 'steps', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildStep, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuildStep::Representation
      
          hash :substitutions, as: 'substitutions'
          collection :tags, as: 'tags'
          property :timeout, as: 'timeout'
          hash :timing, as: 'timing', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :warnings, as: 'warnings', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Warning, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Warning::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildApproval
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ApprovalConfig, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ApprovalConfig::Representation
      
          property :result, as: 'result', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ApprovalResult, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ApprovalResult::Representation
      
          property :state, as: 'state'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Build, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Build::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :automap_substitutions, as: 'automapSubstitutions'
          property :default_logs_bucket_behavior, as: 'defaultLogsBucketBehavior'
          property :disk_size_gb, :numeric_string => true, as: 'diskSizeGb'
          property :dynamic_substitutions, as: 'dynamicSubstitutions'
          collection :env, as: 'env'
          property :log_streaming_option, as: 'logStreamingOption'
          property :logging, as: 'logging'
          property :machine_type, as: 'machineType'
          property :pool, as: 'pool', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1PoolOption, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1PoolOption::Representation
      
          property :requested_verify_option, as: 'requestedVerifyOption'
          collection :secret_env, as: 'secretEnv'
          collection :source_provenance_hash, as: 'sourceProvenanceHash'
          property :substitution_option, as: 'substitutionOption'
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Volume::Representation
      
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuildStep
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allow_exit_codes, as: 'allowExitCodes'
          property :allow_failure, as: 'allowFailure'
          collection :args, as: 'args'
          property :automap_substitutions, as: 'automapSubstitutions'
          property :dir, as: 'dir'
          property :entrypoint, as: 'entrypoint'
          collection :env, as: 'env'
          property :exit_code, as: 'exitCode'
          property :id, as: 'id'
          property :name, as: 'name'
          property :pull_timing, as: 'pullTiming', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :script, as: 'script'
          collection :secret_env, as: 'secretEnv'
          property :status, as: 'status'
          property :timeout, as: 'timeout'
          property :timing, as: 'timing', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :volumes, as: 'volumes', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Volume, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Volume::Representation
      
          collection :wait_for, as: 'waitFor'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1BuiltImage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :digest, as: 'digest'
          property :name, as: 'name'
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1ConnectedRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dir, as: 'dir'
          property :repository, as: 'repository'
          property :revision, as: 'revision'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1FailureInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :detail, as: 'detail'
          property :type, as: 'type'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1FileHashes
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :file_hash, as: 'fileHash', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Hash, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1Hash::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1GitSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dir, as: 'dir'
          property :revision, as: 'revision'
          property :url, as: 'url'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Hash
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :type, as: 'type'
          property :value, :base64 => true, as: 'value'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1InlineSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :env_map, as: 'envMap'
          property :kms_key_name, as: 'kmsKeyName'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1MavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_id, as: 'artifactId'
          property :group_id, as: 'groupId'
          property :path, as: 'path'
          property :repository, as: 'repository'
          property :version, as: 'version'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1NpmPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :package_path, as: 'packagePath'
          property :repository, as: 'repository'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1PoolOption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1PythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :paths, as: 'paths'
          property :repository, as: 'repository'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1RepoSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :branch_name, as: 'branchName'
          property :commit_sha, as: 'commitSha'
          property :dir, as: 'dir'
          property :invert_regex, as: 'invertRegex'
          property :project_id, as: 'projectId'
          property :repo_name, as: 'repoName'
          hash :substitutions, as: 'substitutions'
          property :tag_name, as: 'tagName'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Results
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_manifest, as: 'artifactManifest'
          property :artifact_timing, as: 'artifactTiming', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          collection :build_step_images, as: 'buildStepImages'
          collection :build_step_outputs, as: 'buildStepOutputs'
          collection :images, as: 'images', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuiltImage, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1BuiltImage::Representation
      
          collection :maven_artifacts, as: 'mavenArtifacts', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedMavenArtifact, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedMavenArtifact::Representation
      
          collection :npm_packages, as: 'npmPackages', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedNpmPackage, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedNpmPackage::Representation
      
          property :num_artifacts, :numeric_string => true, as: 'numArtifacts'
          collection :python_packages, as: 'pythonPackages', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedPythonPackage, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1UploadedPythonPackage::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Secret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :kms_key_name, as: 'kmsKeyName'
          hash :secret_env, as: 'secretEnv'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1SecretManagerSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :env, as: 'env'
          property :version_name, as: 'versionName'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Secrets
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inline, as: 'inline', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1InlineSecret, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1InlineSecret::Representation
      
          collection :secret_manager, as: 'secretManager', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1SecretManagerSecret, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1SecretManagerSecret::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Source
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :connected_repository, as: 'connectedRepository', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ConnectedRepository, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ConnectedRepository::Representation
      
          property :git_source, as: 'gitSource', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GitSource, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GitSource::Representation
      
          property :repo_source, as: 'repoSource', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :storage_source, as: 'storageSource', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :storage_source_manifest, as: 'storageSourceManifest', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1SourceProvenance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :file_hashes, as: 'fileHashes', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :resolved_connected_repository, as: 'resolvedConnectedRepository', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ConnectedRepository, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1ConnectedRepository::Representation
      
          property :resolved_git_source, as: 'resolvedGitSource', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GitSource, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1GitSource::Representation
      
          property :resolved_repo_source, as: 'resolvedRepoSource', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1RepoSource, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1RepoSource::Representation
      
          property :resolved_storage_source, as: 'resolvedStorageSource', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSource, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSource::Representation
      
          property :resolved_storage_source_manifest, as: 'resolvedStorageSourceManifest', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSourceManifest, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1StorageSourceManifest::Representation
      
        end
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
          property :source_fetcher, as: 'sourceFetcher'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1StorageSourceManifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1TimeSpan
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedMavenArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedNpmPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1UploadedPythonPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_hashes, as: 'fileHashes', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1FileHashes::Representation
      
          property :push_timing, as: 'pushTiming', class: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan, decorator: Google::Apis::RunV2::GoogleDevtoolsCloudbuildV1TimeSpan::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Volume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :path, as: 'path'
        end
      end
      
      class GoogleDevtoolsCloudbuildV1Warning
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :priority, as: 'priority'
          property :text, as: 'text'
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
      
      class Proto2BridgeMessageSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class UtilStatusProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_code, as: 'canonicalCode'
          property :code, as: 'code'
          property :message, as: 'message'
          property :message_set, as: 'messageSet', class: Google::Apis::RunV2::Proto2BridgeMessageSet, decorator: Google::Apis::RunV2::Proto2BridgeMessageSet::Representation
      
          property :space, as: 'space'
        end
      end
    end
  end
end
