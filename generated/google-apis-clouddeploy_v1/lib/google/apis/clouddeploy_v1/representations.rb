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
    module ClouddeployV1
      
      class AbandonReleaseRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbandonReleaseResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnthosCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproveRolloutRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApproveRolloutResponse
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
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BuildArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRunLocation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CloudRunMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Config
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DefaultPool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryPipeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryPipelineNotificationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployJobRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeployJobRunMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeploymentJobs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ExecutionConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GkeCluster
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobRunNotificationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDeliveryPipelinesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobRunsResponse
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
      
      class ListReleasesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListRolloutsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTargetsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Metadata
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
      
      class Phase
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PipelineReadyCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PrivatePool
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Release
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseNotificationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseReadyCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReleaseRenderEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RetryJobResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RolloutNotificationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SerialPipeline
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SkaffoldSupportedCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SkaffoldVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Stage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Standard
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Strategy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Target
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetArtifact
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetNotificationEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetRender
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetsPresentCondition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetsTypeCondition
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
      
      class VerifyJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VerifyJobRun
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AbandonReleaseRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AbandonReleaseResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AnthosCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :membership, as: 'membership'
        end
      end
      
      class ApproveRolloutRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :approved, as: 'approved'
        end
      end
      
      class ApproveRolloutResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::ClouddeployV1::AuditLogConfig, decorator: Google::Apis::ClouddeployV1::AuditLogConfig::Representation
      
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
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::ClouddeployV1::Expr, decorator: Google::Apis::ClouddeployV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class BuildArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image, as: 'image'
          property :tag, as: 'tag'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class CloudRunLocation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location, as: 'location'
        end
      end
      
      class CloudRunMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :revision, as: 'revision'
          property :service, as: 'service'
          collection :service_urls, as: 'serviceUrls'
        end
      end
      
      class Config
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_skaffold_version, as: 'defaultSkaffoldVersion'
          property :name, as: 'name'
          collection :supported_versions, as: 'supportedVersions', class: Google::Apis::ClouddeployV1::SkaffoldVersion, decorator: Google::Apis::ClouddeployV1::SkaffoldVersion::Representation
      
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
      
      class DefaultPool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_storage, as: 'artifactStorage'
          property :service_account, as: 'serviceAccount'
        end
      end
      
      class DeliveryPipeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :condition, as: 'condition', class: Google::Apis::ClouddeployV1::PipelineCondition, decorator: Google::Apis::ClouddeployV1::PipelineCondition::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :serial_pipeline, as: 'serialPipeline', class: Google::Apis::ClouddeployV1::SerialPipeline, decorator: Google::Apis::ClouddeployV1::SerialPipeline::Representation
      
          property :suspended, as: 'suspended'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class DeliveryPipelineNotificationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :delivery_pipeline, as: 'deliveryPipeline'
          property :message, as: 'message'
          property :type, as: 'type'
        end
      end
      
      class DeployJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeployJobRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :build, as: 'build'
          property :failure_cause, as: 'failureCause'
          property :failure_message, as: 'failureMessage'
          property :metadata, as: 'metadata', class: Google::Apis::ClouddeployV1::DeployJobRunMetadata, decorator: Google::Apis::ClouddeployV1::DeployJobRunMetadata::Representation
      
        end
      end
      
      class DeployJobRunMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_run, as: 'cloudRun', class: Google::Apis::ClouddeployV1::CloudRunMetadata, decorator: Google::Apis::ClouddeployV1::CloudRunMetadata::Representation
      
        end
      end
      
      class DeploymentJobs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_job, as: 'deployJob', class: Google::Apis::ClouddeployV1::Job, decorator: Google::Apis::ClouddeployV1::Job::Representation
      
          property :verify_job, as: 'verifyJob', class: Google::Apis::ClouddeployV1::Job, decorator: Google::Apis::ClouddeployV1::Job::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ExecutionConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_storage, as: 'artifactStorage'
          property :default_pool, as: 'defaultPool', class: Google::Apis::ClouddeployV1::DefaultPool, decorator: Google::Apis::ClouddeployV1::DefaultPool::Representation
      
          property :execution_timeout, as: 'executionTimeout'
          property :private_pool, as: 'privatePool', class: Google::Apis::ClouddeployV1::PrivatePool, decorator: Google::Apis::ClouddeployV1::PrivatePool::Representation
      
          property :service_account, as: 'serviceAccount'
          collection :usages, as: 'usages'
          property :worker_pool, as: 'workerPool'
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
      
      class GkeCluster
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cluster, as: 'cluster'
          property :internal_ip, as: 'internalIp'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deploy_job, as: 'deployJob', class: Google::Apis::ClouddeployV1::DeployJob, decorator: Google::Apis::ClouddeployV1::DeployJob::Representation
      
          property :id, as: 'id'
          property :job_run, as: 'jobRun'
          property :state, as: 'state'
          property :verify_job, as: 'verifyJob', class: Google::Apis::ClouddeployV1::VerifyJob, decorator: Google::Apis::ClouddeployV1::VerifyJob::Representation
      
        end
      end
      
      class JobRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deploy_job_run, as: 'deployJobRun', class: Google::Apis::ClouddeployV1::DeployJobRun, decorator: Google::Apis::ClouddeployV1::DeployJobRun::Representation
      
          property :end_time, as: 'endTime'
          property :etag, as: 'etag'
          property :job_id, as: 'jobId'
          property :name, as: 'name'
          property :phase_id, as: 'phaseId'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :uid, as: 'uid'
          property :verify_job_run, as: 'verifyJobRun', class: Google::Apis::ClouddeployV1::VerifyJobRun, decorator: Google::Apis::ClouddeployV1::VerifyJobRun::Representation
      
        end
      end
      
      class JobRunNotificationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_run, as: 'jobRun'
          property :message, as: 'message'
          property :pipeline_uid, as: 'pipelineUid'
          property :release_uid, as: 'releaseUid'
          property :rollout_uid, as: 'rolloutUid'
          property :target_id, as: 'targetId'
          property :type, as: 'type'
        end
      end
      
      class ListDeliveryPipelinesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :delivery_pipelines, as: 'deliveryPipelines', class: Google::Apis::ClouddeployV1::DeliveryPipeline, decorator: Google::Apis::ClouddeployV1::DeliveryPipeline::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListJobRunsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_runs, as: 'jobRuns', class: Google::Apis::ClouddeployV1::JobRun, decorator: Google::Apis::ClouddeployV1::JobRun::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::ClouddeployV1::Location, decorator: Google::Apis::ClouddeployV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::ClouddeployV1::Operation, decorator: Google::Apis::ClouddeployV1::Operation::Representation
      
        end
      end
      
      class ListReleasesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :releases, as: 'releases', class: Google::Apis::ClouddeployV1::Release, decorator: Google::Apis::ClouddeployV1::Release::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListRolloutsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rollouts, as: 'rollouts', class: Google::Apis::ClouddeployV1::Rollout, decorator: Google::Apis::ClouddeployV1::Rollout::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListTargetsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :targets, as: 'targets', class: Google::Apis::ClouddeployV1::Target, decorator: Google::Apis::ClouddeployV1::Target::Representation
      
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
      
      class Metadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cloud_run, as: 'cloudRun', class: Google::Apis::ClouddeployV1::CloudRunMetadata, decorator: Google::Apis::ClouddeployV1::CloudRunMetadata::Representation
      
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::ClouddeployV1::Status, decorator: Google::Apis::ClouddeployV1::Status::Representation
      
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
      
      class Phase
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :deployment_jobs, as: 'deploymentJobs', class: Google::Apis::ClouddeployV1::DeploymentJobs, decorator: Google::Apis::ClouddeployV1::DeploymentJobs::Representation
      
          property :id, as: 'id'
          property :state, as: 'state'
        end
      end
      
      class PipelineCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pipeline_ready_condition, as: 'pipelineReadyCondition', class: Google::Apis::ClouddeployV1::PipelineReadyCondition, decorator: Google::Apis::ClouddeployV1::PipelineReadyCondition::Representation
      
          property :targets_present_condition, as: 'targetsPresentCondition', class: Google::Apis::ClouddeployV1::TargetsPresentCondition, decorator: Google::Apis::ClouddeployV1::TargetsPresentCondition::Representation
      
          property :targets_type_condition, as: 'targetsTypeCondition', class: Google::Apis::ClouddeployV1::TargetsTypeCondition, decorator: Google::Apis::ClouddeployV1::TargetsTypeCondition::Representation
      
        end
      end
      
      class PipelineReadyCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::ClouddeployV1::AuditConfig, decorator: Google::Apis::ClouddeployV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::ClouddeployV1::Binding, decorator: Google::Apis::ClouddeployV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class PrivatePool
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_storage, as: 'artifactStorage'
          property :service_account, as: 'serviceAccount'
          property :worker_pool, as: 'workerPool'
        end
      end
      
      class Release
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :abandoned, as: 'abandoned'
          hash :annotations, as: 'annotations'
          collection :build_artifacts, as: 'buildArtifacts', class: Google::Apis::ClouddeployV1::BuildArtifact, decorator: Google::Apis::ClouddeployV1::BuildArtifact::Representation
      
          property :condition, as: 'condition', class: Google::Apis::ClouddeployV1::ReleaseCondition, decorator: Google::Apis::ClouddeployV1::ReleaseCondition::Representation
      
          property :create_time, as: 'createTime'
          property :delivery_pipeline_snapshot, as: 'deliveryPipelineSnapshot', class: Google::Apis::ClouddeployV1::DeliveryPipeline, decorator: Google::Apis::ClouddeployV1::DeliveryPipeline::Representation
      
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :render_end_time, as: 'renderEndTime'
          property :render_start_time, as: 'renderStartTime'
          property :render_state, as: 'renderState'
          property :skaffold_config_path, as: 'skaffoldConfigPath'
          property :skaffold_config_uri, as: 'skaffoldConfigUri'
          property :skaffold_version, as: 'skaffoldVersion'
          hash :target_artifacts, as: 'targetArtifacts', class: Google::Apis::ClouddeployV1::TargetArtifact, decorator: Google::Apis::ClouddeployV1::TargetArtifact::Representation
      
          hash :target_renders, as: 'targetRenders', class: Google::Apis::ClouddeployV1::TargetRender, decorator: Google::Apis::ClouddeployV1::TargetRender::Representation
      
          collection :target_snapshots, as: 'targetSnapshots', class: Google::Apis::ClouddeployV1::Target, decorator: Google::Apis::ClouddeployV1::Target::Representation
      
          property :uid, as: 'uid'
        end
      end
      
      class ReleaseCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :release_ready_condition, as: 'releaseReadyCondition', class: Google::Apis::ClouddeployV1::ReleaseReadyCondition, decorator: Google::Apis::ClouddeployV1::ReleaseReadyCondition::Representation
      
          property :skaffold_supported_condition, as: 'skaffoldSupportedCondition', class: Google::Apis::ClouddeployV1::SkaffoldSupportedCondition, decorator: Google::Apis::ClouddeployV1::SkaffoldSupportedCondition::Representation
      
        end
      end
      
      class ReleaseNotificationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :release, as: 'release'
          property :type, as: 'type'
        end
      end
      
      class ReleaseReadyCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :status, as: 'status'
        end
      end
      
      class ReleaseRenderEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :release, as: 'release'
        end
      end
      
      class RetryJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_id, as: 'jobId'
          property :phase_id, as: 'phaseId'
        end
      end
      
      class RetryJobResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Rollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :approval_state, as: 'approvalState'
          property :approve_time, as: 'approveTime'
          property :create_time, as: 'createTime'
          property :deploy_end_time, as: 'deployEndTime'
          property :deploy_failure_cause, as: 'deployFailureCause'
          property :deploy_start_time, as: 'deployStartTime'
          property :deploying_build, as: 'deployingBuild'
          property :description, as: 'description'
          property :enqueue_time, as: 'enqueueTime'
          property :etag, as: 'etag'
          property :failure_reason, as: 'failureReason'
          hash :labels, as: 'labels'
          property :metadata, as: 'metadata', class: Google::Apis::ClouddeployV1::Metadata, decorator: Google::Apis::ClouddeployV1::Metadata::Representation
      
          property :name, as: 'name'
          collection :phases, as: 'phases', class: Google::Apis::ClouddeployV1::Phase, decorator: Google::Apis::ClouddeployV1::Phase::Representation
      
          property :state, as: 'state'
          property :target_id, as: 'targetId'
          property :uid, as: 'uid'
        end
      end
      
      class RolloutNotificationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :pipeline_uid, as: 'pipelineUid'
          property :release_uid, as: 'releaseUid'
          property :rollout, as: 'rollout'
          property :target_id, as: 'targetId'
          property :type, as: 'type'
        end
      end
      
      class SerialPipeline
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :stages, as: 'stages', class: Google::Apis::ClouddeployV1::Stage, decorator: Google::Apis::ClouddeployV1::Stage::Representation
      
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::ClouddeployV1::Policy, decorator: Google::Apis::ClouddeployV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SkaffoldSupportedCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_mode_time, as: 'maintenanceModeTime'
          property :skaffold_support_state, as: 'skaffoldSupportState'
          property :status, as: 'status'
          property :support_expiration_time, as: 'supportExpirationTime'
        end
      end
      
      class SkaffoldVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :maintenance_mode_time, as: 'maintenanceModeTime'
          property :support_end_date, as: 'supportEndDate', class: Google::Apis::ClouddeployV1::Date, decorator: Google::Apis::ClouddeployV1::Date::Representation
      
          property :support_expiration_time, as: 'supportExpirationTime'
          property :version, as: 'version'
        end
      end
      
      class Stage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :profiles, as: 'profiles'
          property :strategy, as: 'strategy', class: Google::Apis::ClouddeployV1::Strategy, decorator: Google::Apis::ClouddeployV1::Strategy::Representation
      
          property :target_id, as: 'targetId'
        end
      end
      
      class Standard
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :verify, as: 'verify'
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
      
      class Strategy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :standard, as: 'standard', class: Google::Apis::ClouddeployV1::Standard, decorator: Google::Apis::ClouddeployV1::Standard::Representation
      
        end
      end
      
      class Target
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :anthos_cluster, as: 'anthosCluster', class: Google::Apis::ClouddeployV1::AnthosCluster, decorator: Google::Apis::ClouddeployV1::AnthosCluster::Representation
      
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          collection :execution_configs, as: 'executionConfigs', class: Google::Apis::ClouddeployV1::ExecutionConfig, decorator: Google::Apis::ClouddeployV1::ExecutionConfig::Representation
      
          property :gke, as: 'gke', class: Google::Apis::ClouddeployV1::GkeCluster, decorator: Google::Apis::ClouddeployV1::GkeCluster::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :require_approval, as: 'requireApproval'
          property :run, as: 'run', class: Google::Apis::ClouddeployV1::CloudRunLocation, decorator: Google::Apis::ClouddeployV1::CloudRunLocation::Representation
      
          property :target_id, as: 'targetId'
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
        end
      end
      
      class TargetArtifact
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_uri, as: 'artifactUri'
          property :manifest_path, as: 'manifestPath'
          property :skaffold_config_path, as: 'skaffoldConfigPath'
        end
      end
      
      class TargetNotificationEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :message, as: 'message'
          property :target, as: 'target'
          property :type, as: 'type'
        end
      end
      
      class TargetRender
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failure_cause, as: 'failureCause'
          property :failure_message, as: 'failureMessage'
          property :rendering_build, as: 'renderingBuild'
          property :rendering_state, as: 'renderingState'
        end
      end
      
      class TargetsPresentCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :missing_targets, as: 'missingTargets'
          property :status, as: 'status'
          property :update_time, as: 'updateTime'
        end
      end
      
      class TargetsTypeCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_details, as: 'errorDetails'
          property :status, as: 'status'
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
      
      class VerifyJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class VerifyJobRun
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :artifact_uri, as: 'artifactUri'
          property :build, as: 'build'
          property :event_log_path, as: 'eventLogPath'
          property :failure_cause, as: 'failureCause'
          property :failure_message, as: 'failureMessage'
        end
      end
    end
  end
end
