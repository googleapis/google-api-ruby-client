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
    module BigqueryreservationV1alpha2
      
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
      
      # The response for ReservationService.ListReservationGrants.
      class ListReservationGrantsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of reservation grants visible to the user.
        # Corresponds to the JSON property `reservationGrants`
        # @return [Array<Google::Apis::BigqueryreservationV1alpha2::ReservationGrant>]
        attr_accessor :reservation_grants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reservation_grants = args[:reservation_grants] if args.key?(:reservation_grants)
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
        # @return [Array<Google::Apis::BigqueryreservationV1alpha2::Reservation>]
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
      
      # The response for ReservationService.ListSlotPools.
      class ListSlotPoolsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of slot pools visible to the user.
        # Corresponds to the JSON property `slotPools`
        # @return [Array<Google::Apis::BigqueryreservationV1alpha2::SlotPool>]
        attr_accessor :slot_pools
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @slot_pools = args[:slot_pools] if args.key?(:slot_pools)
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
        # @return [Google::Apis::BigqueryreservationV1alpha2::Status]
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
      
        # The resource name of the reservation, e.g., "projects/*/locations/*/
        # reservations/dev/team/product". Reservation names (e.g., "dev/team/product")
        # exceeding a depth of six will fail with `google.rpc.Code.INVALID_ARGUMENT`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Maximum slots available to this reservation and its children. A slot is a unit
        # of computational power in BigQuery, and serves as the unit of parallelism. In
        # a scan of a multi-partitioned table, a single slot operates on a single
        # partition of the table. If the new reservation's slot capacity exceed the
        # parent's slot capacity or if total slot capacity of the new reservation and
        # its siblings exceeds the parent's slot capacity, the request will fail with `
        # google.rpc.Code.RESOURCE_EXHAUSTED`.
        # Corresponds to the JSON property `slotCapacity`
        # @return [Fixnum]
        attr_accessor :slot_capacity
      
        # If true, any query using this reservation will also be submitted to the parent
        # reservation. This allows the query to share the additional slot capacity of
        # the parent with other queries in the parent reservation. If the parent also
        # has this field set to true, then this process will continue until it
        # encounters a reservation for which this is false. If false, a query using this
        # reservation will execute with the maximum slot capacity as specified above. If
        # not specified, default value is true. Ignored for top-level reservation.
        # Corresponds to the JSON property `useParentReservation`
        # @return [Boolean]
        attr_accessor :use_parent_reservation
        alias_method :use_parent_reservation?, :use_parent_reservation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @slot_capacity = args[:slot_capacity] if args.key?(:slot_capacity)
          @use_parent_reservation = args[:use_parent_reservation] if args.key?(:use_parent_reservation)
        end
      end
      
      # A ReservationGrant allows a project to submit jobs of a certain type using
      # slots from the specified reservation.
      class ReservationGrant
        include Google::Apis::Core::Hashable
      
        # The resource which will use the reservation. E.g. projects/myproject, folders/
        # 123, organizations/456.
        # Corresponds to the JSON property `grantee`
        # @return [String]
        attr_accessor :grantee
      
        # Which type of jobs will use the reservation.
        # Corresponds to the JSON property `jobType`
        # @return [String]
        attr_accessor :job_type
      
        # Output only. Name of the resource. E.g.: projects/myproject/locations/eu/
        # reservationGrants/123.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Resource name of the reservation. E.g., projects/myproject/locations/eu/
        # reservations/my_reservation. This reservation must be in the same location as
        # the grant. This reservation should belong to the same parent project.
        # Corresponds to the JSON property `reservation`
        # @return [String]
        attr_accessor :reservation
      
        # Output only. State of the ReservationGrant.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @grantee = args[:grantee] if args.key?(:grantee)
          @job_type = args[:job_type] if args.key?(:job_type)
          @name = args[:name] if args.key?(:name)
          @reservation = args[:reservation] if args.key?(:reservation)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # The response for ReservationService.SearchReservationGrants.
      class SearchReservationGrantsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of reservation grants visible to the user.
        # Corresponds to the JSON property `reservationGrants`
        # @return [Array<Google::Apis::BigqueryreservationV1alpha2::ReservationGrant>]
        attr_accessor :reservation_grants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reservation_grants = args[:reservation_grants] if args.key?(:reservation_grants)
        end
      end
      
      # Slot pool is a way to purchase slots with some minimum committed period of
      # usage. Slot pool is immutable and cannot be deleted until the end of the
      # commitment period. After the end of the commitment period, slots are still
      # available but can be freely removed any time. Annual commitments will
      # automatically be downgraded to monthly after the commitment ends. A slot pool
      # resource exists as a child resource of a top-level reservation. Sum of all the
      # ACTIVE pools slot_count is always equal to the reservation slot_capacity.
      class SlotPool
        include Google::Apis::Core::Hashable
      
        # Output only. The end of the commitment period. Slot pool cannot be removed
        # before commitment_end_time. It is applicable only for ACTIVE slot pools and is
        # computed as a combination of the plan and the time when the slot pool became
        # ACTIVE.
        # Corresponds to the JSON property `commitmentEndTime`
        # @return [String]
        attr_accessor :commitment_end_time
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `failureStatus`
        # @return [Google::Apis::BigqueryreservationV1alpha2::Status]
        attr_accessor :failure_status
      
        # Output only. The resource name of the slot pool, e.g., projects/myproject/
        # locations/us-central1/reservations/myreservation/slotPools/123
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Slot pool commitment plan.
        # Corresponds to the JSON property `plan`
        # @return [String]
        attr_accessor :plan
      
        # Number of slots in this pool.
        # Corresponds to the JSON property `slotCount`
        # @return [Fixnum]
        attr_accessor :slot_count
      
        # Output only.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commitment_end_time = args[:commitment_end_time] if args.key?(:commitment_end_time)
          @failure_status = args[:failure_status] if args.key?(:failure_status)
          @name = args[:name] if args.key?(:name)
          @plan = args[:plan] if args.key?(:plan)
          @slot_count = args[:slot_count] if args.key?(:slot_count)
          @state = args[:state] if args.key?(:state)
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
