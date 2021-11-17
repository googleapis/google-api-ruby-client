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
      
      class ListDeliveryPipelinesResponse
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
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
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
      
      class Rollout
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
      
      class SkaffoldVersion
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Stage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
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
      
      class TargetRender
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TargetsPresentCondition
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
      
          property :uid, as: 'uid'
          property :update_time, as: 'updateTime'
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
          property :default_pool, as: 'defaultPool', class: Google::Apis::ClouddeployV1::DefaultPool, decorator: Google::Apis::ClouddeployV1::DefaultPool::Representation
      
          property :private_pool, as: 'privatePool', class: Google::Apis::ClouddeployV1::PrivatePool, decorator: Google::Apis::ClouddeployV1::PrivatePool::Representation
      
          collection :usages, as: 'usages'
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
      
      class PipelineCondition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pipeline_ready_condition, as: 'pipelineReadyCondition', class: Google::Apis::ClouddeployV1::PipelineReadyCondition, decorator: Google::Apis::ClouddeployV1::PipelineReadyCondition::Representation
      
          property :targets_present_condition, as: 'targetsPresentCondition', class: Google::Apis::ClouddeployV1::TargetsPresentCondition, decorator: Google::Apis::ClouddeployV1::TargetsPresentCondition::Representation
      
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
          hash :annotations, as: 'annotations'
          collection :build_artifacts, as: 'buildArtifacts', class: Google::Apis::ClouddeployV1::BuildArtifact, decorator: Google::Apis::ClouddeployV1::BuildArtifact::Representation
      
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
      
      class Rollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :approval_state, as: 'approvalState'
          property :approve_time, as: 'approveTime'
          property :create_time, as: 'createTime'
          property :deploy_end_time, as: 'deployEndTime'
          property :deploy_start_time, as: 'deployStartTime'
          property :deploying_build, as: 'deployingBuild'
          property :description, as: 'description'
          property :enqueue_time, as: 'enqueueTime'
          property :etag, as: 'etag'
          property :failure_reason, as: 'failureReason'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :state, as: 'state'
          property :target_id, as: 'targetId'
          property :uid, as: 'uid'
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
      
      class SkaffoldVersion
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :support_end_date, as: 'supportEndDate', class: Google::Apis::ClouddeployV1::Date, decorator: Google::Apis::ClouddeployV1::Date::Representation
      
          property :version, as: 'version'
        end
      end
      
      class Stage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :profiles, as: 'profiles'
          property :target_id, as: 'targetId'
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
      
      class Target
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :annotations, as: 'annotations'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          collection :execution_configs, as: 'executionConfigs', class: Google::Apis::ClouddeployV1::ExecutionConfig, decorator: Google::Apis::ClouddeployV1::ExecutionConfig::Representation
      
          property :gke, as: 'gke', class: Google::Apis::ClouddeployV1::GkeCluster, decorator: Google::Apis::ClouddeployV1::GkeCluster::Representation
      
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :require_approval, as: 'requireApproval'
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
      
      class TargetRender
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
    end
  end
end
