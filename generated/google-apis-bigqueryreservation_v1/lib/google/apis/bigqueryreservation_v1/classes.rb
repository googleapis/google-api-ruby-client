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
      
        # Optional. The resource which will use the reservation. E.g. `projects/
        # myproject`, `folders/123`, or `organizations/456`.
        # Corresponds to the JSON property `assignee`
        # @return [String]
        attr_accessor :assignee
      
        # Optional. Deprecated: "Gemini in BigQuery" is now available by default for all
        # BigQuery editions and should not be explicitly set. Controls if "Gemini in
        # BigQuery" (https://cloud.google.com/gemini/docs/bigquery/overview) features
        # should be enabled for this reservation assignment.
        # Corresponds to the JSON property `enableGeminiInBigquery`
        # @return [Boolean]
        attr_accessor :enable_gemini_in_bigquery
        alias_method :enable_gemini_in_bigquery?, :enable_gemini_in_bigquery
      
        # Optional. Which type of jobs will use the reservation.
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
      
        # The scheduling policy controls how a reservation's resources are distributed.
        # Corresponds to the JSON property `schedulingPolicy`
        # @return [Google::Apis::BigqueryreservationV1::SchedulingPolicy]
        attr_accessor :scheduling_policy
      
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
          @scheduling_policy = args[:scheduling_policy] if args.key?(:scheduling_policy)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Specifies the audit configuration for a service. The configuration determines
      # which permission types are logged, and what identities, if any, are exempted
      # from logging. An AuditConfig must have one or more AuditLogConfigs. If there
      # are AuditConfigs for both `allServices` and a specific service, the union of
      # the two AuditConfigs is used for that service: the log_types specified in each
      # AuditConfig are enabled, and the exempted_members in each AuditLogConfig are
      # exempted. Example Policy with multiple AuditConfigs: ` "audit_configs": [ ` "
      # service": "allServices", "audit_log_configs": [ ` "log_type": "DATA_READ", "
      # exempted_members": [ "user:jose@example.com" ] `, ` "log_type": "DATA_WRITE" `,
      # ` "log_type": "ADMIN_READ" ` ] `, ` "service": "sampleservice.googleapis.com",
      # "audit_log_configs": [ ` "log_type": "DATA_READ" `, ` "log_type": "DATA_WRITE"
      # , "exempted_members": [ "user:aliya@example.com" ] ` ] ` ] ` For sampleservice,
      # this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also
      # exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com`
      # from DATA_WRITE logging.
      class AuditConfig
        include Google::Apis::Core::Hashable
      
        # The configuration for logging of each type of permission.
        # Corresponds to the JSON property `auditLogConfigs`
        # @return [Array<Google::Apis::BigqueryreservationV1::AuditLogConfig>]
        attr_accessor :audit_log_configs
      
        # Specifies a service that will be enabled for audit logging. For example, `
        # storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special
        # value that covers all services.
        # Corresponds to the JSON property `service`
        # @return [String]
        attr_accessor :service
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_log_configs = args[:audit_log_configs] if args.key?(:audit_log_configs)
          @service = args[:service] if args.key?(:service)
        end
      end
      
      # Provides the configuration for logging a type of permissions. Example: ` "
      # audit_log_configs": [ ` "log_type": "DATA_READ", "exempted_members": [ "user:
      # jose@example.com" ] `, ` "log_type": "DATA_WRITE" ` ] ` This enables '
      # DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from
      # DATA_READ logging.
      class AuditLogConfig
        include Google::Apis::Core::Hashable
      
        # Specifies the identities that do not cause logging for this type of permission.
        # Follows the same format of Binding.members.
        # Corresponds to the JSON property `exemptedMembers`
        # @return [Array<String>]
        attr_accessor :exempted_members
      
        # The log type that this config enables.
        # Corresponds to the JSON property `logType`
        # @return [String]
        attr_accessor :log_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exempted_members = args[:exempted_members] if args.key?(:exempted_members)
          @log_type = args[:log_type] if args.key?(:log_type)
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
      
        # Optional. Number of slots to be scaled when needed.
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
      
        # Identifier. The resource name of the singleton BI reservation. Reservation
        # names have the form `projects/`project_id`/locations/`location_id`/
        # biReservation`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Optional. Preferred tables to use BI capacity for.
        # Corresponds to the JSON property `preferredTables`
        # @return [Array<Google::Apis::BigqueryreservationV1::TableReference>]
        attr_accessor :preferred_tables
      
        # Optional. Size of a reservation, in bytes.
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
      
      # Associates `members`, or principals, with a `role`.
      class Binding
        include Google::Apis::Core::Hashable
      
        # Represents a textual expression in the Common Expression Language (CEL) syntax.
        # CEL is a C-like expression language. The syntax and semantics of CEL are
        # documented at https://github.com/google/cel-spec. Example (Comparison): title:
        # "Summary size limit" description: "Determines if a summary is less than 100
        # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
        # Requestor is owner" description: "Determines if requestor is the document
        # owner" expression: "document.owner == request.auth.claims.email" Example (
        # Logic): title: "Public documents" description: "Determine whether the document
        # should be publicly visible" expression: "document.type != 'private' &&
        # document.type != 'internal'" Example (Data Manipulation): title: "Notification
        # string" description: "Create a notification string with a timestamp."
        # expression: "'New message received at ' + string(document.create_time)" The
        # exact variables and functions that may be referenced within an expression are
        # determined by the service that evaluates it. See the service documentation for
        # additional information.
        # Corresponds to the JSON property `condition`
        # @return [Google::Apis::BigqueryreservationV1::Expr]
        attr_accessor :condition
      
        # Specifies the principals requesting access for a Google Cloud resource. `
        # members` can have the following values: * `allUsers`: A special identifier
        # that represents anyone who is on the internet; with or without a Google
        # account. * `allAuthenticatedUsers`: A special identifier that represents
        # anyone who is authenticated with a Google account or a service account. Does
        # not include identities that come from external identity providers (IdPs)
        # through identity federation. * `user:`emailid``: An email address that
        # represents a specific Google account. For example, `alice@example.com` . * `
        # serviceAccount:`emailid``: An email address that represents a Google service
        # account. For example, `my-other-app@appspot.gserviceaccount.com`. * `
        # serviceAccount:`projectid`.svc.id.goog[`namespace`/`kubernetes-sa`]`: An
        # identifier for a [Kubernetes service account](https://cloud.google.com/
        # kubernetes-engine/docs/how-to/kubernetes-service-accounts). For example, `my-
        # project.svc.id.goog[my-namespace/my-kubernetes-sa]`. * `group:`emailid``: An
        # email address that represents a Google group. For example, `admins@example.com`
        # . * `domain:`domain``: The G Suite domain (primary) that represents all the
        # users of that domain. For example, `google.com` or `example.com`. * `principal:
        # //iam.googleapis.com/locations/global/workforcePools/`pool_id`/subject/`
        # subject_attribute_value``: A single identity in a workforce identity pool. * `
        # principalSet://iam.googleapis.com/locations/global/workforcePools/`pool_id`/
        # group/`group_id``: All workforce identities in a group. * `principalSet://iam.
        # googleapis.com/locations/global/workforcePools/`pool_id`/attribute.`
        # attribute_name`/`attribute_value``: All workforce identities with a specific
        # attribute value. * `principalSet://iam.googleapis.com/locations/global/
        # workforcePools/`pool_id`/*`: All identities in a workforce identity pool. * `
        # principal://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/subject/`subject_attribute_value``: A single
        # identity in a workload identity pool. * `principalSet://iam.googleapis.com/
        # projects/`project_number`/locations/global/workloadIdentityPools/`pool_id`/
        # group/`group_id``: A workload identity pool group. * `principalSet://iam.
        # googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/attribute.`attribute_name`/`attribute_value``:
        # All identities in a workload identity pool with a certain attribute. * `
        # principalSet://iam.googleapis.com/projects/`project_number`/locations/global/
        # workloadIdentityPools/`pool_id`/*`: All identities in a workload identity pool.
        # * `deleted:user:`emailid`?uid=`uniqueid``: An email address (plus unique
        # identifier) representing a user that has been recently deleted. For example, `
        # alice@example.com?uid=123456789012345678901`. If the user is recovered, this
        # value reverts to `user:`emailid`` and the recovered user retains the role in
        # the binding. * `deleted:serviceAccount:`emailid`?uid=`uniqueid``: An email
        # address (plus unique identifier) representing a service account that has been
        # recently deleted. For example, `my-other-app@appspot.gserviceaccount.com?uid=
        # 123456789012345678901`. If the service account is undeleted, this value
        # reverts to `serviceAccount:`emailid`` and the undeleted service account
        # retains the role in the binding. * `deleted:group:`emailid`?uid=`uniqueid``:
        # An email address (plus unique identifier) representing a Google group that has
        # been recently deleted. For example, `admins@example.com?uid=
        # 123456789012345678901`. If the group is recovered, this value reverts to `
        # group:`emailid`` and the recovered group retains the role in the binding. * `
        # deleted:principal://iam.googleapis.com/locations/global/workforcePools/`
        # pool_id`/subject/`subject_attribute_value``: Deleted single identity in a
        # workforce identity pool. For example, `deleted:principal://iam.googleapis.com/
        # locations/global/workforcePools/my-pool-id/subject/my-subject-attribute-value`.
        # Corresponds to the JSON property `members`
        # @return [Array<String>]
        attr_accessor :members
      
        # Role that is assigned to the list of `members`, or principals. For example, `
        # roles/viewer`, `roles/editor`, or `roles/owner`. For an overview of the IAM
        # roles and permissions, see the [IAM documentation](https://cloud.google.com/
        # iam/docs/roles-overview). For a list of the available pre-defined roles, see [
        # here](https://cloud.google.com/iam/docs/understanding-roles).
        # Corresponds to the JSON property `role`
        # @return [String]
        attr_accessor :role
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @condition = args[:condition] if args.key?(:condition)
          @members = args[:members] if args.key?(:members)
          @role = args[:role] if args.key?(:role)
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
      
        # Optional. Edition of the capacity commitment.
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
      
        # Optional. Capacity commitment commitment plan.
        # Corresponds to the JSON property `plan`
        # @return [String]
        attr_accessor :plan
      
        # Optional. The plan this capacity commitment is converted to after
        # commitment_end_time passes. Once the plan is changed, committed period is
        # extended according to commitment plan. Only applicable for ANNUAL and TRIAL
        # commitments.
        # Corresponds to the JSON property `renewalPlan`
        # @return [String]
        attr_accessor :renewal_plan
      
        # Optional. Number of slots in this commitment.
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
      
      # Represents a textual expression in the Common Expression Language (CEL) syntax.
      # CEL is a C-like expression language. The syntax and semantics of CEL are
      # documented at https://github.com/google/cel-spec. Example (Comparison): title:
      # "Summary size limit" description: "Determines if a summary is less than 100
      # chars" expression: "document.summary.size() < 100" Example (Equality): title: "
      # Requestor is owner" description: "Determines if requestor is the document
      # owner" expression: "document.owner == request.auth.claims.email" Example (
      # Logic): title: "Public documents" description: "Determine whether the document
      # should be publicly visible" expression: "document.type != 'private' &&
      # document.type != 'internal'" Example (Data Manipulation): title: "Notification
      # string" description: "Create a notification string with a timestamp."
      # expression: "'New message received at ' + string(document.create_time)" The
      # exact variables and functions that may be referenced within an expression are
      # determined by the service that evaluates it. See the service documentation for
      # additional information.
      class Expr
        include Google::Apis::Core::Hashable
      
        # Optional. Description of the expression. This is a longer text which describes
        # the expression, e.g. when hovered over it in a UI.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Textual representation of an expression in Common Expression Language syntax.
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # Optional. String indicating the location of the expression for error reporting,
        # e.g. a file name and a position in the file.
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Optional. Title for the expression, i.e. a short string describing its purpose.
        # This can be used e.g. in UIs which allow to enter the expression.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @expression = args[:expression] if args.key?(:expression)
          @location = args[:location] if args.key?(:location)
          @title = args[:title] if args.key?(:title)
        end
      end
      
      # The request for ReservationService.FailoverReservation.
      class FailoverReservationRequest
        include Google::Apis::Core::Hashable
      
        # Optional. A parameter that determines how writes that are pending replication
        # are handled after a failover is initiated. If not specified, HARD failover
        # mode is used by default.
        # Corresponds to the JSON property `failoverMode`
        # @return [String]
        attr_accessor :failover_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @failover_mode = args[:failover_mode] if args.key?(:failover_mode)
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
      
      # The response for ReservationService.ListReservationGroups.
      class ListReservationGroupsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # List of reservations visible to the user.
        # Corresponds to the JSON property `reservationGroups`
        # @return [Array<Google::Apis::BigqueryreservationV1::ReservationGroup>]
        attr_accessor :reservation_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reservation_groups = args[:reservation_groups] if args.key?(:reservation_groups)
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
      
      # An Identity and Access Management (IAM) policy, which specifies access
      # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
      # A `binding` binds one or more `members`, or principals, to a single `role`.
      # Principals can be user accounts, service accounts, Google groups, and domains (
      # such as G Suite). A `role` is a named list of permissions; each `role` can be
      # an IAM predefined role or a user-created custom role. For some types of Google
      # Cloud resources, a `binding` can also specify a `condition`, which is a
      # logical expression that allows access to a resource only if the expression
      # evaluates to `true`. A condition can add constraints based on attributes of
      # the request, the resource, or both. To learn which resources support
      # conditions in their IAM policies, see the [IAM documentation](https://cloud.
      # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
      # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
      # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
      # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
      # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
      # ], "condition": ` "title": "expirable access", "description": "Does not grant
      # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
      # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
      # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
      # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
      # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
      # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
      # title: expirable access description: Does not grant access after Sep 2020
      # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
      # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
      # [IAM documentation](https://cloud.google.com/iam/docs/).
      class Policy
        include Google::Apis::Core::Hashable
      
        # Specifies cloud audit logging configuration for this policy.
        # Corresponds to the JSON property `auditConfigs`
        # @return [Array<Google::Apis::BigqueryreservationV1::AuditConfig>]
        attr_accessor :audit_configs
      
        # Associates a list of `members`, or principals, with a `role`. Optionally, may
        # specify a `condition` that determines how and when the `bindings` are applied.
        # Each of the `bindings` must contain at least one principal. The `bindings` in
        # a `Policy` can refer to up to 1,500 principals; up to 250 of these principals
        # can be Google groups. Each occurrence of a principal counts towards these
        # limits. For example, if the `bindings` grant 50 different roles to `user:alice@
        # example.com`, and not to any other principal, then you can add another 1,450
        # principals to the `bindings` in the `Policy`.
        # Corresponds to the JSON property `bindings`
        # @return [Array<Google::Apis::BigqueryreservationV1::Binding>]
        attr_accessor :bindings
      
        # `etag` is used for optimistic concurrency control as a way to help prevent
        # simultaneous updates of a policy from overwriting each other. It is strongly
        # suggested that systems make use of the `etag` in the read-modify-write cycle
        # to perform policy updates in order to avoid race conditions: An `etag` is
        # returned in the response to `getIamPolicy`, and systems are expected to put
        # that etag in the request to `setIamPolicy` to ensure that their change will be
        # applied to the same version of the policy. **Important:** If you use IAM
        # Conditions, you must include the `etag` field whenever you call `setIamPolicy`.
        # If you omit this field, then IAM allows you to overwrite a version `3` policy
        # with a version `1` policy, and all of the conditions in the version `3` policy
        # are lost.
        # Corresponds to the JSON property `etag`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :etag
      
        # Specifies the format of the policy. Valid values are `0`, `1`, and `3`.
        # Requests that specify an invalid value are rejected. Any operation that
        # affects conditional role bindings must specify version `3`. This requirement
        # applies to the following operations: * Getting a policy that includes a
        # conditional role binding * Adding a conditional role binding to a policy *
        # Changing a conditional role binding in a policy * Removing any role binding,
        # with or without a condition, from a policy that includes conditions **
        # Important:** If you use IAM Conditions, you must include the `etag` field
        # whenever you call `setIamPolicy`. If you omit this field, then IAM allows you
        # to overwrite a version `3` policy with a version `1` policy, and all of the
        # conditions in the version `3` policy are lost. If a policy does not include
        # any conditions, operations on that policy may specify any valid version or
        # leave the field unset. To learn which resources support conditions in their
        # IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/
        # conditions/resource-policies).
        # Corresponds to the JSON property `version`
        # @return [Fixnum]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_configs = args[:audit_configs] if args.key?(:audit_configs)
          @bindings = args[:bindings] if args.key?(:bindings)
          @etag = args[:etag] if args.key?(:etag)
          @version = args[:version] if args.key?(:version)
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
      
        # Output only. The time at which a soft failover for the reservation and its
        # associated datasets was initiated. After this field is set, all subsequent
        # changes to the reservation will be rejected unless a hard failover overrides
        # this operation. This field will be cleared once the failover is complete.
        # Corresponds to the JSON property `softFailoverStartTime`
        # @return [String]
        attr_accessor :soft_failover_start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error = args[:error] if args.key?(:error)
          @last_error_time = args[:last_error_time] if args.key?(:last_error_time)
          @last_replication_time = args[:last_replication_time] if args.key?(:last_replication_time)
          @soft_failover_start_time = args[:soft_failover_start_time] if args.key?(:soft_failover_start_time)
        end
      end
      
      # A reservation is a mechanism used to guarantee slots to users.
      class Reservation
        include Google::Apis::Core::Hashable
      
        # Auto scaling settings.
        # Corresponds to the JSON property `autoscale`
        # @return [Google::Apis::BigqueryreservationV1::Autoscale]
        attr_accessor :autoscale
      
        # Optional. Job concurrency target which sets a soft upper bound on the number
        # of jobs that can run concurrently in this reservation. This is a soft target
        # due to asynchronous nature of the system and various optimizations for small
        # queries. Default value is 0 which means that concurrency target will be
        # automatically computed by the system. NOTE: this field is exposed as target
        # job concurrency in the Information Schema, DDL and BigQuery CLI.
        # Corresponds to the JSON property `concurrency`
        # @return [Fixnum]
        attr_accessor :concurrency
      
        # Output only. Creation time of the reservation.
        # Corresponds to the JSON property `creationTime`
        # @return [String]
        attr_accessor :creation_time
      
        # Optional. Edition of the reservation.
        # Corresponds to the JSON property `edition`
        # @return [String]
        attr_accessor :edition
      
        # Optional. If false, any query or pipeline job using this reservation will use
        # idle slots from other reservations within the same admin project. If true, a
        # query or pipeline job using this reservation will execute with the slot
        # capacity specified in the slot_capacity field at most.
        # Corresponds to the JSON property `ignoreIdleSlots`
        # @return [Boolean]
        attr_accessor :ignore_idle_slots
        alias_method :ignore_idle_slots?, :ignore_idle_slots
      
        # Optional. The labels associated with this reservation. You can use these to
        # organize and group your reservations. You can set this property when you
        # create or update a reservation.
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
      
        # Identifier. The resource name of the reservation, e.g., `projects/*/locations/*
        # /reservations/team1-prod`. The reservation_id must only contain lower case
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
      
        # Optional. The reservation group that this reservation belongs to. You can set
        # this property when you create or update a reservation. Reservations do not
        # need to belong to a reservation group. Format: projects/`project`/locations/`
        # location`/reservationGroups/`reservation_group` or just `reservation_group`
        # Corresponds to the JSON property `reservationGroup`
        # @return [String]
        attr_accessor :reservation_group
      
        # Optional. The scaling mode for the reservation. If the field is present but
        # max_slots is not present, requests will be rejected with error code `google.
        # rpc.Code.INVALID_ARGUMENT`.
        # Corresponds to the JSON property `scalingMode`
        # @return [String]
        attr_accessor :scaling_mode
      
        # The scheduling policy controls how a reservation's resources are distributed.
        # Corresponds to the JSON property `schedulingPolicy`
        # @return [Google::Apis::BigqueryreservationV1::SchedulingPolicy]
        attr_accessor :scheduling_policy
      
        # Optional. The current location of the reservation's secondary replica. This
        # field is only set for reservations using the managed disaster recovery feature.
        # Users can set this in create reservation calls to create a failover
        # reservation or in update reservation calls to convert a non-failover
        # reservation to a failover reservation(or vice versa).
        # Corresponds to the JSON property `secondaryLocation`
        # @return [String]
        attr_accessor :secondary_location
      
        # Optional. Baseline slots available to this reservation. A slot is a unit of
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
          @reservation_group = args[:reservation_group] if args.key?(:reservation_group)
          @scaling_mode = args[:scaling_mode] if args.key?(:scaling_mode)
          @scheduling_policy = args[:scheduling_policy] if args.key?(:scheduling_policy)
          @secondary_location = args[:secondary_location] if args.key?(:secondary_location)
          @slot_capacity = args[:slot_capacity] if args.key?(:slot_capacity)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # A reservation group is a container for reservations.
      class ReservationGroup
        include Google::Apis::Core::Hashable
      
        # Identifier. The resource name of the reservation group, e.g., `projects/*/
        # locations/*/reservationGroups/team1-prod`. The reservation_group_id must only
        # contain lower case alphanumeric characters or dashes. It must start with a
        # letter and must not end with a dash. Its maximum length is 64 characters.
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
      
      # The scheduling policy controls how a reservation's resources are distributed.
      class SchedulingPolicy
        include Google::Apis::Core::Hashable
      
        # Optional. If present and > 0, the reservation will attempt to limit the
        # concurrency of jobs running for any particular project within it to the given
        # value. This feature is not yet generally available.
        # Corresponds to the JSON property `concurrency`
        # @return [Fixnum]
        attr_accessor :concurrency
      
        # Optional. If present and > 0, the reservation will attempt to limit the slot
        # consumption of queries running for any particular project within it to the
        # given value. This feature is not yet generally available.
        # Corresponds to the JSON property `maxSlots`
        # @return [Fixnum]
        attr_accessor :max_slots
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @concurrency = args[:concurrency] if args.key?(:concurrency)
          @max_slots = args[:max_slots] if args.key?(:max_slots)
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
      
      # Request message for `SetIamPolicy` method.
      class SetIamPolicyRequest
        include Google::Apis::Core::Hashable
      
        # An Identity and Access Management (IAM) policy, which specifies access
        # controls for Google Cloud resources. A `Policy` is a collection of `bindings`.
        # A `binding` binds one or more `members`, or principals, to a single `role`.
        # Principals can be user accounts, service accounts, Google groups, and domains (
        # such as G Suite). A `role` is a named list of permissions; each `role` can be
        # an IAM predefined role or a user-created custom role. For some types of Google
        # Cloud resources, a `binding` can also specify a `condition`, which is a
        # logical expression that allows access to a resource only if the expression
        # evaluates to `true`. A condition can add constraints based on attributes of
        # the request, the resource, or both. To learn which resources support
        # conditions in their IAM policies, see the [IAM documentation](https://cloud.
        # google.com/iam/help/conditions/resource-policies). **JSON example:** ``` ` "
        # bindings": [ ` "role": "roles/resourcemanager.organizationAdmin", "members": [
        # "user:mike@example.com", "group:admins@example.com", "domain:google.com", "
        # serviceAccount:my-project-id@appspot.gserviceaccount.com" ] `, ` "role": "
        # roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com"
        # ], "condition": ` "title": "expirable access", "description": "Does not grant
        # access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:
        # 00:00.000Z')", ` ` ], "etag": "BwWWja0YfJA=", "version": 3 ` ``` **YAML
        # example:** ``` bindings: - members: - user:mike@example.com - group:admins@
        # example.com - domain:google.com - serviceAccount:my-project-id@appspot.
        # gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: -
        # user:eve@example.com role: roles/resourcemanager.organizationViewer condition:
        # title: expirable access description: Does not grant access after Sep 2020
        # expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag:
        # BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the
        # [IAM documentation](https://cloud.google.com/iam/docs/).
        # Corresponds to the JSON property `policy`
        # @return [Google::Apis::BigqueryreservationV1::Policy]
        attr_accessor :policy
      
        # OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only
        # the fields in the mask will be modified. If no mask is provided, the following
        # default mask is used: `paths: "bindings, etag"`
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @policy = args[:policy] if args.key?(:policy)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
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
      
        # Optional. The ID of the dataset in the above project.
        # Corresponds to the JSON property `datasetId`
        # @return [String]
        attr_accessor :dataset_id
      
        # Optional. The assigned project ID of the project.
        # Corresponds to the JSON property `projectId`
        # @return [String]
        attr_accessor :project_id
      
        # Optional. The ID of the table in the above dataset.
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
      
      # Request message for `TestIamPermissions` method.
      class TestIamPermissionsRequest
        include Google::Apis::Core::Hashable
      
        # The set of permissions to check for the `resource`. Permissions with wildcards
        # (such as `*` or `storage.*`) are not allowed. For more information see [IAM
        # Overview](https://cloud.google.com/iam/docs/overview#permissions).
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
      
      # Response message for `TestIamPermissions` method.
      class TestIamPermissionsResponse
        include Google::Apis::Core::Hashable
      
        # A subset of `TestPermissionsRequest.permissions` that the caller is allowed.
        # Corresponds to the JSON property `permissions`
        # @return [Array<String>]
        attr_accessor :permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permissions = args[:permissions] if args.key?(:permissions)
        end
      end
    end
  end
end
