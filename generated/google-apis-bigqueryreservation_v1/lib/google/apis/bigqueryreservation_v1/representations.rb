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
    module BigqueryreservationV1
      
      class Assignment
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
      
      class Autoscale
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BiReservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Binding
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CapacityCommitment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Expr
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailoverReservationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAssignmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCapacityCommitmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReservationGroupsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReservationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MergeCapacityCommitmentsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MoveAssignmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Policy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReplicationStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReservationGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SchedulingPolicy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAllAssignmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAssignmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SetIamPolicyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SplitCapacityCommitmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SplitCapacityCommitmentResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TableReference
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
      
      class Assignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee, as: 'assignee'
          property :enable_gemini_in_bigquery, as: 'enableGeminiInBigquery'
          property :job_type, as: 'jobType'
          property :name, as: 'name'
          property :scheduling_policy, as: 'schedulingPolicy', class: Google::Apis::BigqueryreservationV1::SchedulingPolicy, decorator: Google::Apis::BigqueryreservationV1::SchedulingPolicy::Representation
      
          property :state, as: 'state'
        end
      end
      
      class AuditConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_log_configs, as: 'auditLogConfigs', class: Google::Apis::BigqueryreservationV1::AuditLogConfig, decorator: Google::Apis::BigqueryreservationV1::AuditLogConfig::Representation
      
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
      
      class Autoscale
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current_slots, :numeric_string => true, as: 'currentSlots'
          property :max_slots, :numeric_string => true, as: 'maxSlots'
        end
      end
      
      class BiReservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          collection :preferred_tables, as: 'preferredTables', class: Google::Apis::BigqueryreservationV1::TableReference, decorator: Google::Apis::BigqueryreservationV1::TableReference::Representation
      
          property :size, :numeric_string => true, as: 'size'
          property :update_time, as: 'updateTime'
        end
      end
      
      class Binding
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :condition, as: 'condition', class: Google::Apis::BigqueryreservationV1::Expr, decorator: Google::Apis::BigqueryreservationV1::Expr::Representation
      
          collection :members, as: 'members'
          property :role, as: 'role'
        end
      end
      
      class CapacityCommitment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_end_time, as: 'commitmentEndTime'
          property :commitment_start_time, as: 'commitmentStartTime'
          property :edition, as: 'edition'
          property :failure_status, as: 'failureStatus', class: Google::Apis::BigqueryreservationV1::Status, decorator: Google::Apis::BigqueryreservationV1::Status::Representation
      
          property :is_flat_rate, as: 'isFlatRate'
          property :multi_region_auxiliary, as: 'multiRegionAuxiliary'
          property :name, as: 'name'
          property :plan, as: 'plan'
          property :renewal_plan, as: 'renewalPlan'
          property :slot_count, :numeric_string => true, as: 'slotCount'
          property :state, as: 'state'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class FailoverReservationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :failover_mode, as: 'failoverMode'
        end
      end
      
      class ListAssignmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignments, as: 'assignments', class: Google::Apis::BigqueryreservationV1::Assignment, decorator: Google::Apis::BigqueryreservationV1::Assignment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCapacityCommitmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :capacity_commitments, as: 'capacityCommitments', class: Google::Apis::BigqueryreservationV1::CapacityCommitment, decorator: Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListReservationGroupsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reservation_groups, as: 'reservationGroups', class: Google::Apis::BigqueryreservationV1::ReservationGroup, decorator: Google::Apis::BigqueryreservationV1::ReservationGroup::Representation
      
        end
      end
      
      class ListReservationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reservations, as: 'reservations', class: Google::Apis::BigqueryreservationV1::Reservation, decorator: Google::Apis::BigqueryreservationV1::Reservation::Representation
      
        end
      end
      
      class MergeCapacityCommitmentsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :capacity_commitment_id, as: 'capacityCommitmentId'
          collection :capacity_commitment_ids, as: 'capacityCommitmentIds'
        end
      end
      
      class MoveAssignmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignment_id, as: 'assignmentId'
          property :destination_id, as: 'destinationId'
        end
      end
      
      class Policy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_configs, as: 'auditConfigs', class: Google::Apis::BigqueryreservationV1::AuditConfig, decorator: Google::Apis::BigqueryreservationV1::AuditConfig::Representation
      
          collection :bindings, as: 'bindings', class: Google::Apis::BigqueryreservationV1::Binding, decorator: Google::Apis::BigqueryreservationV1::Binding::Representation
      
          property :etag, :base64 => true, as: 'etag'
          property :version, as: 'version'
        end
      end
      
      class ReplicationStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error, as: 'error', class: Google::Apis::BigqueryreservationV1::Status, decorator: Google::Apis::BigqueryreservationV1::Status::Representation
      
          property :last_error_time, as: 'lastErrorTime'
          property :last_replication_time, as: 'lastReplicationTime'
          property :soft_failover_start_time, as: 'softFailoverStartTime'
        end
      end
      
      class Reservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :autoscale, as: 'autoscale', class: Google::Apis::BigqueryreservationV1::Autoscale, decorator: Google::Apis::BigqueryreservationV1::Autoscale::Representation
      
          property :concurrency, :numeric_string => true, as: 'concurrency'
          property :creation_time, as: 'creationTime'
          property :edition, as: 'edition'
          property :ignore_idle_slots, as: 'ignoreIdleSlots'
          hash :labels, as: 'labels'
          property :max_slots, :numeric_string => true, as: 'maxSlots'
          property :multi_region_auxiliary, as: 'multiRegionAuxiliary'
          property :name, as: 'name'
          property :original_primary_location, as: 'originalPrimaryLocation'
          property :primary_location, as: 'primaryLocation'
          property :replication_status, as: 'replicationStatus', class: Google::Apis::BigqueryreservationV1::ReplicationStatus, decorator: Google::Apis::BigqueryreservationV1::ReplicationStatus::Representation
      
          property :reservation_group, as: 'reservationGroup'
          property :scaling_mode, as: 'scalingMode'
          property :scheduling_policy, as: 'schedulingPolicy', class: Google::Apis::BigqueryreservationV1::SchedulingPolicy, decorator: Google::Apis::BigqueryreservationV1::SchedulingPolicy::Representation
      
          property :secondary_location, as: 'secondaryLocation'
          property :slot_capacity, :numeric_string => true, as: 'slotCapacity'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReservationGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
        end
      end
      
      class SchedulingPolicy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrency, :numeric_string => true, as: 'concurrency'
          property :max_slots, :numeric_string => true, as: 'maxSlots'
        end
      end
      
      class SearchAllAssignmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignments, as: 'assignments', class: Google::Apis::BigqueryreservationV1::Assignment, decorator: Google::Apis::BigqueryreservationV1::Assignment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SearchAssignmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :assignments, as: 'assignments', class: Google::Apis::BigqueryreservationV1::Assignment, decorator: Google::Apis::BigqueryreservationV1::Assignment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class SetIamPolicyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :policy, as: 'policy', class: Google::Apis::BigqueryreservationV1::Policy, decorator: Google::Apis::BigqueryreservationV1::Policy::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class SplitCapacityCommitmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :slot_count, :numeric_string => true, as: 'slotCount'
        end
      end
      
      class SplitCapacityCommitmentResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :first, as: 'first', class: Google::Apis::BigqueryreservationV1::CapacityCommitment, decorator: Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
      
          property :second, as: 'second', class: Google::Apis::BigqueryreservationV1::CapacityCommitment, decorator: Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
      
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
      
      class TableReference
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dataset_id, as: 'datasetId'
          property :project_id, as: 'projectId'
          property :table_id, as: 'tableId'
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
