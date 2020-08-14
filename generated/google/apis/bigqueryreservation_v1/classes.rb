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
      
      # A Assignment allows a project to submit jobs of a certain type using slots
      # from the specified reservation.
      class Assignment
        include Google::Apis::Core::Hashable
      
        # The resource which will use the reservation. E.g. `projects/myproject`, `
        # folders/123`, or `organizations/456`.
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # Which type of jobs will use the reservation.
        # Corresponds to the JSON property `jobType`
        # @return [String]
        attr_accessor :job_type
      
        # Output only. Name of the resource. E.g.: `projects/myproject/locations/US/
        # reservations/team1-prod/assignments/123`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. State of the assignment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignee = args[:assignee] if args.key?(:assignee)
          @job_type = args[:job_type] if args.key?(:job_type)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Represents a BI Reservation.
      class BiReservation
        include Google::Apis::Core::Hashable
      
        # The resource name of the singleton BI reservation. Reservation names have the
        # form `projects/`project_id`/locations/`location_id`/bireservation`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Size of a reservation, in bytes.
        # Corresponds to the JSON property `size`
        # @return [Fixnum]
        attr_accessor :size
      
        # Output only. The last update timestamp of a reservation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @size = args[:size] if args.key?(:size)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Capacity commitment is a way to purchase compute capacity for BigQuery jobs (
      # in the form of slots) with some committed period of usage. Annual commitments
      # renew by default. Commitments can be removed after their commitment end time
      # passes. In order to remove annual commitment, its plan needs to be changed to
      # monthly or flex first. A capacity commitment resource exists as a child
      # resource of the admin project.
      class CapacityCommitment
        include Google::Apis::Core::Hashable
      
        # Output only. The end of the current commitment period. It is applicable only
        # for ACTIVE capacity commitments.
        # Corresponds to the JSON property `commitmentEndTime`
        # @return [String]
        attr_accessor :commitment_end_time
      
        # Output only. The start of the current commitment period. It is applicable only
        # for ACTIVE capacity commitments.
        # Corresponds to the JSON property `commitmentStartTime`
        # @return [String]
        attr_accessor :commitment_start_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `failureStatus`
        # @return [Google::Apis::BigqueryreservationV1::Status]
        attr_accessor :failure_status
      
        # Output only. The resource name of the capacity commitment, e.g., `projects/
        # myproject/locations/US/capacityCommitments/123`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Capacity commitment commitment plan.
        # Corresponds to the JSON property `plan`
        # @return [String]
        attr_accessor :plan
      
        # The plan this capacity commitment is converted to after commitment_end_time
        # passes. Once the plan is changed, committed period is extended according to
        # commitment plan. Only applicable for ANNUAL and TRIAL commitments.
        # Corresponds to the JSON property `renewalPlan`
        # @return [String]
        attr_accessor :renewal_plan
      
        # Number of slots in this commitment.
        # Corresponds to the JSON property `slotCount`
        # @return [Fixnum]
        attr_accessor :slot_count
      
        # Output only. State of the commitment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitment_end_time = args[:commitment_end_time] if args.key?(:commitment_end_time)
          @commitment_start_time = args[:commitment_start_time] if args.key?(:commitment_start_time)
          @failure_status = args[:failure_status] if args.key?(:failure_status)
          @name = args[:name] if args.key?(:name)
          @plan = args[:plan] if args.key?(:plan)
          @renewal_plan = args[:renewal_plan] if args.key?(:renewal_plan)
          @slot_count = args[:slot_count] if args.key?(:slot_count)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The metadata for operation returned from ReservationService.CreateSlotPool.
      class CreateSlotPoolMetadata
        include Google::Apis::Core::Hashable
      
        # Resource name of the slot pool that is being created. E.g., projects/myproject/
        # locations/us-central1/reservations/foo/slotPools/123
        # Corresponds to the JSON property `slotPool`
        # @return [String]
        attr_accessor :slot_pool
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @slot_pool = args[:slot_pool] if args.key?(:slot_pool)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response for ReservationService.ListAssignments.
      class ListAssignmentsResponse
        include Google::Apis::Core::Hashable
      
        # List of assignments visible to the user.
        # Corresponds to the JSON property `assignments`
        # @return [Array<Google::Apis::BigqueryreservationV1::Assignment>]
        attr_accessor :assignments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignments = args[:assignments] if args.key?(:assignments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ReservationService.ListCapacityCommitments.
      class ListCapacityCommitmentsResponse
        include Google::Apis::Core::Hashable
      
        # List of capacity commitments visible to the user.
        # Corresponds to the JSON property `capacityCommitments`
        # @return [Array<Google::Apis::BigqueryreservationV1::CapacityCommitment>]
        attr_accessor :capacity_commitments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_commitments = args[:capacity_commitments] if args.key?(:capacity_commitments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
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
        # @return [Array<Google::Apis::BigqueryreservationV1::Operation>]
        attr_accessor :operations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @operations = args[:operations] if args.key?(:operations)
        end
      end
      
      # The response for ReservationService.ListReservations.
      class ListReservationsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of reservations visible to the user.
        # Corresponds to the JSON property `reservations`
        # @return [Array<Google::Apis::BigqueryreservationV1::Reservation>]
        attr_accessor :reservations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reservations = args[:reservations] if args.key?(:reservations)
        end
      end
      
      # The request for ReservationService.MergeCapacityCommitments.
      class MergeCapacityCommitmentsRequest
        include Google::Apis::Core::Hashable
      
        # Ids of capacity commitments to merge. These capacity commitments must exist
        # under admin project and location specified in the parent. ID is the last
        # portion of capacity commitment name e.g., 'abc' for projects/myproject/
        # locations/US/capacityCommitments/abc
        # Corresponds to the JSON property `capacityCommitmentIds`
        # @return [Array<String>]
        attr_accessor :capacity_commitment_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @capacity_commitment_ids = args[:capacity_commitment_ids] if args.key?(:capacity_commitment_ids)
        end
      end
      
      # The request for ReservationService.MoveAssignment. **Note**: "bigquery.
      # reservationAssignments.create" permission is required on the destination_id. **
      # Note**: "bigquery.reservationAssignments.create" and "bigquery.
      # reservationAssignments.delete" permission are required on the related assignee.
      class MoveAssignmentRequest
        include Google::Apis::Core::Hashable
      
        # The new reservation ID, e.g.: `projects/myotherproject/locations/US/
        # reservations/team2-prod`
        # Corresponds to the JSON property `destinationId`
        # @return [String]
        attr_accessor :destination_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_id = args[:destination_id] if args.key?(:destination_id)
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
        # @return [Google::Apis::BigqueryreservationV1::Status]
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
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
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
      
      # A reservation is a mechanism used to guarantee slots to users.
      class Reservation
        include Google::Apis::Core::Hashable
      
        # Output only. Creation time of the reservation.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # If false, any query using this reservation will use idle slots from other
        # reservations within the same admin project. If true, a query using this
        # reservation will execute with the slot capacity specified above at most.
        # Corresponds to the JSON property `ignoreIdleSlots`
        # @return [Boolean]
        attr_accessor :ignore_idle_slots
        alias_method :ignore_idle_slots?, :ignore_idle_slots
      
        # The resource name of the reservation, e.g., `projects/*/locations/*/
        # reservations/team1-prod`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Minimum slots available to this reservation. A slot is a unit of computational
        # power in BigQuery, and serves as the unit of parallelism. Queries using this
        # reservation might use more slots during runtime if ignore_idle_slots is set to
        # false. If the new reservation's slot capacity exceed the parent's slot
        # capacity or if total slot capacity of the new reservation and its siblings
        # exceeds the parent's slot capacity, the request will fail with `google.rpc.
        # Code.RESOURCE_EXHAUSTED`.
        # Corresponds to the JSON property `slotCapacity`
        # @return [Fixnum]
        attr_accessor :slot_capacity
      
        # Output only. Last update time of the reservation.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @ignore_idle_slots = args[:ignore_idle_slots] if args.key?(:ignore_idle_slots)
          @name = args[:name] if args.key?(:name)
          @slot_capacity = args[:slot_capacity] if args.key?(:slot_capacity)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The response for ReservationService.SearchAllAssignments.
      class SearchAllAssignmentsResponse
        include Google::Apis::Core::Hashable
      
        # List of assignments visible to the user.
        # Corresponds to the JSON property `assignments`
        # @return [Array<Google::Apis::BigqueryreservationV1::Assignment>]
        attr_accessor :assignments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignments = args[:assignments] if args.key?(:assignments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response for ReservationService.SearchAssignments.
      class SearchAssignmentsResponse
        include Google::Apis::Core::Hashable
      
        # List of assignments visible to the user.
        # Corresponds to the JSON property `assignments`
        # @return [Array<Google::Apis::BigqueryreservationV1::Assignment>]
        attr_accessor :assignments
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignments = args[:assignments] if args.key?(:assignments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The request for ReservationService.SplitCapacityCommitment.
      class SplitCapacityCommitmentRequest
        include Google::Apis::Core::Hashable
      
        # Number of slots in the capacity commitment after the split.
        # Corresponds to the JSON property `slotCount`
        # @return [Fixnum]
        attr_accessor :slot_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @slot_count = args[:slot_count] if args.key?(:slot_count)
        end
      end
      
      # The response for ReservationService.SplitCapacityCommitment.
      class SplitCapacityCommitmentResponse
        include Google::Apis::Core::Hashable
      
        # Capacity commitment is a way to purchase compute capacity for BigQuery jobs (
        # in the form of slots) with some committed period of usage. Annual commitments
        # renew by default. Commitments can be removed after their commitment end time
        # passes. In order to remove annual commitment, its plan needs to be changed to
        # monthly or flex first. A capacity commitment resource exists as a child
        # resource of the admin project.
        # Corresponds to the JSON property `first`
        # @return [Google::Apis::BigqueryreservationV1::CapacityCommitment]
        attr_accessor :first
      
        # Capacity commitment is a way to purchase compute capacity for BigQuery jobs (
        # in the form of slots) with some committed period of usage. Annual commitments
        # renew by default. Commitments can be removed after their commitment end time
        # passes. In order to remove annual commitment, its plan needs to be changed to
        # monthly or flex first. A capacity commitment resource exists as a child
        # resource of the admin project.
        # Corresponds to the JSON property `second`
        # @return [Google::Apis::BigqueryreservationV1::CapacityCommitment]
        attr_accessor :second
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first = args[:first] if args.key?(:first)
          @second = args[:second] if args.key?(:second)
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
    end
  end
end
