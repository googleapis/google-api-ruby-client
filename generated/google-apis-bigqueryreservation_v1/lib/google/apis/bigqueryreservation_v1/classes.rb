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
      
        # Optional. This field controls if "Gemini in BigQuery" (https://cloud.google.
        # com/gemini/docs/bigquery/overview) features should be enabled for this
        # reservation assignment, which is not on by default. "Gemini in BigQuery" has a
        # distinct compliance posture from BigQuery. If this field is set to true, the
        # assignment job type is QUERY, and the parent reservation edition is
        # ENTERPRISE_PLUS, then the assignment will give the grantee project/
        # organization access to "Gemini in BigQuery" features.
        # Corresponds to the JSON property `enableGeminiInBigquery`
        # @return [Boolean]
        attr_accessor :enable_gemini_in_bigquery
        alias_method :enable_gemini_in_bigquery?, :enable_gemini_in_bigquery
      
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
          @enable_gemini_in_bigquery = args[:enable_gemini_in_bigquery] if args.key?(:enable_gemini_in_bigquery)
          @job_type = args[:job_type] if args.key?(:job_type)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Auto scaling settings.
      class Autoscale
        include Google::Apis::Core::Hashable
      
        # Output only. The slot capacity added to this reservation when autoscale
        # happens. Will be between [0, max_slots]. Note: after users reduce max_slots,
        # it may take a while before it can be propagated, so current_slots may stay in
        # the original value and could be larger than max_slots for that brief period (
        # less than one minute)
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
        # for ACTIVE capacity commitments. Note after renewal, commitment_end_time is
        # the time the renewed commitment expires. So itwould be at a time after
        # commitment_start_time + committed period, because we don't change
        # commitment_start_time ,
        # Corresponds to the JSON property `commitmentEndTime`
        # @return [String]
        attr_accessor :commitment_end_time
      
        # Output only. The start of the current commitment period. It is applicable only
        # for ACTIVE capacity commitments. Note after the commitment is renewed,
        # commitment_start_time won't be changed. It refers to the start time of the
        # original commitment.
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
      
        # Output only. If true, the commitment is a flat-rate commitment, otherwise, it'
        # s an edition commitment.
        # Corresponds to the JSON property `isFlatRate`
        # @return [Boolean]
        attr_accessor :is_flat_rate
        alias_method :is_flat_rate?, :is_flat_rate
      
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
          @is_flat_rate = args[:is_flat_rate] if args.key?(:is_flat_rate)
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
      
      # The request for ReservationService.FailoverReservation.
      class FailoverReservationRequest
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
      
        # Optional. The optional resulting capacity commitment ID. Capacity commitment
        # name will be generated automatically if this field is empty. This field must
        # only contain lower case alphanumeric characters or dashes. The first and last
        # character cannot be a dash. Max length is 64 characters.
        # Corresponds to the JSON property `capacityCommitmentId`
        # @return [String]
        attr_accessor :capacity_commitment_id
      
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
          @capacity_commitment_id = args[:capacity_commitment_id] if args.key?(:capacity_commitment_id)
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
      
      # Disaster Recovery(DR) replication status of the reservation.
      class ReplicationStatus
        include Google::Apis::Core::Hashable
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::BigqueryreservationV1::Status]
        attr_accessor :error
      
        # Output only. The time at which the last error was encountered while trying to
        # replicate changes from the primary to the secondary. This field is only
        # available if the replication has not succeeded since.
        # Corresponds to the JSON property `lastErrorTime`
        # @return [String]
        attr_accessor :last_error_time
      
        # Output only. A timestamp corresponding to the last change on the primary that
        # was successfully replicated to the secondary.
        # Corresponds to the JSON property `lastReplicationTime`
        # @return [String]
        attr_accessor :last_replication_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @last_error_time = args[:last_error_time] if args.key?(:last_error_time)
          @last_replication_time = args[:last_replication_time] if args.key?(:last_replication_time)
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
        # computed by the system. NOTE: this field is exposed as target job concurrency
        # in the Information Schema, DDL and BigQuery CLI.
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
      
        # Optional. The labels associated with this reservation. You can use these to
        # organize and group your reservations. You can set this property when inserting
        # or updating a reservation.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # Optional. The overall max slots for the reservation, covering slot_capacity (
        # baseline), idle slots (if ignore_idle_slots is false) and scaled slots. If
        # present, the reservation won't use more than the specified number of slots,
        # even if there is demand and supply (from idle slots). NOTE: capping a
        # reservation's idle slot usage is best effort and its usage may exceed the
        # max_slots value. However, in terms of autoscale.current_slots (which accounts
        # for the additional added slots), it will never exceed the max_slots - baseline.
        # This field must be set together with the scaling_mode enum value, otherwise
        # the request will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`
        # . If the max_slots and scaling_mode are set, the autoscale or autoscale.
        # max_slots field must be unset. Otherwise the request will be rejected with
        # error code `google.rpc.Code.INVALID_ARGUMENT`. However, the autoscale field
        # may still be in the output. The autopscale.max_slots will always show as 0 and
        # the autoscaler.current_slots will represent the current slots from autoscaler
        # excluding idle slots. For example, if the max_slots is 1000 and scaling_mode
        # is AUTOSCALE_ONLY, then in the output, the autoscaler.max_slots will be 0 and
        # the autoscaler.current_slots may be any value between 0 and 1000. If the
        # max_slots is 1000, scaling_mode is ALL_SLOTS, the baseline is 100 and idle
        # slots usage is 200, then in the output, the autoscaler.max_slots will be 0 and
        # the autoscaler.current_slots will not be higher than 700. If the max_slots is
        # 1000, scaling_mode is IDLE_SLOTS_ONLY, then in the output, the autoscaler
        # field will be null. If the max_slots and scaling_mode are set, then the
        # ignore_idle_slots field must be aligned with the scaling_mode enum value.(See
        # details in ScalingMode comments). Otherwise the request will be rejected with
        # error code `google.rpc.Code.INVALID_ARGUMENT`. Please note, the max_slots is
        # for user to manage the part of slots greater than the baseline. Therefore, we
        # don't allow users to set max_slots smaller or equal to the baseline as it will
        # not be meaningful. If the field is present and slot_capacity>=max_slots,
        # requests will be rejected with error code `google.rpc.Code.INVALID_ARGUMENT`.
        # Please note that if max_slots is set to 0, we will treat it as unset.
        # Customers can set max_slots to 0 and set scaling_mode to
        # SCALING_MODE_UNSPECIFIED to disable the max_slots feature.
        # Corresponds to the JSON property `maxSlots`
        # @return [Fixnum]
        attr_accessor :max_slots
      
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
      
        # Output only. The location where the reservation was originally created. This
        # is set only during the failover reservation's creation. All billing charges
        # for the failover reservation will be applied to this location.
        # Corresponds to the JSON property `originalPrimaryLocation`
        # @return [String]
        attr_accessor :original_primary_location
      
        # Output only. The current location of the reservation's primary replica. This
        # field is only set for reservations using the managed disaster recovery feature.
        # Corresponds to the JSON property `primaryLocation`
        # @return [String]
        attr_accessor :primary_location
      
        # Disaster Recovery(DR) replication status of the reservation.
        # Corresponds to the JSON property `replicationStatus`
        # @return [Google::Apis::BigqueryreservationV1::ReplicationStatus]
        attr_accessor :replication_status
      
        # The scaling mode for the reservation. If the field is present but max_slots is
        # not present, requests will be rejected with error code `google.rpc.Code.
        # INVALID_ARGUMENT`.
        # Corresponds to the JSON property `scalingMode`
        # @return [String]
        attr_accessor :scaling_mode
      
        # Optional. The current location of the reservation's secondary replica. This
        # field is only set for reservations using the managed disaster recovery feature.
        # Users can set this in create reservation calls to create a failover
        # reservation or in update reservation calls to convert a non-failover
        # reservation to a failover reservation(or vice versa).
        # Corresponds to the JSON property `secondaryLocation`
        # @return [String]
        attr_accessor :secondary_location
      
        # Baseline slots available to this reservation. A slot is a unit of
        # computational power in BigQuery, and serves as the unit of parallelism.
        # Queries using this reservation might use more slots during runtime if
        # ignore_idle_slots is set to false, or autoscaling is enabled. The total
        # slot_capacity of the reservation and its siblings may exceed the total
        # slot_count of capacity commitments. In that case, the exceeding slots will be
        # charged with the autoscale SKU. You can increase the number of baseline slots
        # in a reservation every few minutes. If you want to decrease your baseline
        # slots, you are limited to once an hour if you have recently changed your
        # baseline slot capacity and your baseline slots exceed your committed slots.
        # Otherwise, you can decrease your baseline slots every few minutes.
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
          @labels = args[:labels] if args.key?(:labels)
          @max_slots = args[:max_slots] if args.key?(:max_slots)
          @multi_region_auxiliary = args[:multi_region_auxiliary] if args.key?(:multi_region_auxiliary)
          @name = args[:name] if args.key?(:name)
          @original_primary_location = args[:original_primary_location] if args.key?(:original_primary_location)
          @primary_location = args[:primary_location] if args.key?(:primary_location)
          @replication_status = args[:replication_status] if args.key?(:replication_status)
          @scaling_mode = args[:scaling_mode] if args.key?(:scaling_mode)
          @secondary_location = args[:secondary_location] if args.key?(:secondary_location)
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
