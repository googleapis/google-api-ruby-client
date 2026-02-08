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
    module ContactcenteraiplatformV1alpha1
      
      # Message storing info about the first admin user. Next ID: 3
      class AdminUser
        include Google::Apis::Core::Hashable
      
        # Optional. Last/family name of the first admin user.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Optional. First/given name of the first admin user.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
        end
      end
      
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
      
      # Defines a logical CCAIP component that e.g. “EMAIL”, "CRM". For more
      # information see go/ccaip-private-path-v2. Each logical component is associated
      # with a list of service attachments.
      class Component
        include Google::Apis::Core::Hashable
      
        # Name of the component.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Associated service attachments. The service attachment names that will be used
        # for sending private traffic to the CCAIP tenant project. Example service
        # attachment name: "projects/$`TENANT_PROJECT_ID`/regions/$`REGION`/
        # serviceAttachments/ingress-default".
        # Corresponds to the JSON property `serviceAttachmentNames`
        # @return [Array<String>]
        attr_accessor :service_attachment_names
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @service_attachment_names = args[:service_attachment_names] if args.key?(:service_attachment_names)
        end
      end
      
      # Message describing ContactCenter object
      class ContactCenter
        include Google::Apis::Core::Hashable
      
        # Message storing info about the first admin user. Next ID: 3
        # Corresponds to the JSON property `adminUser`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::AdminUser]
        attr_accessor :admin_user
      
        # Optional. Whether the advanced reporting feature is enabled.
        # Corresponds to the JSON property `advancedReportingEnabled`
        # @return [Boolean]
        attr_accessor :advanced_reporting_enabled
        alias_method :advanced_reporting_enabled?, :advanced_reporting_enabled
      
        # Optional. Whether to enable users to be created in the CCAIP-instance
        # concurrently to having users in Cloud identity
        # Corresponds to the JSON property `ccaipManagedUsers`
        # @return [Boolean]
        attr_accessor :ccaip_managed_users
        alias_method :ccaip_managed_users?, :ccaip_managed_users
      
        # Output only. [Output only] Create time stamp
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Instances in this Channel will receive updates after all instances in `Normal`
        # were updated. They also will only be updated outside of their peak hours.
        # Corresponds to the JSON property `critical`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::Critical]
        attr_accessor :critical
      
        # Required. Immutable. At least 2 and max 16 char long, must conform to [RFC
        # 1035](https://www.ietf.org/rfc/rfc1035.txt).
        # Corresponds to the JSON property `customerDomainPrefix`
        # @return [String]
        attr_accessor :customer_domain_prefix
      
        # Output only. Timestamp in UTC of when this resource was soft-deleted.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Required. A user friendly name for the ContactCenter.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # LINT.IfChange First Channel to receive the updates. Meant to dev/test
        # instances
        # Corresponds to the JSON property `early`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::Early]
        attr_accessor :early
      
        # Output only. Timestamp in UTC of when this resource is considered expired.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Optional. Feature configuration to populate the feature flags.
        # Corresponds to the JSON property `featureConfig`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::FeatureConfig]
        attr_accessor :feature_config
      
        # Message storing the instance configuration.
        # Corresponds to the JSON property `instanceConfig`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::InstanceConfig]
        attr_accessor :instance_config
      
        # Immutable. The KMS key name to encrypt the user input (`ContactCenter`).
        # Corresponds to the JSON property `kmsKey`
        # @return [String]
        attr_accessor :kms_key
      
        # Labels as key value pairs
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # name of resource
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Instances in this Channel will receive updates after all instances in `Early`
        # were updated + 2 days.
        # Corresponds to the JSON property `normal`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::Normal]
        attr_accessor :normal
      
        # Defines ingress and egress private traffic settings for CCAIP instances.
        # Corresponds to the JSON property `privateAccess`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::PrivateAccess]
        attr_accessor :private_access
      
        # Output only. TODO(b/283407860) Deprecate this field.
        # Corresponds to the JSON property `privateComponents`
        # @return [Array<String>]
        attr_accessor :private_components
      
        # Output only. Timestamp in UTC of when this resource is going to be hard-
        # deleted.
        # Corresponds to the JSON property `purgeTime`
        # @return [String]
        attr_accessor :purge_time
      
        # Output only. UJET release version, unique for each new release.
        # Corresponds to the JSON property `releaseVersion`
        # @return [String]
        attr_accessor :release_version
      
        # Message storing SAML params to enable Google as IDP.
        # Corresponds to the JSON property `samlParams`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::SamlParams]
        attr_accessor :saml_params
      
        # Output only. The state of this contact center.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. [Output only] Update time stamp
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Message storing the URIs of the ContactCenter.
        # Corresponds to the JSON property `uris`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::UrIs]
        attr_accessor :uris
      
        # Optional. Email address of the first admin user.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @admin_user = args[:admin_user] if args.key?(:admin_user)
          @advanced_reporting_enabled = args[:advanced_reporting_enabled] if args.key?(:advanced_reporting_enabled)
          @ccaip_managed_users = args[:ccaip_managed_users] if args.key?(:ccaip_managed_users)
          @create_time = args[:create_time] if args.key?(:create_time)
          @critical = args[:critical] if args.key?(:critical)
          @customer_domain_prefix = args[:customer_domain_prefix] if args.key?(:customer_domain_prefix)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @early = args[:early] if args.key?(:early)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @feature_config = args[:feature_config] if args.key?(:feature_config)
          @instance_config = args[:instance_config] if args.key?(:instance_config)
          @kms_key = args[:kms_key] if args.key?(:kms_key)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @normal = args[:normal] if args.key?(:normal)
          @private_access = args[:private_access] if args.key?(:private_access)
          @private_components = args[:private_components] if args.key?(:private_components)
          @purge_time = args[:purge_time] if args.key?(:purge_time)
          @release_version = args[:release_version] if args.key?(:release_version)
          @saml_params = args[:saml_params] if args.key?(:saml_params)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uris = args[:uris] if args.key?(:uris)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Represents a quota for contact centers.
      class ContactCenterQuota
        include Google::Apis::Core::Hashable
      
        # Deprecated: Use the Quota fields instead. Reflects the count limit of contact
        # centers on a billing account.
        # Corresponds to the JSON property `contactCenterCountLimit`
        # @return [Fixnum]
        attr_accessor :contact_center_count_limit
      
        # Deprecated: Use the Quota fields instead. Reflects the count sum of contact
        # centers on a billing account.
        # Corresponds to the JSON property `contactCenterCountSum`
        # @return [Fixnum]
        attr_accessor :contact_center_count_sum
      
        # Quota details per contact center instance type.
        # Corresponds to the JSON property `quotas`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Quota>]
        attr_accessor :quotas
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_center_count_limit = args[:contact_center_count_limit] if args.key?(:contact_center_count_limit)
          @contact_center_count_sum = args[:contact_center_count_sum] if args.key?(:contact_center_count_sum)
          @quotas = args[:quotas] if args.key?(:quotas)
        end
      end
      
      # Instances in this Channel will receive updates after all instances in `Normal`
      # were updated. They also will only be updated outside of their peak hours.
      class Critical
        include Google::Apis::Core::Hashable
      
        # Required. Hours during which the instance should not be updated.
        # Corresponds to the JSON property `peakHours`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::WeeklySchedule>]
        attr_accessor :peak_hours
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @peak_hours = args[:peak_hours] if args.key?(:peak_hours)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # List of dates.
      class DateList
        include Google::Apis::Core::Hashable
      
        # Optional. Values in the list.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Date>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Represents civil time (or occasionally physical time). This type can represent
      # a civil time in one of a few possible ways: * When utc_offset is set and
      # time_zone is unset: a civil time on a calendar day with a particular offset
      # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
      # calendar day in a particular time zone. * When neither time_zone nor
      # utc_offset is set: a civil time on a calendar day in local time. The date is
      # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
      # the DateTime is considered not to have a specific year, month, or day
      # respectively. This type may also be used to represent a physical time if all
      # the date and time fields are set and either case of the `time_offset` oneof is
      # set. Consider using `Timestamp` message for physical time instead. If your use
      # case also would like to store the user's timezone, that can be done in another
      # field. This type is more flexible than some applications may want. Make sure
      # to document and validate your application's limitations.
      class DateTime
        include Google::Apis::Core::Hashable
      
        # Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        # or 0 if specifying a datetime without a day.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        # 0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        # like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        # without a month.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        # defaults to 0.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        # defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
        # time-zones).
        # Corresponds to the JSON property `timeZone`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::TimeZone]
        attr_accessor :time_zone
      
        # UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        # example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # Corresponds to the JSON property `utcOffset`
        # @return [String]
        attr_accessor :utc_offset
      
        # Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        # without a year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @month = args[:month] if args.key?(:month)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @utc_offset = args[:utc_offset] if args.key?(:utc_offset)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # LINT.IfChange First Channel to receive the updates. Meant to dev/test
      # instances
      class Early
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Information about a particular employee for planning purposes.
      class EmployeeInfo
        include Google::Apis::Core::Hashable
      
        # Required. Unique ID of this employee.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. A list of unwanted event intervals for this employee. The start time
        # of the interval must be in the planning horizon.
        # Corresponds to the JSON property `unwantedEventIntervals`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::UnwantedEventInterval>]
        attr_accessor :unwanted_event_intervals
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @unwanted_event_intervals = args[:unwanted_event_intervals] if args.key?(:unwanted_event_intervals)
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
      
      # Template specifying rules for generating a single event that occurs during a
      # shift. An event may represent a meeting, break, lunch, etc.
      class EventTemplate
        include Google::Apis::Core::Hashable
      
        # Required. Fixed duration in minutes of this event.
        # Corresponds to the JSON property `durationMinutes`
        # @return [Fixnum]
        attr_accessor :duration_minutes
      
        # Required. Unique ID of this template.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. Maximum number of minutes after the beginning of a shift that this
        # event can start.
        # Corresponds to the JSON property `maximumMinutesAfterShiftStart`
        # @return [Fixnum]
        attr_accessor :maximum_minutes_after_shift_start
      
        # Optional. Minimum number of minutes after the beginning of a shift that this
        # event can start.
        # Corresponds to the JSON property `minimumMinutesAfterShiftStart`
        # @return [Fixnum]
        attr_accessor :minimum_minutes_after_shift_start
      
        # Required. The time increment (in minutes) used to generate the set of possible
        # event start times between `minimum_minutes_after_shift_start` and `
        # maximum_minutes_after_shift_start`. For example, if the minimum minutes after
        # shift start are 30, maximum minutes after shift start are 45, and the start
        # time increment is 5 minutes, the event can take place 30, 35, 40, or 45
        # minutes after the start of the shift.
        # Corresponds to the JSON property `startTimeIncrementMinutes`
        # @return [Fixnum]
        attr_accessor :start_time_increment_minutes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_minutes = args[:duration_minutes] if args.key?(:duration_minutes)
          @id = args[:id] if args.key?(:id)
          @maximum_minutes_after_shift_start = args[:maximum_minutes_after_shift_start] if args.key?(:maximum_minutes_after_shift_start)
          @minimum_minutes_after_shift_start = args[:minimum_minutes_after_shift_start] if args.key?(:minimum_minutes_after_shift_start)
          @start_time_increment_minutes = args[:start_time_increment_minutes] if args.key?(:start_time_increment_minutes)
        end
      end
      
      # 
      class FeatureConfig
        include Google::Apis::Core::Hashable
      
        # Optional. If true - enables the agent desktop feature. Default is false.
        # Corresponds to the JSON property `agentDesktopEnabled`
        # @return [Boolean]
        attr_accessor :agent_desktop_enabled
        alias_method :agent_desktop_enabled?, :agent_desktop_enabled
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @agent_desktop_enabled = args[:agent_desktop_enabled] if args.key?(:agent_desktop_enabled)
        end
      end
      
      # Request with constraints for generating shifts. The shifts generated must
      # adhere to these constraints.
      class GenerateShiftsRequest
        include Google::Apis::Core::Hashable
      
        # Optional. Employee information that should be considered when generating
        # shifts.
        # Corresponds to the JSON property `employeeInfo`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::EmployeeInfo>]
        attr_accessor :employee_info
      
        # Specifies the time interval during which the solver should generate shifts.
        # The start time must be before the end time.
        # Corresponds to the JSON property `planningHorizon`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::PlanningHorizon]
        attr_accessor :planning_horizon
      
        # Required. Set of shift templates specifying rules for generating shifts. A
        # shift template can be used for generating multiple shifts.
        # Corresponds to the JSON property `shiftTemplates`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::ShiftTemplate>]
        attr_accessor :shift_templates
      
        # Specifies additional parameters for the solver generating shifts.
        # Corresponds to the JSON property `solverConfig`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::SolverConfig]
        attr_accessor :solver_config
      
        # List of workforce demands.
        # Corresponds to the JSON property `workforceDemands`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::WorkforceDemandList]
        attr_accessor :workforce_demands
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @employee_info = args[:employee_info] if args.key?(:employee_info)
          @planning_horizon = args[:planning_horizon] if args.key?(:planning_horizon)
          @shift_templates = args[:shift_templates] if args.key?(:shift_templates)
          @solver_config = args[:solver_config] if args.key?(:solver_config)
          @workforce_demands = args[:workforce_demands] if args.key?(:workforce_demands)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class GoogleCloudCommonOperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have google.
        # longrunning.Operation.error value with a google.rpc.Status.code of `1`,
        # corresponding to `Code.CANCELLED`.
        # Corresponds to the JSON property `cancelRequested`
        # @return [Boolean]
        attr_accessor :cancel_requested
        alias_method :cancel_requested?, :cancel_requested
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusDetail`
        # @return [String]
        attr_accessor :status_detail
      
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
          @cancel_requested = args[:cancel_requested] if args.key?(:cancel_requested)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @status_detail = args[:status_detail] if args.key?(:status_detail)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Message storing the instance configuration.
      class InstanceConfig
        include Google::Apis::Core::Hashable
      
        # The instance size of this the instance configuration.
        # Corresponds to the JSON property `instanceSize`
        # @return [String]
        attr_accessor :instance_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @instance_size = args[:instance_size] if args.key?(:instance_size)
        end
      end
      
      # Message for response to listing ContactCenters
      class ListContactCentersResponse
        include Google::Apis::Core::Hashable
      
        # The list of ContactCenter
        # Corresponds to the JSON property `contactCenters`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter>]
        attr_accessor :contact_centers
      
        # A token identifying a page of results the server should return.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_centers = args[:contact_centers] if args.key?(:contact_centers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Location>]
        attr_accessor :locations
      
        # The standard List next-page token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @locations = args[:locations] if args.key?(:locations)
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
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Operation>]
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
      
      # A resource that represents a Google Cloud location.
      class Location
        include Google::Apis::Core::Hashable
      
        # The friendly name for this location, typically a nearby city name. For example,
        # "Tokyo".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Cross-service attributes for the location. For example `"cloud.googleapis.com/
        # region": "us-east1"`
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The canonical id for this location. For example: `"us-east1"`.
        # Corresponds to the JSON property `locationId`
        # @return [String]
        attr_accessor :location_id
      
        # Service-specific metadata. For example the available capacity at the given
        # location.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # Resource name for the location, which may vary between implementations. For
        # example: `"projects/example-project/locations/us-east1"`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @labels = args[:labels] if args.key?(:labels)
          @location_id = args[:location_id] if args.key?(:location_id)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Instances in this Channel will receive updates after all instances in `Early`
      # were updated + 2 days.
      class Normal
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
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
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::Status]
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
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Message describing ContactCenter object
        # Corresponds to the JSON property `contactCenter`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::ContactCenter]
        attr_accessor :contact_center
      
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
          @contact_center = args[:contact_center] if args.key?(:contact_center)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Specifies the time interval during which the solver should generate shifts.
      # The start time must be before the end time.
      class PlanningHorizon
        include Google::Apis::Core::Hashable
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::DateTime]
        attr_accessor :end_time
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::DateTime]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Defines ingress and egress private traffic settings for CCAIP instances.
      class PrivateAccess
        include Google::Apis::Core::Hashable
      
        # List of egress components that should not be accessed via the Internet. For
        # more information see go/ccaip-private-path-v2.
        # Corresponds to the JSON property `egressSettings`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Component>]
        attr_accessor :egress_settings
      
        # List of ingress components that should not be accessed via the Internet. For
        # more information see go/ccaip-private-path-v2.
        # Corresponds to the JSON property `ingressSettings`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::Component>]
        attr_accessor :ingress_settings
      
        # Private service connect settings.
        # Corresponds to the JSON property `pscSetting`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::PscSetting]
        attr_accessor :psc_setting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @egress_settings = args[:egress_settings] if args.key?(:egress_settings)
          @ingress_settings = args[:ingress_settings] if args.key?(:ingress_settings)
          @psc_setting = args[:psc_setting] if args.key?(:psc_setting)
        end
      end
      
      # Private service connect settings.
      class PscSetting
        include Google::Apis::Core::Hashable
      
        # The list of project ids that are allowed to send traffic to the service
        # attachment. This field should be filled only for the ingress components.
        # Corresponds to the JSON property `allowedConsumerProjectIds`
        # @return [Array<String>]
        attr_accessor :allowed_consumer_project_ids
      
        # Output only. The CCAIP tenant project ids.
        # Corresponds to the JSON property `producerProjectIds`
        # @return [Array<String>]
        attr_accessor :producer_project_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowed_consumer_project_ids = args[:allowed_consumer_project_ids] if args.key?(:allowed_consumer_project_ids)
          @producer_project_ids = args[:producer_project_ids] if args.key?(:producer_project_ids)
        end
      end
      
      # Quota details.
      class Quota
        include Google::Apis::Core::Hashable
      
        # Reflects the count limit of contact centers on a billing account.
        # Corresponds to the JSON property `contactCenterCountLimit`
        # @return [Fixnum]
        attr_accessor :contact_center_count_limit
      
        # Reflects the count sum of contact centers on a billing account.
        # Corresponds to the JSON property `contactCenterCountSum`
        # @return [Fixnum]
        attr_accessor :contact_center_count_sum
      
        # Contact center instance type.
        # Corresponds to the JSON property `contactCenterInstanceSize`
        # @return [String]
        attr_accessor :contact_center_instance_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_center_count_limit = args[:contact_center_count_limit] if args.key?(:contact_center_count_limit)
          @contact_center_count_sum = args[:contact_center_count_sum] if args.key?(:contact_center_count_sum)
          @contact_center_instance_size = args[:contact_center_instance_size] if args.key?(:contact_center_instance_size)
        end
      end
      
      # Message storing SAML params to enable Google as IDP.
      class SamlParams
        include Google::Apis::Core::Hashable
      
        # Additional contexts used for authentication.
        # Corresponds to the JSON property `authenticationContexts`
        # @return [Array<String>]
        attr_accessor :authentication_contexts
      
        # SAML certificate
        # Corresponds to the JSON property `certificate`
        # @return [String]
        attr_accessor :certificate
      
        # IdP field that maps to the user’s email address
        # Corresponds to the JSON property `emailMapping`
        # @return [String]
        attr_accessor :email_mapping
      
        # Entity id URL
        # Corresponds to the JSON property `entityId`
        # @return [String]
        attr_accessor :entity_id
      
        # Single sign-on URL
        # Corresponds to the JSON property `ssoUri`
        # @return [String]
        attr_accessor :sso_uri
      
        # Email address of the first admin users.
        # Corresponds to the JSON property `userEmail`
        # @return [String]
        attr_accessor :user_email
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authentication_contexts = args[:authentication_contexts] if args.key?(:authentication_contexts)
          @certificate = args[:certificate] if args.key?(:certificate)
          @email_mapping = args[:email_mapping] if args.key?(:email_mapping)
          @entity_id = args[:entity_id] if args.key?(:entity_id)
          @sso_uri = args[:sso_uri] if args.key?(:sso_uri)
          @user_email = args[:user_email] if args.key?(:user_email)
        end
      end
      
      # Template specifying rules for generating shifts. A shift is a unit of work
      # that specifies a start time, end time, and may contain events (e.g. lunch,
      # breaks etc.). Shifts will be assigned to specific dates in the response.
      class ShiftTemplate
        include Google::Apis::Core::Hashable
      
        # Optional. A list of specific employee IDs that can be assigned to shifts
        # generated by this template. If this field is present, there will be `
        # EmployeeSchedule`s in the response for which the `EmployeeSchedule.employee_id`
        # field is set to one of the IDs in this list. The number of employee schedules
        # with an assigned employee ID will be between `minimum_employee_count` and `
        # maximum_employee_count`. If this field is empty, between `
        # minimum_employee_count` and `maximum_employee_count` employees can be assigned
        # to shifts generated by this template and the employee schedules won't have an
        # assigned employee ID. Currently, only one assignable employee ID is supported.
        # Corresponds to the JSON property `assignableEmployeeIds`
        # @return [Array<String>]
        attr_accessor :assignable_employee_ids
      
        # Optional. Fixed number of days off per week. An employee has a given day off
        # if they are not assigned to a shift that starts on that day. A week is 7 days
        # and begins on Sunday.
        # Corresponds to the JSON property `daysOffCountPerWeek`
        # @return [Fixnum]
        attr_accessor :days_off_count_per_week
      
        # List of dates.
        # Corresponds to the JSON property `daysOffDates`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::DateList]
        attr_accessor :days_off_dates
      
        # Required. Fixed duration of a shift generated by this template.
        # Corresponds to the JSON property `durationMinutes`
        # @return [Fixnum]
        attr_accessor :duration_minutes
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `earliestStartTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay]
        attr_accessor :earliest_start_time
      
        # Optional. Rules for generating events for each shift. Exactly one event will
        # be included in each shift for each `EventTemplate` specified.
        # Corresponds to the JSON property `eventTemplates`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::EventTemplate>]
        attr_accessor :event_templates
      
        # Required. Unique ID of this template.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `latestStartTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay]
        attr_accessor :latest_start_time
      
        # Required. Maximum number of employees that can be assigned to all shifts
        # generated by this template on working days.
        # Corresponds to the JSON property `maximumEmployeeCount`
        # @return [Fixnum]
        attr_accessor :maximum_employee_count
      
        # Optional. Minimum number of employees that can be assigned to all shifts
        # generated by this template on working days.
        # Corresponds to the JSON property `minimumEmployeeCount`
        # @return [Fixnum]
        attr_accessor :minimum_employee_count
      
        # Optional. Minimum minutes between the end of one event and the start of the
        # next.
        # Corresponds to the JSON property `minimumIntereventGapMinutes`
        # @return [Fixnum]
        attr_accessor :minimum_interevent_gap_minutes
      
        # Optional. The time increment (in minutes) used to generate the set of possible
        # start times between `earliest_start_time` and `latest_start_time`. For example,
        # if the earliest start time is 8:00, the latest start time is 8:30, and the
        # start time increment is 10 minutes, then all possible start times for this
        # shift template are: 8:00, 8:10, 8:20, and 8:30.
        # Corresponds to the JSON property `startTimeIncrementMinutes`
        # @return [Fixnum]
        attr_accessor :start_time_increment_minutes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @assignable_employee_ids = args[:assignable_employee_ids] if args.key?(:assignable_employee_ids)
          @days_off_count_per_week = args[:days_off_count_per_week] if args.key?(:days_off_count_per_week)
          @days_off_dates = args[:days_off_dates] if args.key?(:days_off_dates)
          @duration_minutes = args[:duration_minutes] if args.key?(:duration_minutes)
          @earliest_start_time = args[:earliest_start_time] if args.key?(:earliest_start_time)
          @event_templates = args[:event_templates] if args.key?(:event_templates)
          @id = args[:id] if args.key?(:id)
          @latest_start_time = args[:latest_start_time] if args.key?(:latest_start_time)
          @maximum_employee_count = args[:maximum_employee_count] if args.key?(:maximum_employee_count)
          @minimum_employee_count = args[:minimum_employee_count] if args.key?(:minimum_employee_count)
          @minimum_interevent_gap_minutes = args[:minimum_interevent_gap_minutes] if args.key?(:minimum_interevent_gap_minutes)
          @start_time_increment_minutes = args[:start_time_increment_minutes] if args.key?(:start_time_increment_minutes)
        end
      end
      
      # Specifies additional parameters for the solver generating shifts.
      class SolverConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Maximum time the solver should spend on the problem. If not set,
        # defaults to 1 minute. The choice of a time limit should depend on the size of
        # the problem. To give an example, when solving a 7-day instance with 2 `
        # ShiftTemplates`, each with ~20 possible start times and holding 2 events with ~
        # 30 possible start times, and two days off per week, recommended values are: <
        # 10s for fast solutions (and likely suboptimal), (10s, 300s) for good quality
        # solutions, and >300s for an exhaustive search. Larger instances may require
        # longer time limits. This value is not a hard limit and it does not account for
        # the communication overhead. The expected latency to solve the problem may
        # slightly exceed this value.
        # Corresponds to the JSON property `maximumProcessingDuration`
        # @return [String]
        attr_accessor :maximum_processing_duration
      
        # Required. Specifies the type of schedule to generate.
        # Corresponds to the JSON property `scheduleType`
        # @return [String]
        attr_accessor :schedule_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @maximum_processing_duration = args[:maximum_processing_duration] if args.key?(:maximum_processing_duration)
          @schedule_type = args[:schedule_type] if args.key?(:schedule_type)
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
      
      # Represents a time of day. The date and time zone are either not significant or
      # are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of a day in 24 hour format. Must be greater than or equal to 0 and
        # typically must be less than or equal to 23. An API may choose to allow the
        # value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of an hour. Must be greater than or equal to 0 and less than or equal
        # to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and
        # less than or equal to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of a minute. Must be greater than or equal to 0 and typically must be
        # less than or equal to 59. An API may allow the value 60 if it allows leap-
        # seconds.
        # Corresponds to the JSON property `seconds`
        # @return [Fixnum]
        attr_accessor :seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hours = args[:hours] if args.key?(:hours)
          @minutes = args[:minutes] if args.key?(:minutes)
          @nanos = args[:nanos] if args.key?(:nanos)
          @seconds = args[:seconds] if args.key?(:seconds)
        end
      end
      
      # Represents a time zone from the [IANA Time Zone Database](https://www.iana.org/
      # time-zones).
      class TimeZone
        include Google::Apis::Core::Hashable
      
        # IANA Time Zone Database time zone. For example "America/New_York".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Optional. IANA Time Zone Database version number. For example "2019a".
        # Corresponds to the JSON property `version`
        # @return [String]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # Message storing the URIs of the ContactCenter.
      class UrIs
        include Google::Apis::Core::Hashable
      
        # Chat Bot Uri of the ContactCenter
        # Corresponds to the JSON property `chatBotUri`
        # @return [String]
        attr_accessor :chat_bot_uri
      
        # Media Uri of the ContactCenter.
        # Corresponds to the JSON property `mediaUri`
        # @return [String]
        attr_accessor :media_uri
      
        # Root Uri of the ContactCenter.
        # Corresponds to the JSON property `rootUri`
        # @return [String]
        attr_accessor :root_uri
      
        # Virtual Agent Streaming Service Uri of the ContactCenter.
        # Corresponds to the JSON property `virtualAgentStreamingServiceUri`
        # @return [String]
        attr_accessor :virtual_agent_streaming_service_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @chat_bot_uri = args[:chat_bot_uri] if args.key?(:chat_bot_uri)
          @media_uri = args[:media_uri] if args.key?(:media_uri)
          @root_uri = args[:root_uri] if args.key?(:root_uri)
          @virtual_agent_streaming_service_uri = args[:virtual_agent_streaming_service_uri] if args.key?(:virtual_agent_streaming_service_uri)
        end
      end
      
      # Specifies a time interval during which the overlap with events (generated from
      # event templates) should be minimal.
      class UnwantedEventInterval
        include Google::Apis::Core::Hashable
      
        # Required. Duration of the event.
        # Corresponds to the JSON property `durationMinutes`
        # @return [Fixnum]
        attr_accessor :duration_minutes
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::DateTime]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @duration_minutes = args[:duration_minutes] if args.key?(:duration_minutes)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Message representing a weekly schedule.
      class WeeklySchedule
        include Google::Apis::Core::Hashable
      
        # Required. Days of the week this schedule applies to.
        # Corresponds to the JSON property `days`
        # @return [Array<String>]
        attr_accessor :days
      
        # Optional. Duration of the schedule.
        # Corresponds to the JSON property `duration`
        # @return [String]
        attr_accessor :duration
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay]
        attr_accessor :end_time
      
        # Represents a time of day. The date and time zone are either not significant or
        # are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::TimeOfDay]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @days = args[:days] if args.key?(:days)
          @duration = args[:duration] if args.key?(:duration)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # Specifies the number of employees required to cover the demand in the given
      # time interval. The length of the interval must be strictly positive.
      class WorkforceDemand
        include Google::Apis::Core::Hashable
      
        # Optional. Number of employees needed to cover the demand for this interval.
        # Corresponds to the JSON property `employeeCount`
        # @return [Fixnum]
        attr_accessor :employee_count
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `endTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::DateTime]
        attr_accessor :end_time
      
        # Represents civil time (or occasionally physical time). This type can represent
        # a civil time in one of a few possible ways: * When utc_offset is set and
        # time_zone is unset: a civil time on a calendar day with a particular offset
        # from UTC. * When time_zone is set and utc_offset is unset: a civil time on a
        # calendar day in a particular time zone. * When neither time_zone nor
        # utc_offset is set: a civil time on a calendar day in local time. The date is
        # relative to the Proleptic Gregorian Calendar. If year, month, or day are 0,
        # the DateTime is considered not to have a specific year, month, or day
        # respectively. This type may also be used to represent a physical time if all
        # the date and time fields are set and either case of the `time_offset` oneof is
        # set. Consider using `Timestamp` message for physical time instead. If your use
        # case also would like to store the user's timezone, that can be done in another
        # field. This type is more flexible than some applications may want. Make sure
        # to document and validate your application's limitations.
        # Corresponds to the JSON property `startTime`
        # @return [Google::Apis::ContactcenteraiplatformV1alpha1::DateTime]
        attr_accessor :start_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @employee_count = args[:employee_count] if args.key?(:employee_count)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
        end
      end
      
      # List of workforce demands.
      class WorkforceDemandList
        include Google::Apis::Core::Hashable
      
        # Optional. Values in the list.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::ContactcenteraiplatformV1alpha1::WorkforceDemand>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
    end
  end
end
