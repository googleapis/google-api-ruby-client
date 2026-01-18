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
      
      # The request message for Operations.CancelOperation.
      class CancelOperationRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Message encapsulating a value that can be either absolute ("fixed") or
      # relative ("percent") to a value.
      class FixedOrPercent
        include Google::Apis::Core::Hashable
      
        # Specifies a fixed value.
        # Corresponds to the JSON property `fixed`
        # @return [Fixnum]
        attr_accessor :fixed
      
        # Specifies the relative value defined as a percentage, which will be multiplied
        # by a reference value.
        # Corresponds to the JSON property `percent`
        # @return [Fixnum]
        attr_accessor :percent
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed = args[:fixed] if args.key?(:fixed)
          @percent = args[:percent] if args.key?(:percent)
        end
      end
      
      # Represents the metadata of a generic long-running operation.
      class GoogleCloudOsconfigCommonV1OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents the metadata of a generic long-running operation.
      class GoogleCloudOsconfigCommonV1alphaOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents the metadata of a generic long-running operation.
      class GoogleCloudOsconfigCommonV1mainOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have successfully been cancelled have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # OS policy assignment operation metadata provided by OS policy assignment API
      # methods that return long running operations.
      class GoogleCloudOsconfigV1OsPolicyAssignmentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The OS policy assignment API method.
        # Corresponds to the JSON property `apiMethod`
        # @return [String]
        attr_accessor :api_method
      
        # Reference to the `OSPolicyAssignment` API resource. Format: `projects/`
        # project_number`/locations/`location`/osPolicyAssignments/`
        # os_policy_assignment_id@revision_id``
        # Corresponds to the JSON property `osPolicyAssignment`
        # @return [String]
        attr_accessor :os_policy_assignment
      
        # Rollout start time
        # Corresponds to the JSON property `rolloutStartTime`
        # @return [String]
        attr_accessor :rollout_start_time
      
        # State of the rollout
        # Corresponds to the JSON property `rolloutState`
        # @return [String]
        attr_accessor :rollout_state
      
        # Rollout update time
        # Corresponds to the JSON property `rolloutUpdateTime`
        # @return [String]
        attr_accessor :rollout_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_method = args[:api_method] if args.key?(:api_method)
          @os_policy_assignment = args[:os_policy_assignment] if args.key?(:os_policy_assignment)
          @rollout_start_time = args[:rollout_start_time] if args.key?(:rollout_start_time)
          @rollout_state = args[:rollout_state] if args.key?(:rollout_state)
          @rollout_update_time = args[:rollout_update_time] if args.key?(:rollout_update_time)
        end
      end
      
      # Selector containing locations in scope.
      class GoogleCloudOsconfigV2OrchestrationScopeLocationSelector
        include Google::Apis::Core::Hashable
      
        # Optional. Names of the locations in scope. Format: `us-central1-a`
        # Corresponds to the JSON property `includedLocations`
        # @return [Array<String>]
        attr_accessor :included_locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_locations = args[:included_locations] if args.key?(:included_locations)
        end
      end
      
      # Selector containing Cloud Resource Manager resource hierarchy nodes.
      class GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector
        include Google::Apis::Core::Hashable
      
        # Optional. Names of the folders in scope. Format: `folders/`folder_id``
        # Corresponds to the JSON property `includedFolders`
        # @return [Array<String>]
        attr_accessor :included_folders
      
        # Optional. Names of the projects in scope. Format: `projects/`project_number``
        # Corresponds to the JSON property `includedProjects`
        # @return [Array<String>]
        attr_accessor :included_projects
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_folders = args[:included_folders] if args.key?(:included_folders)
          @included_projects = args[:included_projects] if args.key?(:included_projects)
        end
      end
      
      # Selector for the resources in scope of orchestration.
      class GoogleCloudOsconfigV2OrchestrationScopeSelector
        include Google::Apis::Core::Hashable
      
        # Selector containing locations in scope.
        # Corresponds to the JSON property `locationSelector`
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeLocationSelector]
        attr_accessor :location_selector
      
        # Selector containing Cloud Resource Manager resource hierarchy nodes.
        # Corresponds to the JSON property `resourceHierarchySelector`
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeResourceHierarchySelector]
        attr_accessor :resource_hierarchy_selector
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @location_selector = args[:location_selector] if args.key?(:location_selector)
          @resource_hierarchy_selector = args[:resource_hierarchy_selector] if args.key?(:resource_hierarchy_selector)
        end
      end
      
      # Describes the state of a single iteration of the orchestrator.
      class GoogleCloudOsconfigV2PolicyOrchestratorIterationState
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::OsconfigV2::Status]
        attr_accessor :error
      
        # Output only. Number of orchestration actions which failed so far. For more
        # details, query the Cloud Logs.
        # Corresponds to the JSON property `failedActions`
        # @return [Fixnum]
        attr_accessor :failed_actions
      
        # Output only. Finish time of the wave iteration.
        # Corresponds to the JSON property `finishTime`
        # @return [String]
        attr_accessor :finish_time
      
        # Output only. Unique identifier of the iteration.
        # Corresponds to the JSON property `iterationId`
        # @return [String]
        attr_accessor :iteration_id
      
        # Output only. Overall number of actions done by the orchestrator so far.
        # Corresponds to the JSON property `performedActions`
        # @return [Fixnum]
        attr_accessor :performed_actions
      
        # Output only. An estimated percentage of the progress. Number between 0 and 100.
        # Corresponds to the JSON property `progress`
        # @return [Float]
        attr_accessor :progress
      
        # Output only. Start time of the wave iteration.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. State of the iteration.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @failed_actions = args[:failed_actions] if args.key?(:failed_actions)
          @finish_time = args[:finish_time] if args.key?(:finish_time)
          @iteration_id = args[:iteration_id] if args.key?(:iteration_id)
          @performed_actions = args[:performed_actions] if args.key?(:performed_actions)
          @progress = args[:progress] if args.key?(:progress)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Describes the state of the orchestration process.
      class GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState
        include Google::Apis::Core::Hashable
      
        # Describes the state of a single iteration of the orchestrator.
        # Corresponds to the JSON property `currentIterationState`
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorIterationState]
        attr_accessor :current_iteration_state
      
        # Describes the state of a single iteration of the orchestrator.
        # Corresponds to the JSON property `previousIterationState`
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorIterationState]
        attr_accessor :previous_iteration_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_iteration_state = args[:current_iteration_state] if args.key?(:current_iteration_state)
          @previous_iteration_state = args[:previous_iteration_state] if args.key?(:previous_iteration_state)
        end
      end
      
      # Response for the list policy orchestrator resources.
      class GoogleCloudOsconfigV2ListPolicyOrchestratorsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The policy orchestrators for the specified parent resource.
        # Corresponds to the JSON property `policyOrchestrators`
        # @return [Array<Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestrator>]
        attr_accessor :policy_orchestrators
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @policy_orchestrators = args[:policy_orchestrators] if args.key?(:policy_orchestrators)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudOsconfigV2OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Represents a resource that is being orchestrated by the policy orchestrator.
      class GoogleCloudOsconfigV2OrchestratedResource
        include Google::Apis::Core::Hashable
      
        # Optional. ID of the resource to be used while generating set of affected
        # resources. For UPSERT action the value is auto-generated during
        # PolicyOrchestrator creation when not set. When the value is set it should
        # following next restrictions: * Must contain only lowercase letters, numbers,
        # and hyphens. * Must start with a letter. * Must be between 1-63 characters. *
        # Must end with a number or a letter. * Must be unique within the project. For
        # DELETE action, ID must be specified explicitly during PolicyOrchestrator
        # creation.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # OS policy assignment is an API resource that is used to apply a set of OS
        # policies to a dynamically targeted group of Compute Engine VM instances. An OS
        # policy is used to define the desired state configuration for a Compute Engine
        # VM instance through a set of configuration resources that provide capabilities
        # such as installing or removing software packages, or executing a script. For
        # more information about the OS policy resource definitions and examples, see [
        # OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-
        # configuration-management/working-with-os-policies).
        # Corresponds to the JSON property `osPolicyAssignmentV1Payload`
        # @return [Google::Apis::OsconfigV2::OsPolicyAssignment]
        attr_accessor :os_policy_assignment_v1_payload
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @os_policy_assignment_v1_payload = args[:os_policy_assignment_v1_payload] if args.key?(:os_policy_assignment_v1_payload)
        end
      end
      
      # Defines a set of selectors which drive which resources are in scope of policy
      # orchestration.
      class GoogleCloudOsconfigV2OrchestrationScope
        include Google::Apis::Core::Hashable
      
        # Optional. Selectors of the orchestration scope. There is a logical AND between
        # each selector defined. When there is no explicit `ResourceHierarchySelector`
        # selector specified, the scope is by default bounded to the parent of the
        # policy orchestrator resource.
        # Corresponds to the JSON property `selectors`
        # @return [Array<Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScopeSelector>]
        attr_accessor :selectors
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selectors = args[:selectors] if args.key?(:selectors)
        end
      end
      
      # PolicyOrchestrator helps managing project+zone level policy resources (e.g. OS
      # Policy Assignments), by providing tools to create, update and delete them
      # across projects and locations, at scale. Policy orchestrator functions as an
      # endless loop. Each iteration orchestrator computes a set of resources that
      # should be affected, then progressively applies changes to them. If for some
      # reason this set of resources changes over time (e.g. new projects are added),
      # the future loop iterations will address that. Orchestrator can either upsert
      # or delete policy resources. For more details, see the description of the `
      # action`, and `orchestrated_resource` fields. Note that policy orchestrator do
      # not "manage" the resources it creates. Every iteration is independent and only
      # minimal history of past actions is retained (apart from Cloud Logging). If
      # orchestrator gets deleted, it does not affect the resources it created in the
      # past. Those will remain where they were. Same applies if projects are removed
      # from the orchestrator's scope.
      class GoogleCloudOsconfigV2PolicyOrchestrator
        include Google::Apis::Core::Hashable
      
        # Required. Action to be done by the orchestrator in `projects/`project_id`/
        # zones/`zone_id`` locations defined by the `orchestration_scope`. Allowed
        # values: - `UPSERT` - Orchestrator will create or update target resources. - `
        # DELETE` - Orchestrator will delete target resources, if they exist
        # Corresponds to the JSON property `action`
        # @return [String]
        attr_accessor :action
      
        # Output only. Timestamp when the policy orchestrator resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Freeform text describing the purpose of the resource.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. This checksum is computed by the server based on the value of
        # other fields, and may be sent on update and delete requests to ensure the
        # client has an up-to-date value before proceeding.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Optional. Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Immutable. Identifier. In form of * `organizations/`organization_id`/locations/
        # global/policyOrchestrators/`orchestrator_id`` * `folders/`folder_id`/locations/
        # global/policyOrchestrators/`orchestrator_id`` * `projects/`
        # project_id_or_number`/locations/global/policyOrchestrators/`orchestrator_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Represents a resource that is being orchestrated by the policy orchestrator.
        # Corresponds to the JSON property `orchestratedResource`
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestratedResource]
        attr_accessor :orchestrated_resource
      
        # Defines a set of selectors which drive which resources are in scope of policy
        # orchestration.
        # Corresponds to the JSON property `orchestrationScope`
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2OrchestrationScope]
        attr_accessor :orchestration_scope
      
        # Describes the state of the orchestration process.
        # Corresponds to the JSON property `orchestrationState`
        # @return [Google::Apis::OsconfigV2::GoogleCloudOsconfigV2PolicyOrchestratorOrchestrationState]
        attr_accessor :orchestration_state
      
        # Output only. Set to true, if the there are ongoing changes being applied by
        # the orchestrator.
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Optional. State of the orchestrator. Can be updated to change orchestrator
        # behaviour. Allowed values: - `ACTIVE` - orchestrator is actively looking for
        # actions to be taken. - `STOPPED` - orchestrator won't make any changes. Note:
        # There might be more states added in the future. We use string here instead of
        # an enum, to avoid the need of propagating new states to all the client code.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Timestamp when the policy orchestrator resource was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @action = args[:action] if args.key?(:action)
          @create_time = args[:create_time] if args.key?(:create_time)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @orchestrated_resource = args[:orchestrated_resource] if args.key?(:orchestrated_resource)
          @orchestration_scope = args[:orchestration_scope] if args.key?(:orchestration_scope)
          @orchestration_state = args[:orchestration_state] if args.key?(:orchestration_state)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudOsconfigV2betaOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # The response message for Operations.ListOperations.
      class ListOperationsResponse
        include Google::Apis::Core::Hashable
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # A list of operations that matches the specified filter in the request.
        # Corresponds to the JSON property `operations`
        # @return [Array<Google::Apis::OsconfigV2::Operation>]
        attr_accessor :operations
      
        # Unordered list. Unreachable resources. Populated when the request sets `
        # ListOperationsRequest.return_partial_success` and reads across collections.
        # For example, when attempting to list all resources across all supported
        # locations.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # This is proto2's version of MessageSet. DEPRECATED: DO NOT USE FOR NEW FIELDS.
      # If you are using editions or proto2, please make your own extendable messages
      # for your use case. If you are using proto3, please use `Any` instead.
      # MessageSet was the implementation of extensions for proto1. When proto2 was
      # introduced, extensions were implemented as a first-class feature. This schema
      # for MessageSet was meant to be a "bridge" solution to migrate MessageSet-
      # bearing messages from proto1 to proto2. This schema has been open-sourced only
      # to facilitate the migration of Google products with MessageSet-bearing
      # messages to open-source environments.
      class MessageSet
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # An OS policy defines the desired state configuration for a VM.
      class OsPolicy
        include Google::Apis::Core::Hashable
      
        # This flag determines the OS policy compliance status when none of the resource
        # groups within the policy are applicable for a VM. Set this value to `true` if
        # the policy needs to be reported as compliant even if the policy has nothing to
        # validate or enforce.
        # Corresponds to the JSON property `allowNoResourceGroupMatch`
        # @return [Boolean]
        attr_accessor :allow_no_resource_group_match
        alias_method :allow_no_resource_group_match?, :allow_no_resource_group_match
      
        # Policy description. Length of the description is limited to 1024 characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The id of the OS policy with the following restrictions: * Must
        # contain only lowercase letters, numbers, and hyphens. * Must start with a
        # letter. * Must be between 1-63 characters. * Must end with a number or a
        # letter. * Must be unique within the assignment.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Required. Policy mode
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Required. List of resource groups for the policy. For a particular VM,
        # resource groups are evaluated in the order specified and the first resource
        # group that is applicable is selected and the rest are ignored. If none of the
        # resource groups are applicable for a VM, the VM is considered to be non-
        # compliant w.r.t this policy. This behavior can be toggled by the flag `
        # allow_no_resource_group_match`
        # Corresponds to the JSON property `resourceGroups`
        # @return [Array<Google::Apis::OsconfigV2::OsPolicyResourceGroup>]
        attr_accessor :resource_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_no_resource_group_match = args[:allow_no_resource_group_match] if args.key?(:allow_no_resource_group_match)
          @description = args[:description] if args.key?(:description)
          @id = args[:id] if args.key?(:id)
          @mode = args[:mode] if args.key?(:mode)
          @resource_groups = args[:resource_groups] if args.key?(:resource_groups)
        end
      end
      
      # OS policy assignment is an API resource that is used to apply a set of OS
      # policies to a dynamically targeted group of Compute Engine VM instances. An OS
      # policy is used to define the desired state configuration for a Compute Engine
      # VM instance through a set of configuration resources that provide capabilities
      # such as installing or removing software packages, or executing a script. For
      # more information about the OS policy resource definitions and examples, see [
      # OS policy and OS policy assignment](https://cloud.google.com/compute/docs/os-
      # configuration-management/working-with-os-policies).
      class OsPolicyAssignment
        include Google::Apis::Core::Hashable
      
        # Output only. Indicates that this revision has been successfully rolled out in
        # this zone and new VMs will be assigned OS policies from this revision. For a
        # given OS policy assignment, there is only one revision with a value of `true`
        # for this field.
        # Corresponds to the JSON property `baseline`
        # @return [Boolean]
        attr_accessor :baseline
        alias_method :baseline?, :baseline
      
        # Output only. Indicates that this revision deletes the OS policy assignment.
        # Corresponds to the JSON property `deleted`
        # @return [Boolean]
        attr_accessor :deleted
        alias_method :deleted?, :deleted
      
        # OS policy assignment description. Length of the description is limited to 1024
        # characters.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The etag for this OS policy assignment. If this is provided on update, it must
        # match the server's etag.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # Filters to select target VMs for an assignment. If more than one filter
        # criteria is specified below, a VM will be selected if and only if it satisfies
        # all of them.
        # Corresponds to the JSON property `instanceFilter`
        # @return [Google::Apis::OsconfigV2::OsPolicyAssignmentInstanceFilter]
        attr_accessor :instance_filter
      
        # Resource name. Format: `projects/`project_number`/locations/`location`/
        # osPolicyAssignments/`os_policy_assignment_id`` This field is ignored when you
        # create an OS policy assignment.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. List of OS policies to be applied to the VMs.
        # Corresponds to the JSON property `osPolicies`
        # @return [Array<Google::Apis::OsconfigV2::OsPolicy>]
        attr_accessor :os_policies
      
        # Output only. Indicates that reconciliation is in progress for the revision.
        # This value is `true` when the `rollout_state` is one of: * IN_PROGRESS *
        # CANCELLING
        # Corresponds to the JSON property `reconciling`
        # @return [Boolean]
        attr_accessor :reconciling
        alias_method :reconciling?, :reconciling
      
        # Output only. The timestamp that the revision was created.
        # Corresponds to the JSON property `revisionCreateTime`
        # @return [String]
        attr_accessor :revision_create_time
      
        # Output only. The assignment revision ID A new revision is committed whenever a
        # rollout is triggered for a OS policy assignment
        # Corresponds to the JSON property `revisionId`
        # @return [String]
        attr_accessor :revision_id
      
        # Message to configure the rollout at the zonal level for the OS policy
        # assignment.
        # Corresponds to the JSON property `rollout`
        # @return [Google::Apis::OsconfigV2::OsPolicyAssignmentRollout]
        attr_accessor :rollout
      
        # Output only. OS policy assignment rollout state
        # Corresponds to the JSON property `rolloutState`
        # @return [String]
        attr_accessor :rollout_state
      
        # Output only. Server generated unique id for the OS policy assignment resource.
        # Corresponds to the JSON property `uid`
        # @return [String]
        attr_accessor :uid
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @baseline = args[:baseline] if args.key?(:baseline)
          @deleted = args[:deleted] if args.key?(:deleted)
          @description = args[:description] if args.key?(:description)
          @etag = args[:etag] if args.key?(:etag)
          @instance_filter = args[:instance_filter] if args.key?(:instance_filter)
          @name = args[:name] if args.key?(:name)
          @os_policies = args[:os_policies] if args.key?(:os_policies)
          @reconciling = args[:reconciling] if args.key?(:reconciling)
          @revision_create_time = args[:revision_create_time] if args.key?(:revision_create_time)
          @revision_id = args[:revision_id] if args.key?(:revision_id)
          @rollout = args[:rollout] if args.key?(:rollout)
          @rollout_state = args[:rollout_state] if args.key?(:rollout_state)
          @uid = args[:uid] if args.key?(:uid)
        end
      end
      
      # Filters to select target VMs for an assignment. If more than one filter
      # criteria is specified below, a VM will be selected if and only if it satisfies
      # all of them.
      class OsPolicyAssignmentInstanceFilter
        include Google::Apis::Core::Hashable
      
        # Target all VMs in the project. If true, no other criteria is permitted.
        # Corresponds to the JSON property `all`
        # @return [Boolean]
        attr_accessor :all
        alias_method :all?, :all
      
        # List of label sets used for VM exclusion. If the list has more than one label
        # set, the VM is excluded if any of the label sets are applicable for the VM.
        # Corresponds to the JSON property `exclusionLabels`
        # @return [Array<Google::Apis::OsconfigV2::OsPolicyAssignmentLabelSet>]
        attr_accessor :exclusion_labels
      
        # List of label sets used for VM inclusion. If the list has more than one `
        # LabelSet`, the VM is included if any of the label sets are applicable for the
        # VM.
        # Corresponds to the JSON property `inclusionLabels`
        # @return [Array<Google::Apis::OsconfigV2::OsPolicyAssignmentLabelSet>]
        attr_accessor :inclusion_labels
      
        # List of inventories to select VMs. A VM is selected if its inventory data
        # matches at least one of the following inventories.
        # Corresponds to the JSON property `inventories`
        # @return [Array<Google::Apis::OsconfigV2::OsPolicyAssignmentInstanceFilterInventory>]
        attr_accessor :inventories
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all = args[:all] if args.key?(:all)
          @exclusion_labels = args[:exclusion_labels] if args.key?(:exclusion_labels)
          @inclusion_labels = args[:inclusion_labels] if args.key?(:inclusion_labels)
          @inventories = args[:inventories] if args.key?(:inventories)
        end
      end
      
      # VM inventory details.
      class OsPolicyAssignmentInstanceFilterInventory
        include Google::Apis::Core::Hashable
      
        # Required. The OS short name
        # Corresponds to the JSON property `osShortName`
        # @return [String]
        attr_accessor :os_short_name
      
        # The OS version Prefix matches are supported if asterisk(*) is provided as the
        # last character. For example, to match all versions with a major version of `7`,
        # specify the following value for this field `7.*` An empty string matches all
        # OS versions.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_short_name = args[:os_short_name] if args.key?(:os_short_name)
          @os_version = args[:os_version] if args.key?(:os_version)
        end
      end
      
      # Message representing label set. * A label is a key value pair set for a VM. *
      # A LabelSet is a set of labels. * Labels within a LabelSet are ANDed. In other
      # words, a LabelSet is applicable for a VM only if it matches all the labels in
      # the LabelSet. * Example: A LabelSet with 2 labels: `env=prod` and `type=
      # webserver` will only be applicable for those VMs with both labels present.
      class OsPolicyAssignmentLabelSet
        include Google::Apis::Core::Hashable
      
        # Labels are identified by key/value pairs in this map. A VM should contain all
        # the key/value pairs specified in this map to be selected.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @labels = args[:labels] if args.key?(:labels)
        end
      end
      
      # OS policy assignment operation metadata provided by OS policy assignment API
      # methods that return long running operations.
      class OsPolicyAssignmentOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The OS policy assignment API method.
        # Corresponds to the JSON property `apiMethod`
        # @return [String]
        attr_accessor :api_method
      
        # Reference to the `OSPolicyAssignment` API resource. Format: `projects/`
        # project_number`/locations/`location`/osPolicyAssignments/`
        # os_policy_assignment_id@revision_id``
        # Corresponds to the JSON property `osPolicyAssignment`
        # @return [String]
        attr_accessor :os_policy_assignment
      
        # Rollout start time
        # Corresponds to the JSON property `rolloutStartTime`
        # @return [String]
        attr_accessor :rollout_start_time
      
        # State of the rollout
        # Corresponds to the JSON property `rolloutState`
        # @return [String]
        attr_accessor :rollout_state
      
        # Rollout update time
        # Corresponds to the JSON property `rolloutUpdateTime`
        # @return [String]
        attr_accessor :rollout_update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_method = args[:api_method] if args.key?(:api_method)
          @os_policy_assignment = args[:os_policy_assignment] if args.key?(:os_policy_assignment)
          @rollout_start_time = args[:rollout_start_time] if args.key?(:rollout_start_time)
          @rollout_state = args[:rollout_state] if args.key?(:rollout_state)
          @rollout_update_time = args[:rollout_update_time] if args.key?(:rollout_update_time)
        end
      end
      
      # Message to configure the rollout at the zonal level for the OS policy
      # assignment.
      class OsPolicyAssignmentRollout
        include Google::Apis::Core::Hashable
      
        # Message encapsulating a value that can be either absolute ("fixed") or
        # relative ("percent") to a value.
        # Corresponds to the JSON property `disruptionBudget`
        # @return [Google::Apis::OsconfigV2::FixedOrPercent]
        attr_accessor :disruption_budget
      
        # Required. This determines the minimum duration of time to wait after the
        # configuration changes are applied through the current rollout. A VM continues
        # to count towards the `disruption_budget` at least until this duration of time
        # has passed after configuration changes are applied.
        # Corresponds to the JSON property `minWaitDuration`
        # @return [String]
        attr_accessor :min_wait_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disruption_budget = args[:disruption_budget] if args.key?(:disruption_budget)
          @min_wait_duration = args[:min_wait_duration] if args.key?(:min_wait_duration)
        end
      end
      
      # Filtering criteria to select VMs based on inventory details.
      class OsPolicyInventoryFilter
        include Google::Apis::Core::Hashable
      
        # Required. The OS short name
        # Corresponds to the JSON property `osShortName`
        # @return [String]
        attr_accessor :os_short_name
      
        # The OS version Prefix matches are supported if asterisk(*) is provided as the
        # last character. For example, to match all versions with a major version of `7`,
        # specify the following value for this field `7.*` An empty string matches all
        # OS versions.
        # Corresponds to the JSON property `osVersion`
        # @return [String]
        attr_accessor :os_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @os_short_name = args[:os_short_name] if args.key?(:os_short_name)
          @os_version = args[:os_version] if args.key?(:os_version)
        end
      end
      
      # An OS policy resource is used to define the desired state configuration and
      # provides a specific functionality like installing/removing packages, executing
      # a script etc. The system ensures that resources are always in their desired
      # state by taking necessary actions if they have drifted from their desired
      # state.
      class OsPolicyResource
        include Google::Apis::Core::Hashable
      
        # A resource that allows executing scripts on the VM. The `ExecResource` has 2
        # stages: `validate` and `enforce` and both stages accept a script as an
        # argument to execute. When the `ExecResource` is applied by the agent, it first
        # executes the script in the `validate` stage. The `validate` stage can signal
        # that the `ExecResource` is already in the desired state by returning an exit
        # code of `100`. If the `ExecResource` is not in the desired state, it should
        # return an exit code of `101`. Any other exit code returned by this stage is
        # considered an error. If the `ExecResource` is not in the desired state based
        # on the exit code from the `validate` stage, the agent proceeds to execute the
        # script from the `enforce` stage. If the `ExecResource` is already in the
        # desired state, the `enforce` stage will not be run. Similar to `validate`
        # stage, the `enforce` stage should return an exit code of `100` to indicate
        # that the resource in now in its desired state. Any other exit code is
        # considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101`
        # vs `1`) to have an explicit indicator of `in desired state`, `not in desired
        # state` and errors. Because, for example, Powershell will always return an exit
        # code of `0` unless an `exit` statement is provided in the script. So, for
        # reasons of consistency and being explicit, exit codes `100` and `101` were
        # chosen.
        # Corresponds to the JSON property `exec`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceExecResource]
        attr_accessor :exec
      
        # A resource that manages the state of a file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFileResource]
        attr_accessor :file
      
        # Required. The id of the resource with the following restrictions: * Must
        # contain only lowercase letters, numbers, and hyphens. * Must start with a
        # letter. * Must be between 1-63 characters. * Must end with a number or a
        # letter. * Must be unique within the OS policy.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # A resource that manages a system package.
        # Corresponds to the JSON property `pkg`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResource]
        attr_accessor :pkg
      
        # A resource that manages a package repository.
        # Corresponds to the JSON property `repository`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResource]
        attr_accessor :repository
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exec = args[:exec] if args.key?(:exec)
          @file = args[:file] if args.key?(:file)
          @id = args[:id] if args.key?(:id)
          @pkg = args[:pkg] if args.key?(:pkg)
          @repository = args[:repository] if args.key?(:repository)
        end
      end
      
      # A resource that allows executing scripts on the VM. The `ExecResource` has 2
      # stages: `validate` and `enforce` and both stages accept a script as an
      # argument to execute. When the `ExecResource` is applied by the agent, it first
      # executes the script in the `validate` stage. The `validate` stage can signal
      # that the `ExecResource` is already in the desired state by returning an exit
      # code of `100`. If the `ExecResource` is not in the desired state, it should
      # return an exit code of `101`. Any other exit code returned by this stage is
      # considered an error. If the `ExecResource` is not in the desired state based
      # on the exit code from the `validate` stage, the agent proceeds to execute the
      # script from the `enforce` stage. If the `ExecResource` is already in the
      # desired state, the `enforce` stage will not be run. Similar to `validate`
      # stage, the `enforce` stage should return an exit code of `100` to indicate
      # that the resource in now in its desired state. Any other exit code is
      # considered an error. NOTE: An exit code of `100` was chosen over `0` (and `101`
      # vs `1`) to have an explicit indicator of `in desired state`, `not in desired
      # state` and errors. Because, for example, Powershell will always return an exit
      # code of `0` unless an `exit` statement is provided in the script. So, for
      # reasons of consistency and being explicit, exit codes `100` and `101` were
      # chosen.
      class OsPolicyResourceExecResource
        include Google::Apis::Core::Hashable
      
        # A file or script to execute.
        # Corresponds to the JSON property `enforce`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceExecResourceExec]
        attr_accessor :enforce
      
        # A file or script to execute.
        # Corresponds to the JSON property `validate`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceExecResourceExec]
        attr_accessor :validate
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enforce = args[:enforce] if args.key?(:enforce)
          @validate = args[:validate] if args.key?(:validate)
        end
      end
      
      # A file or script to execute.
      class OsPolicyResourceExecResourceExec
        include Google::Apis::Core::Hashable
      
        # Optional arguments to pass to the source during execution.
        # Corresponds to the JSON property `args`
        # @return [Array<String>]
        attr_accessor :args
      
        # A remote or local file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFile]
        attr_accessor :file
      
        # Required. The script interpreter to use.
        # Corresponds to the JSON property `interpreter`
        # @return [String]
        attr_accessor :interpreter
      
        # Only recorded for enforce Exec. Path to an output file (that is created by
        # this Exec) whose content will be recorded in OSPolicyResourceCompliance after
        # a successful run. Absence or failure to read this file will result in this
        # ExecResource being non-compliant. Output file size is limited to 500K bytes.
        # Corresponds to the JSON property `outputFilePath`
        # @return [String]
        attr_accessor :output_file_path
      
        # An inline script. The size of the script is limited to 32KiB.
        # Corresponds to the JSON property `script`
        # @return [String]
        attr_accessor :script
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @args = args[:args] if args.key?(:args)
          @file = args[:file] if args.key?(:file)
          @interpreter = args[:interpreter] if args.key?(:interpreter)
          @output_file_path = args[:output_file_path] if args.key?(:output_file_path)
          @script = args[:script] if args.key?(:script)
        end
      end
      
      # A remote or local file.
      class OsPolicyResourceFile
        include Google::Apis::Core::Hashable
      
        # Defaults to false. When false, files are subject to validations based on the
        # file type: Remote: A checksum must be specified. Cloud Storage: An object
        # generation number must be specified.
        # Corresponds to the JSON property `allowInsecure`
        # @return [Boolean]
        attr_accessor :allow_insecure
        alias_method :allow_insecure?, :allow_insecure
      
        # Specifies a file available as a Cloud Storage Object.
        # Corresponds to the JSON property `gcs`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFileGcs]
        attr_accessor :gcs
      
        # A local path within the VM to use.
        # Corresponds to the JSON property `localPath`
        # @return [String]
        attr_accessor :local_path
      
        # Specifies a file available via some URI.
        # Corresponds to the JSON property `remote`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFileRemote]
        attr_accessor :remote
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_insecure = args[:allow_insecure] if args.key?(:allow_insecure)
          @gcs = args[:gcs] if args.key?(:gcs)
          @local_path = args[:local_path] if args.key?(:local_path)
          @remote = args[:remote] if args.key?(:remote)
        end
      end
      
      # Specifies a file available as a Cloud Storage Object.
      class OsPolicyResourceFileGcs
        include Google::Apis::Core::Hashable
      
        # Required. Bucket of the Cloud Storage object.
        # Corresponds to the JSON property `bucket`
        # @return [String]
        attr_accessor :bucket
      
        # Generation number of the Cloud Storage object.
        # Corresponds to the JSON property `generation`
        # @return [Fixnum]
        attr_accessor :generation
      
        # Required. Name of the Cloud Storage object.
        # Corresponds to the JSON property `object`
        # @return [String]
        attr_accessor :object
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bucket = args[:bucket] if args.key?(:bucket)
          @generation = args[:generation] if args.key?(:generation)
          @object = args[:object] if args.key?(:object)
        end
      end
      
      # Specifies a file available via some URI.
      class OsPolicyResourceFileRemote
        include Google::Apis::Core::Hashable
      
        # SHA256 checksum of the remote file.
        # Corresponds to the JSON property `sha256Checksum`
        # @return [String]
        attr_accessor :sha256_checksum
      
        # Required. URI from which to fetch the object. It should contain both the
        # protocol and path following the format ``protocol`://`location``.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sha256_checksum = args[:sha256_checksum] if args.key?(:sha256_checksum)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # A resource that manages the state of a file.
      class OsPolicyResourceFileResource
        include Google::Apis::Core::Hashable
      
        # A a file with this content. The size of the content is limited to 32KiB.
        # Corresponds to the JSON property `content`
        # @return [String]
        attr_accessor :content
      
        # A remote or local file.
        # Corresponds to the JSON property `file`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFile]
        attr_accessor :file
      
        # Required. The absolute path of the file within the VM.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Consists of three octal digits which represent, in order, the permissions of
        # the owner, group, and other users for the file (similarly to the numeric mode
        # used in the linux chmod utility). Each digit represents a three bit number
        # with the 4 bit corresponding to the read permissions, the 2 bit corresponds to
        # the write bit, and the one bit corresponds to the execute permission. Default
        # behavior is 755. Below are some examples of permissions and their associated
        # values: read, write, and execute: 7 read and execute: 5 read and write: 6 read
        # only: 4
        # Corresponds to the JSON property `permissions`
        # @return [String]
        attr_accessor :permissions
      
        # Required. Desired state of the file.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @content = args[:content] if args.key?(:content)
          @file = args[:file] if args.key?(:file)
          @path = args[:path] if args.key?(:path)
          @permissions = args[:permissions] if args.key?(:permissions)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Resource groups provide a mechanism to group OS policy resources. Resource
      # groups enable OS policy authors to create a single OS policy to be applied to
      # VMs running different operating Systems. When the OS policy is applied to a
      # target VM, the appropriate resource group within the OS policy is selected
      # based on the `OSFilter` specified within the resource group.
      class OsPolicyResourceGroup
        include Google::Apis::Core::Hashable
      
        # List of inventory filters for the resource group. The resources in this
        # resource group are applied to the target VM if it satisfies at least one of
        # the following inventory filters. For example, to apply this resource group to
        # VMs running either `RHEL` or `CentOS` operating systems, specify 2 items for
        # the list with following values: inventory_filters[0].os_short_name='rhel' and
        # inventory_filters[1].os_short_name='centos' If the list is empty, this
        # resource group will be applied to the target VM unconditionally.
        # Corresponds to the JSON property `inventoryFilters`
        # @return [Array<Google::Apis::OsconfigV2::OsPolicyInventoryFilter>]
        attr_accessor :inventory_filters
      
        # Required. List of resources configured for this resource group. The resources
        # are executed in the exact order specified here.
        # Corresponds to the JSON property `resources`
        # @return [Array<Google::Apis::OsconfigV2::OsPolicyResource>]
        attr_accessor :resources
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inventory_filters = args[:inventory_filters] if args.key?(:inventory_filters)
          @resources = args[:resources] if args.key?(:resources)
        end
      end
      
      # A resource that manages a system package.
      class OsPolicyResourcePackageResource
        include Google::Apis::Core::Hashable
      
        # A package managed by APT. - install: `apt-get update && apt-get -y install [
        # name]` - remove: `apt-get -y remove [name]`
        # Corresponds to the JSON property `apt`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceApt]
        attr_accessor :apt
      
        # A deb package file. dpkg packages only support INSTALLED state.
        # Corresponds to the JSON property `deb`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceDeb]
        attr_accessor :deb
      
        # Required. The desired state the agent should maintain for this package.
        # Corresponds to the JSON property `desiredState`
        # @return [String]
        attr_accessor :desired_state
      
        # A package managed by GooGet. - install: `googet -noconfirm install package` -
        # remove: `googet -noconfirm remove package`
        # Corresponds to the JSON property `googet`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceGooGet]
        attr_accessor :googet
      
        # An MSI package. MSI packages only support INSTALLED state.
        # Corresponds to the JSON property `msi`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceMsi]
        attr_accessor :msi
      
        # An RPM package file. RPM packages only support INSTALLED state.
        # Corresponds to the JSON property `rpm`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceRpm]
        attr_accessor :rpm
      
        # A package managed by YUM. - install: `yum -y install package` - remove: `yum -
        # y remove package`
        # Corresponds to the JSON property `yum`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceYum]
        attr_accessor :yum
      
        # A package managed by Zypper. - install: `zypper -y install package` - remove: `
        # zypper -y rm package`
        # Corresponds to the JSON property `zypper`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourcePackageResourceZypper]
        attr_accessor :zypper
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt = args[:apt] if args.key?(:apt)
          @deb = args[:deb] if args.key?(:deb)
          @desired_state = args[:desired_state] if args.key?(:desired_state)
          @googet = args[:googet] if args.key?(:googet)
          @msi = args[:msi] if args.key?(:msi)
          @rpm = args[:rpm] if args.key?(:rpm)
          @yum = args[:yum] if args.key?(:yum)
          @zypper = args[:zypper] if args.key?(:zypper)
        end
      end
      
      # A package managed by APT. - install: `apt-get update && apt-get -y install [
      # name]` - remove: `apt-get -y remove [name]`
      class OsPolicyResourcePackageResourceApt
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A deb package file. dpkg packages only support INSTALLED state.
      class OsPolicyResourcePackageResourceDeb
        include Google::Apis::Core::Hashable
      
        # Whether dependencies should also be installed. - install when false: `dpkg -i
        # package` - install when true: `apt-get update && apt-get -y install package.
        # deb`
        # Corresponds to the JSON property `pullDeps`
        # @return [Boolean]
        attr_accessor :pull_deps
        alias_method :pull_deps?, :pull_deps
      
        # A remote or local file.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFile]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pull_deps = args[:pull_deps] if args.key?(:pull_deps)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A package managed by GooGet. - install: `googet -noconfirm install package` -
      # remove: `googet -noconfirm remove package`
      class OsPolicyResourcePackageResourceGooGet
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # An MSI package. MSI packages only support INSTALLED state.
      class OsPolicyResourcePackageResourceMsi
        include Google::Apis::Core::Hashable
      
        # Additional properties to use during installation. This should be in the format
        # of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=
        # ReallySuppress`.
        # Corresponds to the JSON property `properties`
        # @return [Array<String>]
        attr_accessor :properties
      
        # A remote or local file.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFile]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @properties = args[:properties] if args.key?(:properties)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # An RPM package file. RPM packages only support INSTALLED state.
      class OsPolicyResourcePackageResourceRpm
        include Google::Apis::Core::Hashable
      
        # Whether dependencies should also be installed. - install when false: `rpm --
        # upgrade --replacepkgs package.rpm` - install when true: `yum -y install
        # package.rpm` or `zypper -y install package.rpm`
        # Corresponds to the JSON property `pullDeps`
        # @return [Boolean]
        attr_accessor :pull_deps
        alias_method :pull_deps?, :pull_deps
      
        # A remote or local file.
        # Corresponds to the JSON property `source`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceFile]
        attr_accessor :source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @pull_deps = args[:pull_deps] if args.key?(:pull_deps)
          @source = args[:source] if args.key?(:source)
        end
      end
      
      # A package managed by YUM. - install: `yum -y install package` - remove: `yum -
      # y remove package`
      class OsPolicyResourcePackageResourceYum
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A package managed by Zypper. - install: `zypper -y install package` - remove: `
      # zypper -y rm package`
      class OsPolicyResourcePackageResourceZypper
        include Google::Apis::Core::Hashable
      
        # Required. Package name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # A resource that manages a package repository.
      class OsPolicyResourceRepositoryResource
        include Google::Apis::Core::Hashable
      
        # Represents a single apt package repository. These will be added to a repo file
        # that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
        # Corresponds to the JSON property `apt`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceAptRepository]
        attr_accessor :apt
      
        # Represents a Goo package repository. These are added to a repo file that is
        # managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
        # Corresponds to the JSON property `goo`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceGooRepository]
        attr_accessor :goo
      
        # Represents a single yum package repository. These are added to a repo file
        # that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
        # Corresponds to the JSON property `yum`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceYumRepository]
        attr_accessor :yum
      
        # Represents a single zypper package repository. These are added to a repo file
        # that is managed at `/etc/zypp/repos.d/google_osconfig.repo`.
        # Corresponds to the JSON property `zypper`
        # @return [Google::Apis::OsconfigV2::OsPolicyResourceRepositoryResourceZypperRepository]
        attr_accessor :zypper
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @apt = args[:apt] if args.key?(:apt)
          @goo = args[:goo] if args.key?(:goo)
          @yum = args[:yum] if args.key?(:yum)
          @zypper = args[:zypper] if args.key?(:zypper)
        end
      end
      
      # Represents a single apt package repository. These will be added to a repo file
      # that will be managed at `/etc/apt/sources.list.d/google_osconfig.list`.
      class OsPolicyResourceRepositoryResourceAptRepository
        include Google::Apis::Core::Hashable
      
        # Required. Type of archive files in this repository.
        # Corresponds to the JSON property `archiveType`
        # @return [String]
        attr_accessor :archive_type
      
        # Required. List of components for this repository. Must contain at least one
        # item.
        # Corresponds to the JSON property `components`
        # @return [Array<String>]
        attr_accessor :components
      
        # Required. Distribution of this repository.
        # Corresponds to the JSON property `distribution`
        # @return [String]
        attr_accessor :distribution
      
        # URI of the key file for this repository. The agent maintains a keyring at `/
        # etc/apt/trusted.gpg.d/osconfig_agent_managed.gpg`.
        # Corresponds to the JSON property `gpgKey`
        # @return [String]
        attr_accessor :gpg_key
      
        # Required. URI for this repository.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @archive_type = args[:archive_type] if args.key?(:archive_type)
          @components = args[:components] if args.key?(:components)
          @distribution = args[:distribution] if args.key?(:distribution)
          @gpg_key = args[:gpg_key] if args.key?(:gpg_key)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Represents a Goo package repository. These are added to a repo file that is
      # managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
      class OsPolicyResourceRepositoryResourceGooRepository
        include Google::Apis::Core::Hashable
      
        # Required. The name of the repository.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Required. The url of the repository.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Represents a single yum package repository. These are added to a repo file
      # that is managed at `/etc/yum.repos.d/google_osconfig.repo`.
      class OsPolicyResourceRepositoryResourceYumRepository
        include Google::Apis::Core::Hashable
      
        # Required. The location of the repository directory.
        # Corresponds to the JSON property `baseUrl`
        # @return [String]
        attr_accessor :base_url
      
        # The display name of the repository.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URIs of GPG keys.
        # Corresponds to the JSON property `gpgKeys`
        # @return [Array<String>]
        attr_accessor :gpg_keys
      
        # Required. A one word, unique name for this repository. This is the `repo id`
        # in the yum config file and also the `display_name` if `display_name` is
        # omitted. This id is also used as the unique identifier when checking for
        # resource conflicts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_url = args[:base_url] if args.key?(:base_url)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gpg_keys = args[:gpg_keys] if args.key?(:gpg_keys)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Represents a single zypper package repository. These are added to a repo file
      # that is managed at `/etc/zypp/repos.d/google_osconfig.repo`.
      class OsPolicyResourceRepositoryResourceZypperRepository
        include Google::Apis::Core::Hashable
      
        # Required. The location of the repository directory.
        # Corresponds to the JSON property `baseUrl`
        # @return [String]
        attr_accessor :base_url
      
        # The display name of the repository.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # URIs of GPG keys.
        # Corresponds to the JSON property `gpgKeys`
        # @return [Array<String>]
        attr_accessor :gpg_keys
      
        # Required. A one word, unique name for this repository. This is the `repo id`
        # in the zypper config file and also the `display_name` if `display_name` is
        # omitted. This id is also used as the unique identifier when checking for
        # GuestPolicy conflicts.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @base_url = args[:base_url] if args.key?(:base_url)
          @display_name = args[:display_name] if args.key?(:display_name)
          @gpg_keys = args[:gpg_keys] if args.key?(:gpg_keys)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::OsconfigV2::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
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
      
      # Wire-format for a Status object
      class StatusProto
        include Google::Apis::Core::Hashable
      
        # copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional
        # int32 canonical_code = 6;
        # Corresponds to the JSON property `canonicalCode`
        # @return [Fixnum]
        attr_accessor :canonical_code
      
        # Numeric code drawn from the space specified below. Often, this is the
        # canonical error space, and code is drawn from google3/util/task/codes.proto
        # copybara:strip_begin(b/383363683) copybara:strip_end_and_replace optional
        # int32 code = 1;
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # Detail message copybara:strip_begin(b/383363683) copybara:
        # strip_end_and_replace optional string message = 3;
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # This is proto2's version of MessageSet. DEPRECATED: DO NOT USE FOR NEW FIELDS.
        # If you are using editions or proto2, please make your own extendable messages
        # for your use case. If you are using proto3, please use `Any` instead.
        # MessageSet was the implementation of extensions for proto1. When proto2 was
        # introduced, extensions were implemented as a first-class feature. This schema
        # for MessageSet was meant to be a "bridge" solution to migrate MessageSet-
        # bearing messages from proto1 to proto2. This schema has been open-sourced only
        # to facilitate the migration of Google products with MessageSet-bearing
        # messages to open-source environments.
        # Corresponds to the JSON property `messageSet`
        # @return [Google::Apis::OsconfigV2::MessageSet]
        attr_accessor :message_set
      
        # copybara:strip_begin(b/383363683) Space to which this status belongs copybara:
        # strip_end_and_replace optional string space = 2; // Space to which this status
        # belongs
        # Corresponds to the JSON property `space`
        # @return [String]
        attr_accessor :space
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @canonical_code = args[:canonical_code] if args.key?(:canonical_code)
          @code = args[:code] if args.key?(:code)
          @message = args[:message] if args.key?(:message)
          @message_set = args[:message_set] if args.key?(:message_set)
          @space = args[:space] if args.key?(:space)
        end
      end
    end
  end
end
