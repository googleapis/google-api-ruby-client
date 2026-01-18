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
    module OsconfigV2
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedOrPercent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigCommonV1OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigCommonV1alphaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigCommonV1mainOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OrchestrationScopeLocationSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OrchestrationScopeSelector
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2PolicyOrchestratorIterationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OrchestratedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2OrchestrationScope
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2PolicyOrchestrator
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudOsconfigV2betaOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MessageSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentInstanceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentInstanceFilterInventory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentLabelSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyAssignmentRollout
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyInventoryFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceExecResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceExecResourceExec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileGcs
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileRemote
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceFileResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceApt
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceDeb
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceGooGet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceMsi
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceRpm
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceYum
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourcePackageResourceZypper
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceAptRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceGooRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceYumRepository
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OsPolicyResourceRepositoryResourceZypperRepository
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
      
      class StatusProto
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FixedOrPercent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed, as: 'fixed'
          property :percent, as: 'percent'
        end
      end
      
      class GoogleCloudOsconfigCommonV1OperationMetadata
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
      
      class GoogleCloudOsconfigCommonV1alphaOperationMetadata
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
      
      class GoogleCloudOsconfigCommonV1mainOperationMetadata
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
      
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_method, as: 'apiMethod'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          property :rollout_start_time, as: 'rolloutStartTime'
          property :rollout_state, as: 'rolloutState'
          property :rollout_update_time, as: 'rolloutUpdateTime'
        end
      end
      
      class GoogleCloudOsconfigV2OrchestrationScopeLocationSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :included_locations, as: 'includedLocations'
        end
      end
      
      class GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :included_folders, as: 'includedFolders'
          collection :included_projects, as: 'includedProjects'
        end
      end
      
      class GoogleCloudOsconfigV2OrchestrationScopeSelector
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :location_selector, as: 'locationSelector', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeLocationSelector, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeLocationSelector::Representation
      
          property :resource_hierarchy_selector, as: 'resourceHierarchySelector', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector::Representation
      
        end
      end
      
      class GoogleCloudOsconfigV2PolicyOrchestratorIterationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::OsconfigV2::Status, decorator: Google::Apis::OsconfigV2::Status::Representation
      
          property :failed_actions, :numeric_string => true, as: 'failedActions'
          property :finish_time, as: 'finishTime'
          property :iteration_id, as: 'iterationId'
          property :performed_actions, :numeric_string => true, as: 'performedActions'
          property :progress, as: 'progress'
          property :start_time, as: 'startTime'
          property :state, as: 'state'
        end
      end
      
      class GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_iteration_state, as: 'currentIterationState', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorIterationState, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorIterationState::Representation
      
          property :previous_iteration_state, as: 'previousIterationState', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorIterationState, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorIterationState::Representation
      
        end
      end
      
      class GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :policy_orchestrators, as: 'policyOrchestrators', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class GoogleCloudOsconfigV2OperationMetadata
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
      
      class GoogleCloudOsconfigV2OrchestratedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :os_policy_assignment_v1_payload, as: 'osPolicyAssignmentV1Payload', class: Google::Apis::OsconfigV2::OsPolicyAssignment, decorator: Google::Apis::OsconfigV2::OsPolicyAssignment::Representation
      
        end
      end
      
      class GoogleCloudOsconfigV2OrchestrationScope
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :selectors, as: 'selectors', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeSelector, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeSelector::Representation
      
        end
      end
      
      class GoogleCloudOsconfigV2PolicyOrchestrator
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :create_time, as: 'createTime'
          property :description, as: 'description'
          property :etag, as: 'etag'
          hash :labels, as: 'labels'
          property :name, as: 'name'
          property :orchestrated_resource, as: 'orchestratedResource', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestratedResource, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestratedResource::Representation
      
          property :orchestration_scope, as: 'orchestrationScope', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScope, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScope::Representation
      
          property :orchestration_state, as: 'orchestrationState', class: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState, decorator: Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState::Representation
      
          property :reconciling, as: 'reconciling'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleCloudOsconfigV2betaOperationMetadata
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
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::OsconfigV2::Operation, decorator: Google::Apis::OsconfigV2::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class MessageSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class OsPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_no_resource_group_match, as: 'allowNoResourceGroupMatch'
          property :description, as: 'description'
          property :id, as: 'id'
          property :mode, as: 'mode'
          collection :resource_groups, as: 'resourceGroups', class: Google::Apis::OsconfigV2::OsPolicyResourceGroup, decorator: Google::Apis::OsconfigV2::OsPolicyResourceGroup::Representation
      
        end
      end
      
      class OsPolicyAssignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :baseline, as: 'baseline'
          property :deleted, as: 'deleted'
          property :description, as: 'description'
          property :etag, as: 'etag'
          property :instance_filter, as: 'instanceFilter', class: Google::Apis::OsconfigV2::OsPolicyAssignmentInstanceFilter, decorator: Google::Apis::OsconfigV2::OsPolicyAssignmentInstanceFilter::Representation
      
          property :name, as: 'name'
          collection :os_policies, as: 'osPolicies', class: Google::Apis::OsconfigV2::OsPolicy, decorator: Google::Apis::OsconfigV2::OsPolicy::Representation
      
          property :reconciling, as: 'reconciling'
          property :revision_create_time, as: 'revisionCreateTime'
          property :revision_id, as: 'revisionId'
          property :rollout, as: 'rollout', class: Google::Apis::OsconfigV2::OsPolicyAssignmentRollout, decorator: Google::Apis::OsconfigV2::OsPolicyAssignmentRollout::Representation
      
          property :rollout_state, as: 'rolloutState'
          property :uid, as: 'uid'
        end
      end
      
      class OsPolicyAssignmentInstanceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all, as: 'all'
          collection :exclusion_labels, as: 'exclusionLabels', class: Google::Apis::OsconfigV2::OsPolicyAssignmentLabelSet, decorator: Google::Apis::OsconfigV2::OsPolicyAssignmentLabelSet::Representation
      
          collection :inclusion_labels, as: 'inclusionLabels', class: Google::Apis::OsconfigV2::OsPolicyAssignmentLabelSet, decorator: Google::Apis::OsconfigV2::OsPolicyAssignmentLabelSet::Representation
      
          collection :inventories, as: 'inventories', class: Google::Apis::OsconfigV2::OsPolicyAssignmentInstanceFilterInventory, decorator: Google::Apis::OsconfigV2::OsPolicyAssignmentInstanceFilterInventory::Representation
      
        end
      end
      
      class OsPolicyAssignmentInstanceFilterInventory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class OsPolicyAssignmentLabelSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :labels, as: 'labels'
        end
      end
      
      class OsPolicyAssignmentOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_method, as: 'apiMethod'
          property :os_policy_assignment, as: 'osPolicyAssignment'
          property :rollout_start_time, as: 'rolloutStartTime'
          property :rollout_state, as: 'rolloutState'
          property :rollout_update_time, as: 'rolloutUpdateTime'
        end
      end
      
      class OsPolicyAssignmentRollout
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disruption_budget, as: 'disruptionBudget', class: Google::Apis::OsconfigV2::FixedOrPercent, decorator: Google::Apis::OsconfigV2::FixedOrPercent::Representation
      
          property :min_wait_duration, as: 'minWaitDuration'
        end
      end
      
      class OsPolicyInventoryFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :os_short_name, as: 'osShortName'
          property :os_version, as: 'osVersion'
        end
      end
      
      class OsPolicyResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :exec, as: 'exec', class: Google::Apis::OsconfigV2::OsPolicyResourceExecResource, decorator: Google::Apis::OsconfigV2::OsPolicyResourceExecResource::Representation
      
          property :file, as: 'file', class: Google::Apis::OsconfigV2::OsPolicyResourceFileResource, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFileResource::Representation
      
          property :id, as: 'id'
          property :pkg, as: 'pkg', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResource, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResource::Representation
      
          property :repository, as: 'repository', class: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResource, decorator: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResource::Representation
      
        end
      end
      
      class OsPolicyResourceExecResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enforce, as: 'enforce', class: Google::Apis::OsconfigV2::OsPolicyResourceExecResourceExec, decorator: Google::Apis::OsconfigV2::OsPolicyResourceExecResourceExec::Representation
      
          property :validate, as: 'validate', class: Google::Apis::OsconfigV2::OsPolicyResourceExecResourceExec, decorator: Google::Apis::OsconfigV2::OsPolicyResourceExecResourceExec::Representation
      
        end
      end
      
      class OsPolicyResourceExecResourceExec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :args, as: 'args'
          property :file, as: 'file', class: Google::Apis::OsconfigV2::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFile::Representation
      
          property :interpreter, as: 'interpreter'
          property :output_file_path, as: 'outputFilePath'
          property :script, as: 'script'
        end
      end
      
      class OsPolicyResourceFile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_insecure, as: 'allowInsecure'
          property :gcs, as: 'gcs', class: Google::Apis::OsconfigV2::OsPolicyResourceFileGcs, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFileGcs::Representation
      
          property :local_path, as: 'localPath'
          property :remote, as: 'remote', class: Google::Apis::OsconfigV2::OsPolicyResourceFileRemote, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFileRemote::Representation
      
        end
      end
      
      class OsPolicyResourceFileGcs
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bucket, as: 'bucket'
          property :generation, :numeric_string => true, as: 'generation'
          property :object, as: 'object'
        end
      end
      
      class OsPolicyResourceFileRemote
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :sha256_checksum, as: 'sha256Checksum'
          property :uri, as: 'uri'
        end
      end
      
      class OsPolicyResourceFileResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :content, as: 'content'
          property :file, as: 'file', class: Google::Apis::OsconfigV2::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFile::Representation
      
          property :path, as: 'path'
          property :permissions, as: 'permissions'
          property :state, as: 'state'
        end
      end
      
      class OsPolicyResourceGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inventory_filters, as: 'inventoryFilters', class: Google::Apis::OsconfigV2::OsPolicyInventoryFilter, decorator: Google::Apis::OsconfigV2::OsPolicyInventoryFilter::Representation
      
          collection :resources, as: 'resources', class: Google::Apis::OsconfigV2::OsPolicyResource, decorator: Google::Apis::OsconfigV2::OsPolicyResource::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceApt, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceApt::Representation
      
          property :deb, as: 'deb', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceDeb, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceDeb::Representation
      
          property :desired_state, as: 'desiredState'
          property :googet, as: 'googet', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceGooGet, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceGooGet::Representation
      
          property :msi, as: 'msi', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceMsi, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceMsi::Representation
      
          property :rpm, as: 'rpm', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceRpm, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceRpm::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceYum, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceYum::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceZypper, decorator: Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceZypper::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceApt
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceDeb
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pull_deps, as: 'pullDeps'
          property :source, as: 'source', class: Google::Apis::OsconfigV2::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceGooGet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceMsi
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :properties, as: 'properties'
          property :source, as: 'source', class: Google::Apis::OsconfigV2::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceRpm
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :pull_deps, as: 'pullDeps'
          property :source, as: 'source', class: Google::Apis::OsconfigV2::OsPolicyResourceFile, decorator: Google::Apis::OsconfigV2::OsPolicyResourceFile::Representation
      
        end
      end
      
      class OsPolicyResourcePackageResourceYum
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourcePackageResourceZypper
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class OsPolicyResourceRepositoryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :apt, as: 'apt', class: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceAptRepository, decorator: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceAptRepository::Representation
      
          property :goo, as: 'goo', class: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceGooRepository, decorator: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceGooRepository::Representation
      
          property :yum, as: 'yum', class: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceYumRepository, decorator: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceYumRepository::Representation
      
          property :zypper, as: 'zypper', class: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceZypperRepository, decorator: Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceZypperRepository::Representation
      
        end
      end
      
      class OsPolicyResourceRepositoryResourceAptRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :archive_type, as: 'archiveType'
          collection :components, as: 'components'
          property :distribution, as: 'distribution'
          property :gpg_key, as: 'gpgKey'
          property :uri, as: 'uri'
        end
      end
      
      class OsPolicyResourceRepositoryResourceGooRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :url, as: 'url'
        end
      end
      
      class OsPolicyResourceRepositoryResourceYumRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
        end
      end
      
      class OsPolicyResourceRepositoryResourceZypperRepository
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :base_url, as: 'baseUrl'
          property :display_name, as: 'displayName'
          collection :gpg_keys, as: 'gpgKeys'
          property :id, as: 'id'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::OsconfigV2::Status, decorator: Google::Apis::OsconfigV2::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class StatusProto
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :canonical_code, as: 'canonicalCode'
          property :code, as: 'code'
          property :message, as: 'message'
          property :message_set, as: 'messageSet', class: Google::Apis::OsconfigV2::MessageSet, decorator: Google::Apis::OsconfigV2::MessageSet::Representation
      
          property :space, as: 'space'
        end
      end
    end
  end
end
