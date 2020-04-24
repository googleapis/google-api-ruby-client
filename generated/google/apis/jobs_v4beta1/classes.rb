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
    module JobsV4beta1
      
      # Resource that represents an individual or collaborative activity participated
      # in by a candidate, for example, an open-source project, a class assignment,
      # and so on.
      class Activity
        include Google::Apis::Core::Hashable
      
        # Output only. Activity description snippet shows how the
        # description is related to a search query. It's empty if the
        # description isn't related to the search query.
        # Corresponds to the JSON property `activityDescriptionSnippet`
        # @return [String]
        attr_accessor :activity_description_snippet
      
        # Output only. Activity name snippet shows how the display_name is related to a
        # search
        # query. It's empty if the display_name isn't related to the search
        # query.
        # Corresponds to the JSON property `activityNameSnippet`
        # @return [String]
        attr_accessor :activity_name_snippet
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `createDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :create_date
      
        # Activity description.
        # Number of characters allowed is 100,000.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Activity display name.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A list of skills used in this activity.
        # The limitation for max number of skills used is 50.
        # Corresponds to the JSON property `skillsUsed`
        # @return [Array<Google::Apis::JobsV4beta1::Skill>]
        attr_accessor :skills_used
      
        # Output only. Skill used snippet shows how the corresponding
        # skills_used are related to a search query. It's empty if the
        # corresponding skills_used are not related to the search query.
        # Corresponds to the JSON property `skillsUsedSnippet`
        # @return [Array<String>]
        attr_accessor :skills_used_snippet
      
        # A list of team members involved in this activity.
        # Number of characters allowed is 100.
        # The limitation for max number of team members is 50.
        # Corresponds to the JSON property `teamMembers`
        # @return [Array<String>]
        attr_accessor :team_members
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `updateDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :update_date
      
        # Activity URI.
        # Number of characters allowed is 4,000.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activity_description_snippet = args[:activity_description_snippet] if args.key?(:activity_description_snippet)
          @activity_name_snippet = args[:activity_name_snippet] if args.key?(:activity_name_snippet)
          @create_date = args[:create_date] if args.key?(:create_date)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @skills_used = args[:skills_used] if args.key?(:skills_used)
          @skills_used_snippet = args[:skills_used_snippet] if args.key?(:skills_used_snippet)
          @team_members = args[:team_members] if args.key?(:team_members)
          @update_date = args[:update_date] if args.key?(:update_date)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Resource that represents contact information other than phone, email,
      # URI and addresses.
      class AdditionalContactInfo
        include Google::Apis::Core::Hashable
      
        # The contact id.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `contactId`
        # @return [String]
        attr_accessor :contact_id
      
        # The name of the contact method.
        # For example, "hangout", "skype".
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The usage of this contact method. For example, SCHOOL, WORK, PERSONAL.
        # Corresponds to the JSON property `usage`
        # @return [String]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contact_id = args[:contact_id] if args.key?(:contact_id)
          @name = args[:name] if args.key?(:name)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # Resource that represents a address.
      class Address
        include Google::Apis::Core::Hashable
      
        # Indicates if it's the person's current address.
        # Corresponds to the JSON property `current`
        # @return [Boolean]
        attr_accessor :current
        alias_method :current?, :current
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar.
        # It is not intended to model geographical locations (roads, towns,
        # mountains).
        # In typical usage an address would be created via user input or from importing
        # existing data, depending on the type of process.
        # Advice on address input / editing:
        # - Use an i18n-ready address widget such as
        # https://github.com/google/libaddressinput)
        # - Users should not be presented with UI elements for input or editing of
        # fields outside countries where that field is used.
        # For more guidance on how to use this schema, please see:
        # https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `structuredAddress`
        # @return [Google::Apis::JobsV4beta1::PostalAddress]
        attr_accessor :structured_address
      
        # Unstructured address.
        # For example, "1600 Amphitheatre Pkwy, Mountain View, CA 94043",
        # "Sunnyvale, California".
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `unstructuredAddress`
        # @return [String]
        attr_accessor :unstructured_address
      
        # The usage of the address. For example, SCHOOL, WORK, PERSONAL.
        # Corresponds to the JSON property `usage`
        # @return [String]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @current = args[:current] if args.key?(:current)
          @structured_address = args[:structured_address] if args.key?(:structured_address)
          @unstructured_address = args[:unstructured_address] if args.key?(:unstructured_address)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # Resource that represents a job application record of a candidate.
      class Application
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `applicationDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :application_date
      
        # Resource name of the company which the candidate applied for.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`".
        # For example, "projects/foo/tenants/bar/companies/baz".
        # Corresponds to the JSON property `company`
        # @return [String]
        attr_accessor :company
      
        # Required. Reflects the time that the application was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. Client side application identifier, used to uniquely identify the
        # application.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # All interviews (screen, onsite, and so on) conducted as part of this
        # application (includes details such as user conducting the interview,
        # timestamp, feedback, and so on).
        # Corresponds to the JSON property `interviews`
        # @return [Array<Google::Apis::JobsV4beta1::Interview>]
        attr_accessor :interviews
      
        # Output only. Indicates whether this job application is a match to
        # application related filters. This value is only applicable in profile
        # search response.
        # Corresponds to the JSON property `isMatch`
        # @return [Boolean]
        attr_accessor :is_match
        alias_method :is_match?, :is_match
      
        # Required. Resource name of the job which the candidate applied for.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For example,
        # "projects/foo/tenants/bar/jobs/baz".
        # Corresponds to the JSON property `job`
        # @return [String]
        attr_accessor :job
      
        # Output only. Job title snippet shows how the job title is related to a
        # search query. It's empty if the job title isn't related to the search
        # query.
        # Corresponds to the JSON property `jobTitleSnippet`
        # @return [String]
        attr_accessor :job_title_snippet
      
        # Required during application update.
        # Resource name assigned to an application by the API.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`/applications/`
        # application_id`".
        # For example, "projects/foo/tenants/bar/profiles/baz/applications/qux".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Outcome positiveness shows how positive the outcome is.
        # Corresponds to the JSON property `outcome`
        # @return [String]
        attr_accessor :outcome
      
        # Free text reason behind the recruitement outcome (for example, reason for
        # withdraw / reject, reason for an unsuccessful finish, and so on).
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `outcomeNotes`
        # @return [String]
        attr_accessor :outcome_notes
      
        # Output only. Resource name of the candidate of this application.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`".
        # For example, "projects/foo/tenants/bar/profiles/baz".
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # If the candidate is referred by a employee.
        # Corresponds to the JSON property `referral`
        # @return [Boolean]
        attr_accessor :referral
        alias_method :referral?, :referral
      
        # Required. What is the most recent stage of the application (that is, new,
        # screen,
        # send cv, hired, finished work)?  This field is intentionally not
        # comprehensive of every possible status, but instead, represents statuses
        # that would be used to indicate to the ML models good / bad matches.
        # Corresponds to the JSON property `stage`
        # @return [String]
        attr_accessor :stage
      
        # The application state.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The last update timestamp.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_date = args[:application_date] if args.key?(:application_date)
          @company = args[:company] if args.key?(:company)
          @create_time = args[:create_time] if args.key?(:create_time)
          @external_id = args[:external_id] if args.key?(:external_id)
          @interviews = args[:interviews] if args.key?(:interviews)
          @is_match = args[:is_match] if args.key?(:is_match)
          @job = args[:job] if args.key?(:job)
          @job_title_snippet = args[:job_title_snippet] if args.key?(:job_title_snippet)
          @name = args[:name] if args.key?(:name)
          @outcome = args[:outcome] if args.key?(:outcome)
          @outcome_notes = args[:outcome_notes] if args.key?(:outcome_notes)
          @profile = args[:profile] if args.key?(:profile)
          @referral = args[:referral] if args.key?(:referral)
          @stage = args[:stage] if args.key?(:stage)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Application Date Range Filter.
      # The API matches profiles with Application.application_date between
      # start date and end date (both boundaries are inclusive). The filter is
      # ignored if both start_date and end_date are missing.
      class ApplicationDateFilter
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # Application related details of a job posting.
      class ApplicationInfo
        include Google::Apis::Core::Hashable
      
        # Use this field to specify email address(es) to which resumes or
        # applications can be sent.
        # The maximum number of allowed characters for each entry is 255.
        # Corresponds to the JSON property `emails`
        # @return [Array<String>]
        attr_accessor :emails
      
        # Use this field to provide instructions, such as "Mail your application
        # to ...", that a candidate can follow to apply for the job.
        # This field accepts and sanitizes HTML input, and also accepts
        # bold, italic, ordered list, and unordered list markup tags.
        # The maximum number of allowed characters is 3,000.
        # Corresponds to the JSON property `instruction`
        # @return [String]
        attr_accessor :instruction
      
        # Use this URI field to direct an applicant to a website, for example to
        # link to an online application form.
        # The maximum number of allowed characters for each entry is 2,000.
        # Corresponds to the JSON property `uris`
        # @return [Array<String>]
        attr_accessor :uris
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @emails = args[:emails] if args.key?(:emails)
          @instruction = args[:instruction] if args.key?(:instruction)
          @uris = args[:uris] if args.key?(:uris)
        end
      end
      
      # Filter on the job information of Application.
      class ApplicationJobFilter
        include Google::Apis::Core::Hashable
      
        # The job requisition id in the application. The API does an exact match on
        # the Job.requisition_id of Application.job in profiles.
        # Corresponds to the JSON property `jobRequisitionId`
        # @return [String]
        attr_accessor :job_requisition_id
      
        # The job title in the application. The API does an exact match on the
        # Job.title of Application.job in profiles.
        # Corresponds to the JSON property `jobTitle`
        # @return [String]
        attr_accessor :job_title
      
        # If true, the API excludes all profiles with any Application.job
        # matching the filters.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_requisition_id = args[:job_requisition_id] if args.key?(:job_requisition_id)
          @job_title = args[:job_title] if args.key?(:job_title)
          @negated = args[:negated] if args.key?(:negated)
        end
      end
      
      # Outcome Notes Filter.
      class ApplicationOutcomeNotesFilter
        include Google::Apis::Core::Hashable
      
        # If true, The API excludes all candidates with any
        # Application.outcome_notes matching the outcome reason specified in
        # the filter.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        # Required. User entered or selected outcome reason. The API does an exact match
        # on the
        # Application.outcome_notes in profiles.
        # Corresponds to the JSON property `outcomeNotes`
        # @return [String]
        attr_accessor :outcome_notes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negated = args[:negated] if args.key?(:negated)
          @outcome_notes = args[:outcome_notes] if args.key?(:outcome_notes)
        end
      end
      
      # Filter on availability signals.
      class AvailabilityFilter
        include Google::Apis::Core::Hashable
      
        # Message representing a period of time between two timestamps.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::JobsV4beta1::TimestampRange]
        attr_accessor :range
      
        # If multiple AvailabilityFilter are provided, the default
        # behavior is to OR all filters, but if this field is set to true, this
        # particular AvailabilityFilter will be AND'ed against other
        # AvailabilityFilter.
        # Corresponds to the JSON property `required`
        # @return [Boolean]
        attr_accessor :required
        alias_method :required?, :required
      
        # Required. Type of signal to apply filter on.
        # Corresponds to the JSON property `signalType`
        # @return [String]
        attr_accessor :signal_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @range = args[:range] if args.key?(:range)
          @required = args[:required] if args.key?(:required)
          @signal_type = args[:signal_type] if args.key?(:signal_type)
        end
      end
      
      # Candidate availability signal.
      class AvailabilitySignal
        include Google::Apis::Core::Hashable
      
        # Indicates if the last_update_time is within
        # AvailabilityFilter.range.
        # Returned only in a search response when there is an AvailabilityFilter
        # in ProfileQuery.availability_filters where
        # signal_type matches type.
        # Corresponds to the JSON property `filterSatisfied`
        # @return [Boolean]
        attr_accessor :filter_satisfied
        alias_method :filter_satisfied?, :filter_satisfied
      
        # Timestamp of when the given availability activity last happened.
        # Corresponds to the JSON property `lastUpdateTime`
        # @return [String]
        attr_accessor :last_update_time
      
        # Type of signal.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter_satisfied = args[:filter_satisfied] if args.key?(:filter_satisfied)
          @last_update_time = args[:last_update_time] if args.key?(:last_update_time)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Request to create a batch of jobs.
      class BatchCreateJobsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The jobs to be created.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::JobsV4beta1::Job>]
        attr_accessor :jobs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
        end
      end
      
      # Batch delete jobs request.
      class BatchDeleteJobsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The filter string specifies the jobs to be deleted.
        # Supported operator: =, AND
        # The fields eligible for filtering are:
        # * `companyName` (Required)
        # * `requisitionId` (Required)
        # Sample Query: companyName = "projects/foo/companies/bar" AND
        # requisitionId = "req-1"
        # Corresponds to the JSON property `filter`
        # @return [String]
        attr_accessor :filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filter = args[:filter] if args.key?(:filter)
        end
      end
      
      # Metadata used for long running operations returned by CTS batch APIs.
      # It's used to replace google.longrunning.Operation.metadata.
      class BatchOperationMetadata
        include Google::Apis::Core::Hashable
      
        # The time when the batch operation is created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time when the batch operation is finished and
        # google.longrunning.Operation.done is set to `true`.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Count of failed item(s) inside an operation.
        # Corresponds to the JSON property `failureCount`
        # @return [Fixnum]
        attr_accessor :failure_count
      
        # The state of a long running operation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # More detailed information about operation state.
        # Corresponds to the JSON property `stateDescription`
        # @return [String]
        attr_accessor :state_description
      
        # Count of successful item(s) inside an operation.
        # Corresponds to the JSON property `successCount`
        # @return [Fixnum]
        attr_accessor :success_count
      
        # Count of total item(s) inside an operation.
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        # The time when the batch operation status is updated. The metadata and the
        # update_time is refreshed every minute otherwise cached data is
        # returned.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @failure_count = args[:failure_count] if args.key?(:failure_count)
          @state = args[:state] if args.key?(:state)
          @state_description = args[:state_description] if args.key?(:state_description)
          @success_count = args[:success_count] if args.key?(:success_count)
          @total_count = args[:total_count] if args.key?(:total_count)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Request to update a batch of jobs.
      class BatchUpdateJobsRequest
        include Google::Apis::Core::Hashable
      
        # Required. The jobs to be updated.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::JobsV4beta1::Job>]
        attr_accessor :jobs
      
        # Strongly recommended for the best service experience. Be aware that it will
        # also increase latency when checking the status of a batch operation.
        # If update_mask is provided, only the specified fields in
        # Job are updated. Otherwise all the fields are updated.
        # A field mask to restrict the fields that are updated. Only
        # top level fields of Job are supported.
        # If update_mask is provided, The Job inside
        # JobResult
        # will only contains fields that is updated, plus the Id of the Job.
        # Otherwise,  Job will include all fields, which can yield a very
        # large response.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Deprecated. Use AvailabilityFilter instead.
      # Filter on availability signals.
      class CandidateAvailabilityFilter
        include Google::Apis::Core::Hashable
      
        # It is false by default. If true, API excludes all the potential available
        # profiles.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negated = args[:negated] if args.key?(:negated)
        end
      end
      
      # Resource that represents a license or certification.
      class Certification
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `acquireDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :acquire_date
      
        # Authority of license, such as government.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `authority`
        # @return [String]
        attr_accessor :authority
      
        # Description of license or certification.
        # Number of characters allowed is 100,000.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Name of license or certification.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `expireDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :expire_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @acquire_date = args[:acquire_date] if args.key?(:acquire_date)
          @authority = args[:authority] if args.key?(:authority)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @expire_date = args[:expire_date] if args.key?(:expire_date)
        end
      end
      
      # An event issued when an end user interacts with the application that
      # implements Cloud Talent Solution. Providing this information improves the
      # quality of results for the API clients, enabling the
      # service to perform optimally. The number of events sent must be consistent
      # with other calls, such as job searches, issued to the service by the client.
      class ClientEvent
        include Google::Apis::Core::Hashable
      
        # Required. The timestamp of the event.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Required. A unique identifier, generated by the client application.
        # Corresponds to the JSON property `eventId`
        # @return [String]
        attr_accessor :event_id
      
        # Notes about the event provided by recruiters or other users, for example,
        # feedback on why a profile was bookmarked.
        # Corresponds to the JSON property `eventNotes`
        # @return [String]
        attr_accessor :event_notes
      
        # An event issued when a job seeker interacts with the application that
        # implements Cloud Talent Solution.
        # Corresponds to the JSON property `jobEvent`
        # @return [Google::Apis::JobsV4beta1::JobEvent]
        attr_accessor :job_event
      
        # An event issued when a profile searcher interacts with the application
        # that implements Cloud Talent Solution.
        # Corresponds to the JSON property `profileEvent`
        # @return [Google::Apis::JobsV4beta1::ProfileEvent]
        attr_accessor :profile_event
      
        # Strongly recommended for the best service experience.
        # A unique ID generated in the API responses. It can be found in
        # ResponseMetadata.request_id.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @event_id = args[:event_id] if args.key?(:event_id)
          @event_notes = args[:event_notes] if args.key?(:event_notes)
          @job_event = args[:job_event] if args.key?(:job_event)
          @profile_event = args[:profile_event] if args.key?(:profile_event)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Parameters needed for commute search.
      class CommuteFilter
        include Google::Apis::Core::Hashable
      
        # If `true`, jobs without street level addresses may also be returned.
        # For city level addresses, the city center is used. For state and coarser
        # level addresses, text matching is used.
        # If this field is set to `false` or isn't specified, only jobs that include
        # street level addresses will be returned by commute search.
        # Corresponds to the JSON property `allowImpreciseAddresses`
        # @return [Boolean]
        attr_accessor :allow_imprecise_addresses
        alias_method :allow_imprecise_addresses?, :allow_imprecise_addresses
      
        # Required. The method of transportation to calculate the commute time for.
        # Corresponds to the JSON property `commuteMethod`
        # @return [String]
        attr_accessor :commute_method
      
        # Represents a time of day. The date and time zone are either not significant
        # or are specified elsewhere. An API may choose to allow leap seconds. Related
        # types are google.type.Date and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `departureTime`
        # @return [Google::Apis::JobsV4beta1::TimeOfDay]
        attr_accessor :departure_time
      
        # Specifies the traffic density to use when calculating commute time.
        # Corresponds to the JSON property `roadTraffic`
        # @return [String]
        attr_accessor :road_traffic
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Corresponds to the JSON property `startCoordinates`
        # @return [Google::Apis::JobsV4beta1::LatLng]
        attr_accessor :start_coordinates
      
        # Required. The maximum travel time in seconds. The maximum allowed value is `
        # 3600s`
        # (one hour). Format is `123s`.
        # Corresponds to the JSON property `travelDuration`
        # @return [String]
        attr_accessor :travel_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_imprecise_addresses = args[:allow_imprecise_addresses] if args.key?(:allow_imprecise_addresses)
          @commute_method = args[:commute_method] if args.key?(:commute_method)
          @departure_time = args[:departure_time] if args.key?(:departure_time)
          @road_traffic = args[:road_traffic] if args.key?(:road_traffic)
          @start_coordinates = args[:start_coordinates] if args.key?(:start_coordinates)
          @travel_duration = args[:travel_duration] if args.key?(:travel_duration)
        end
      end
      
      # Commute details related to this job.
      class CommuteInfo
        include Google::Apis::Core::Hashable
      
        # A resource that represents a location with full geographic information.
        # Corresponds to the JSON property `jobLocation`
        # @return [Google::Apis::JobsV4beta1::Location]
        attr_accessor :job_location
      
        # The number of seconds required to travel to the job location from the
        # query location. A duration of 0 seconds indicates that the job isn't
        # reachable within the requested duration, but was returned as part of an
        # expanded query.
        # Corresponds to the JSON property `travelDuration`
        # @return [String]
        attr_accessor :travel_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_location = args[:job_location] if args.key?(:job_location)
          @travel_duration = args[:travel_duration] if args.key?(:travel_duration)
        end
      end
      
      # A Company resource represents a company in the service. A company is the
      # entity that owns job postings, that is, the hiring entity responsible for
      # employing applicants for the job position.
      class Company
        include Google::Apis::Core::Hashable
      
        # The URI to employer's career site or careers page on the employer's web
        # site, for example, "https://careers.google.com".
        # Corresponds to the JSON property `careerSiteUri`
        # @return [String]
        attr_accessor :career_site_uri
      
        # Derived details about the company.
        # Corresponds to the JSON property `derivedInfo`
        # @return [Google::Apis::JobsV4beta1::CompanyDerivedInfo]
        attr_accessor :derived_info
      
        # Required. The display name of the company, for example, "Google LLC".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Equal Employment Opportunity legal disclaimer text to be
        # associated with all jobs, and typically to be displayed in all
        # roles.
        # The maximum number of allowed characters is 500.
        # Corresponds to the JSON property `eeoText`
        # @return [String]
        attr_accessor :eeo_text
      
        # Required. Client side company identifier, used to uniquely identify the
        # company.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # The street address of the company's main headquarters, which may be
        # different from the job location. The service attempts
        # to geolocate the provided address, and populates a more specific
        # location wherever possible in DerivedInfo.headquarters_location.
        # Corresponds to the JSON property `headquartersAddress`
        # @return [String]
        attr_accessor :headquarters_address
      
        # Set to true if it is the hiring agency that post jobs for other
        # employers.
        # Defaults to false if not provided.
        # Corresponds to the JSON property `hiringAgency`
        # @return [Boolean]
        attr_accessor :hiring_agency
        alias_method :hiring_agency?, :hiring_agency
      
        # A URI that hosts the employer's company logo.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # A list of keys of filterable Job.custom_attributes, whose
        # corresponding `string_values` are used in keyword searches. Jobs with
        # `string_values` under these specified field keys are returned if any
        # of the values match the search keyword. Custom field values with
        # parenthesis, brackets and special symbols are not searchable as-is,
        # and those keyword queries must be surrounded by quotes.
        # Corresponds to the JSON property `keywordSearchableJobCustomAttributes`
        # @return [Array<String>]
        attr_accessor :keyword_searchable_job_custom_attributes
      
        # Required during company update.
        # The resource name for a company. This is generated by the service when a
        # company is created.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        # example, "projects/foo/tenants/bar/companies/baz".
        # If tenant id is unspecified, the default tenant is used. For
        # example, "projects/foo/companies/bar".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The employer's company size.
        # Corresponds to the JSON property `size`
        # @return [String]
        attr_accessor :size
      
        # Output only. Indicates whether a company is flagged to be suspended from
        # public availability by the service when job content appears suspicious,
        # abusive, or spammy.
        # Corresponds to the JSON property `suspended`
        # @return [Boolean]
        attr_accessor :suspended
        alias_method :suspended?, :suspended
      
        # The URI representing the company's primary web site or home page,
        # for example, "https://www.google.com".
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `websiteUri`
        # @return [String]
        attr_accessor :website_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @career_site_uri = args[:career_site_uri] if args.key?(:career_site_uri)
          @derived_info = args[:derived_info] if args.key?(:derived_info)
          @display_name = args[:display_name] if args.key?(:display_name)
          @eeo_text = args[:eeo_text] if args.key?(:eeo_text)
          @external_id = args[:external_id] if args.key?(:external_id)
          @headquarters_address = args[:headquarters_address] if args.key?(:headquarters_address)
          @hiring_agency = args[:hiring_agency] if args.key?(:hiring_agency)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @keyword_searchable_job_custom_attributes = args[:keyword_searchable_job_custom_attributes] if args.key?(:keyword_searchable_job_custom_attributes)
          @name = args[:name] if args.key?(:name)
          @size = args[:size] if args.key?(:size)
          @suspended = args[:suspended] if args.key?(:suspended)
          @website_uri = args[:website_uri] if args.key?(:website_uri)
        end
      end
      
      # Derived details about the company.
      class CompanyDerivedInfo
        include Google::Apis::Core::Hashable
      
        # A resource that represents a location with full geographic information.
        # Corresponds to the JSON property `headquartersLocation`
        # @return [Google::Apis::JobsV4beta1::Location]
        attr_accessor :headquarters_location
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @headquarters_location = args[:headquarters_location] if args.key?(:headquarters_location)
        end
      end
      
      # A compensation entry that represents one component of compensation, such
      # as base pay, bonus, or other compensation type.
      # Annualization: One compensation entry can be annualized if
      # - it contains valid amount or range.
      # - and its expected_units_per_year is set or can be derived.
      # Its annualized range is determined as (amount or range) times
      # expected_units_per_year.
      class CompensationEntry
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `amount`
        # @return [Google::Apis::JobsV4beta1::Money]
        attr_accessor :amount
      
        # Compensation description.  For example, could
        # indicate equity terms or provide additional context to an estimated
        # bonus.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Expected number of units paid each year. If not specified, when
        # Job.employment_types is FULLTIME, a default value is inferred
        # based on unit. Default values:
        # - HOURLY: 2080
        # - DAILY: 260
        # - WEEKLY: 52
        # - MONTHLY: 12
        # - ANNUAL: 1
        # Corresponds to the JSON property `expectedUnitsPerYear`
        # @return [Float]
        attr_accessor :expected_units_per_year
      
        # Compensation range.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::JobsV4beta1::CompensationRange]
        attr_accessor :range
      
        # Compensation type.
        # Default is CompensationType.COMPENSATION_TYPE_UNSPECIFIED.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Frequency of the specified amount.
        # Default is CompensationUnit.COMPENSATION_UNIT_UNSPECIFIED.
        # Corresponds to the JSON property `unit`
        # @return [String]
        attr_accessor :unit
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amount = args[:amount] if args.key?(:amount)
          @description = args[:description] if args.key?(:description)
          @expected_units_per_year = args[:expected_units_per_year] if args.key?(:expected_units_per_year)
          @range = args[:range] if args.key?(:range)
          @type = args[:type] if args.key?(:type)
          @unit = args[:unit] if args.key?(:unit)
        end
      end
      
      # Filter on job compensation type and amount.
      class CompensationFilter
        include Google::Apis::Core::Hashable
      
        # If set to true, jobs with unspecified compensation range fields are
        # included.
        # Corresponds to the JSON property `includeJobsWithUnspecifiedCompensationRange`
        # @return [Boolean]
        attr_accessor :include_jobs_with_unspecified_compensation_range
        alias_method :include_jobs_with_unspecified_compensation_range?, :include_jobs_with_unspecified_compensation_range
      
        # Compensation range.
        # Corresponds to the JSON property `range`
        # @return [Google::Apis::JobsV4beta1::CompensationRange]
        attr_accessor :range
      
        # Required. Type of filter.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Required. Specify desired `base compensation entry's`
        # CompensationInfo.CompensationUnit.
        # Corresponds to the JSON property `units`
        # @return [Array<String>]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @include_jobs_with_unspecified_compensation_range = args[:include_jobs_with_unspecified_compensation_range] if args.key?(:include_jobs_with_unspecified_compensation_range)
          @range = args[:range] if args.key?(:range)
          @type = args[:type] if args.key?(:type)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Job compensation details.
      class CompensationInfo
        include Google::Apis::Core::Hashable
      
        # Compensation range.
        # Corresponds to the JSON property `annualizedBaseCompensationRange`
        # @return [Google::Apis::JobsV4beta1::CompensationRange]
        attr_accessor :annualized_base_compensation_range
      
        # Compensation range.
        # Corresponds to the JSON property `annualizedTotalCompensationRange`
        # @return [Google::Apis::JobsV4beta1::CompensationRange]
        attr_accessor :annualized_total_compensation_range
      
        # Job compensation information.
        # At most one entry can be of type
        # CompensationInfo.CompensationType.BASE, which is
        # referred as **base compensation entry** for the job.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::JobsV4beta1::CompensationEntry>]
        attr_accessor :entries
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @annualized_base_compensation_range = args[:annualized_base_compensation_range] if args.key?(:annualized_base_compensation_range)
          @annualized_total_compensation_range = args[:annualized_total_compensation_range] if args.key?(:annualized_total_compensation_range)
          @entries = args[:entries] if args.key?(:entries)
        end
      end
      
      # Compensation range.
      class CompensationRange
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `maxCompensation`
        # @return [Google::Apis::JobsV4beta1::Money]
        attr_accessor :max_compensation
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `minCompensation`
        # @return [Google::Apis::JobsV4beta1::Money]
        attr_accessor :min_compensation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_compensation = args[:max_compensation] if args.key?(:max_compensation)
          @min_compensation = args[:min_compensation] if args.key?(:min_compensation)
        end
      end
      
      # Response of auto-complete query.
      class CompleteQueryResponse
        include Google::Apis::Core::Hashable
      
        # Results of the matching job/company candidates.
        # Corresponds to the JSON property `completionResults`
        # @return [Array<Google::Apis::JobsV4beta1::CompletionResult>]
        attr_accessor :completion_results
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::JobsV4beta1::ResponseMetadata]
        attr_accessor :metadata
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_results = args[:completion_results] if args.key?(:completion_results)
          @metadata = args[:metadata] if args.key?(:metadata)
        end
      end
      
      # Resource that represents completion results.
      class CompletionResult
        include Google::Apis::Core::Hashable
      
        # The URI of the company image for
        # COMPANY_NAME.
        # Corresponds to the JSON property `imageUri`
        # @return [String]
        attr_accessor :image_uri
      
        # The suggestion for the query.
        # Corresponds to the JSON property `suggestion`
        # @return [String]
        attr_accessor :suggestion
      
        # The completion topic.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @image_uri = args[:image_uri] if args.key?(:image_uri)
          @suggestion = args[:suggestion] if args.key?(:suggestion)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The Request of the CreateApplication method.
      class CreateApplicationRequest
        include Google::Apis::Core::Hashable
      
        # Resource that represents a job application record of a candidate.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::JobsV4beta1::Application]
        attr_accessor :application
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
        end
      end
      
      # The report event request.
      class CreateClientEventRequest
        include Google::Apis::Core::Hashable
      
        # An event issued when an end user interacts with the application that
        # implements Cloud Talent Solution. Providing this information improves the
        # quality of results for the API clients, enabling the
        # service to perform optimally. The number of events sent must be consistent
        # with other calls, such as job searches, issued to the service by the client.
        # Corresponds to the JSON property `clientEvent`
        # @return [Google::Apis::JobsV4beta1::ClientEvent]
        attr_accessor :client_event
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @client_event = args[:client_event] if args.key?(:client_event)
        end
      end
      
      # The Request of the CreateCompany method.
      class CreateCompanyRequest
        include Google::Apis::Core::Hashable
      
        # A Company resource represents a company in the service. A company is the
        # entity that owns job postings, that is, the hiring entity responsible for
        # employing applicants for the job position.
        # Corresponds to the JSON property `company`
        # @return [Google::Apis::JobsV4beta1::Company]
        attr_accessor :company
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @company = args[:company] if args.key?(:company)
        end
      end
      
      # Create job request.
      class CreateJobRequest
        include Google::Apis::Core::Hashable
      
        # A Job resource represents a job posting (also referred to as a "job listing"
        # or "job requisition"). A job belongs to a Company, which is the hiring
        # entity responsible for the job.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::JobsV4beta1::Job]
        attr_accessor :job
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
        end
      end
      
      # Create profile request.
      class CreateProfileRequest
        include Google::Apis::Core::Hashable
      
        # A resource that represents the profile for a job candidate (also referred to
        # as a "single-source profile").
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::JobsV4beta1::Profile]
        attr_accessor :profile
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile = args[:profile] if args.key?(:profile)
        end
      end
      
      # The Request of the CreateTenant method.
      class CreateTenantRequest
        include Google::Apis::Core::Hashable
      
        # A Tenant resource represents a tenant in the service. A tenant is a group or
        # entity that shares common access with specific privileges for resources like
        # profiles. Customer may create multiple tenants to provide data isolation for
        # different groups.
        # Corresponds to the JSON property `tenant`
        # @return [Google::Apis::JobsV4beta1::Tenant]
        attr_accessor :tenant
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tenant = args[:tenant] if args.key?(:tenant)
        end
      end
      
      # Custom attribute values that are either filterable or non-filterable.
      class CustomAttribute
        include Google::Apis::Core::Hashable
      
        # If the `filterable` flag is true, custom field values are searchable.
        # If false, values are not searchable.
        # Default is false.
        # Corresponds to the JSON property `filterable`
        # @return [Boolean]
        attr_accessor :filterable
        alias_method :filterable?, :filterable
      
        # Exactly one of string_values or long_values must be specified.
        # This field is used to perform number range search.
        # (`EQ`, `GT`, `GE`, `LE`, `LT`) over filterable `long_value`.
        # Currently at most 1 long_values is supported.
        # Corresponds to the JSON property `longValues`
        # @return [Array<Fixnum>]
        attr_accessor :long_values
      
        # Exactly one of string_values or long_values must be specified.
        # This field is used to perform a string match (`CASE_SENSITIVE_MATCH` or
        # `CASE_INSENSITIVE_MATCH`) search.
        # For filterable `string_value`s, a maximum total number of 200 values
        # is allowed, with each `string_value` has a byte size of no more than
        # 500B. For unfilterable `string_values`, the maximum total byte size of
        # unfilterable `string_values` is 50KB.
        # Empty string isn't allowed.
        # Corresponds to the JSON property `stringValues`
        # @return [Array<String>]
        attr_accessor :string_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filterable = args[:filterable] if args.key?(:filterable)
          @long_values = args[:long_values] if args.key?(:long_values)
          @string_values = args[:string_values] if args.key?(:string_values)
        end
      end
      
      # Custom ranking information for SearchJobsRequest.
      class CustomRankingInfo
        include Google::Apis::Core::Hashable
      
        # Required. Controls over how important the score of
        # CustomRankingInfo.ranking_expression gets applied to job's final
        # ranking position.
        # An error is thrown if not specified.
        # Corresponds to the JSON property `importanceLevel`
        # @return [String]
        attr_accessor :importance_level
      
        # Required. Controls over how job documents get ranked on top of existing
        # relevance
        # score (determined by API algorithm). A combination of the ranking
        # expression and relevance score is used to determine job's final ranking
        # position.
        # The syntax for this expression is a subset of Google SQL syntax.
        # Supported operators are: +, -, *, /, where the left and right side of
        # the operator is either a numeric Job.custom_attributes key,
        # integer/double value or an expression that can be evaluated to a number.
        # Parenthesis are supported to adjust calculation precedence. The
        # expression must be < 100 characters in length.
        # The expression is considered invalid for a job if the expression
        # references custom attributes that are not populated on the job or if the
        # expression results in a divide by zero. If an expression is invalid for a
        # job, that job is demoted to the end of the results.
        # Sample ranking expression
        # (year + 25) * 0.25 - (freshness / 0.5)
        # Corresponds to the JSON property `rankingExpression`
        # @return [String]
        attr_accessor :ranking_expression
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @importance_level = args[:importance_level] if args.key?(:importance_level)
          @ranking_expression = args[:ranking_expression] if args.key?(:ranking_expression)
        end
      end
      
      # Represents a whole or partial calendar date, e.g. a birthday. The time of day
      # and time zone are either specified elsewhere or are not significant. The date
      # is relative to the Proleptic Gregorian Calendar. This can represent:
      # * A full date, with non-zero year, month and day values
      # * A month and day value, with a zero year, e.g. an anniversary
      # * A year on its own, with zero month and day values
      # * A year and month value, with a zero day, e.g. a credit card expiration date
      # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of month. Must be from 1 to 31 and valid for the year and month, or 0
        # if specifying a year by itself or a year and month where the day is not
        # significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of year. Must be from 1 to 12, or 0 if specifying a year without a
        # month and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of date. Must be from 1 to 9999, or 0 if specifying a date without
        # a year.
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
      
      # Resource that represents a degree pursuing or acquired by a candidate.
      class Degree
        include Google::Apis::Core::Hashable
      
        # Full Degree name.
        # For example, "B.S.", "Master of Arts", and so on.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `degreeName`
        # @return [String]
        attr_accessor :degree_name
      
        # ISCED degree type.
        # Corresponds to the JSON property `degreeType`
        # @return [String]
        attr_accessor :degree_type
      
        # Fields of study for the degree.
        # For example, "Computer science", "engineering".
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `fieldsOfStudy`
        # @return [Array<String>]
        attr_accessor :fields_of_study
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @degree_name = args[:degree_name] if args.key?(:degree_name)
          @degree_type = args[:degree_type] if args.key?(:degree_type)
          @fields_of_study = args[:fields_of_study] if args.key?(:fields_of_study)
        end
      end
      
      # Device information collected from the job seeker, candidate, or
      # other entity conducting the job search. Providing this information improves
      # the quality of the search results across devices.
      class DeviceInfo
        include Google::Apis::Core::Hashable
      
        # Type of the device.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # A device-specific ID. The ID must be a unique identifier that
        # distinguishes the device from other devices.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @device_type = args[:device_type] if args.key?(:device_type)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Education filter of the search.
      class EducationFilter
        include Google::Apis::Core::Hashable
      
        # Education degree in ISCED code. Each value in degree covers a specific
        # level of education, without any expansion to upper nor lower levels of
        # education degree.
        # Corresponds to the JSON property `degreeType`
        # @return [String]
        attr_accessor :degree_type
      
        # The field of study. This is to search against value provided in
        # Degree.fields_of_study.
        # For example "Computer Science", "Mathematics".
        # Corresponds to the JSON property `fieldOfStudy`
        # @return [String]
        attr_accessor :field_of_study
      
        # Whether to apply negation to the filter so profiles matching the filter
        # is excluded.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        # The school name. For example "MIT", "University of California, Berkeley".
        # Corresponds to the JSON property `school`
        # @return [String]
        attr_accessor :school
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @degree_type = args[:degree_type] if args.key?(:degree_type)
          @field_of_study = args[:field_of_study] if args.key?(:field_of_study)
          @negated = args[:negated] if args.key?(:negated)
          @school = args[:school] if args.key?(:school)
        end
      end
      
      # Resource that represents an education record of a candidate.
      class EducationRecord
        include Google::Apis::Core::Hashable
      
        # Resource that represents a address.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::JobsV4beta1::Address]
        attr_accessor :address
      
        # The full description of the degree.
        # For example, "Master of Science in Computer Science", "B.S in Math".
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `degreeDescription`
        # @return [String]
        attr_accessor :degree_description
      
        # Output only. The job description snippet shows how the Degree is related to a
        # search
        # query in search result. It's empty if the Degree isn't related to the
        # search query.
        # Corresponds to the JSON property `degreeSnippet`
        # @return [String]
        attr_accessor :degree_snippet
      
        # The description of the education.
        # Number of characters allowed is 100,000.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `expectedGraduationDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :expected_graduation_date
      
        # If this education is current.
        # Corresponds to the JSON property `isCurrent`
        # @return [Boolean]
        attr_accessor :is_current
        alias_method :is_current?, :is_current
      
        # The name of the school or institution.
        # For example, "Stanford University", "UC Berkeley", and so on.
        # Number of characters allowed is 250.
        # Corresponds to the JSON property `schoolName`
        # @return [String]
        attr_accessor :school_name
      
        # Output only. The school name snippet shows how the school_name is related to a
        # search query in search result. It's empty if the school_name isn't
        # related to the search query.
        # Corresponds to the JSON property `schoolNameSnippet`
        # @return [String]
        attr_accessor :school_name_snippet
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :start_date
      
        # Resource that represents a degree pursuing or acquired by a candidate.
        # Corresponds to the JSON property `structuredDegree`
        # @return [Google::Apis::JobsV4beta1::Degree]
        attr_accessor :structured_degree
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @degree_description = args[:degree_description] if args.key?(:degree_description)
          @degree_snippet = args[:degree_snippet] if args.key?(:degree_snippet)
          @description = args[:description] if args.key?(:description)
          @end_date = args[:end_date] if args.key?(:end_date)
          @expected_graduation_date = args[:expected_graduation_date] if args.key?(:expected_graduation_date)
          @is_current = args[:is_current] if args.key?(:is_current)
          @school_name = args[:school_name] if args.key?(:school_name)
          @school_name_snippet = args[:school_name_snippet] if args.key?(:school_name_snippet)
          @start_date = args[:start_date] if args.key?(:start_date)
          @structured_degree = args[:structured_degree] if args.key?(:structured_degree)
        end
      end
      
      # Resource that represents a person's email address.
      class Email
        include Google::Apis::Core::Hashable
      
        # Email address.
        # Number of characters allowed is 4,000.
        # Corresponds to the JSON property `emailAddress`
        # @return [String]
        attr_accessor :email_address
      
        # The usage of the email address. For example, SCHOOL, WORK, PERSONAL.
        # Corresponds to the JSON property `usage`
        # @return [String]
        attr_accessor :usage
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email_address = args[:email_address] if args.key?(:email_address)
          @usage = args[:usage] if args.key?(:usage)
        end
      end
      
      # Employer filter of the search.
      class EmployerFilter
        include Google::Apis::Core::Hashable
      
        # Required. The name of the employer, for example "Google", "Alphabet".
        # Corresponds to the JSON property `employer`
        # @return [String]
        attr_accessor :employer
      
        # Define set of EmploymentRecords to search against.
        # Defaults to EmployerFilterMode.ALL_EMPLOYMENT_RECORDS.
        # Corresponds to the JSON property `mode`
        # @return [String]
        attr_accessor :mode
      
        # Whether to apply negation to the filter so profiles matching the filter
        # is excluded.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @employer = args[:employer] if args.key?(:employer)
          @mode = args[:mode] if args.key?(:mode)
          @negated = args[:negated] if args.key?(:negated)
        end
      end
      
      # Resource that represents an employment record of a candidate.
      class EmploymentRecord
        include Google::Apis::Core::Hashable
      
        # Resource that represents a address.
        # Corresponds to the JSON property `address`
        # @return [Google::Apis::JobsV4beta1::Address]
        attr_accessor :address
      
        # The division name of the employment.
        # For example, division, department, client, and so on.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `divisionName`
        # @return [String]
        attr_accessor :division_name
      
        # The name of the employer company/organization.
        # For example, "Google", "Alphabet", and so on.
        # Number of characters allowed is 250.
        # Corresponds to the JSON property `employerName`
        # @return [String]
        attr_accessor :employer_name
      
        # Output only. The employer name snippet shows how the employer_name is
        # related to a search query. It's empty if the employer_name isn't
        # related to the search query.
        # Corresponds to the JSON property `employerNameSnippet`
        # @return [String]
        attr_accessor :employer_name_snippet
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :end_date
      
        # If this employment is current.
        # Corresponds to the JSON property `isCurrent`
        # @return [Boolean]
        attr_accessor :is_current
        alias_method :is_current?, :is_current
      
        # If this employment is self-employed.
        # Corresponds to the JSON property `isSelfEmployed`
        # @return [Boolean]
        attr_accessor :is_self_employed
        alias_method :is_self_employed?, :is_self_employed
      
        # If the jobs is a supervisor position.
        # Corresponds to the JSON property `isSupervisor`
        # @return [Boolean]
        attr_accessor :is_supervisor
        alias_method :is_supervisor?, :is_supervisor
      
        # The description of job content.
        # Number of characters allowed is 100,000.
        # Corresponds to the JSON property `jobDescription`
        # @return [String]
        attr_accessor :job_description
      
        # Output only. The job description snippet shows how the job_description
        # is related to a search query. It's empty if the job_description isn't
        # related to the search query.
        # Corresponds to the JSON property `jobDescriptionSnippet`
        # @return [String]
        attr_accessor :job_description_snippet
      
        # The job title of the employment.
        # For example, "Software Engineer", "Data Scientist", and so on.
        # Number of characters allowed is 250.
        # Corresponds to the JSON property `jobTitle`
        # @return [String]
        attr_accessor :job_title
      
        # Output only. The job title snippet shows how the job_title is related
        # to a search query. It's empty if the job_title isn't related to the
        # search query.
        # Corresponds to the JSON property `jobTitleSnippet`
        # @return [String]
        attr_accessor :job_title_snippet
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @division_name = args[:division_name] if args.key?(:division_name)
          @employer_name = args[:employer_name] if args.key?(:employer_name)
          @employer_name_snippet = args[:employer_name_snippet] if args.key?(:employer_name_snippet)
          @end_date = args[:end_date] if args.key?(:end_date)
          @is_current = args[:is_current] if args.key?(:is_current)
          @is_self_employed = args[:is_self_employed] if args.key?(:is_self_employed)
          @is_supervisor = args[:is_supervisor] if args.key?(:is_supervisor)
          @job_description = args[:job_description] if args.key?(:job_description)
          @job_description_snippet = args[:job_description_snippet] if args.key?(:job_description_snippet)
          @job_title = args[:job_title] if args.key?(:job_title)
          @job_title_snippet = args[:job_title_snippet] if args.key?(:job_title_snippet)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated
      # empty messages in your APIs. A typical example is to use it as the request
      # or the response type of an API method. For instance:
      # service Foo `
      # rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty);
      # `
      # The JSON representation for `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The histogram request.
      class HistogramQuery
        include Google::Apis::Core::Hashable
      
        # An expression specifies a histogram request against matching resources
        # (for example, jobs, profiles) for searches.
        # See SearchJobsRequest.histogram_queries and
        # SearchProfilesRequest.histogram_queries for details about syntax.
        # Corresponds to the JSON property `histogramQuery`
        # @return [String]
        attr_accessor :histogram_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @histogram_query = args[:histogram_query] if args.key?(:histogram_query)
        end
      end
      
      # Histogram result that matches HistogramQuery specified in searches.
      class HistogramQueryResult
        include Google::Apis::Core::Hashable
      
        # A map from the values of the facet associated with distinct values to the
        # number of matching entries with corresponding value.
        # The key format is:
        # * (for string histogram) string values stored in the field.
        # * (for named numeric bucket) name specified in `bucket()` function, like
        # for `bucket(0, MAX, "non-negative")`, the key will be `non-negative`.
        # * (for anonymous numeric bucket) range formatted as `<low>-<high>`, for
        # example, `0-1000`, `MIN-0`, and `0-MAX`.
        # Corresponds to the JSON property `histogram`
        # @return [Hash<String,Fixnum>]
        attr_accessor :histogram
      
        # Requested histogram expression.
        # Corresponds to the JSON property `histogramQuery`
        # @return [String]
        attr_accessor :histogram_query
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @histogram = args[:histogram] if args.key?(:histogram)
          @histogram_query = args[:histogram_query] if args.key?(:histogram_query)
        end
      end
      
      # Details of an interview.
      class Interview
        include Google::Apis::Core::Hashable
      
        # Required. The overall decision resulting from this interview (positive,
        # negative,
        # nuetral).
        # Corresponds to the JSON property `outcome`
        # @return [String]
        attr_accessor :outcome
      
        # The details of the score received for an assessment or interview.
        # Corresponds to the JSON property `rating`
        # @return [Google::Apis::JobsV4beta1::Rating]
        attr_accessor :rating
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @outcome = args[:outcome] if args.key?(:outcome)
          @rating = args[:rating] if args.key?(:rating)
        end
      end
      
      # A Job resource represents a job posting (also referred to as a "job listing"
      # or "job requisition"). A job belongs to a Company, which is the hiring
      # entity responsible for the job.
      class Job
        include Google::Apis::Core::Hashable
      
        # Strongly recommended for the best service experience.
        # Location(s) where the employer is looking to hire for this job posting.
        # Specifying the full street address(es) of the hiring location enables
        # better API results, especially job searches by commute time.
        # At most 50 locations are allowed for best search performance. If a job has
        # more locations, it is suggested to split it into multiple jobs with unique
        # requisition_ids (e.g. 'ReqA' becomes 'ReqA-1', 'ReqA-2', and so on.) as
        # multiple jobs with the same company, language_code and
        # requisition_id are not allowed. If the original requisition_id must
        # be preserved, a custom field should be used for storage. It is also
        # suggested to group the locations that close to each other in the same job
        # for better search experience.
        # The maximum number of allowed characters is 500.
        # Corresponds to the JSON property `addresses`
        # @return [Array<String>]
        attr_accessor :addresses
      
        # Application related details of a job posting.
        # Corresponds to the JSON property `applicationInfo`
        # @return [Google::Apis::JobsV4beta1::ApplicationInfo]
        attr_accessor :application_info
      
        # Required. The resource name of the company listing the job.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`". For
        # example, "projects/foo/tenants/bar/companies/baz".
        # If tenant id is unspecified, the default tenant is used. For
        # example, "projects/foo/companies/bar".
        # Corresponds to the JSON property `company`
        # @return [String]
        attr_accessor :company
      
        # Output only. Display name of the company listing the job.
        # Corresponds to the JSON property `companyDisplayName`
        # @return [String]
        attr_accessor :company_display_name
      
        # Job compensation details.
        # Corresponds to the JSON property `compensationInfo`
        # @return [Google::Apis::JobsV4beta1::CompensationInfo]
        attr_accessor :compensation_info
      
        # A map of fields to hold both filterable and non-filterable custom job
        # attributes that are not covered by the provided structured fields.
        # The keys of the map are strings up to 64 bytes and must match the
        # pattern: a-zA-Z*. For example, key0LikeThis or
        # KEY_1_LIKE_THIS.
        # At most 100 filterable and at most 100 unfilterable keys are supported.
        # For filterable `string_values`, across all keys at most 200 values are
        # allowed, with each string no more than 255 characters. For unfilterable
        # `string_values`, the maximum total size of `string_values` across all keys
        # is 50KB.
        # Corresponds to the JSON property `customAttributes`
        # @return [Hash<String,Google::Apis::JobsV4beta1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # The desired education degrees for the job, such as Bachelors, Masters.
        # Corresponds to the JSON property `degreeTypes`
        # @return [Array<String>]
        attr_accessor :degree_types
      
        # The department or functional area within the company with the open
        # position.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `department`
        # @return [String]
        attr_accessor :department
      
        # Derived details about the job posting.
        # Corresponds to the JSON property `derivedInfo`
        # @return [Google::Apis::JobsV4beta1::JobDerivedInfo]
        attr_accessor :derived_info
      
        # Required. The description of the job, which typically includes a multi-
        # paragraph
        # description of the company and related information. Separate fields are
        # provided on the job object for responsibilities,
        # qualifications, and other job characteristics. Use of
        # these separate job fields is recommended.
        # This field accepts and sanitizes HTML input, and also accepts
        # bold, italic, ordered list, and unordered list markup tags.
        # The maximum number of allowed characters is 100,000.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The employment type(s) of a job, for example,
        # full time or
        # part time.
        # Corresponds to the JSON property `employmentTypes`
        # @return [Array<String>]
        attr_accessor :employment_types
      
        # A description of bonus, commission, and other compensation
        # incentives associated with the job not including salary or pay.
        # The maximum number of allowed characters is 10,000.
        # Corresponds to the JSON property `incentives`
        # @return [String]
        attr_accessor :incentives
      
        # The benefits included with the job.
        # Corresponds to the JSON property `jobBenefits`
        # @return [Array<String>]
        attr_accessor :job_benefits
      
        # The end timestamp of the job. Typically this field is used for contracting
        # engagements. Invalid timestamps are ignored.
        # Corresponds to the JSON property `jobEndTime`
        # @return [String]
        attr_accessor :job_end_time
      
        # The experience level associated with the job, such as "Entry Level".
        # Corresponds to the JSON property `jobLevel`
        # @return [String]
        attr_accessor :job_level
      
        # The start timestamp of the job in UTC time zone. Typically this field
        # is used for contracting engagements. Invalid timestamps are ignored.
        # Corresponds to the JSON property `jobStartTime`
        # @return [String]
        attr_accessor :job_start_time
      
        # The language of the posting. This field is distinct from
        # any requirements for fluency that are associated with the job.
        # Language codes must be in BCP-47 format, such as "en-US" or "sr-Latn".
        # For more information, see
        # [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47)`:
        # class="external" target="_blank" `.
        # If this field is unspecified and Job.description is present, detected
        # language code based on Job.description is assigned, otherwise
        # defaults to 'en_US'.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required during job update.
        # The resource name for the job. This is generated by the service when a
        # job is created.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For
        # example, "projects/foo/tenants/bar/jobs/baz".
        # If tenant id is unspecified, the default tenant is used. For
        # example, "projects/foo/jobs/bar".
        # Use of this field in job queries and API calls is preferred over the use of
        # requisition_id since this value is unique.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The timestamp when this job posting was created.
        # Corresponds to the JSON property `postingCreateTime`
        # @return [String]
        attr_accessor :posting_create_time
      
        # Strongly recommended for the best service experience.
        # The expiration timestamp of the job. After this timestamp, the
        # job is marked as expired, and it no longer appears in search results. The
        # expired job can't be listed by the ListJobs API,
        # but it can be retrieved with the GetJob API or
        # updated with the UpdateJob API or deleted with
        # the DeleteJob API. An expired job can
        # be updated and opened again by using a future expiration timestamp.
        # Updating an expired job fails if there is another existing open job with
        # same company, language_code and requisition_id.
        # The expired jobs are retained in our system for 90 days. However, the
        # overall expired job count cannot exceed 3 times the maximum number of
        # open jobs over previous 7 days. If this threshold is exceeded,
        # expired jobs are cleaned out in order of earliest expire time.
        # Expired jobs are no longer accessible after they are cleaned
        # out.
        # Invalid timestamps are ignored, and treated as expire time not provided.
        # If the timestamp is before the instant request is made, the job
        # is treated as expired immediately on creation. This kind of job can
        # not be updated. And when creating a job with past timestamp, the
        # posting_publish_time must be set before
        # posting_expire_time. The purpose of this feature is
        # to allow other objects, such as Application, to refer a job
        # that didn't exist in the system prior to becoming expired. If you
        # want to modify a job that was expired on creation,
        # delete it and create a new one.
        # If this value isn't provided at the time of job creation or is invalid,
        # the job posting expires after 30 days from the job's creation time. For
        # example, if the job was created on 2017/01/01 13:00AM UTC with an
        # unspecified expiration date, the job expires after 2017/01/31 13:00AM UTC.
        # If this value isn't provided on job update, it depends on the field masks
        # set by UpdateJobRequest.update_mask. If the field masks include
        # job_end_time, or the masks are empty meaning that every field is
        # updated, the job posting expires after 30 days from the job's last
        # update time. Otherwise the expiration date isn't updated.
        # Corresponds to the JSON property `postingExpireTime`
        # @return [String]
        attr_accessor :posting_expire_time
      
        # The timestamp this job posting was most recently published. The default
        # value is the time the request arrives at the server. Invalid timestamps are
        # ignored.
        # Corresponds to the JSON property `postingPublishTime`
        # @return [String]
        attr_accessor :posting_publish_time
      
        # The job PostingRegion (for example, state, country) throughout
        # which the job is available. If this field is set, a LocationFilter
        # in a search query within the job region finds this job posting if an
        # exact location match isn't specified. If this field is set to
        # PostingRegion.NATION or PostingRegion.ADMINISTRATIVE_AREA,
        # setting job Job.addresses to the same location level as this field
        # is strongly recommended.
        # Corresponds to the JSON property `postingRegion`
        # @return [String]
        attr_accessor :posting_region
      
        # Output only. The timestamp when this job posting was last updated.
        # Corresponds to the JSON property `postingUpdateTime`
        # @return [String]
        attr_accessor :posting_update_time
      
        # Options for job processing.
        # Corresponds to the JSON property `processingOptions`
        # @return [Google::Apis::JobsV4beta1::ProcessingOptions]
        attr_accessor :processing_options
      
        # A promotion value of the job, as determined by the client.
        # The value determines the sort order of the jobs returned when searching for
        # jobs using the featured jobs search call, with higher promotional values
        # being returned first and ties being resolved by relevance sort. Only the
        # jobs with a promotionValue >0 are returned in a FEATURED_JOB_SEARCH.
        # Default value is 0, and negative values are treated as 0.
        # Corresponds to the JSON property `promotionValue`
        # @return [Fixnum]
        attr_accessor :promotion_value
      
        # A description of the qualifications required to perform the
        # job. The use of this field is recommended
        # as an alternative to using the more general description field.
        # This field accepts and sanitizes HTML input, and also accepts
        # bold, italic, ordered list, and unordered list markup tags.
        # The maximum number of allowed characters is 10,000.
        # Corresponds to the JSON property `qualifications`
        # @return [String]
        attr_accessor :qualifications
      
        # Required. The requisition ID, also referred to as the posting ID, is assigned
        # by the
        # client to identify a job. This field is intended to be used by clients
        # for client identification and tracking of postings. A job isn't allowed
        # to be created if there is another job with the same company,
        # language_code and requisition_id.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `requisitionId`
        # @return [String]
        attr_accessor :requisition_id
      
        # A description of job responsibilities. The use of this field is
        # recommended as an alternative to using the more general description
        # field.
        # This field accepts and sanitizes HTML input, and also accepts
        # bold, italic, ordered list, and unordered list markup tags.
        # The maximum number of allowed characters is 10,000.
        # Corresponds to the JSON property `responsibilities`
        # @return [String]
        attr_accessor :responsibilities
      
        # Required. The title of the job, such as "Software Engineer"
        # The maximum number of allowed characters is 500.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Deprecated. The job is only visible to the owner.
        # The visibility of the job.
        # Defaults to Visibility.ACCOUNT_ONLY if not specified.
        # Corresponds to the JSON property `visibility`
        # @return [String]
        attr_accessor :visibility
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @addresses = args[:addresses] if args.key?(:addresses)
          @application_info = args[:application_info] if args.key?(:application_info)
          @company = args[:company] if args.key?(:company)
          @company_display_name = args[:company_display_name] if args.key?(:company_display_name)
          @compensation_info = args[:compensation_info] if args.key?(:compensation_info)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @degree_types = args[:degree_types] if args.key?(:degree_types)
          @department = args[:department] if args.key?(:department)
          @derived_info = args[:derived_info] if args.key?(:derived_info)
          @description = args[:description] if args.key?(:description)
          @employment_types = args[:employment_types] if args.key?(:employment_types)
          @incentives = args[:incentives] if args.key?(:incentives)
          @job_benefits = args[:job_benefits] if args.key?(:job_benefits)
          @job_end_time = args[:job_end_time] if args.key?(:job_end_time)
          @job_level = args[:job_level] if args.key?(:job_level)
          @job_start_time = args[:job_start_time] if args.key?(:job_start_time)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @posting_create_time = args[:posting_create_time] if args.key?(:posting_create_time)
          @posting_expire_time = args[:posting_expire_time] if args.key?(:posting_expire_time)
          @posting_publish_time = args[:posting_publish_time] if args.key?(:posting_publish_time)
          @posting_region = args[:posting_region] if args.key?(:posting_region)
          @posting_update_time = args[:posting_update_time] if args.key?(:posting_update_time)
          @processing_options = args[:processing_options] if args.key?(:processing_options)
          @promotion_value = args[:promotion_value] if args.key?(:promotion_value)
          @qualifications = args[:qualifications] if args.key?(:qualifications)
          @requisition_id = args[:requisition_id] if args.key?(:requisition_id)
          @responsibilities = args[:responsibilities] if args.key?(:responsibilities)
          @title = args[:title] if args.key?(:title)
          @visibility = args[:visibility] if args.key?(:visibility)
        end
      end
      
      # Derived details about the job posting.
      class JobDerivedInfo
        include Google::Apis::Core::Hashable
      
        # Job categories derived from Job.title and Job.description.
        # Corresponds to the JSON property `jobCategories`
        # @return [Array<String>]
        attr_accessor :job_categories
      
        # Structured locations of the job, resolved from Job.addresses.
        # locations are exactly matched to Job.addresses in the same
        # order.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::JobsV4beta1::Location>]
        attr_accessor :locations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_categories = args[:job_categories] if args.key?(:job_categories)
          @locations = args[:locations] if args.key?(:locations)
        end
      end
      
      # An event issued when a job seeker interacts with the application that
      # implements Cloud Talent Solution.
      class JobEvent
        include Google::Apis::Core::Hashable
      
        # Required. The job name(s) associated with this event.
        # For example, if this is an impression event,
        # this field contains the identifiers of all jobs shown to the job seeker.
        # If this was a view event, this field contains the
        # identifier of the viewed job.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`", for
        # example, "projects/foo/tenants/bar/jobs/baz".
        # Corresponds to the JSON property `jobs`
        # @return [Array<String>]
        attr_accessor :jobs
      
        # The profile name associated with this client event.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`",
        # for example, "projects/foo/tenants/bar/profiles/baz".
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # Required. The type of the event (see JobEventType).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @profile = args[:profile] if args.key?(:profile)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # The result of JobService.BatchCreateJobs or
      # JobService.BatchUpdateJobs APIs. It's used to
      # replace google.longrunning.Operation.response in case of success.
      class JobOperationResult
        include Google::Apis::Core::Hashable
      
        # List of job mutation results from a batch mutate operation. It can change
        # until operation status is FINISHED, FAILED or CANCELLED.
        # Corresponds to the JSON property `jobResults`
        # @return [Array<Google::Apis::JobsV4beta1::JobResult>]
        attr_accessor :job_results
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_results = args[:job_results] if args.key?(:job_results)
        end
      end
      
      # The query required to perform a search query.
      class JobQuery
        include Google::Apis::Core::Hashable
      
        # Parameters needed for commute search.
        # Corresponds to the JSON property `commuteFilter`
        # @return [Google::Apis::JobsV4beta1::CommuteFilter]
        attr_accessor :commute_filter
      
        # This filter specifies the company entities to search against.
        # If a value isn't specified, jobs are searched for against all
        # companies.
        # If multiple values are specified, jobs are searched against the
        # companies specified.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`". For
        # example, "projects/foo/tenants/bar/companies/baz".
        # If tenant id is unspecified, the default tenant is used. For
        # example, "projects/foo/companies/bar".
        # At most 20 company filters are allowed.
        # Corresponds to the JSON property `companies`
        # @return [Array<String>]
        attr_accessor :companies
      
        # This filter specifies the exact company Company.display_name
        # of the jobs to search against.
        # If a value isn't specified, jobs within the search results are
        # associated with any company.
        # If multiple values are specified, jobs within the search results may be
        # associated with any of the specified companies.
        # At most 20 company display name filters are allowed.
        # Corresponds to the JSON property `companyDisplayNames`
        # @return [Array<String>]
        attr_accessor :company_display_names
      
        # Filter on job compensation type and amount.
        # Corresponds to the JSON property `compensationFilter`
        # @return [Google::Apis::JobsV4beta1::CompensationFilter]
        attr_accessor :compensation_filter
      
        # This filter specifies a structured syntax to match against the
        # Job.custom_attributes marked as `filterable`.
        # The syntax for this expression is a subset of SQL syntax.
        # Supported operators are: `=`, `!=`, `<`, `<=`, `>`, and `>=` where the
        # left of the operator is a custom field key and the right of the operator
        # is a number or a quoted string. You must escape backslash (\\) and
        # quote (\") characters.
        # Supported functions are `LOWER([field_name])` to
        # perform a case insensitive match and `EMPTY([field_name])` to filter on the
        # existence of a key.
        # Boolean expressions (AND/OR/NOT) are supported up to 3 levels of
        # nesting (for example, "((A AND B AND C) OR NOT D) AND E"), a maximum of 100
        # comparisons or functions are allowed in the expression. The expression
        # must be < 6000 bytes in length.
        # Sample Query:
        # `(LOWER(driving_license)="class \"a\"" OR EMPTY(driving_license)) AND
        # driving_years > 10`
        # Corresponds to the JSON property `customAttributeFilter`
        # @return [String]
        attr_accessor :custom_attribute_filter
      
        # This flag controls the spell-check feature. If false, the
        # service attempts to correct a misspelled query,
        # for example, "enginee" is corrected to "engineer".
        # Defaults to false: a spell check is performed.
        # Corresponds to the JSON property `disableSpellCheck`
        # @return [Boolean]
        attr_accessor :disable_spell_check
        alias_method :disable_spell_check?, :disable_spell_check
      
        # The employment type filter specifies the employment type of jobs to
        # search against, such as EmploymentType.FULL_TIME.
        # If a value isn't specified, jobs in the search results includes any
        # employment type.
        # If multiple values are specified, jobs in the search results include
        # any of the specified employment types.
        # Corresponds to the JSON property `employmentTypes`
        # @return [Array<String>]
        attr_accessor :employment_types
      
        # This filter specifies a list of job names to be excluded during search.
        # At most 400 excluded job names are allowed.
        # Corresponds to the JSON property `excludedJobs`
        # @return [Array<String>]
        attr_accessor :excluded_jobs
      
        # The category filter specifies the categories of jobs to search against.
        # See JobCategory for more information.
        # If a value isn't specified, jobs from any category are searched against.
        # If multiple values are specified, jobs from any of the specified
        # categories are searched against.
        # Corresponds to the JSON property `jobCategories`
        # @return [Array<String>]
        attr_accessor :job_categories
      
        # This filter specifies the locale of jobs to search against,
        # for example, "en-US".
        # If a value isn't specified, the search results can contain jobs in any
        # locale.
        # Language codes should be in BCP-47 format, such as "en-US" or "sr-Latn".
        # For more information, see
        # [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
        # At most 10 language code filters are allowed.
        # Corresponds to the JSON property `languageCodes`
        # @return [Array<String>]
        attr_accessor :language_codes
      
        # The location filter specifies geo-regions containing the jobs to
        # search against. See LocationFilter for more information.
        # If a location value isn't specified, jobs fitting the other search
        # criteria are retrieved regardless of where they're located.
        # If multiple values are specified, jobs are retrieved from any of the
        # specified locations. If different values are specified for the
        # LocationFilter.distance_in_miles parameter, the maximum provided
        # distance is used for all locations.
        # At most 5 location filters are allowed.
        # Corresponds to the JSON property `locationFilters`
        # @return [Array<Google::Apis::JobsV4beta1::LocationFilter>]
        attr_accessor :location_filters
      
        # Message representing a period of time between two timestamps.
        # Corresponds to the JSON property `publishTimeRange`
        # @return [Google::Apis::JobsV4beta1::TimestampRange]
        attr_accessor :publish_time_range
      
        # The query string that matches against the job title, description, and
        # location fields.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # The language code of query. For example, "en-US". This field helps to
        # better interpret the query.
        # If a value isn't specified, the query language code is automatically
        # detected, which may not be accurate.
        # Language code should be in BCP-47 format, such as "en-US" or "sr-Latn".
        # For more information, see
        # [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
        # Corresponds to the JSON property `queryLanguageCode`
        # @return [String]
        attr_accessor :query_language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commute_filter = args[:commute_filter] if args.key?(:commute_filter)
          @companies = args[:companies] if args.key?(:companies)
          @company_display_names = args[:company_display_names] if args.key?(:company_display_names)
          @compensation_filter = args[:compensation_filter] if args.key?(:compensation_filter)
          @custom_attribute_filter = args[:custom_attribute_filter] if args.key?(:custom_attribute_filter)
          @disable_spell_check = args[:disable_spell_check] if args.key?(:disable_spell_check)
          @employment_types = args[:employment_types] if args.key?(:employment_types)
          @excluded_jobs = args[:excluded_jobs] if args.key?(:excluded_jobs)
          @job_categories = args[:job_categories] if args.key?(:job_categories)
          @language_codes = args[:language_codes] if args.key?(:language_codes)
          @location_filters = args[:location_filters] if args.key?(:location_filters)
          @publish_time_range = args[:publish_time_range] if args.key?(:publish_time_range)
          @query = args[:query] if args.key?(:query)
          @query_language_code = args[:query_language_code] if args.key?(:query_language_code)
        end
      end
      
      # Mutation result of a job.
      class JobResult
        include Google::Apis::Core::Hashable
      
        # A Job resource represents a job posting (also referred to as a "job listing"
        # or "job requisition"). A job belongs to a Company, which is the hiring
        # entity responsible for the job.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::JobsV4beta1::Job]
        attr_accessor :job
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `status`
        # @return [Google::Apis::JobsV4beta1::Status]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Job title of the search.
      class JobTitleFilter
        include Google::Apis::Core::Hashable
      
        # Required. The job title. For example, "Software engineer", or "Product manager"
        # .
        # Corresponds to the JSON property `jobTitle`
        # @return [String]
        attr_accessor :job_title
      
        # Whether to apply negation to the filter so profiles matching the filter
        # are excluded.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_title = args[:job_title] if args.key?(:job_title)
          @negated = args[:negated] if args.key?(:negated)
        end
      end
      
      # An object representing a latitude/longitude pair. This is expressed as a pair
      # of doubles representing degrees latitude and degrees longitude. Unless
      # specified otherwise, this must conform to the
      # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
      # standard</a>. Values must be within normalized ranges.
      class LatLng
        include Google::Apis::Core::Hashable
      
        # The latitude in degrees. It must be in the range [-90.0, +90.0].
        # Corresponds to the JSON property `latitude`
        # @return [Float]
        attr_accessor :latitude
      
        # The longitude in degrees. It must be in the range [-180.0, +180.0].
        # Corresponds to the JSON property `longitude`
        # @return [Float]
        attr_accessor :longitude
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @latitude = args[:latitude] if args.key?(:latitude)
          @longitude = args[:longitude] if args.key?(:longitude)
        end
      end
      
      # The List applications response object.
      class ListApplicationsResponse
        include Google::Apis::Core::Hashable
      
        # Applications for the current client.
        # Corresponds to the JSON property `applications`
        # @return [Array<Google::Apis::JobsV4beta1::Application>]
        attr_accessor :applications
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::JobsV4beta1::ResponseMetadata]
        attr_accessor :metadata
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @applications = args[:applications] if args.key?(:applications)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The List companies response object.
      class ListCompaniesResponse
        include Google::Apis::Core::Hashable
      
        # Companies for the current client.
        # Corresponds to the JSON property `companies`
        # @return [Array<Google::Apis::JobsV4beta1::Company>]
        attr_accessor :companies
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::JobsV4beta1::ResponseMetadata]
        attr_accessor :metadata
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @companies = args[:companies] if args.key?(:companies)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # List jobs response.
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # The Jobs for a given company.
        # The maximum number of items returned is based on the limit field
        # provided in the request.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::JobsV4beta1::Job>]
        attr_accessor :jobs
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::JobsV4beta1::ResponseMetadata]
        attr_accessor :metadata
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The List profiles response object.
      class ListProfilesResponse
        include Google::Apis::Core::Hashable
      
        # A token to retrieve the next page of results. This is empty if there are no
        # more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Profiles for the specific tenant.
        # Corresponds to the JSON property `profiles`
        # @return [Array<Google::Apis::JobsV4beta1::Profile>]
        attr_accessor :profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @profiles = args[:profiles] if args.key?(:profiles)
        end
      end
      
      # The List tenants response object.
      class ListTenantsResponse
        include Google::Apis::Core::Hashable
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::JobsV4beta1::ResponseMetadata]
        attr_accessor :metadata
      
        # A token to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Tenants for the current client.
        # Corresponds to the JSON property `tenants`
        # @return [Array<Google::Apis::JobsV4beta1::Tenant>]
        attr_accessor :tenants
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @tenants = args[:tenants] if args.key?(:tenants)
        end
      end
      
      # A resource that represents a location with full geographic information.
      class Location
        include Google::Apis::Core::Hashable
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::JobsV4beta1::LatLng]
        attr_accessor :lat_lng
      
        # The type of a location, which corresponds to the address lines field of
        # google.type.PostalAddress. For example, "Downtown, Atlanta, GA, USA"
        # has a type of LocationType.NEIGHBORHOOD, and "Kansas City, KS, USA"
        # has a type of LocationType.LOCALITY.
        # Corresponds to the JSON property `locationType`
        # @return [String]
        attr_accessor :location_type
      
        # Represents a postal address, e.g. for postal delivery or payments addresses.
        # Given a postal address, a postal service can deliver items to a premise, P.O.
        # Box or similar.
        # It is not intended to model geographical locations (roads, towns,
        # mountains).
        # In typical usage an address would be created via user input or from importing
        # existing data, depending on the type of process.
        # Advice on address input / editing:
        # - Use an i18n-ready address widget such as
        # https://github.com/google/libaddressinput)
        # - Users should not be presented with UI elements for input or editing of
        # fields outside countries where that field is used.
        # For more guidance on how to use this schema, please see:
        # https://support.google.com/business/answer/6397478
        # Corresponds to the JSON property `postalAddress`
        # @return [Google::Apis::JobsV4beta1::PostalAddress]
        attr_accessor :postal_address
      
        # Radius in miles of the job location. This value is derived from the
        # location bounding box in which a circle with the specified radius
        # centered from google.type.LatLng covers the area associated with the
        # job location.
        # For example, currently, "Mountain View, CA, USA" has a radius of
        # 6.17 miles.
        # Corresponds to the JSON property `radiusMiles`
        # @return [Float]
        attr_accessor :radius_miles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
          @location_type = args[:location_type] if args.key?(:location_type)
          @postal_address = args[:postal_address] if args.key?(:postal_address)
          @radius_miles = args[:radius_miles] if args.key?(:radius_miles)
        end
      end
      
      # Geographic region of the search.
      class LocationFilter
        include Google::Apis::Core::Hashable
      
        # The address name, such as "Mountain View" or "Bay Area".
        # Corresponds to the JSON property `address`
        # @return [String]
        attr_accessor :address
      
        # The distance_in_miles is applied when the location being searched for is
        # identified as a city or smaller. This field is ignored if the location
        # being searched for is a state or larger.
        # Corresponds to the JSON property `distanceInMiles`
        # @return [Float]
        attr_accessor :distance_in_miles
      
        # An object representing a latitude/longitude pair. This is expressed as a pair
        # of doubles representing degrees latitude and degrees longitude. Unless
        # specified otherwise, this must conform to the
        # <a href="http://www.unoosa.org/pdf/icg/2012/template/WGS_84.pdf">WGS84
        # standard</a>. Values must be within normalized ranges.
        # Corresponds to the JSON property `latLng`
        # @return [Google::Apis::JobsV4beta1::LatLng]
        attr_accessor :lat_lng
      
        # Whether to apply negation to the filter so profiles matching the filter
        # are excluded.
        # Currently only supported in profile search.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        # CLDR region code of the country/region of the address. This is used
        # to address ambiguity of the user-input location, for example, "Liverpool"
        # against "Liverpool, NY, US" or "Liverpool, UK".
        # Set this field to bias location resolution toward a specific country
        # or territory. If this field is not set, application behavior is biased
        # toward the United States by default.
        # See https://cldr.unicode.org/ and
        # https://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
        # for details. Example: "CH" for Switzerland.
        # Note that this filter is not applicable for Profile Search related queries.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # Allows the client to return jobs without a
        # set location, specifically, telecommuting jobs (telecommuting is considered
        # by the service as a special location.
        # Job.posting_region indicates if a job permits telecommuting.
        # If this field is set to TelecommutePreference.TELECOMMUTE_ALLOWED,
        # telecommuting jobs are searched, and address and lat_lng are
        # ignored. If not set or set to
        # TelecommutePreference.TELECOMMUTE_EXCLUDED, telecommute job are not
        # searched.
        # This filter can be used by itself to search exclusively for telecommuting
        # jobs, or it can be combined with another location
        # filter to search for a combination of job locations,
        # such as "Mountain View" or "telecommuting" jobs. However, when used in
        # combination with other location filters, telecommuting jobs can be
        # treated as less relevant than other jobs in the search response.
        # This field is only used for job search requests.
        # Corresponds to the JSON property `telecommutePreference`
        # @return [String]
        attr_accessor :telecommute_preference
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address = args[:address] if args.key?(:address)
          @distance_in_miles = args[:distance_in_miles] if args.key?(:distance_in_miles)
          @lat_lng = args[:lat_lng] if args.key?(:lat_lng)
          @negated = args[:negated] if args.key?(:negated)
          @region_code = args[:region_code] if args.key?(:region_code)
          @telecommute_preference = args[:telecommute_preference] if args.key?(:telecommute_preference)
        end
      end
      
      # Job entry with metadata inside SearchJobsResponse.
      class MatchingJob
        include Google::Apis::Core::Hashable
      
        # Commute details related to this job.
        # Corresponds to the JSON property `commuteInfo`
        # @return [Google::Apis::JobsV4beta1::CommuteInfo]
        attr_accessor :commute_info
      
        # A Job resource represents a job posting (also referred to as a "job listing"
        # or "job requisition"). A job belongs to a Company, which is the hiring
        # entity responsible for the job.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::JobsV4beta1::Job]
        attr_accessor :job
      
        # A summary of the job with core information that's displayed on the search
        # results listing page.
        # Corresponds to the JSON property `jobSummary`
        # @return [String]
        attr_accessor :job_summary
      
        # Contains snippets of text from the Job.title field most
        # closely matching a search query's keywords, if available. The matching
        # query keywords are enclosed in HTML bold tags.
        # Corresponds to the JSON property `jobTitleSnippet`
        # @return [String]
        attr_accessor :job_title_snippet
      
        # Contains snippets of text from the Job.description and similar
        # fields that most closely match a search query's keywords, if available.
        # All HTML tags in the original fields are stripped when returned in this
        # field, and matching query keywords are enclosed in HTML bold tags.
        # Corresponds to the JSON property `searchTextSnippet`
        # @return [String]
        attr_accessor :search_text_snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @commute_info = args[:commute_info] if args.key?(:commute_info)
          @job = args[:job] if args.key?(:job)
          @job_summary = args[:job_summary] if args.key?(:job_summary)
          @job_title_snippet = args[:job_title_snippet] if args.key?(:job_title_snippet)
          @search_text_snippet = args[:search_text_snippet] if args.key?(:search_text_snippet)
        end
      end
      
      # Message representing input to a Mendel server for debug forcing.
      # See go/mendel-debug-forcing for more details.
      # Next ID: 2
      class MendelDebugInput
        include Google::Apis::Core::Hashable
      
        # When a request spans multiple servers, a MendelDebugInput may travel with
        # the request and take effect in all the servers. This field is a map of
        # namespaces to NamespacedMendelDebugInput protos. In a single server, up to
        # two NamespacedMendelDebugInput protos are applied:
        # 1. NamespacedMendelDebugInput with the global namespace (key == "").
        # 2. NamespacedMendelDebugInput with the server's namespace.
        # When both NamespacedMendelDebugInput protos are present, they are merged.
        # See go/mendel-debug-forcing for more details.
        # Corresponds to the JSON property `namespacedDebugInput`
        # @return [Hash<String,Google::Apis::JobsV4beta1::NamespacedDebugInput>]
        attr_accessor :namespaced_debug_input
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @namespaced_debug_input = args[:namespaced_debug_input] if args.key?(:namespaced_debug_input)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The 3-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount.
        # The value must be between -999,999,999 and +999,999,999 inclusive.
        # If `units` is positive, `nanos` must be positive or zero.
        # If `units` is zero, `nanos` can be positive, zero, or negative.
        # If `units` is negative, `nanos` must be negative or zero.
        # For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount.
        # For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # Next ID: 15
      class NamespacedDebugInput
        include Google::Apis::Core::Hashable
      
        # Set of experiment names to be absolutely forced.
        # These experiments will be forced without evaluating the conditions.
        # Corresponds to the JSON property `absolutelyForcedExpNames`
        # @return [Array<String>]
        attr_accessor :absolutely_forced_exp_names
      
        # Set of experiment tags to be absolutely forced.
        # The experiments with these tags will be forced without evaluating the
        # conditions.
        # Corresponds to the JSON property `absolutelyForcedExpTags`
        # @return [Array<String>]
        attr_accessor :absolutely_forced_exp_tags
      
        # Set of experiment ids to be absolutely forced.
        # These ids will be forced without evaluating the conditions.
        # Corresponds to the JSON property `absolutelyForcedExps`
        # @return [Array<Fixnum>]
        attr_accessor :absolutely_forced_exps
      
        # Set of experiment names to be conditionally forced.
        # These experiments will be forced only if their conditions and their
        # parent domain's conditions are true.
        # Corresponds to the JSON property `conditionallyForcedExpNames`
        # @return [Array<String>]
        attr_accessor :conditionally_forced_exp_names
      
        # Set of experiment tags to be conditionally forced.
        # The experiments with these tags will be forced only if their conditions
        # and their parent domain's conditions are true.
        # Corresponds to the JSON property `conditionallyForcedExpTags`
        # @return [Array<String>]
        attr_accessor :conditionally_forced_exp_tags
      
        # Set of experiment ids to be conditionally forced.
        # These ids will be forced only if their conditions and their parent
        # domain's conditions are true.
        # Corresponds to the JSON property `conditionallyForcedExps`
        # @return [Array<Fixnum>]
        attr_accessor :conditionally_forced_exps
      
        # If true, disable automatic enrollment selection (at all diversion
        # points). Automatic enrollment selection means experiment selection
        # process based on the experiment's automatic enrollment condition. This
        # does not disable selection of forced experiments.
        # Corresponds to the JSON property `disableAutomaticEnrollmentSelection`
        # @return [Boolean]
        attr_accessor :disable_automatic_enrollment_selection
        alias_method :disable_automatic_enrollment_selection?, :disable_automatic_enrollment_selection
      
        # Set of experiment names to be disabled.
        # If an experiment is disabled, it is never selected nor forced.
        # If an aggregate experiment is disabled, its partitions are disabled
        # together. If an experiment with an enrollment is disabled, the enrollment
        # is disabled together. If a name corresponds to a domain, the domain
        # itself and all descendant experiments and domains are disabled together.
        # Corresponds to the JSON property `disableExpNames`
        # @return [Array<String>]
        attr_accessor :disable_exp_names
      
        # Set of experiment tags to be disabled. All experiments that are tagged
        # with one or more of these tags are disabled.
        # If an experiment is disabled, it is never selected nor forced.
        # If an aggregate experiment is disabled, its partitions are disabled
        # together. If an experiment with an enrollment is disabled, the enrollment
        # is disabled together.
        # Corresponds to the JSON property `disableExpTags`
        # @return [Array<String>]
        attr_accessor :disable_exp_tags
      
        # Set of experiment ids to be disabled.
        # If an experiment is disabled, it is never selected nor forced.
        # If an aggregate experiment is disabled, its partitions are disabled
        # together. If an experiment with an enrollment is disabled, the enrollment
        # is disabled together. If an ID corresponds to a domain, the domain itself
        # and all descendant experiments and domains are disabled together.
        # Corresponds to the JSON property `disableExps`
        # @return [Array<Fixnum>]
        attr_accessor :disable_exps
      
        # If true, disable manual enrollment selection (at all diversion points).
        # Manual enrollment selection means experiment selection process based on
        # the request's manual enrollment states (a.k.a. opt-in experiments).
        # This does not disable selection of forced experiments.
        # Corresponds to the JSON property `disableManualEnrollmentSelection`
        # @return [Boolean]
        attr_accessor :disable_manual_enrollment_selection
        alias_method :disable_manual_enrollment_selection?, :disable_manual_enrollment_selection
      
        # If true, disable organic experiment selection (at all diversion points).
        # Organic selection means experiment selection process based on traffic
        # allocation and diversion condition evaluation.
        # This does not disable selection of forced experiments.
        # This is useful in cases when it is not known whether experiment selection
        # behavior is responsible for a error or breakage. Disabling organic
        # selection may help to isolate the cause of a given problem.
        # Corresponds to the JSON property `disableOrganicSelection`
        # @return [Boolean]
        attr_accessor :disable_organic_selection
        alias_method :disable_organic_selection?, :disable_organic_selection
      
        # Flags to force in a particular experiment state.
        # Map from flag name to flag value.
        # Corresponds to the JSON property `forcedFlags`
        # @return [Hash<String,String>]
        attr_accessor :forced_flags
      
        # Rollouts to force in a particular experiment state.
        # Map from rollout name to rollout value.
        # Corresponds to the JSON property `forcedRollouts`
        # @return [Hash<String,Boolean>]
        attr_accessor :forced_rollouts
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @absolutely_forced_exp_names = args[:absolutely_forced_exp_names] if args.key?(:absolutely_forced_exp_names)
          @absolutely_forced_exp_tags = args[:absolutely_forced_exp_tags] if args.key?(:absolutely_forced_exp_tags)
          @absolutely_forced_exps = args[:absolutely_forced_exps] if args.key?(:absolutely_forced_exps)
          @conditionally_forced_exp_names = args[:conditionally_forced_exp_names] if args.key?(:conditionally_forced_exp_names)
          @conditionally_forced_exp_tags = args[:conditionally_forced_exp_tags] if args.key?(:conditionally_forced_exp_tags)
          @conditionally_forced_exps = args[:conditionally_forced_exps] if args.key?(:conditionally_forced_exps)
          @disable_automatic_enrollment_selection = args[:disable_automatic_enrollment_selection] if args.key?(:disable_automatic_enrollment_selection)
          @disable_exp_names = args[:disable_exp_names] if args.key?(:disable_exp_names)
          @disable_exp_tags = args[:disable_exp_tags] if args.key?(:disable_exp_tags)
          @disable_exps = args[:disable_exps] if args.key?(:disable_exps)
          @disable_manual_enrollment_selection = args[:disable_manual_enrollment_selection] if args.key?(:disable_manual_enrollment_selection)
          @disable_organic_selection = args[:disable_organic_selection] if args.key?(:disable_organic_selection)
          @forced_flags = args[:forced_flags] if args.key?(:forced_flags)
          @forced_rollouts = args[:forced_rollouts] if args.key?(:forced_rollouts)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress.
        # If `true`, the operation is completed, and either `error` or `response` is
        # available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for
        # different programming environments, including REST APIs and RPC APIs. It is
        # used by [gRPC](https://github.com/grpc). Each `Status` message contains
        # three pieces of data: error code, error message, and error details.
        # You can find out more about this error model and how to work with it in the
        # [API Design Guide](https://cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::JobsV4beta1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation.  It typically
        # contains progress information and common metadata such as create time.
        # Some services might not provide such metadata.  Any method that returns a
        # long-running operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the
        # `name` should be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success.  If the original
        # method returns no data on success, such as `Delete`, the response is
        # `google.protobuf.Empty`.  If the original method is standard
        # `Get`/`Create`/`Update`, the response should be the resource.  For other
        # methods, the response should have the type `XxxResponse`, where `Xxx`
        # is the original method name.  For example, if the original method name
        # is `TakeSnapshot()`, the inferred response type is
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
      
      # Resource that represents the patent acquired by a candidate.
      class Patent
        include Google::Apis::Core::Hashable
      
        # Name of the patent.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # A list of inventors' names.
        # Number of characters allowed for each is 100.
        # Corresponds to the JSON property `inventors`
        # @return [Array<String>]
        attr_accessor :inventors
      
        # The description of the patent.
        # Number of characters allowed is 100,000.
        # Corresponds to the JSON property `patentDescription`
        # @return [String]
        attr_accessor :patent_description
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `patentFilingDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :patent_filing_date
      
        # The number of the patent.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `patentNumber`
        # @return [String]
        attr_accessor :patent_number
      
        # The name of the patent office.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `patentOffice`
        # @return [String]
        attr_accessor :patent_office
      
        # The status of the patent.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `patentStatus`
        # @return [String]
        attr_accessor :patent_status
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `patentStatusDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :patent_status_date
      
        # The skills used in this patent.
        # Corresponds to the JSON property `skillsUsed`
        # @return [Array<Google::Apis::JobsV4beta1::Skill>]
        attr_accessor :skills_used
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @inventors = args[:inventors] if args.key?(:inventors)
          @patent_description = args[:patent_description] if args.key?(:patent_description)
          @patent_filing_date = args[:patent_filing_date] if args.key?(:patent_filing_date)
          @patent_number = args[:patent_number] if args.key?(:patent_number)
          @patent_office = args[:patent_office] if args.key?(:patent_office)
          @patent_status = args[:patent_status] if args.key?(:patent_status)
          @patent_status_date = args[:patent_status_date] if args.key?(:patent_status_date)
          @skills_used = args[:skills_used] if args.key?(:skills_used)
        end
      end
      
      # Resource that represents the name of a person.
      class PersonName
        include Google::Apis::Core::Hashable
      
        # A string represents a person's full name. For example, "Dr. John Smith".
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `formattedName`
        # @return [String]
        attr_accessor :formatted_name
      
        # Preferred name for the person. This field is ignored if structured_name
        # is provided.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `preferredName`
        # @return [String]
        attr_accessor :preferred_name
      
        # Resource that represents a person's structured name.
        # Corresponds to the JSON property `structuredName`
        # @return [Google::Apis::JobsV4beta1::PersonStructuredName]
        attr_accessor :structured_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @formatted_name = args[:formatted_name] if args.key?(:formatted_name)
          @preferred_name = args[:preferred_name] if args.key?(:preferred_name)
          @structured_name = args[:structured_name] if args.key?(:structured_name)
        end
      end
      
      # Filter on person name.
      class PersonNameFilter
        include Google::Apis::Core::Hashable
      
        # Required. The person name. For example, "John Smith".
        # Can be any combination of PersonName.structured_name.given_name,
        # PersonName.structured_name.middle_initial,
        # PersonName.structured_name.family_name, and
        # PersonName.formatted_name.
        # Corresponds to the JSON property `personName`
        # @return [String]
        attr_accessor :person_name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @person_name = args[:person_name] if args.key?(:person_name)
        end
      end
      
      # Resource that represents a person's structured name.
      class PersonStructuredName
        include Google::Apis::Core::Hashable
      
        # Family/last name.
        # It's derived from formatted_name if not provided.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `familyName`
        # @return [String]
        attr_accessor :family_name
      
        # Given/first name.
        # It's derived from formatted_name if not provided.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `givenName`
        # @return [String]
        attr_accessor :given_name
      
        # Middle initial.
        # It's derived from formatted_name if not provided.
        # Number of characters allowed is 20.
        # Corresponds to the JSON property `middleInitial`
        # @return [String]
        attr_accessor :middle_initial
      
        # Preferred given/first name or nickname.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `preferredName`
        # @return [String]
        attr_accessor :preferred_name
      
        # Prefixes.
        # Number of characters allowed is 20.
        # Corresponds to the JSON property `prefixes`
        # @return [Array<String>]
        attr_accessor :prefixes
      
        # Suffixes.
        # Number of characters allowed is 20.
        # Corresponds to the JSON property `suffixes`
        # @return [Array<String>]
        attr_accessor :suffixes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @family_name = args[:family_name] if args.key?(:family_name)
          @given_name = args[:given_name] if args.key?(:given_name)
          @middle_initial = args[:middle_initial] if args.key?(:middle_initial)
          @preferred_name = args[:preferred_name] if args.key?(:preferred_name)
          @prefixes = args[:prefixes] if args.key?(:prefixes)
          @suffixes = args[:suffixes] if args.key?(:suffixes)
        end
      end
      
      # Resource that represents a valid URI for a personal use.
      class PersonalUri
        include Google::Apis::Core::Hashable
      
        # The personal URI.
        # Number of characters allowed is 4,000.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Resource that represents a person's telephone number.
      class Phone
        include Google::Apis::Core::Hashable
      
        # Phone number.
        # Any phone formats are supported and only exact matches are performed on
        # searches. For example, if a phone number in profile is provided in the
        # format of "(xxx)xxx-xxxx", in profile searches the same phone format
        # has to be provided.
        # Number of characters allowed is 20.
        # Corresponds to the JSON property `number`
        # @return [String]
        attr_accessor :number
      
        # The phone type. For example, LANDLINE, MOBILE, FAX.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The usage of the phone. For example, SCHOOL, WORK, PERSONAL.
        # Corresponds to the JSON property `usage`
        # @return [String]
        attr_accessor :usage
      
        # When this number is available. Any descriptive string is expected.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `whenAvailable`
        # @return [String]
        attr_accessor :when_available
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @number = args[:number] if args.key?(:number)
          @type = args[:type] if args.key?(:type)
          @usage = args[:usage] if args.key?(:usage)
          @when_available = args[:when_available] if args.key?(:when_available)
        end
      end
      
      # Represents a postal address, e.g. for postal delivery or payments addresses.
      # Given a postal address, a postal service can deliver items to a premise, P.O.
      # Box or similar.
      # It is not intended to model geographical locations (roads, towns,
      # mountains).
      # In typical usage an address would be created via user input or from importing
      # existing data, depending on the type of process.
      # Advice on address input / editing:
      # - Use an i18n-ready address widget such as
      # https://github.com/google/libaddressinput)
      # - Users should not be presented with UI elements for input or editing of
      # fields outside countries where that field is used.
      # For more guidance on how to use this schema, please see:
      # https://support.google.com/business/answer/6397478
      class PostalAddress
        include Google::Apis::Core::Hashable
      
        # Unstructured address lines describing the lower levels of an address.
        # Because values in address_lines do not have type information and may
        # sometimes contain multiple values in a single field (e.g.
        # "Austin, TX"), it is important that the line order is clear. The order of
        # address lines should be "envelope order" for the country/region of the
        # address. In places where this can vary (e.g. Japan), address_language is
        # used to make it explicit (e.g. "ja" for large-to-small ordering and
        # "ja-Latn" or "en" for small-to-large). This way, the most specific line of
        # an address can be selected based on the language.
        # The minimum permitted structural representation of an address consists
        # of a region_code with all remaining information placed in the
        # address_lines. It would be possible to format such an address very
        # approximately without geocoding, but no semantic reasoning could be
        # made about any of the address components until it was at least
        # partially resolved.
        # Creating an address only containing a region_code and address_lines, and
        # then geocoding is the recommended way to handle completely unstructured
        # addresses (as opposed to guessing which parts of the address should be
        # localities or administrative areas).
        # Corresponds to the JSON property `addressLines`
        # @return [Array<String>]
        attr_accessor :address_lines
      
        # Optional. Highest administrative subdivision which is used for postal
        # addresses of a country or region.
        # For example, this can be a state, a province, an oblast, or a prefecture.
        # Specifically, for Spain this is the province and not the autonomous
        # community (e.g. "Barcelona" and not "Catalonia").
        # Many countries don't use an administrative area in postal addresses. E.g.
        # in Switzerland this should be left unpopulated.
        # Corresponds to the JSON property `administrativeArea`
        # @return [String]
        attr_accessor :administrative_area
      
        # Optional. BCP-47 language code of the contents of this address (if
        # known). This is often the UI language of the input form or is expected
        # to match one of the languages used in the address' country/region, or their
        # transliterated equivalents.
        # This can affect formatting in certain countries, but is not critical
        # to the correctness of the data and will never affect any validation or
        # other non-formatting related operations.
        # If this value is not known, it should be omitted (rather than specifying a
        # possibly incorrect default).
        # Examples: "zh-Hant", "ja", "ja-Latn", "en".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Optional. Generally refers to the city/town portion of the address.
        # Examples: US city, IT comune, UK post town.
        # In regions of the world where localities are not well defined or do not fit
        # into this structure well, leave locality empty and use address_lines.
        # Corresponds to the JSON property `locality`
        # @return [String]
        attr_accessor :locality
      
        # Optional. The name of the organization at the address.
        # Corresponds to the JSON property `organization`
        # @return [String]
        attr_accessor :organization
      
        # Optional. Postal code of the address. Not all countries use or require
        # postal codes to be present, but where they are used, they may trigger
        # additional validation with other parts of the address (e.g. state/zip
        # validation in the U.S.A.).
        # Corresponds to the JSON property `postalCode`
        # @return [String]
        attr_accessor :postal_code
      
        # Optional. The recipient at the address.
        # This field may, under certain circumstances, contain multiline information.
        # For example, it might contain "care of" information.
        # Corresponds to the JSON property `recipients`
        # @return [Array<String>]
        attr_accessor :recipients
      
        # Required. CLDR region code of the country/region of the address. This
        # is never inferred and it is up to the user to ensure the value is
        # correct. See http://cldr.unicode.org/ and
        # http://www.unicode.org/cldr/charts/30/supplemental/territory_information.html
        # for details. Example: "CH" for Switzerland.
        # Corresponds to the JSON property `regionCode`
        # @return [String]
        attr_accessor :region_code
      
        # The schema revision of the `PostalAddress`. This must be set to 0, which is
        # the latest revision.
        # All new revisions **must** be backward compatible with old revisions.
        # Corresponds to the JSON property `revision`
        # @return [Fixnum]
        attr_accessor :revision
      
        # Optional. Additional, country-specific, sorting code. This is not used
        # in most regions. Where it is used, the value is either a string like
        # "CEDEX", optionally followed by a number (e.g. "CEDEX 7"), or just a number
        # alone, representing the "sector code" (Jamaica), "delivery area indicator"
        # (Malawi) or "post office indicator" (e.g. Côte d'Ivoire).
        # Corresponds to the JSON property `sortingCode`
        # @return [String]
        attr_accessor :sorting_code
      
        # Optional. Sublocality of the address.
        # For example, this can be neighborhoods, boroughs, districts.
        # Corresponds to the JSON property `sublocality`
        # @return [String]
        attr_accessor :sublocality
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @address_lines = args[:address_lines] if args.key?(:address_lines)
          @administrative_area = args[:administrative_area] if args.key?(:administrative_area)
          @language_code = args[:language_code] if args.key?(:language_code)
          @locality = args[:locality] if args.key?(:locality)
          @organization = args[:organization] if args.key?(:organization)
          @postal_code = args[:postal_code] if args.key?(:postal_code)
          @recipients = args[:recipients] if args.key?(:recipients)
          @region_code = args[:region_code] if args.key?(:region_code)
          @revision = args[:revision] if args.key?(:revision)
          @sorting_code = args[:sorting_code] if args.key?(:sorting_code)
          @sublocality = args[:sublocality] if args.key?(:sublocality)
        end
      end
      
      # Options for job processing.
      class ProcessingOptions
        include Google::Apis::Core::Hashable
      
        # If set to `true`, the service does not attempt to resolve a
        # more precise address for the job.
        # Corresponds to the JSON property `disableStreetAddressResolution`
        # @return [Boolean]
        attr_accessor :disable_street_address_resolution
        alias_method :disable_street_address_resolution?, :disable_street_address_resolution
      
        # Option for job HTML content sanitization. Applied fields are:
        # * description
        # * applicationInfo.instruction
        # * incentives
        # * qualifications
        # * responsibilities
        # HTML tags in these fields may be stripped if sanitiazation isn't
        # disabled.
        # Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
        # Corresponds to the JSON property `htmlSanitization`
        # @return [String]
        attr_accessor :html_sanitization
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @disable_street_address_resolution = args[:disable_street_address_resolution] if args.key?(:disable_street_address_resolution)
          @html_sanitization = args[:html_sanitization] if args.key?(:html_sanitization)
        end
      end
      
      # A resource that represents the profile for a job candidate (also referred to
      # as a "single-source profile").
      class Profile
        include Google::Apis::Core::Hashable
      
        # The individual or collaborative activities which the candidate has
        # participated in, for example, open-source projects, class assignments that
        # aren't listed in employment_records.
        # The limitation for max number of activities is 50.
        # Corresponds to the JSON property `activities`
        # @return [Array<Google::Apis::JobsV4beta1::Activity>]
        attr_accessor :activities
      
        # Available contact information besides addresses, email_addresses,
        # phone_numbers and personal_uris. For example, Hang-out, Skype.
        # Corresponds to the JSON property `additionalContactInfo`
        # @return [Array<Google::Apis::JobsV4beta1::AdditionalContactInfo>]
        attr_accessor :additional_contact_info
      
        # The candidate's postal addresses. It's highly recommended to
        # input this information as accurately as possible to help improve search
        # quality. Here are some recommendations:
        # * Provide Address.usage if possible, especially if the address is
        # PERSONAL. During a search only personal addresses are considered. If there
        # is no such address, all addresses with unspecified usage are assumed to be
        # personal.
        # * Provide Address.current for the current address if possible. During
        # a search, only current addresses are considered. If there is no such
        # address, all addresses are assumed to be current.
        # When displaying a candidate's addresses, it is sometimes desirable to limit
        # the number of addresses shown. In these cases we recommend that you display
        # the addresses in the following order of priority:
        # 1. Address.usage is PERSONAL and Address.current is true.
        # 2. Address.usage is PERSONAL and Address.current is false or not
        # set.
        # 3. Address.usage is CONTACT_INFO_USAGE_UNSPECIFIED and
        # Address.current is true.
        # 4. Address.usage is CONTACT_INFO_USAGE_UNSPECIFIED and
        # Address.current is false or not set.
        # Corresponds to the JSON property `addresses`
        # @return [Array<Google::Apis::JobsV4beta1::Address>]
        attr_accessor :addresses
      
        # Output only. The resource names of the candidate's applications.
        # Corresponds to the JSON property `applications`
        # @return [Array<String>]
        attr_accessor :applications
      
        # Output only. The resource names of the candidate's assignments.
        # Corresponds to the JSON property `assignments`
        # @return [Array<String>]
        attr_accessor :assignments
      
        # Output only. Candidate's availability signals.
        # Corresponds to the JSON property `availabilitySignals`
        # @return [Array<Google::Apis::JobsV4beta1::AvailabilitySignal>]
        attr_accessor :availability_signals
      
        # The timestamp when the profile was last updated as a result of a direct or
        # indirect action by a candidate.
        # These actions include:
        # * Direct actions such as the candidate submitting a new resume as part of a
        # job application to the agency, using a self-service tool such as a website
        # to update their profile, and so on.
        # * Indirect actions by the candidate such as uploading a resume to a job
        # board that is collected by the agency through a feed, providing a resume to
        # a recruiter who then uploads it into the ATS, and so on.
        # * Updates made to the candidate's profile by the recruiter as a result of
        # interacting with the candidate (for example adding a skill or work
        # preference, and so on). Changes to recruiting_notes are specifically
        # excluded from this action type.
        # Note: candidate_update_time must be greater than or equal to
        # resume_update_time or an error is thrown.
        # Corresponds to the JSON property `candidateUpdateTime`
        # @return [String]
        attr_accessor :candidate_update_time
      
        # The certifications acquired by the candidate.
        # Corresponds to the JSON property `certifications`
        # @return [Array<Google::Apis::JobsV4beta1::Certification>]
        attr_accessor :certifications
      
        # The timestamp when the profile was first created at this source.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # A map of fields to hold both filterable and non-filterable custom profile
        # attributes that aren't covered by the provided structured fields. See
        # CustomAttribute for more details.
        # At most 100 filterable and at most 100 unfilterable keys are supported. If
        # limit is exceeded, an error is thrown. Custom attributes are `unfilterable`
        # by default. These are filterable when the `filterable` flag is set to
        # `true`.
        # Numeric custom attributes: each key can only map to one numeric value,
        # otherwise an error is thrown. Client can also filter on numeric custom
        # attributes using '>', '<' or '=' operators.
        # String custom attributes: each key can map up to 50 string values. For
        # filterable string value, each value has a byte size of no more than 256B.
        # For unfilterable string values, the maximum byte size of a single key is
        # 64B. An error is thrown for any request exceeding the limit.
        # The maximum total byte size is 10KB.
        # Corresponds to the JSON property `customAttributes`
        # @return [Hash<String,Google::Apis::JobsV4beta1::CustomAttribute>]
        attr_accessor :custom_attributes
      
        # Output only. Derived locations of the profile, resolved from Profile.addresses.
        # derived_addresses are exactly matched to Profile.addresses in the
        # same order.
        # Corresponds to the JSON property `derivedAddresses`
        # @return [Array<Google::Apis::JobsV4beta1::Location>]
        attr_accessor :derived_addresses
      
        # The education history record of the candidate. It's highly recommended to
        # input this information as accurately as possible to help improve search
        # quality. Here are some recommendations:
        # * Specify the start and end dates of the education records.
        # * List each education type separately, no matter how minor the change is.
        # For example, the profile contains the education experience from the same
        # school but different degrees.
        # * Provide EducationRecord.is_current for the current education if
        # possible. If not, it's inferred from user inputs.
        # The limitation for max number of education records is 100.
        # Corresponds to the JSON property `educationRecords`
        # @return [Array<Google::Apis::JobsV4beta1::EducationRecord>]
        attr_accessor :education_records
      
        # The candidate's email addresses.
        # Corresponds to the JSON property `emailAddresses`
        # @return [Array<Google::Apis::JobsV4beta1::Email>]
        attr_accessor :email_addresses
      
        # The employment history records of the candidate. It's highly recommended
        # to input this information as accurately as possible to help improve search
        # quality. Here are some recommendations:
        # * Specify the start and end dates of the employment records.
        # * List different employment types separately, no matter how minor the
        # change is.
        # For example, only job title is changed from "software engineer" to "senior
        # software engineer".
        # * Provide EmploymentRecord.is_current for the current employment if
        # possible. If not, it's inferred from user inputs.
        # The limitation for max number of employment records is 100.
        # Corresponds to the JSON property `employmentRecords`
        # @return [Array<Google::Apis::JobsV4beta1::EmploymentRecord>]
        attr_accessor :employment_records
      
        # Profile's id in client system, if available. This value is unique for each
        # profile inside a tenant. An error is thrown if another profile with the
        # same external_id is created.
        # The maximum number of bytes allowed is 100.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # The cluster id of the profile to associate with other profile(s) for the
        # same candidate.
        # This field should be generated by the customer. If a value is not provided,
        # a random UUID is assigned to this field of the profile.
        # This is used to link multiple profiles to the same candidate. For example,
        # a client has a candidate with two profiles, where one was created recently
        # and the other one was created 5 years ago. These two profiles may be very
        # different. The clients can create the first profile and get a generated
        # group_id, and assign it when the second profile is created,
        # indicating these two profiles are referring to the same candidate.
        # Corresponds to the JSON property `groupId`
        # @return [String]
        attr_accessor :group_id
      
        # Indicates the hirable status of the candidate.
        # Corresponds to the JSON property `isHirable`
        # @return [Boolean]
        attr_accessor :is_hirable
        alias_method :is_hirable?, :is_hirable
      
        # Output only. Keyword snippet shows how the search result is related to a
        # search query.  This is only returned in SearchProfilesResponse.
        # Corresponds to the JSON property `keywordSnippet`
        # @return [String]
        attr_accessor :keyword_snippet
      
        # Required during profile update.
        # Resource name assigned to a profile by the API.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`",
        # for example, "projects/foo/tenants/bar/profiles/baz".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The patents acquired by the candidate.
        # Corresponds to the JSON property `patents`
        # @return [Array<Google::Apis::JobsV4beta1::Patent>]
        attr_accessor :patents
      
        # The names of the candidate this profile references.
        # Currently only one person name is supported.
        # Corresponds to the JSON property `personNames`
        # @return [Array<Google::Apis::JobsV4beta1::PersonName>]
        attr_accessor :person_names
      
        # The candidate's personal URIs.
        # Corresponds to the JSON property `personalUris`
        # @return [Array<Google::Apis::JobsV4beta1::PersonalUri>]
        attr_accessor :personal_uris
      
        # The candidate's phone number(s).
        # Corresponds to the JSON property `phoneNumbers`
        # @return [Array<Google::Apis::JobsV4beta1::Phone>]
        attr_accessor :phone_numbers
      
        # Output only. Indicates if a summarized profile was created as part of the
        # profile creation API call. This flag does not indicate whether a profile is
        # searchable or not.
        # Corresponds to the JSON property `processed`
        # @return [Boolean]
        attr_accessor :processed
        alias_method :processed?, :processed
      
        # The publications published by the candidate.
        # The limitation for max number of publications is 50.
        # Corresponds to the JSON property `publications`
        # @return [Array<Google::Apis::JobsV4beta1::Publication>]
        attr_accessor :publications
      
        # Resource that represents a resume.
        # Corresponds to the JSON property `resume`
        # @return [Google::Apis::JobsV4beta1::Resume]
        attr_accessor :resume
      
        # The timestamp when the candidate's resume was added or updated on the
        # candidate's profile. Whether that resume was directly uploaded by a
        # candidate, pulled from a 3rd party job board feed, added by a recruiter,
        # and so on.
        # If this field is updated, it's expected that resume is provided in
        # the create or update calls.
        # Corresponds to the JSON property `resumeUpdateTime`
        # @return [String]
        attr_accessor :resume_update_time
      
        # The skill set of the candidate. It's highly recommended to provide as
        # much information as possible to help improve the search quality.
        # The limitation for max number of skills is 500.
        # Corresponds to the JSON property `skills`
        # @return [Array<Google::Apis::JobsV4beta1::Skill>]
        attr_accessor :skills
      
        # The source description indicating where the profile is acquired.
        # For example, if a candidate profile is acquired from a resume, the user can
        # input "resume" here to indicate the source.
        # The maximum number of bytes allowed is 100.
        # Corresponds to the JSON property `source`
        # @return [String]
        attr_accessor :source
      
        # The timestamp when the profile was last updated at this source.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # The URI set by clients that links to this profile's client-side copy.
        # The maximum number of bytes allowed is 4000.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @activities = args[:activities] if args.key?(:activities)
          @additional_contact_info = args[:additional_contact_info] if args.key?(:additional_contact_info)
          @addresses = args[:addresses] if args.key?(:addresses)
          @applications = args[:applications] if args.key?(:applications)
          @assignments = args[:assignments] if args.key?(:assignments)
          @availability_signals = args[:availability_signals] if args.key?(:availability_signals)
          @candidate_update_time = args[:candidate_update_time] if args.key?(:candidate_update_time)
          @certifications = args[:certifications] if args.key?(:certifications)
          @create_time = args[:create_time] if args.key?(:create_time)
          @custom_attributes = args[:custom_attributes] if args.key?(:custom_attributes)
          @derived_addresses = args[:derived_addresses] if args.key?(:derived_addresses)
          @education_records = args[:education_records] if args.key?(:education_records)
          @email_addresses = args[:email_addresses] if args.key?(:email_addresses)
          @employment_records = args[:employment_records] if args.key?(:employment_records)
          @external_id = args[:external_id] if args.key?(:external_id)
          @group_id = args[:group_id] if args.key?(:group_id)
          @is_hirable = args[:is_hirable] if args.key?(:is_hirable)
          @keyword_snippet = args[:keyword_snippet] if args.key?(:keyword_snippet)
          @name = args[:name] if args.key?(:name)
          @patents = args[:patents] if args.key?(:patents)
          @person_names = args[:person_names] if args.key?(:person_names)
          @personal_uris = args[:personal_uris] if args.key?(:personal_uris)
          @phone_numbers = args[:phone_numbers] if args.key?(:phone_numbers)
          @processed = args[:processed] if args.key?(:processed)
          @publications = args[:publications] if args.key?(:publications)
          @resume = args[:resume] if args.key?(:resume)
          @resume_update_time = args[:resume_update_time] if args.key?(:resume_update_time)
          @skills = args[:skills] if args.key?(:skills)
          @source = args[:source] if args.key?(:source)
          @update_time = args[:update_time] if args.key?(:update_time)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # An event issued when a profile searcher interacts with the application
      # that implements Cloud Talent Solution.
      class ProfileEvent
        include Google::Apis::Core::Hashable
      
        # The job name(s) associated with this client event. Leave it
        # empty if the event isn't associated with a job.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`", for
        # example, "projects/foo/tenants/bar/jobs/baz".
        # Corresponds to the JSON property `jobs`
        # @return [Array<String>]
        attr_accessor :jobs
      
        # Required. The profile name(s) associated with this client event.
        # The format is
        # "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`",
        # for example, "projects/foo/tenants/bar/profiles/baz".
        # Corresponds to the JSON property `profiles`
        # @return [Array<String>]
        attr_accessor :profiles
      
        # Required. Type of event.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @profiles = args[:profiles] if args.key?(:profiles)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Filters to apply when performing the search query.
      class ProfileQuery
        include Google::Apis::Core::Hashable
      
        # The application date filters specify application date ranges to match on.
        # Corresponds to the JSON property `applicationDateFilters`
        # @return [Array<Google::Apis::JobsV4beta1::ApplicationDateFilter>]
        attr_accessor :application_date_filters
      
        # The application job filters specify the job applied for in the application.
        # Corresponds to the JSON property `applicationJobFilters`
        # @return [Array<Google::Apis::JobsV4beta1::ApplicationJobFilter>]
        attr_accessor :application_job_filters
      
        # The application outcome notes filters specify the notes for the outcome of
        # the job application.
        # Corresponds to the JSON property `applicationOutcomeNotesFilters`
        # @return [Array<Google::Apis::JobsV4beta1::ApplicationOutcomeNotesFilter>]
        attr_accessor :application_outcome_notes_filters
      
        # The availability filter which filters based on
        # Profile.availability_signals.
        # The availability filter helps a recruiter understand if a
        # specific candidate is likely to be actively seeking new job opportunities
        # based on an aggregated set of signals.  Specifically, the intent is NOT to
        # indicate the candidate's potential qualification / interest / close ability
        # for a specific job.
        # There can be at most one AvailabilityFilter per
        # signal_type. If there are multiple
        # AvailabilityFilter for a signal_type,
        # an error is thrown.
        # Corresponds to the JSON property `availabilityFilters`
        # @return [Array<Google::Apis::JobsV4beta1::AvailabilityFilter>]
        attr_accessor :availability_filters
      
        # Deprecated. Use AvailabilityFilter instead.
        # Filter on availability signals.
        # Corresponds to the JSON property `candidateAvailabilityFilter`
        # @return [Google::Apis::JobsV4beta1::CandidateAvailabilityFilter]
        attr_accessor :candidate_availability_filter
      
        # This filter specifies a structured syntax to match against the
        # Profile.custom_attributes that are marked as `filterable`.
        # The syntax for this expression is a subset of Google SQL syntax.
        # String custom attributes: supported operators are =, != where the left of
        # the operator is a custom field key and the right of the operator is a
        # string (surrounded by quotes) value.
        # Numeric custom attributes: Supported operators are '>', '<' or '='
        # operators where the left of the operator is a custom field key and the
        # right of the operator is a numeric value.
        # Supported functions are LOWER(<field_name>) to
        # perform case insensitive match and EMPTY(<field_name>) to filter on the
        # existence of a key.
        # Boolean expressions (AND/OR/NOT) are supported up to 3 levels of
        # nesting (for example "((A AND B AND C) OR NOT D) AND E"), and there can be
        # a maximum of 50 comparisons/functions in the expression. The expression
        # must be < 2000 characters in length.
        # Sample Query:
        # (key1 = "TEST" OR LOWER(key1)="test" OR NOT EMPTY(key1))
        # Corresponds to the JSON property `customAttributeFilter`
        # @return [String]
        attr_accessor :custom_attribute_filter
      
        # Education filter specifies education of profiles to match on.
        # If an education filter isn't specified, profiles with any education are
        # retrieved.
        # If multiple education filters are specified, profiles that match any
        # education filters are retrieved.
        # If EducationFilter.negated is specified, the result won't contain
        # profiles that match the educations.
        # For example, search for profiles with a master degree.
        # Corresponds to the JSON property `educationFilters`
        # @return [Array<Google::Apis::JobsV4beta1::EducationFilter>]
        attr_accessor :education_filters
      
        # Employer filter specifies employers of profiles to match on.
        # If an employer filter isn't specified, profiles with any employers are
        # retrieved.
        # If multiple employer filters are specified, profiles with any matching
        # employers are retrieved.
        # If EmployerFilter.negated is specified, the result won't contain
        # profiles that match the employers.
        # For example, search for profiles that have working experience at "Google
        # LLC".
        # Corresponds to the JSON property `employerFilters`
        # @return [Array<Google::Apis::JobsV4beta1::EmployerFilter>]
        attr_accessor :employer_filters
      
        # The hirable filter specifies the profile's hirable status to match on.
        # Corresponds to the JSON property `hirableFilter`
        # @return [Boolean]
        attr_accessor :hirable_filter
        alias_method :hirable_filter?, :hirable_filter
      
        # Job title filter specifies job titles of profiles to match on.
        # If a job title isn't specified, profiles with any titles are retrieved.
        # If multiple values are specified, profiles are retrieved with any of the
        # specified job titles.
        # If JobTitleFilter.negated is specified, the result won't contain
        # profiles with the job titles.
        # For example, search for profiles with a job title "Product Manager".
        # Corresponds to the JSON property `jobTitleFilters`
        # @return [Array<Google::Apis::JobsV4beta1::JobTitleFilter>]
        attr_accessor :job_title_filters
      
        # The location filter specifies geo-regions containing the profiles to
        # search against.
        # One of LocationFilter.address or LocationFilter.lat_lng must be
        # provided or an error is thrown. If both LocationFilter.address and
        # LocationFilter.lat_lng are provided, an error is thrown.
        # The following logic is used to determine which locations in
        # the profile to filter against:
        # 1. All of the profile's geocoded Profile.addresses where
        # Address.usage is PERSONAL and Address.current is true.
        # 2. If the above set of locations is empty, all of the profile's geocoded
        # Profile.addresses where Address.usage is
        # CONTACT_INFO_USAGE_UNSPECIFIED and Address.current is true.
        # 3. If the above set of locations is empty, all of the profile's geocoded
        # Profile.addresses where Address.usage is PERSONAL or
        # CONTACT_INFO_USAGE_UNSPECIFIED and Address.current is not set.
        # This means that any profiles without any Profile.addresses that match
        # any of the above criteria will not be included in a search with location
        # filter. Furthermore, any Profile.addresses where Address.usage is
        # WORK or SCHOOL or where Address.current is false are not considered for
        # location filter.
        # If a location filter isn't specified, profiles fitting the other search
        # criteria are retrieved regardless of where they're located.
        # If LocationFilter.negated is specified, the result doesn't contain
        # profiles from that location.
        # If LocationFilter.address is provided, the
        # LocationType, center
        # point (latitude and longitude), and radius are automatically detected by
        # the Google Maps Geocoding API and included as well. If
        # LocationFilter.address cannot be geocoded, the filter
        # falls back to keyword search.
        # If the detected
        # LocationType is
        # LocationType.SUB_ADMINISTRATIVE_AREA,
        # LocationType.ADMINISTRATIVE_AREA,
        # or
        # LocationType.COUNTRY,
        # the filter is performed against the detected location name (using exact
        # text matching). Otherwise, the filter is performed against the detected
        # center point and a radius of detected location radius +
        # LocationFilter.distance_in_miles.
        # If LocationFilter.address is provided,
        # LocationFilter.distance_in_miles is the additional radius on top of the
        # radius of the location geocoded from LocationFilter.address. If
        # LocationFilter.lat_lng is provided,
        # LocationFilter.distance_in_miles is the only radius that is used.
        # LocationFilter.distance_in_miles is 10 by default. Note that the value
        # of LocationFilter.distance_in_miles is 0 if it is unset, so the server
        # does not differentiate LocationFilter.distance_in_miles that is
        # explicitly set to 0 and LocationFilter.distance_in_miles that is not
        # set. Which means that if LocationFilter.distance_in_miles is explicitly
        # set to 0, the server will use the default value of
        # LocationFilter.distance_in_miles which is 10. To work around this and
        # effectively set LocationFilter.distance_in_miles to 0, we recommend
        # setting LocationFilter.distance_in_miles to a very small decimal number
        # (such as 0.00001).
        # If LocationFilter.distance_in_miles is negative, an error is thrown.
        # Corresponds to the JSON property `locationFilters`
        # @return [Array<Google::Apis::JobsV4beta1::LocationFilter>]
        attr_accessor :location_filters
      
        # Person name filter specifies person name of profiles to match on.
        # If multiple person name filters are specified, profiles that match any
        # person name filters are retrieved.
        # For example, search for profiles of candidates with name "John Smith".
        # Corresponds to the JSON property `personNameFilters`
        # @return [Array<Google::Apis::JobsV4beta1::PersonNameFilter>]
        attr_accessor :person_name_filters
      
        # Keywords to match any text fields of profiles.
        # For example, "software engineer in Palo Alto".
        # Corresponds to the JSON property `query`
        # @return [String]
        attr_accessor :query
      
        # Skill filter specifies skill of profiles to match on.
        # If a skill filter isn't specified, profiles with any skills are retrieved.
        # If multiple skill filters are specified, profiles that match any skill
        # filters are retrieved.
        # If SkillFilter.negated is specified, the result won't contain profiles
        # that match the skills.
        # For example, search for profiles that have "Java" and "Python" in skill
        # list.
        # Corresponds to the JSON property `skillFilters`
        # @return [Array<Google::Apis::JobsV4beta1::SkillFilter>]
        attr_accessor :skill_filters
      
        # Time filter specifies the create/update timestamp of the profiles to match
        # on.
        # For example, search for profiles created since "2018-1-1".
        # Corresponds to the JSON property `timeFilters`
        # @return [Array<Google::Apis::JobsV4beta1::TimeFilter>]
        attr_accessor :time_filters
      
        # Work experience filter specifies the total working experience of profiles
        # to match on.
        # If a work experience filter isn't specified, profiles with any
        # professional experience are retrieved.
        # If multiple work experience filters are specified, profiles that match any
        # work experience filters are retrieved.
        # For example, search for profiles with 10 years of work experience.
        # Corresponds to the JSON property `workExperienceFilter`
        # @return [Array<Google::Apis::JobsV4beta1::WorkExperienceFilter>]
        attr_accessor :work_experience_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application_date_filters = args[:application_date_filters] if args.key?(:application_date_filters)
          @application_job_filters = args[:application_job_filters] if args.key?(:application_job_filters)
          @application_outcome_notes_filters = args[:application_outcome_notes_filters] if args.key?(:application_outcome_notes_filters)
          @availability_filters = args[:availability_filters] if args.key?(:availability_filters)
          @candidate_availability_filter = args[:candidate_availability_filter] if args.key?(:candidate_availability_filter)
          @custom_attribute_filter = args[:custom_attribute_filter] if args.key?(:custom_attribute_filter)
          @education_filters = args[:education_filters] if args.key?(:education_filters)
          @employer_filters = args[:employer_filters] if args.key?(:employer_filters)
          @hirable_filter = args[:hirable_filter] if args.key?(:hirable_filter)
          @job_title_filters = args[:job_title_filters] if args.key?(:job_title_filters)
          @location_filters = args[:location_filters] if args.key?(:location_filters)
          @person_name_filters = args[:person_name_filters] if args.key?(:person_name_filters)
          @query = args[:query] if args.key?(:query)
          @skill_filters = args[:skill_filters] if args.key?(:skill_filters)
          @time_filters = args[:time_filters] if args.key?(:time_filters)
          @work_experience_filter = args[:work_experience_filter] if args.key?(:work_experience_filter)
        end
      end
      
      # Resource that represents a publication resource of a candidate.
      class Publication
        include Google::Apis::Core::Hashable
      
        # A list of author names.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `authors`
        # @return [Array<String>]
        attr_accessor :authors
      
        # The description of the publication.
        # Number of characters allowed is 100,000.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # ISBN number.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `isbn`
        # @return [String]
        attr_accessor :isbn
      
        # The journal name of the publication.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `journal`
        # @return [String]
        attr_accessor :journal
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `publicationDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :publication_date
      
        # The publication type.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `publicationType`
        # @return [String]
        attr_accessor :publication_type
      
        # The publisher of the journal.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `publisher`
        # @return [String]
        attr_accessor :publisher
      
        # The title of the publication.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `title`
        # @return [String]
        attr_accessor :title
      
        # Volume number.
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `volume`
        # @return [String]
        attr_accessor :volume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @authors = args[:authors] if args.key?(:authors)
          @description = args[:description] if args.key?(:description)
          @isbn = args[:isbn] if args.key?(:isbn)
          @journal = args[:journal] if args.key?(:journal)
          @publication_date = args[:publication_date] if args.key?(:publication_date)
          @publication_type = args[:publication_type] if args.key?(:publication_type)
          @publisher = args[:publisher] if args.key?(:publisher)
          @title = args[:title] if args.key?(:title)
          @volume = args[:volume] if args.key?(:volume)
        end
      end
      
      # The details of the score received for an assessment or interview.
      class Rating
        include Google::Apis::Core::Hashable
      
        # The steps within the score (for example, interval = 1 max = 5
        # min = 1 indicates that the score can be 1, 2, 3, 4, or 5)
        # Corresponds to the JSON property `interval`
        # @return [Float]
        attr_accessor :interval
      
        # The maximum value for the score.
        # Corresponds to the JSON property `max`
        # @return [Float]
        attr_accessor :max
      
        # The minimum value for the score.
        # Corresponds to the JSON property `min`
        # @return [Float]
        attr_accessor :min
      
        # Overall score.
        # Corresponds to the JSON property `overall`
        # @return [Float]
        attr_accessor :overall
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @interval = args[:interval] if args.key?(:interval)
          @max = args[:max] if args.key?(:max)
          @min = args[:min] if args.key?(:min)
          @overall = args[:overall] if args.key?(:overall)
        end
      end
      
      # Meta information related to the job searcher or entity
      # conducting the job search. This information is used to improve the
      # performance of the service.
      class RequestMetadata
        include Google::Apis::Core::Hashable
      
        # Only set when any of domain, session_id and user_id isn't
        # available for some reason. It is highly recommended not to set this field
        # and provide accurate domain, session_id and user_id for the
        # best service experience.
        # Corresponds to the JSON property `allowMissingIds`
        # @return [Boolean]
        attr_accessor :allow_missing_ids
        alias_method :allow_missing_ids?, :allow_missing_ids
      
        # Device information collected from the job seeker, candidate, or
        # other entity conducting the job search. Providing this information improves
        # the quality of the search results across devices.
        # Corresponds to the JSON property `deviceInfo`
        # @return [Google::Apis::JobsV4beta1::DeviceInfo]
        attr_accessor :device_info
      
        # Required if allow_missing_ids is unset or `false`.
        # The client-defined scope or source of the service call, which typically
        # is the domain on
        # which the service has been implemented and is currently being run.
        # For example, if the service is being run by client <em>Foo, Inc.</em>, on
        # job board www.foo.com and career site www.bar.com, then this field is
        # set to "foo.com" for use on the job board, and "bar.com" for use on the
        # career site.
        # Note that any improvements to the model for a particular tenant site rely
        # on this field being set correctly to a unique domain.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `domain`
        # @return [String]
        attr_accessor :domain
      
        # Required if allow_missing_ids is unset or `false`.
        # A unique session identification string. A session is defined as the
        # duration of an end user's interaction with the service over a certain
        # period.
        # Obfuscate this field for privacy concerns before
        # providing it to the service.
        # Note that any improvements to the model for a particular tenant site rely
        # on this field being set correctly to a unique session ID.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `sessionId`
        # @return [String]
        attr_accessor :session_id
      
        # Required if allow_missing_ids is unset or `false`.
        # A unique user identification string, as determined by the client.
        # To have the strongest positive impact on search quality
        # make sure the client-level is unique.
        # Obfuscate this field for privacy concerns before
        # providing it to the service.
        # Note that any improvements to the model for a particular tenant site rely
        # on this field being set correctly to a unique user ID.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `userId`
        # @return [String]
        attr_accessor :user_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_missing_ids = args[:allow_missing_ids] if args.key?(:allow_missing_ids)
          @device_info = args[:device_info] if args.key?(:device_info)
          @domain = args[:domain] if args.key?(:domain)
          @session_id = args[:session_id] if args.key?(:session_id)
          @user_id = args[:user_id] if args.key?(:user_id)
        end
      end
      
      # Additional information returned to client, such as debugging information.
      class ResponseMetadata
        include Google::Apis::Core::Hashable
      
        # A unique id associated with this call.
        # This id is logged for tracking purposes.
        # Corresponds to the JSON property `requestId`
        # @return [String]
        attr_accessor :request_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_id = args[:request_id] if args.key?(:request_id)
        end
      end
      
      # Resource that represents a resume.
      class Resume
        include Google::Apis::Core::Hashable
      
        # The format of structured_resume.
        # Corresponds to the JSON property `resumeType`
        # @return [String]
        attr_accessor :resume_type
      
        # Users can create a profile with only this field field, if resume_type
        # is HRXML. For example, the API parses this field and
        # creates a profile
        # with all structured fields populated. EmploymentRecord,
        # EducationRecord, and so on. An error is thrown if this field cannot be
        # parsed.
        # Note that the use of the functionality offered by this field to extract
        # data from resumes is an Alpha feature and as such is not covered by any
        # SLA.
        # Corresponds to the JSON property `structuredResume`
        # @return [String]
        attr_accessor :structured_resume
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @resume_type = args[:resume_type] if args.key?(:resume_type)
          @structured_resume = args[:structured_resume] if args.key?(:structured_resume)
        end
      end
      
      # The Request body of the `SearchJobs` call.
      class SearchJobsRequest
        include Google::Apis::Core::Hashable
      
        # Custom ranking information for SearchJobsRequest.
        # Corresponds to the JSON property `customRankingInfo`
        # @return [Google::Apis::JobsV4beta1::CustomRankingInfo]
        attr_accessor :custom_ranking_info
      
        # Controls whether to disable exact keyword match on Job.title,
        # Job.description, Job.company_display_name, Job.addresses,
        # Job.qualifications. When disable keyword match is turned off, a
        # keyword match returns jobs that do not match given category filters when
        # there are matching keywords. For example, for the query "program manager,"
        # a result is returned even if the job posting has the title "software
        # developer," which doesn't fall into "program manager" ontology, but does
        # have "program manager" appearing in its description.
        # For queries like "cloud" that don't contain title or
        # location specific ontology, jobs with "cloud" keyword matches are returned
        # regardless of this flag's value.
        # Use Company.keyword_searchable_job_custom_attributes if
        # company-specific globally matched custom field/attribute string values are
        # needed. Enabling keyword match improves recall of subsequent search
        # requests.
        # Defaults to false.
        # Corresponds to the JSON property `disableKeywordMatch`
        # @return [Boolean]
        attr_accessor :disable_keyword_match
        alias_method :disable_keyword_match?, :disable_keyword_match
      
        # Controls whether highly similar jobs are returned next to each other in
        # the search results. Jobs are identified as highly similar based on
        # their titles, job categories, and locations. Highly similar results are
        # clustered so that only one representative job of the cluster is
        # displayed to the job seeker higher up in the results, with the other jobs
        # being displayed lower down in the results.
        # Defaults to DiversificationLevel.SIMPLE if no value
        # is specified.
        # Corresponds to the JSON property `diversificationLevel`
        # @return [String]
        attr_accessor :diversification_level
      
        # Controls whether to broaden the search when it produces sparse results.
        # Broadened queries append results to the end of the matching results
        # list.
        # Defaults to false.
        # Corresponds to the JSON property `enableBroadening`
        # @return [Boolean]
        attr_accessor :enable_broadening
        alias_method :enable_broadening?, :enable_broadening
      
        # An expression specifies a histogram request against matching jobs.
        # Expression syntax is an aggregation function call with histogram facets and
        # other options.
        # Available aggregation function calls are:
        # * `count(string_histogram_facet)`: Count the number of matching entities,
        # for each distinct attribute value.
        # * `count(numeric_histogram_facet, list of buckets)`: Count the number of
        # matching entities within each bucket.
        # Data types:
        # * Histogram facet: facet names with format a-zA-Z+.
        # * String: string like "any string with backslash escape for quote(\")."
        # * Number: whole number and floating point number like 10, -1 and -0.01.
        # * List: list of elements with comma(,) separator surrounded by square
        # brackets, for example, [1, 2, 3] and ["one", "two", "three"].
        # Built-in constants:
        # * MIN (minimum number similar to java Double.MIN_VALUE)
        # * MAX (maximum number similar to java Double.MAX_VALUE)
        # Built-in functions:
        # * bucket(start, end[, label]): bucket built-in function creates a bucket
        # with range of start, end). Note that the end is exclusive, for example,
        # bucket(1, MAX, "positive number") or bucket(1, 10).
        # Job histogram facets:
        # * company_display_name: histogram by [Job.company_display_name.
        # * employment_type: histogram by Job.employment_types, for example,
        # "FULL_TIME", "PART_TIME".
        # * company_size: histogram by CompanySize, for example, "SMALL",
        # "MEDIUM", "BIG".
        # * publish_time_in_month: histogram by the Job.posting_publish_time
        # in months.
        # Must specify list of numeric buckets in spec.
        # * publish_time_in_year: histogram by the Job.posting_publish_time
        # in years.
        # Must specify list of numeric buckets in spec.
        # * degree_types: histogram by the Job.degree_types, for example,
        # "Bachelors", "Masters".
        # * job_level: histogram by the Job.job_level, for example, "Entry
        # Level".
        # * country: histogram by the country code of jobs, for example, "US", "FR".
        # * admin1: histogram by the admin1 code of jobs, which is a global
        # placeholder referring to the state, province, or the particular term a
        # country uses to define the geographic structure below the country level,
        # for example, "CA", "IL".
        # * city: histogram by a combination of the "city name, admin1 code". For
        # example,  "Mountain View, CA", "New York, NY".
        # * admin1_country: histogram by a combination of the "admin1 code, country",
        # for example, "CA, US", "IL, US".
        # * city_coordinate: histogram by the city center's GPS coordinates (latitude
        # and longitude), for example, 37.4038522,-122.0987765. Since the
        # coordinates of a city center can change, customers may need to refresh
        # them periodically.
        # * locale: histogram by the Job.language_code, for example, "en-US",
        # "fr-FR".
        # * language: histogram by the language subtag of the Job.language_code,
        # for example, "en", "fr".
        # * category: histogram by the JobCategory, for example,
        # "COMPUTER_AND_IT", "HEALTHCARE".
        # * base_compensation_unit: histogram by the
        # CompensationInfo.CompensationUnit of base
        # salary, for example, "WEEKLY", "MONTHLY".
        # * base_compensation: histogram by the base salary. Must specify list of
        # numeric buckets to group results by.
        # * annualized_base_compensation: histogram by the base annualized salary.
        # Must specify list of numeric buckets to group results by.
        # * annualized_total_compensation: histogram by the total annualized salary.
        # Must specify list of numeric buckets to group results by.
        # * string_custom_attribute: histogram by string Job.custom_attributes.
        # Values can be accessed via square bracket notations like
        # string_custom_attribute["key1"].
        # * numeric_custom_attribute: histogram by numeric Job.custom_attributes.
        # Values can be accessed via square bracket notations like
        # numeric_custom_attribute["key1"]. Must specify list of numeric buckets to
        # group results by.
        # Example expressions:
        # * `count(admin1)`
        # * `count(base_compensation, [bucket(1000, 10000), bucket(10000, 100000),
        # bucket(100000, MAX)])`
        # * `count(string_custom_attribute["some-string-custom-attribute"])`
        # * `count(numeric_custom_attribute["some-numeric-custom-attribute"],
        # [bucket(MIN, 0, "negative"), bucket(0, MAX, "non-negative"])`
        # Corresponds to the JSON property `histogramQueries`
        # @return [Array<Google::Apis::JobsV4beta1::HistogramQuery>]
        attr_accessor :histogram_queries
      
        # The query required to perform a search query.
        # Corresponds to the JSON property `jobQuery`
        # @return [Google::Apis::JobsV4beta1::JobQuery]
        attr_accessor :job_query
      
        # The desired job attributes returned for jobs in the search response.
        # Defaults to JobView.JOB_VIEW_SMALL if no value is specified.
        # Corresponds to the JSON property `jobView`
        # @return [String]
        attr_accessor :job_view
      
        # An integer that specifies the current offset (that is, starting result
        # location, amongst the jobs deemed by the API as relevant) in search
        # results. This field is only considered if page_token is unset.
        # The maximum allowed value is 5000. Otherwise an error is thrown.
        # For example, 0 means to  return results starting from the first matching
        # job, and 10 means to return from the 11th job. This can be used for
        # pagination, (for example, pageSize = 10 and offset = 10 means to return
        # from the second page).
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The criteria determining how search results are sorted. Default is
        # `"relevance desc"`.
        # Supported options are:
        # * `"relevance desc"`: By relevance descending, as determined by the API
        # algorithms. Relevance thresholding of query results is only available
        # with this ordering.
        # * `"posting_publish_time desc"`: By Job.posting_publish_time
        # descending.
        # * `"posting_update_time desc"`: By Job.posting_update_time
        # descending.
        # * `"title"`: By Job.title ascending.
        # * `"title desc"`: By Job.title descending.
        # * `"annualized_base_compensation"`: By job's
        # CompensationInfo.annualized_base_compensation_range ascending. Jobs
        # whose annualized base compensation is unspecified are put at the end of
        # search results.
        # * `"annualized_base_compensation desc"`: By job's
        # CompensationInfo.annualized_base_compensation_range descending. Jobs
        # whose annualized base compensation is unspecified are put at the end of
        # search results.
        # * `"annualized_total_compensation"`: By job's
        # CompensationInfo.annualized_total_compensation_range ascending. Jobs
        # whose annualized base compensation is unspecified are put at the end of
        # search results.
        # * `"annualized_total_compensation desc"`: By job's
        # CompensationInfo.annualized_total_compensation_range descending. Jobs
        # whose annualized base compensation is unspecified are put at the end of
        # search results.
        # * `"custom_ranking desc"`: By the relevance score adjusted to the
        # SearchJobsRequest.CustomRankingInfo.ranking_expression with weight
        # factor assigned by
        # SearchJobsRequest.CustomRankingInfo.importance_level in descending
        # order.
        # * Location sorting: Use the special syntax to order jobs by distance:<br>
        # `"distance_from('Hawaii')"`: Order by distance from Hawaii.<br>
        # `"distance_from(19.89, 155.5)"`: Order by distance from a coordinate.<br>
        # `"distance_from('Hawaii'), distance_from('Puerto Rico')"`: Order by
        # multiple locations. See details below.<br>
        # `"distance_from('Hawaii'), distance_from(19.89, 155.5)"`: Order by
        # multiple locations. See details below.<br>
        # The string can have a maximum of 256 characters. When multiple distance
        # centers are provided, a job that is close to any of the distance centers
        # would have a high rank. When a job has multiple locations, the job
        # location closest to one of the distance centers will be used. Jobs that
        # don't have locations will be ranked at the bottom. Distance is calculated
        # with a precision of 11.3 meters (37.4 feet). Diversification strategy is
        # still applied unless explicitly disabled in
        # diversification_level.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # A limit on the number of jobs returned in the search results.
        # Increasing this value above the default value of 10 can increase search
        # response time. The value can be between 1 and 100.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The token specifying the current offset within
        # search results. See SearchJobsResponse.next_page_token for
        # an explanation of how to obtain the next set of query results.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Meta information related to the job searcher or entity
        # conducting the job search. This information is used to improve the
        # performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::JobsV4beta1::RequestMetadata]
        attr_accessor :request_metadata
      
        # Controls if the search job request requires the return of a precise
        # count of the first 300 results. Setting this to `true` ensures
        # consistency in the number of results per page. Best practice is to set this
        # value to true if a client allows users to jump directly to a
        # non-sequential search results page.
        # Enabling this flag may adversely impact performance.
        # Defaults to false.
        # Corresponds to the JSON property `requirePreciseResultSize`
        # @return [Boolean]
        attr_accessor :require_precise_result_size
        alias_method :require_precise_result_size?, :require_precise_result_size
      
        # Mode of a search.
        # Defaults to SearchMode.JOB_SEARCH.
        # Corresponds to the JSON property `searchMode`
        # @return [String]
        attr_accessor :search_mode
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @custom_ranking_info = args[:custom_ranking_info] if args.key?(:custom_ranking_info)
          @disable_keyword_match = args[:disable_keyword_match] if args.key?(:disable_keyword_match)
          @diversification_level = args[:diversification_level] if args.key?(:diversification_level)
          @enable_broadening = args[:enable_broadening] if args.key?(:enable_broadening)
          @histogram_queries = args[:histogram_queries] if args.key?(:histogram_queries)
          @job_query = args[:job_query] if args.key?(:job_query)
          @job_view = args[:job_view] if args.key?(:job_view)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @require_precise_result_size = args[:require_precise_result_size] if args.key?(:require_precise_result_size)
          @search_mode = args[:search_mode] if args.key?(:search_mode)
        end
      end
      
      # Response for SearchJob method.
      class SearchJobsResponse
        include Google::Apis::Core::Hashable
      
        # If query broadening is enabled, we may append additional results from the
        # broadened query. This number indicates how many of the jobs returned in the
        # jobs field are from the broadened query. These results are always at the
        # end of the jobs list. In particular, a value of 0, or if the field isn't
        # set, all the jobs in the jobs list are from the original
        # (without broadening) query. If this field is non-zero, subsequent requests
        # with offset after this result set should contain all broadened results.
        # Corresponds to the JSON property `broadenedQueryJobsCount`
        # @return [Fixnum]
        attr_accessor :broadened_query_jobs_count
      
        # An estimation of the number of jobs that match the specified query.
        # This number isn't guaranteed to be accurate. For accurate results,
        # see SearchJobsRequest.require_precise_result_size.
        # Corresponds to the JSON property `estimatedTotalSize`
        # @return [Fixnum]
        attr_accessor :estimated_total_size
      
        # The histogram results that match with specified
        # SearchJobsRequest.histogram_queries.
        # Corresponds to the JSON property `histogramQueryResults`
        # @return [Array<Google::Apis::JobsV4beta1::HistogramQueryResult>]
        attr_accessor :histogram_query_results
      
        # The location filters that the service applied to the specified query. If
        # any filters are lat-lng based, the Location.location_type is
        # Location.LocationType.LOCATION_TYPE_UNSPECIFIED.
        # Corresponds to the JSON property `locationFilters`
        # @return [Array<Google::Apis::JobsV4beta1::Location>]
        attr_accessor :location_filters
      
        # The Job entities that match the specified SearchJobsRequest.
        # Corresponds to the JSON property `matchingJobs`
        # @return [Array<Google::Apis::JobsV4beta1::MatchingJob>]
        attr_accessor :matching_jobs
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::JobsV4beta1::ResponseMetadata]
        attr_accessor :metadata
      
        # The token that specifies the starting position of the next page of results.
        # This field is empty if there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Spell check result.
        # Corresponds to the JSON property `spellCorrection`
        # @return [Google::Apis::JobsV4beta1::SpellingCorrection]
        attr_accessor :spell_correction
      
        # The precise result count, which is available only if the client set
        # SearchJobsRequest.require_precise_result_size to `true`, or if the
        # response is the last page of results. Otherwise, the value is `-1`.
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @broadened_query_jobs_count = args[:broadened_query_jobs_count] if args.key?(:broadened_query_jobs_count)
          @estimated_total_size = args[:estimated_total_size] if args.key?(:estimated_total_size)
          @histogram_query_results = args[:histogram_query_results] if args.key?(:histogram_query_results)
          @location_filters = args[:location_filters] if args.key?(:location_filters)
          @matching_jobs = args[:matching_jobs] if args.key?(:matching_jobs)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @spell_correction = args[:spell_correction] if args.key?(:spell_correction)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # The request body of the `SearchProfiles` call.
      class SearchProfilesRequest
        include Google::Apis::Core::Hashable
      
        # When sort by field is based on alphabetical order, sort values case
        # sensitively (based on ASCII) when the value is set to true. Default value
        # is case in-sensitive sort (false).
        # Corresponds to the JSON property `caseSensitiveSort`
        # @return [Boolean]
        attr_accessor :case_sensitive_sort
        alias_method :case_sensitive_sort?, :case_sensitive_sort
      
        # This flag controls the spell-check feature. If `false`, the
        # service attempts to correct a misspelled query.
        # For example, "enginee" is corrected to "engineer".
        # Corresponds to the JSON property `disableSpellCheck`
        # @return [Boolean]
        attr_accessor :disable_spell_check
        alias_method :disable_spell_check?, :disable_spell_check
      
        # A list of expressions specifies histogram requests against matching
        # profiles for SearchProfilesRequest.
        # The expression syntax looks like a function definition with parameters.
        # Function syntax: function_name(histogram_facet[, list of buckets])
        # Data types:
        # * Histogram facet: facet names with format a-zA-Z+.
        # * String: string like "any string with backslash escape for quote(\")."
        # * Number: whole number and floating point number like 10, -1 and -0.01.
        # * List: list of elements with comma(,) separator surrounded by square
        # brackets. For example, [1, 2, 3] and ["one", "two", "three"].
        # Built-in constants:
        # * MIN (minimum number similar to java Double.MIN_VALUE)
        # * MAX (maximum number similar to java Double.MAX_VALUE)
        # Built-in functions:
        # * bucket(start, end[, label])
        # Bucket build-in function creates a bucket with range of start, end). Note
        # that the end is exclusive.
        # For example, bucket(1, MAX, "positive number") or bucket(1, 10).
        # Histogram Facets:
        # * admin1: Admin1 is a global placeholder for referring to state, province,
        # or the particular term a country uses to define the geographic structure
        # below the country level. Examples include states codes such as "CA", "IL",
        # "NY", and provinces, such as "BC".
        # * locality: Locality is a global placeholder for referring to city, town,
        # or the particular term a country uses to define the geographic structure
        # below the admin1 level. Examples include city names such as
        # "Mountain View" and "New York".
        # * extended_locality: Extended locality is concatenated version of admin1
        # and locality with comma separator. For example, "Mountain View, CA" and
        # "New York, NY".
        # * postal_code: Postal code of profile which follows locale code.
        # * country: Country code (ISO-3166-1 alpha-2 code) of profile, such as US,
        # JP, GB.
        # * job_title: Normalized job titles specified in EmploymentHistory.
        # * company_name: Normalized company name of profiles to match on.
        # * institution: The school name. For example, "MIT",
        # "University of California, Berkeley"
        # * degree: Highest education degree in ISCED code. Each value in degree
        # covers a specific level of education, without any expansion to upper nor
        # lower levels of education degree.
        # * experience_in_months: experience in months. 0 means 0 month to 1 month
        # (exclusive).
        # * application_date: The application date specifies application start dates.
        # See [ApplicationDateFilter for more details.
        # * application_outcome_notes: The application outcome reason specifies the
        # reasons behind the outcome of the job application.
        # See ApplicationOutcomeNotesFilter for more details.
        # * application_job_title: The application job title specifies the job
        # applied for in the application.
        # See ApplicationJobFilter for more details.
        # * hirable_status: Hirable status specifies the profile's hirable status.
        # * string_custom_attribute: String custom attributes. Values can be accessed
        # via square bracket notation like string_custom_attribute["key1"].
        # * numeric_custom_attribute: Numeric custom attributes. Values can be
        # accessed via square bracket notation like numeric_custom_attribute["key1"].
        # Example expressions:
        # * count(admin1)
        # * count(experience_in_months, [bucket(0, 12, "1 year"),
        # bucket(12, 36, "1-3 years"), bucket(36, MAX, "3+ years")])
        # * count(string_custom_attribute["assigned_recruiter"])
        # * count(numeric_custom_attribute["favorite_number"],
        # [bucket(MIN, 0, "negative"), bucket(0, MAX, "non-negative")])
        # Corresponds to the JSON property `histogramQueries`
        # @return [Array<Google::Apis::JobsV4beta1::HistogramQuery>]
        attr_accessor :histogram_queries
      
        # An integer that specifies the current offset (that is, starting result) in
        # search results. This field is only considered if page_token is unset.
        # The maximum allowed value is 5000. Otherwise an error is thrown.
        # For example, 0 means to search from the first profile, and 10 means to
        # search from the 11th profile. This can be used for pagination, for example
        # pageSize = 10 and offset = 10 means to search from the second page.
        # Corresponds to the JSON property `offset`
        # @return [Fixnum]
        attr_accessor :offset
      
        # The criteria that determines how search results are sorted.
        # Defaults is "relevance desc" if no value is specified.
        # Supported options are:
        # * "relevance desc": By descending relevance, as determined by the API
        # algorithms.
        # * "update_date desc": Sort by Profile.update_time in descending order
        # (recently updated profiles first).
        # * "create_date desc": Sort by Profile.create_time in descending order
        # (recently created profiles first).
        # * "first_name": Sort by PersonName.PersonStructuredName.given_name in
        # ascending order.
        # * "first_name desc": Sort by PersonName.PersonStructuredName.given_name
        # in descending order.
        # * "last_name": Sort by PersonName.PersonStructuredName.family_name in
        # ascending order.
        # * "last_name desc": Sort by PersonName.PersonStructuredName.family_name
        # in ascending order.
        # Corresponds to the JSON property `orderBy`
        # @return [String]
        attr_accessor :order_by
      
        # A limit on the number of profiles returned in the search results.
        # A value above the default value 10 can increase search response time.
        # The maximum value allowed is 100. Otherwise an error is thrown.
        # Corresponds to the JSON property `pageSize`
        # @return [Fixnum]
        attr_accessor :page_size
      
        # The pageToken, similar to offset enables users of the API to paginate
        # through the search results. To retrieve the first page of results, set the
        # pageToken to empty. The search response includes a
        # nextPageToken field that can be
        # used to populate the pageToken field for the next page of results. Using
        # pageToken instead of offset increases the performance of the API,
        # especially compared to larger offset values.
        # Corresponds to the JSON property `pageToken`
        # @return [String]
        attr_accessor :page_token
      
        # Filters to apply when performing the search query.
        # Corresponds to the JSON property `profileQuery`
        # @return [Google::Apis::JobsV4beta1::ProfileQuery]
        attr_accessor :profile_query
      
        # Meta information related to the job searcher or entity
        # conducting the job search. This information is used to improve the
        # performance of the service.
        # Corresponds to the JSON property `requestMetadata`
        # @return [Google::Apis::JobsV4beta1::RequestMetadata]
        attr_accessor :request_metadata
      
        # An id that uniquely identifies the result set of a
        # SearchProfiles call. The id should be
        # retrieved from the
        # SearchProfilesResponse message returned from a previous
        # invocation of SearchProfiles.
        # A result set is an ordered list of search results.
        # If this field is not set, a new result set is computed based on the
        # profile_query.  A new result_set_id is returned as a handle to
        # access this result set.
        # If this field is set, the service will ignore the resource and
        # profile_query values, and simply retrieve a page of results from the
        # corresponding result set.  In this case, one and only one of page_token
        # or offset must be set.
        # A typical use case is to invoke SearchProfilesRequest without this
        # field, then use the resulting result_set_id in
        # SearchProfilesResponse to page through the results.
        # Corresponds to the JSON property `resultSetId`
        # @return [String]
        attr_accessor :result_set_id
      
        # This flag is used to indicate whether the service will attempt to
        # understand synonyms and terms related to the search query or treat the
        # query "as is" when it generates a set of results. By default this flag is
        # set to false, thus allowing expanded results to also be returned. For
        # example a search for "software engineer" might also return candidates who
        # have experience in jobs similar to software engineer positions. By setting
        # this flag to true, the service will only attempt to deliver candidates has
        # software engineer in his/her global fields by treating "software engineer"
        # as a keyword.
        # It is recommended to provide a feature in the UI (such as a checkbox) to
        # allow recruiters to set this flag to true if they intend to search for
        # longer boolean strings.
        # Corresponds to the JSON property `strictKeywordsSearch`
        # @return [Boolean]
        attr_accessor :strict_keywords_search
        alias_method :strict_keywords_search?, :strict_keywords_search
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @case_sensitive_sort = args[:case_sensitive_sort] if args.key?(:case_sensitive_sort)
          @disable_spell_check = args[:disable_spell_check] if args.key?(:disable_spell_check)
          @histogram_queries = args[:histogram_queries] if args.key?(:histogram_queries)
          @offset = args[:offset] if args.key?(:offset)
          @order_by = args[:order_by] if args.key?(:order_by)
          @page_size = args[:page_size] if args.key?(:page_size)
          @page_token = args[:page_token] if args.key?(:page_token)
          @profile_query = args[:profile_query] if args.key?(:profile_query)
          @request_metadata = args[:request_metadata] if args.key?(:request_metadata)
          @result_set_id = args[:result_set_id] if args.key?(:result_set_id)
          @strict_keywords_search = args[:strict_keywords_search] if args.key?(:strict_keywords_search)
        end
      end
      
      # Response of SearchProfiles method.
      class SearchProfilesResponse
        include Google::Apis::Core::Hashable
      
        # An estimation of the number of profiles that match the specified query.
        # This number isn't guaranteed to be accurate.
        # Corresponds to the JSON property `estimatedTotalSize`
        # @return [Fixnum]
        attr_accessor :estimated_total_size
      
        # The histogram results that match with specified
        # SearchProfilesRequest.histogram_queries.
        # Corresponds to the JSON property `histogramQueryResults`
        # @return [Array<Google::Apis::JobsV4beta1::HistogramQueryResult>]
        attr_accessor :histogram_query_results
      
        # Additional information returned to client, such as debugging information.
        # Corresponds to the JSON property `metadata`
        # @return [Google::Apis::JobsV4beta1::ResponseMetadata]
        attr_accessor :metadata
      
        # A token to retrieve the next page of results. This is empty if there are no
        # more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # An id that uniquely identifies the result set of a
        # SearchProfiles call for consistent
        # results.
        # Corresponds to the JSON property `resultSetId`
        # @return [String]
        attr_accessor :result_set_id
      
        # Spell check result.
        # Corresponds to the JSON property `spellCorrection`
        # @return [Google::Apis::JobsV4beta1::SpellingCorrection]
        attr_accessor :spell_correction
      
        # The profile entities that match the specified SearchProfilesRequest.
        # Corresponds to the JSON property `summarizedProfiles`
        # @return [Array<Google::Apis::JobsV4beta1::SummarizedProfile>]
        attr_accessor :summarized_profiles
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @estimated_total_size = args[:estimated_total_size] if args.key?(:estimated_total_size)
          @histogram_query_results = args[:histogram_query_results] if args.key?(:histogram_query_results)
          @metadata = args[:metadata] if args.key?(:metadata)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @result_set_id = args[:result_set_id] if args.key?(:result_set_id)
          @spell_correction = args[:spell_correction] if args.key?(:spell_correction)
          @summarized_profiles = args[:summarized_profiles] if args.key?(:summarized_profiles)
        end
      end
      
      # Resource that represents a skill of a candidate.
      class Skill
        include Google::Apis::Core::Hashable
      
        # A paragraph describes context of this skill.
        # Number of characters allowed is 100,000.
        # Corresponds to the JSON property `context`
        # @return [String]
        attr_accessor :context
      
        # Skill display name.
        # For example, "Java", "Python".
        # Number of characters allowed is 100.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents a whole or partial calendar date, e.g. a birthday. The time of day
        # and time zone are either specified elsewhere or are not significant. The date
        # is relative to the Proleptic Gregorian Calendar. This can represent:
        # * A full date, with non-zero year, month and day values
        # * A month and day value, with a zero year, e.g. an anniversary
        # * A year on its own, with zero month and day values
        # * A year and month value, with a zero day, e.g. a credit card expiration date
        # Related types are google.type.TimeOfDay and `google.protobuf.Timestamp`.
        # Corresponds to the JSON property `lastUsedDate`
        # @return [Google::Apis::JobsV4beta1::Date]
        attr_accessor :last_used_date
      
        # Skill proficiency level which indicates how proficient the candidate is at
        # this skill.
        # Corresponds to the JSON property `level`
        # @return [String]
        attr_accessor :level
      
        # Output only. Skill name snippet shows how the display_name is related to a
        # search
        # query. It's empty if the display_name isn't related to the search
        # query.
        # Corresponds to the JSON property `skillNameSnippet`
        # @return [String]
        attr_accessor :skill_name_snippet
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @context = args[:context] if args.key?(:context)
          @display_name = args[:display_name] if args.key?(:display_name)
          @last_used_date = args[:last_used_date] if args.key?(:last_used_date)
          @level = args[:level] if args.key?(:level)
          @skill_name_snippet = args[:skill_name_snippet] if args.key?(:skill_name_snippet)
        end
      end
      
      # Skill filter of the search.
      class SkillFilter
        include Google::Apis::Core::Hashable
      
        # Whether to apply negation to the filter so profiles matching the filter
        # are excluded.
        # Corresponds to the JSON property `negated`
        # @return [Boolean]
        attr_accessor :negated
        alias_method :negated?, :negated
      
        # Required. The skill name. For example, "java", "j2ee", and so on.
        # Corresponds to the JSON property `skill`
        # @return [String]
        attr_accessor :skill
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @negated = args[:negated] if args.key?(:negated)
          @skill = args[:skill] if args.key?(:skill)
        end
      end
      
      # Spell check result.
      class SpellingCorrection
        include Google::Apis::Core::Hashable
      
        # Indicates if the query was corrected by the spell checker.
        # Corresponds to the JSON property `corrected`
        # @return [Boolean]
        attr_accessor :corrected
        alias_method :corrected?, :corrected
      
        # Corrected output with html tags to highlight the corrected words.
        # Corrected words are called out with the "<b><i>...</i></b>" html tags.
        # For example, the user input query is "software enginear", where the second
        # word, "enginear," is incorrect. It should be "engineer". When spelling
        # correction is enabled, this value is
        # "software <b><i>engineer</i></b>".
        # Corresponds to the JSON property `correctedHtml`
        # @return [String]
        attr_accessor :corrected_html
      
        # Correction output consisting of the corrected keyword string.
        # Corresponds to the JSON property `correctedText`
        # @return [String]
        attr_accessor :corrected_text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @corrected = args[:corrected] if args.key?(:corrected)
          @corrected_html = args[:corrected_html] if args.key?(:corrected_html)
          @corrected_text = args[:corrected_text] if args.key?(:corrected_text)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for
      # different programming environments, including REST APIs and RPC APIs. It is
      # used by [gRPC](https://github.com/grpc). Each `Status` message contains
      # three pieces of data: error code, error message, and error details.
      # You can find out more about this error model and how to work with it in the
      # [API Design Guide](https://cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details.  There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any
        # user-facing error message should be localized and sent in the
        # google.rpc.Status.details field, or localized by the client.
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
      
      # Profile entry with metadata inside SearchProfilesResponse.
      class SummarizedProfile
        include Google::Apis::Core::Hashable
      
        # A list of profiles that are linked by Profile.group_id.
        # Corresponds to the JSON property `profiles`
        # @return [Array<Google::Apis::JobsV4beta1::Profile>]
        attr_accessor :profiles
      
        # A resource that represents the profile for a job candidate (also referred to
        # as a "single-source profile").
        # Corresponds to the JSON property `summary`
        # @return [Google::Apis::JobsV4beta1::Profile]
        attr_accessor :summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profiles = args[:profiles] if args.key?(:profiles)
          @summary = args[:summary] if args.key?(:summary)
        end
      end
      
      # A Tenant resource represents a tenant in the service. A tenant is a group or
      # entity that shares common access with specific privileges for resources like
      # profiles. Customer may create multiple tenants to provide data isolation for
      # different groups.
      class Tenant
        include Google::Apis::Core::Hashable
      
        # Required. Client side tenant identifier, used to uniquely identify the tenant.
        # The maximum number of allowed characters is 255.
        # Corresponds to the JSON property `externalId`
        # @return [String]
        attr_accessor :external_id
      
        # A list of keys of filterable Profile.custom_attributes, whose
        # corresponding `string_values` are used in keyword searches. Profiles with
        # `string_values` under these specified field keys are returned if any
        # of the values match the search keyword. Custom field values with
        # parenthesis, brackets and special symbols are not searchable as-is,
        # and must be surrounded by quotes.
        # Corresponds to the JSON property `keywordSearchableProfileCustomAttributes`
        # @return [Array<String>]
        attr_accessor :keyword_searchable_profile_custom_attributes
      
        # Required during tenant update.
        # The resource name for a tenant. This is generated by the service when a
        # tenant is created.
        # The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        # "projects/foo/tenants/bar".
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Indicates whether data owned by this tenant may be used to provide product
        # improvements across other tenants.
        # Defaults behavior is DataUsageType.ISOLATED if it's unset.
        # Corresponds to the JSON property `usageType`
        # @return [String]
        attr_accessor :usage_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @external_id = args[:external_id] if args.key?(:external_id)
          @keyword_searchable_profile_custom_attributes = args[:keyword_searchable_profile_custom_attributes] if args.key?(:keyword_searchable_profile_custom_attributes)
          @name = args[:name] if args.key?(:name)
          @usage_type = args[:usage_type] if args.key?(:usage_type)
        end
      end
      
      # Filter on create timestamp or update timestamp of profiles.
      class TimeFilter
        include Google::Apis::Core::Hashable
      
        # End timestamp, matching profiles with the end time. If this field
        # missing, The API matches profiles with create / update timestamp after the
        # start timestamp.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Start timestamp, matching profiles with the start time. If this field
        # missing, The API matches profiles with create / update timestamp before the
        # end timestamp.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Specifies which time field to filter profiles.
        # Defaults to TimeField.CREATE_TIME.
        # Corresponds to the JSON property `timeField`
        # @return [String]
        attr_accessor :time_field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @time_field = args[:time_field] if args.key?(:time_field)
        end
      end
      
      # Represents a time of day. The date and time zone are either not significant
      # or are specified elsewhere. An API may choose to allow leap seconds. Related
      # types are google.type.Date and `google.protobuf.Timestamp`.
      class TimeOfDay
        include Google::Apis::Core::Hashable
      
        # Hours of day in 24 hour format. Should be from 0 to 23. An API may choose
        # to allow the value "24:00:00" for scenarios like business closing time.
        # Corresponds to the JSON property `hours`
        # @return [Fixnum]
        attr_accessor :hours
      
        # Minutes of hour of day. Must be from 0 to 59.
        # Corresponds to the JSON property `minutes`
        # @return [Fixnum]
        attr_accessor :minutes
      
        # Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # Seconds of minutes of the time. Must normally be from 0 to 59. An API may
        # allow the value 60 if it allows leap-seconds.
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
      
      # Message representing a period of time between two timestamps.
      class TimestampRange
        include Google::Apis::Core::Hashable
      
        # End of the period (exclusive).
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Begin of the period (inclusive).
        # Corresponds to the JSON property `startTime`
        # @return [String]
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
      
      # Request for updating a specified application.
      class UpdateApplicationRequest
        include Google::Apis::Core::Hashable
      
        # Resource that represents a job application record of a candidate.
        # Corresponds to the JSON property `application`
        # @return [Google::Apis::JobsV4beta1::Application]
        attr_accessor :application
      
        # Strongly recommended for the best service experience.
        # If update_mask is provided, only the specified fields in
        # application are updated. Otherwise all the fields are updated.
        # A field mask to specify the application fields to be updated. Only
        # top level fields of Application are supported.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @application = args[:application] if args.key?(:application)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for updating a specified company.
      class UpdateCompanyRequest
        include Google::Apis::Core::Hashable
      
        # A Company resource represents a company in the service. A company is the
        # entity that owns job postings, that is, the hiring entity responsible for
        # employing applicants for the job position.
        # Corresponds to the JSON property `company`
        # @return [Google::Apis::JobsV4beta1::Company]
        attr_accessor :company
      
        # Strongly recommended for the best service experience.
        # If update_mask is provided, only the specified fields in
        # company are updated. Otherwise all the fields are updated.
        # A field mask to specify the company fields to be updated. Only
        # top level fields of Company are supported.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @company = args[:company] if args.key?(:company)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Update job request.
      class UpdateJobRequest
        include Google::Apis::Core::Hashable
      
        # A Job resource represents a job posting (also referred to as a "job listing"
        # or "job requisition"). A job belongs to a Company, which is the hiring
        # entity responsible for the job.
        # Corresponds to the JSON property `job`
        # @return [Google::Apis::JobsV4beta1::Job]
        attr_accessor :job
      
        # Strongly recommended for the best service experience.
        # If update_mask is provided, only the specified fields in
        # job are updated. Otherwise all the fields are updated.
        # A field mask to restrict the fields that are updated. Only
        # top level fields of Job are supported.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job = args[:job] if args.key?(:job)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Update profile request
      class UpdateProfileRequest
        include Google::Apis::Core::Hashable
      
        # A resource that represents the profile for a job candidate (also referred to
        # as a "single-source profile").
        # Corresponds to the JSON property `profile`
        # @return [Google::Apis::JobsV4beta1::Profile]
        attr_accessor :profile
      
        # A field mask to specify the profile fields to update.
        # A full update is performed if it is unset.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @profile = args[:profile] if args.key?(:profile)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Request for updating a specified tenant.
      class UpdateTenantRequest
        include Google::Apis::Core::Hashable
      
        # A Tenant resource represents a tenant in the service. A tenant is a group or
        # entity that shares common access with specific privileges for resources like
        # profiles. Customer may create multiple tenants to provide data isolation for
        # different groups.
        # Corresponds to the JSON property `tenant`
        # @return [Google::Apis::JobsV4beta1::Tenant]
        attr_accessor :tenant
      
        # Strongly recommended for the best service experience.
        # If update_mask is provided, only the specified fields in
        # tenant are updated. Otherwise all the fields are updated.
        # A field mask to specify the tenant fields to be updated. Only
        # top level fields of Tenant are supported.
        # Corresponds to the JSON property `updateMask`
        # @return [String]
        attr_accessor :update_mask
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @tenant = args[:tenant] if args.key?(:tenant)
          @update_mask = args[:update_mask] if args.key?(:update_mask)
        end
      end
      
      # Work experience filter.
      # This filter is used to search for profiles with working experience length
      # between min_experience and max_experience.
      class WorkExperienceFilter
        include Google::Apis::Core::Hashable
      
        # The maximum duration of the work experience (exclusive).
        # Corresponds to the JSON property `maxExperience`
        # @return [String]
        attr_accessor :max_experience
      
        # The minimum duration of the work experience (inclusive).
        # Corresponds to the JSON property `minExperience`
        # @return [String]
        attr_accessor :min_experience
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @max_experience = args[:max_experience] if args.key?(:max_experience)
          @min_experience = args[:min_experience] if args.key?(:min_experience)
        end
      end
    end
  end
end
