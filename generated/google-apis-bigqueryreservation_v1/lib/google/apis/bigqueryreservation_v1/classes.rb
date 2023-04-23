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
      
      # An assignment allows a project to submit jobs of a certain type using slots
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
        # reservations/team1-prod/assignments/123`. The assignment_id must only contain
        # lower case alphanumeric characters or dashes and the max length is 64
        # characters.
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
      
      # Auto scaling settings.
      class Autoscale
        include Google::Apis::Core::Hashable
      
        # Output only. The slot capacity added to this reservation when autoscale
        # happens. Will be between [0, max_slots].
        # Corresponds to the JSON property `currentSlots`
        # @return [Fixnum]
        attr_accessor :current_slots
      
        # Number of slots to be scaled when needed.
        # Corresponds to the JSON property `maxSlots`
        # @return [Fixnum]
        attr_accessor :max_slots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current_slots = args[:current_slots] if args.key?(:current_slots)
          @max_slots = args[:max_slots] if args.key?(:max_slots)
        end
      end
      
      # Represents a BI Reservation.
      class BiReservation
        include Google::Apis::Core::Hashable
      
        # The resource name of the singleton BI reservation. Reservation names have the
        # form `projects/`project_id`/locations/`location_id`/biReservation`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Preferred tables to use BI capacity for.
        # Corresponds to the JSON property `preferredTables`
        # @return [Array<Google::Apis::BigqueryreservationV1::TableReference>]
        attr_accessor :preferred_tables
      
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
          @preferred_tables = args[:preferred_tables] if args.key?(:preferred_tables)
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
      
        # Edition of the capacity commitment.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `failureStatus`
        # @return [Google::Apis::BigqueryreservationV1::Status]
        attr_accessor :failure_status
      
        # Applicable only for commitments located within one of the BigQuery multi-
        # regions (US or EU). If set to true, this commitment is placed in the
        # organization's secondary region which is designated for disaster recovery
        # purposes. If false, this commitment is placed in the organization's default
        # region. NOTE: this is a preview feature. Project must be allow-listed in order
        # to set this field.
        # Corresponds to the JSON property `multiRegionAuxiliary`
        # @return [Boolean]
        attr_accessor :multi_region_auxiliary
        alias_method :multi_region_auxiliary?, :multi_region_auxiliary
      
        # Output only. The resource name of the capacity commitment, e.g., `projects/
        # myproject/locations/US/capacityCommitments/123` The commitment_id must only
        # contain lower case alphanumeric characters or dashes. It must start with a
        # letter and must not end with a dash. Its maximum length is 64 characters.
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
          @edition = args[:edition] if args.key?(:edition)
          @failure_status = args[:failure_status] if args.key?(:failure_status)
          @multi_region_auxiliary = args[:multi_region_auxiliary] if args.key?(:multi_region_auxiliary)
          @name = args[:name] if args.key?(:name)
          @plan = args[:plan] if args.key?(:plan)
          @renewal_plan = args[:renewal_plan] if args.key?(:renewal_plan)
          @slot_count = args[:slot_count] if args.key?(:slot_count)
          @state = args[:state] if args.key?(:state)
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
      
        # The optional assignment ID. A new assignment name is generated if this field
        # is empty. This field can contain only lowercase alphanumeric characters or
        # dashes. Max length is 64 characters.
        # Corresponds to the JSON property `assignmentId`
        # @return [String]
        attr_accessor :assignment_id
      
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
          @assignment_id = args[:assignment_id] if args.key?(:assignment_id)
          @destination_id = args[:destination_id] if args.key?(:destination_id)
        end
      end
      
      # A reservation is a mechanism used to guarantee slots to users.
      class Reservation
        include Google::Apis::Core::Hashable
      
        # Auto scaling settings.
        # Corresponds to the JSON property `autoscale`
        # @return [Google::Apis::BigqueryreservationV1::Autoscale]
        attr_accessor :autoscale
      
        # Job concurrency target which sets a soft upper bound on the number of jobs
        # that can run concurrently in this reservation. This is a soft target due to
        # asynchronous nature of the system and various optimizations for small queries.
        # Default value is 0 which means that concurrency target will be automatically
        # computed by the system. NOTE: this field is exposed as `target_job_concurrency`
        # in the Information Schema, DDL and BQ CLI.
        # Corresponds to the JSON property `concurrency`
        # @return [Fixnum]
        attr_accessor :concurrency
      
        # Output only. Creation time of the reservation.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Edition of the reservation.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # If false, any query or pipeline job using this reservation will use idle slots
        # from other reservations within the same admin project. If true, a query or
        # pipeline job using this reservation will execute with the slot capacity
        # specified in the slot_capacity field at most.
        # Corresponds to the JSON property `ignoreIdleSlots`
        # @return [Boolean]
        attr_accessor :ignore_idle_slots
        alias_method :ignore_idle_slots?, :ignore_idle_slots
      
        # Applicable only for reservations located within one of the BigQuery multi-
        # regions (US or EU). If set to true, this reservation is placed in the
        # organization's secondary region which is designated for disaster recovery
        # purposes. If false, this reservation is placed in the organization's default
        # region. NOTE: this is a preview feature. Project must be allow-listed in order
        # to set this field.
        # Corresponds to the JSON property `multiRegionAuxiliary`
        # @return [Boolean]
        attr_accessor :multi_region_auxiliary
        alias_method :multi_region_auxiliary?, :multi_region_auxiliary
      
        # The resource name of the reservation, e.g., `projects/*/locations/*/
        # reservations/team1-prod`. The reservation_id must only contain lower case
        # alphanumeric characters or dashes. It must start with a letter and must not
        # end with a dash. Its maximum length is 64 characters.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Minimum slots available to this reservation. A slot is a unit of computational
        # power in BigQuery, and serves as the unit of parallelism. Queries using this
        # reservation might use more slots during runtime if ignore_idle_slots is set to
        # false. If edition is EDITION_UNSPECIFIED and total slot_capacity of the
        # reservation and its siblings exceeds the total slot_count of all capacity
        # commitments, the request will fail with `google.rpc.Code.RESOURCE_EXHAUSTED`.
        # If edition is any value but EDITION_UNSPECIFIED, then the above requirement is
        # not needed. The total slot_capacity of the reservation and its siblings may
        # exceed the total slot_count of capacity commitments. In that case, the
        # exceeding slots will be charged with the autoscale SKU. You can increase the
        # number of baseline slots in a reservation every few minutes. If you want to
        # decrease your baseline slots, you are limited to once an hour if you have
        # recently changed your baseline slot capacity and your baseline slots exceed
        # your committed slots. Otherwise, you can decrease your baseline slots every
        # few minutes. NOTE: for reservations in US or EU multi-regions, slot capacity
        # constraints are checked separately for default and auxiliary regions. See
        # multi_region_auxiliary flag for more details.
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
          @autoscale = args[:autoscale] if args.key?(:autoscale)
          @concurrency = args[:concurrency] if args.key?(:concurrency)
          @creation_time = args[:creation_time] if args.key?(:creation_time)
          @edition = args[:edition] if args.key?(:edition)
          @ignore_idle_slots = args[:ignore_idle_slots] if args.key?(:ignore_idle_slots)
          @multi_region_auxiliary = args[:multi_region_auxiliary] if args.key?(:multi_region_auxiliary)
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
      
      # Fully qualified reference to BigQuery table. Internally stored as google.cloud.
      # bi.v1.BqTableReference.
      class TableReference
        include Google::Apis::Core::Hashable
      
        # The ID of the dataset in the above project.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # The assigned project ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # The ID of the table in the above dataset.
        # Corresponds to the JSON property `tableId`
        # @return [String]
        attr_accessor :table_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dataset_id = args[:dataset_id] if args.key?(:dataset_id)
          @project_id = args[:project_id] if args.key?(:project_id)
          @table_id = args[:table_id] if args.key?(:table_id)
        end
      end
    end
  end
end
