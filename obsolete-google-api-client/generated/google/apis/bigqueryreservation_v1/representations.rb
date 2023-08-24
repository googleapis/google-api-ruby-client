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
    module BigqueryreservationV1
      
      class Assignment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BiReservation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CapacityCommitment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateSlotPoolMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
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
      
      class ListOperationsResponse
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
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Reservation
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
      
      class Assignment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :assignee, as: 'assignee'
          property :job_type, as: 'jobType'
          property :name, as: 'name'
          property :state, as: 'state'
        end
      end
      
      class BiReservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :size, :numeric_string => true, as: 'size'
          property :update_time, as: 'updateTime'
        end
      end
      
      class CapacityCommitment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commitment_end_time, as: 'commitmentEndTime'
          property :commitment_start_time, as: 'commitmentStartTime'
          property :failure_status, as: 'failureStatus', class: Google::Apis::BigqueryreservationV1::Status, decorator: Google::Apis::BigqueryreservationV1::Status::Representation
      
          property :name, as: 'name'
          property :plan, as: 'plan'
          property :renewal_plan, as: 'renewalPlan'
          property :slot_count, :numeric_string => true, as: 'slotCount'
          property :state, as: 'state'
        end
      end
      
      class CreateSlotPoolMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :slot_pool, as: 'slotPool'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
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
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::BigqueryreservationV1::Operation, decorator: Google::Apis::BigqueryreservationV1::Operation::Representation
      
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
          collection :capacity_commitment_ids, as: 'capacityCommitmentIds'
        end
      end
      
      class MoveAssignmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :destination_id, as: 'destinationId'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::BigqueryreservationV1::Status, decorator: Google::Apis::BigqueryreservationV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Reservation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :creation_time, as: 'creationTime'
          property :ignore_idle_slots, as: 'ignoreIdleSlots'
          property :name, as: 'name'
          property :slot_capacity, :numeric_string => true, as: 'slotCapacity'
          property :update_time, as: 'updateTime'
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
    end
  end
end
