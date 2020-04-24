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
      
      class Activity
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdditionalContactInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Address
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Application
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationDateFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationJobFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationOutcomeNotesFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailabilityFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AvailabilitySignal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchCreateJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchDeleteJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchUpdateJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CandidateAvailabilityFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Certification
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ClientEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommuteFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CommuteInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Company
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompanyDerivedInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompensationEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompensationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompensationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompensationRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompletionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateApplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateClientEventRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateCompanyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateProfileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CreateTenantRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CustomRankingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Degree
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeviceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EducationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EducationRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Email
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmployerFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EmploymentRecord
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HistogramQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class HistogramQueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Interview
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobDerivedInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobOperationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobTitleFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListApplicationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCompaniesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTenantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LocationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MatchingJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MendelDebugInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NamespacedDebugInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Patent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonNameFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonStructuredName
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PersonalUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Phone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Profile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProfileEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProfileQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Publication
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Rating
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RequestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Resume
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchProfilesRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchProfilesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Skill
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SkillFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpellingCorrection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SummarizedProfile
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Tenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimestampRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateApplicationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateCompanyRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateJobRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateProfileRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UpdateTenantRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WorkExperienceFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Activity
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :activity_description_snippet, as: 'activityDescriptionSnippet'
          property :activity_name_snippet, as: 'activityNameSnippet'
          property :create_date, as: 'createDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          collection :skills_used, as: 'skillsUsed', class: Google::Apis::JobsV4beta1::Skill, decorator: Google::Apis::JobsV4beta1::Skill::Representation
      
          collection :skills_used_snippet, as: 'skillsUsedSnippet'
          collection :team_members, as: 'teamMembers'
          property :update_date, as: 'updateDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class AdditionalContactInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :contact_id, as: 'contactId'
          property :name, as: 'name'
          property :usage, as: 'usage'
        end
      end
      
      class Address
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :current, as: 'current'
          property :structured_address, as: 'structuredAddress', class: Google::Apis::JobsV4beta1::PostalAddress, decorator: Google::Apis::JobsV4beta1::PostalAddress::Representation
      
          property :unstructured_address, as: 'unstructuredAddress'
          property :usage, as: 'usage'
        end
      end
      
      class Application
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application_date, as: 'applicationDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :company, as: 'company'
          property :create_time, as: 'createTime'
          property :external_id, as: 'externalId'
          collection :interviews, as: 'interviews', class: Google::Apis::JobsV4beta1::Interview, decorator: Google::Apis::JobsV4beta1::Interview::Representation
      
          property :is_match, as: 'isMatch'
          property :job, as: 'job'
          property :job_title_snippet, as: 'jobTitleSnippet'
          property :name, as: 'name'
          property :outcome, as: 'outcome'
          property :outcome_notes, as: 'outcomeNotes'
          property :profile, as: 'profile'
          property :referral, as: 'referral'
          property :stage, as: 'stage'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ApplicationDateFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
        end
      end
      
      class ApplicationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :emails, as: 'emails'
          property :instruction, as: 'instruction'
          collection :uris, as: 'uris'
        end
      end
      
      class ApplicationJobFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_requisition_id, as: 'jobRequisitionId'
          property :job_title, as: 'jobTitle'
          property :negated, as: 'negated'
        end
      end
      
      class ApplicationOutcomeNotesFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negated, as: 'negated'
          property :outcome_notes, as: 'outcomeNotes'
        end
      end
      
      class AvailabilityFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :range, as: 'range', class: Google::Apis::JobsV4beta1::TimestampRange, decorator: Google::Apis::JobsV4beta1::TimestampRange::Representation
      
          property :required, as: 'required'
          property :signal_type, as: 'signalType'
        end
      end
      
      class AvailabilitySignal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter_satisfied, as: 'filterSatisfied'
          property :last_update_time, as: 'lastUpdateTime'
          property :type, as: 'type'
        end
      end
      
      class BatchCreateJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::JobsV4beta1::Job, decorator: Google::Apis::JobsV4beta1::Job::Representation
      
        end
      end
      
      class BatchDeleteJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filter, as: 'filter'
        end
      end
      
      class BatchOperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :failure_count, as: 'failureCount'
          property :state, as: 'state'
          property :state_description, as: 'stateDescription'
          property :success_count, as: 'successCount'
          property :total_count, as: 'totalCount'
          property :update_time, as: 'updateTime'
        end
      end
      
      class BatchUpdateJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::JobsV4beta1::Job, decorator: Google::Apis::JobsV4beta1::Job::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class CandidateAvailabilityFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negated, as: 'negated'
        end
      end
      
      class Certification
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acquire_date, as: 'acquireDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :authority, as: 'authority'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :expire_date, as: 'expireDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
        end
      end
      
      class ClientEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :event_id, as: 'eventId'
          property :event_notes, as: 'eventNotes'
          property :job_event, as: 'jobEvent', class: Google::Apis::JobsV4beta1::JobEvent, decorator: Google::Apis::JobsV4beta1::JobEvent::Representation
      
          property :profile_event, as: 'profileEvent', class: Google::Apis::JobsV4beta1::ProfileEvent, decorator: Google::Apis::JobsV4beta1::ProfileEvent::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class CommuteFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_imprecise_addresses, as: 'allowImpreciseAddresses'
          property :commute_method, as: 'commuteMethod'
          property :departure_time, as: 'departureTime', class: Google::Apis::JobsV4beta1::TimeOfDay, decorator: Google::Apis::JobsV4beta1::TimeOfDay::Representation
      
          property :road_traffic, as: 'roadTraffic'
          property :start_coordinates, as: 'startCoordinates', class: Google::Apis::JobsV4beta1::LatLng, decorator: Google::Apis::JobsV4beta1::LatLng::Representation
      
          property :travel_duration, as: 'travelDuration'
        end
      end
      
      class CommuteInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_location, as: 'jobLocation', class: Google::Apis::JobsV4beta1::Location, decorator: Google::Apis::JobsV4beta1::Location::Representation
      
          property :travel_duration, as: 'travelDuration'
        end
      end
      
      class Company
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :career_site_uri, as: 'careerSiteUri'
          property :derived_info, as: 'derivedInfo', class: Google::Apis::JobsV4beta1::CompanyDerivedInfo, decorator: Google::Apis::JobsV4beta1::CompanyDerivedInfo::Representation
      
          property :display_name, as: 'displayName'
          property :eeo_text, as: 'eeoText'
          property :external_id, as: 'externalId'
          property :headquarters_address, as: 'headquartersAddress'
          property :hiring_agency, as: 'hiringAgency'
          property :image_uri, as: 'imageUri'
          collection :keyword_searchable_job_custom_attributes, as: 'keywordSearchableJobCustomAttributes'
          property :name, as: 'name'
          property :size, as: 'size'
          property :suspended, as: 'suspended'
          property :website_uri, as: 'websiteUri'
        end
      end
      
      class CompanyDerivedInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :headquarters_location, as: 'headquartersLocation', class: Google::Apis::JobsV4beta1::Location, decorator: Google::Apis::JobsV4beta1::Location::Representation
      
        end
      end
      
      class CompensationEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::JobsV4beta1::Money, decorator: Google::Apis::JobsV4beta1::Money::Representation
      
          property :description, as: 'description'
          property :expected_units_per_year, as: 'expectedUnitsPerYear'
          property :range, as: 'range', class: Google::Apis::JobsV4beta1::CompensationRange, decorator: Google::Apis::JobsV4beta1::CompensationRange::Representation
      
          property :type, as: 'type'
          property :unit, as: 'unit'
        end
      end
      
      class CompensationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_jobs_with_unspecified_compensation_range, as: 'includeJobsWithUnspecifiedCompensationRange'
          property :range, as: 'range', class: Google::Apis::JobsV4beta1::CompensationRange, decorator: Google::Apis::JobsV4beta1::CompensationRange::Representation
      
          property :type, as: 'type'
          collection :units, as: 'units'
        end
      end
      
      class CompensationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annualized_base_compensation_range, as: 'annualizedBaseCompensationRange', class: Google::Apis::JobsV4beta1::CompensationRange, decorator: Google::Apis::JobsV4beta1::CompensationRange::Representation
      
          property :annualized_total_compensation_range, as: 'annualizedTotalCompensationRange', class: Google::Apis::JobsV4beta1::CompensationRange, decorator: Google::Apis::JobsV4beta1::CompensationRange::Representation
      
          collection :entries, as: 'entries', class: Google::Apis::JobsV4beta1::CompensationEntry, decorator: Google::Apis::JobsV4beta1::CompensationEntry::Representation
      
        end
      end
      
      class CompensationRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_compensation, as: 'maxCompensation', class: Google::Apis::JobsV4beta1::Money, decorator: Google::Apis::JobsV4beta1::Money::Representation
      
          property :min_compensation, as: 'minCompensation', class: Google::Apis::JobsV4beta1::Money, decorator: Google::Apis::JobsV4beta1::Money::Representation
      
        end
      end
      
      class CompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completion_results, as: 'completionResults', class: Google::Apis::JobsV4beta1::CompletionResult, decorator: Google::Apis::JobsV4beta1::CompletionResult::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4beta1::ResponseMetadata, decorator: Google::Apis::JobsV4beta1::ResponseMetadata::Representation
      
        end
      end
      
      class CompletionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_uri, as: 'imageUri'
          property :suggestion, as: 'suggestion'
          property :type, as: 'type'
        end
      end
      
      class CreateApplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::JobsV4beta1::Application, decorator: Google::Apis::JobsV4beta1::Application::Representation
      
        end
      end
      
      class CreateClientEventRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :client_event, as: 'clientEvent', class: Google::Apis::JobsV4beta1::ClientEvent, decorator: Google::Apis::JobsV4beta1::ClientEvent::Representation
      
        end
      end
      
      class CreateCompanyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company, as: 'company', class: Google::Apis::JobsV4beta1::Company, decorator: Google::Apis::JobsV4beta1::Company::Representation
      
        end
      end
      
      class CreateJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::JobsV4beta1::Job, decorator: Google::Apis::JobsV4beta1::Job::Representation
      
        end
      end
      
      class CreateProfileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile, as: 'profile', class: Google::Apis::JobsV4beta1::Profile, decorator: Google::Apis::JobsV4beta1::Profile::Representation
      
        end
      end
      
      class CreateTenantRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tenant, as: 'tenant', class: Google::Apis::JobsV4beta1::Tenant, decorator: Google::Apis::JobsV4beta1::Tenant::Representation
      
        end
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filterable, as: 'filterable'
          collection :long_values, as: 'longValues'
          collection :string_values, as: 'stringValues'
        end
      end
      
      class CustomRankingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :importance_level, as: 'importanceLevel'
          property :ranking_expression, as: 'rankingExpression'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class Degree
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :degree_name, as: 'degreeName'
          property :degree_type, as: 'degreeType'
          collection :fields_of_study, as: 'fieldsOfStudy'
        end
      end
      
      class DeviceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_type, as: 'deviceType'
          property :id, as: 'id'
        end
      end
      
      class EducationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :degree_type, as: 'degreeType'
          property :field_of_study, as: 'fieldOfStudy'
          property :negated, as: 'negated'
          property :school, as: 'school'
        end
      end
      
      class EducationRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::JobsV4beta1::Address, decorator: Google::Apis::JobsV4beta1::Address::Representation
      
          property :degree_description, as: 'degreeDescription'
          property :degree_snippet, as: 'degreeSnippet'
          property :description, as: 'description'
          property :end_date, as: 'endDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :expected_graduation_date, as: 'expectedGraduationDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :is_current, as: 'isCurrent'
          property :school_name, as: 'schoolName'
          property :school_name_snippet, as: 'schoolNameSnippet'
          property :start_date, as: 'startDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :structured_degree, as: 'structuredDegree', class: Google::Apis::JobsV4beta1::Degree, decorator: Google::Apis::JobsV4beta1::Degree::Representation
      
        end
      end
      
      class Email
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :email_address, as: 'emailAddress'
          property :usage, as: 'usage'
        end
      end
      
      class EmployerFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :employer, as: 'employer'
          property :mode, as: 'mode'
          property :negated, as: 'negated'
        end
      end
      
      class EmploymentRecord
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address', class: Google::Apis::JobsV4beta1::Address, decorator: Google::Apis::JobsV4beta1::Address::Representation
      
          property :division_name, as: 'divisionName'
          property :employer_name, as: 'employerName'
          property :employer_name_snippet, as: 'employerNameSnippet'
          property :end_date, as: 'endDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :is_current, as: 'isCurrent'
          property :is_self_employed, as: 'isSelfEmployed'
          property :is_supervisor, as: 'isSupervisor'
          property :job_description, as: 'jobDescription'
          property :job_description_snippet, as: 'jobDescriptionSnippet'
          property :job_title, as: 'jobTitle'
          property :job_title_snippet, as: 'jobTitleSnippet'
          property :start_date, as: 'startDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class HistogramQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :histogram_query, as: 'histogramQuery'
        end
      end
      
      class HistogramQueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :histogram, as: 'histogram'
          property :histogram_query, as: 'histogramQuery'
        end
      end
      
      class Interview
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :outcome, as: 'outcome'
          property :rating, as: 'rating', class: Google::Apis::JobsV4beta1::Rating, decorator: Google::Apis::JobsV4beta1::Rating::Representation
      
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses'
          property :application_info, as: 'applicationInfo', class: Google::Apis::JobsV4beta1::ApplicationInfo, decorator: Google::Apis::JobsV4beta1::ApplicationInfo::Representation
      
          property :company, as: 'company'
          property :company_display_name, as: 'companyDisplayName'
          property :compensation_info, as: 'compensationInfo', class: Google::Apis::JobsV4beta1::CompensationInfo, decorator: Google::Apis::JobsV4beta1::CompensationInfo::Representation
      
          hash :custom_attributes, as: 'customAttributes', class: Google::Apis::JobsV4beta1::CustomAttribute, decorator: Google::Apis::JobsV4beta1::CustomAttribute::Representation
      
          collection :degree_types, as: 'degreeTypes'
          property :department, as: 'department'
          property :derived_info, as: 'derivedInfo', class: Google::Apis::JobsV4beta1::JobDerivedInfo, decorator: Google::Apis::JobsV4beta1::JobDerivedInfo::Representation
      
          property :description, as: 'description'
          collection :employment_types, as: 'employmentTypes'
          property :incentives, as: 'incentives'
          collection :job_benefits, as: 'jobBenefits'
          property :job_end_time, as: 'jobEndTime'
          property :job_level, as: 'jobLevel'
          property :job_start_time, as: 'jobStartTime'
          property :language_code, as: 'languageCode'
          property :name, as: 'name'
          property :posting_create_time, as: 'postingCreateTime'
          property :posting_expire_time, as: 'postingExpireTime'
          property :posting_publish_time, as: 'postingPublishTime'
          property :posting_region, as: 'postingRegion'
          property :posting_update_time, as: 'postingUpdateTime'
          property :processing_options, as: 'processingOptions', class: Google::Apis::JobsV4beta1::ProcessingOptions, decorator: Google::Apis::JobsV4beta1::ProcessingOptions::Representation
      
          property :promotion_value, as: 'promotionValue'
          property :qualifications, as: 'qualifications'
          property :requisition_id, as: 'requisitionId'
          property :responsibilities, as: 'responsibilities'
          property :title, as: 'title'
          property :visibility, as: 'visibility'
        end
      end
      
      class JobDerivedInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_categories, as: 'jobCategories'
          collection :locations, as: 'locations', class: Google::Apis::JobsV4beta1::Location, decorator: Google::Apis::JobsV4beta1::Location::Representation
      
        end
      end
      
      class JobEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs'
          property :profile, as: 'profile'
          property :type, as: 'type'
        end
      end
      
      class JobOperationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_results, as: 'jobResults', class: Google::Apis::JobsV4beta1::JobResult, decorator: Google::Apis::JobsV4beta1::JobResult::Representation
      
        end
      end
      
      class JobQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commute_filter, as: 'commuteFilter', class: Google::Apis::JobsV4beta1::CommuteFilter, decorator: Google::Apis::JobsV4beta1::CommuteFilter::Representation
      
          collection :companies, as: 'companies'
          collection :company_display_names, as: 'companyDisplayNames'
          property :compensation_filter, as: 'compensationFilter', class: Google::Apis::JobsV4beta1::CompensationFilter, decorator: Google::Apis::JobsV4beta1::CompensationFilter::Representation
      
          property :custom_attribute_filter, as: 'customAttributeFilter'
          property :disable_spell_check, as: 'disableSpellCheck'
          collection :employment_types, as: 'employmentTypes'
          collection :excluded_jobs, as: 'excludedJobs'
          collection :job_categories, as: 'jobCategories'
          collection :language_codes, as: 'languageCodes'
          collection :location_filters, as: 'locationFilters', class: Google::Apis::JobsV4beta1::LocationFilter, decorator: Google::Apis::JobsV4beta1::LocationFilter::Representation
      
          property :publish_time_range, as: 'publishTimeRange', class: Google::Apis::JobsV4beta1::TimestampRange, decorator: Google::Apis::JobsV4beta1::TimestampRange::Representation
      
          property :query, as: 'query'
          property :query_language_code, as: 'queryLanguageCode'
        end
      end
      
      class JobResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::JobsV4beta1::Job, decorator: Google::Apis::JobsV4beta1::Job::Representation
      
          property :status, as: 'status', class: Google::Apis::JobsV4beta1::Status, decorator: Google::Apis::JobsV4beta1::Status::Representation
      
        end
      end
      
      class JobTitleFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_title, as: 'jobTitle'
          property :negated, as: 'negated'
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class ListApplicationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :applications, as: 'applications', class: Google::Apis::JobsV4beta1::Application, decorator: Google::Apis::JobsV4beta1::Application::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4beta1::ResponseMetadata, decorator: Google::Apis::JobsV4beta1::ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListCompaniesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :companies, as: 'companies', class: Google::Apis::JobsV4beta1::Company, decorator: Google::Apis::JobsV4beta1::Company::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4beta1::ResponseMetadata, decorator: Google::Apis::JobsV4beta1::ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::JobsV4beta1::Job, decorator: Google::Apis::JobsV4beta1::Job::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4beta1::ResponseMetadata, decorator: Google::Apis::JobsV4beta1::ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :profiles, as: 'profiles', class: Google::Apis::JobsV4beta1::Profile, decorator: Google::Apis::JobsV4beta1::Profile::Representation
      
        end
      end
      
      class ListTenantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4beta1::ResponseMetadata, decorator: Google::Apis::JobsV4beta1::ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :tenants, as: 'tenants', class: Google::Apis::JobsV4beta1::Tenant, decorator: Google::Apis::JobsV4beta1::Tenant::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat_lng, as: 'latLng', class: Google::Apis::JobsV4beta1::LatLng, decorator: Google::Apis::JobsV4beta1::LatLng::Representation
      
          property :location_type, as: 'locationType'
          property :postal_address, as: 'postalAddress', class: Google::Apis::JobsV4beta1::PostalAddress, decorator: Google::Apis::JobsV4beta1::PostalAddress::Representation
      
          property :radius_miles, as: 'radiusMiles'
        end
      end
      
      class LocationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :distance_in_miles, as: 'distanceInMiles'
          property :lat_lng, as: 'latLng', class: Google::Apis::JobsV4beta1::LatLng, decorator: Google::Apis::JobsV4beta1::LatLng::Representation
      
          property :negated, as: 'negated'
          property :region_code, as: 'regionCode'
          property :telecommute_preference, as: 'telecommutePreference'
        end
      end
      
      class MatchingJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commute_info, as: 'commuteInfo', class: Google::Apis::JobsV4beta1::CommuteInfo, decorator: Google::Apis::JobsV4beta1::CommuteInfo::Representation
      
          property :job, as: 'job', class: Google::Apis::JobsV4beta1::Job, decorator: Google::Apis::JobsV4beta1::Job::Representation
      
          property :job_summary, as: 'jobSummary'
          property :job_title_snippet, as: 'jobTitleSnippet'
          property :search_text_snippet, as: 'searchTextSnippet'
        end
      end
      
      class MendelDebugInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :namespaced_debug_input, as: 'namespacedDebugInput', class: Google::Apis::JobsV4beta1::NamespacedDebugInput, decorator: Google::Apis::JobsV4beta1::NamespacedDebugInput::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class NamespacedDebugInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :absolutely_forced_exp_names, as: 'absolutelyForcedExpNames'
          collection :absolutely_forced_exp_tags, as: 'absolutelyForcedExpTags'
          collection :absolutely_forced_exps, as: 'absolutelyForcedExps'
          collection :conditionally_forced_exp_names, as: 'conditionallyForcedExpNames'
          collection :conditionally_forced_exp_tags, as: 'conditionallyForcedExpTags'
          collection :conditionally_forced_exps, as: 'conditionallyForcedExps'
          property :disable_automatic_enrollment_selection, as: 'disableAutomaticEnrollmentSelection'
          collection :disable_exp_names, as: 'disableExpNames'
          collection :disable_exp_tags, as: 'disableExpTags'
          collection :disable_exps, as: 'disableExps'
          property :disable_manual_enrollment_selection, as: 'disableManualEnrollmentSelection'
          property :disable_organic_selection, as: 'disableOrganicSelection'
          hash :forced_flags, as: 'forcedFlags'
          hash :forced_rollouts, as: 'forcedRollouts'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::JobsV4beta1::Status, decorator: Google::Apis::JobsV4beta1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class Patent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          collection :inventors, as: 'inventors'
          property :patent_description, as: 'patentDescription'
          property :patent_filing_date, as: 'patentFilingDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :patent_number, as: 'patentNumber'
          property :patent_office, as: 'patentOffice'
          property :patent_status, as: 'patentStatus'
          property :patent_status_date, as: 'patentStatusDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          collection :skills_used, as: 'skillsUsed', class: Google::Apis::JobsV4beta1::Skill, decorator: Google::Apis::JobsV4beta1::Skill::Representation
      
        end
      end
      
      class PersonName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :formatted_name, as: 'formattedName'
          property :preferred_name, as: 'preferredName'
          property :structured_name, as: 'structuredName', class: Google::Apis::JobsV4beta1::PersonStructuredName, decorator: Google::Apis::JobsV4beta1::PersonStructuredName::Representation
      
        end
      end
      
      class PersonNameFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :person_name, as: 'personName'
        end
      end
      
      class PersonStructuredName
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :family_name, as: 'familyName'
          property :given_name, as: 'givenName'
          property :middle_initial, as: 'middleInitial'
          property :preferred_name, as: 'preferredName'
          collection :prefixes, as: 'prefixes'
          collection :suffixes, as: 'suffixes'
        end
      end
      
      class PersonalUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class Phone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :number, as: 'number'
          property :type, as: 'type'
          property :usage, as: 'usage'
          property :when_available, as: 'whenAvailable'
        end
      end
      
      class PostalAddress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :address_lines, as: 'addressLines'
          property :administrative_area, as: 'administrativeArea'
          property :language_code, as: 'languageCode'
          property :locality, as: 'locality'
          property :organization, as: 'organization'
          property :postal_code, as: 'postalCode'
          collection :recipients, as: 'recipients'
          property :region_code, as: 'regionCode'
          property :revision, as: 'revision'
          property :sorting_code, as: 'sortingCode'
          property :sublocality, as: 'sublocality'
        end
      end
      
      class ProcessingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_street_address_resolution, as: 'disableStreetAddressResolution'
          property :html_sanitization, as: 'htmlSanitization'
        end
      end
      
      class Profile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :activities, as: 'activities', class: Google::Apis::JobsV4beta1::Activity, decorator: Google::Apis::JobsV4beta1::Activity::Representation
      
          collection :additional_contact_info, as: 'additionalContactInfo', class: Google::Apis::JobsV4beta1::AdditionalContactInfo, decorator: Google::Apis::JobsV4beta1::AdditionalContactInfo::Representation
      
          collection :addresses, as: 'addresses', class: Google::Apis::JobsV4beta1::Address, decorator: Google::Apis::JobsV4beta1::Address::Representation
      
          collection :applications, as: 'applications'
          collection :assignments, as: 'assignments'
          collection :availability_signals, as: 'availabilitySignals', class: Google::Apis::JobsV4beta1::AvailabilitySignal, decorator: Google::Apis::JobsV4beta1::AvailabilitySignal::Representation
      
          property :candidate_update_time, as: 'candidateUpdateTime'
          collection :certifications, as: 'certifications', class: Google::Apis::JobsV4beta1::Certification, decorator: Google::Apis::JobsV4beta1::Certification::Representation
      
          property :create_time, as: 'createTime'
          hash :custom_attributes, as: 'customAttributes', class: Google::Apis::JobsV4beta1::CustomAttribute, decorator: Google::Apis::JobsV4beta1::CustomAttribute::Representation
      
          collection :derived_addresses, as: 'derivedAddresses', class: Google::Apis::JobsV4beta1::Location, decorator: Google::Apis::JobsV4beta1::Location::Representation
      
          collection :education_records, as: 'educationRecords', class: Google::Apis::JobsV4beta1::EducationRecord, decorator: Google::Apis::JobsV4beta1::EducationRecord::Representation
      
          collection :email_addresses, as: 'emailAddresses', class: Google::Apis::JobsV4beta1::Email, decorator: Google::Apis::JobsV4beta1::Email::Representation
      
          collection :employment_records, as: 'employmentRecords', class: Google::Apis::JobsV4beta1::EmploymentRecord, decorator: Google::Apis::JobsV4beta1::EmploymentRecord::Representation
      
          property :external_id, as: 'externalId'
          property :group_id, as: 'groupId'
          property :is_hirable, as: 'isHirable'
          property :keyword_snippet, as: 'keywordSnippet'
          property :name, as: 'name'
          collection :patents, as: 'patents', class: Google::Apis::JobsV4beta1::Patent, decorator: Google::Apis::JobsV4beta1::Patent::Representation
      
          collection :person_names, as: 'personNames', class: Google::Apis::JobsV4beta1::PersonName, decorator: Google::Apis::JobsV4beta1::PersonName::Representation
      
          collection :personal_uris, as: 'personalUris', class: Google::Apis::JobsV4beta1::PersonalUri, decorator: Google::Apis::JobsV4beta1::PersonalUri::Representation
      
          collection :phone_numbers, as: 'phoneNumbers', class: Google::Apis::JobsV4beta1::Phone, decorator: Google::Apis::JobsV4beta1::Phone::Representation
      
          property :processed, as: 'processed'
          collection :publications, as: 'publications', class: Google::Apis::JobsV4beta1::Publication, decorator: Google::Apis::JobsV4beta1::Publication::Representation
      
          property :resume, as: 'resume', class: Google::Apis::JobsV4beta1::Resume, decorator: Google::Apis::JobsV4beta1::Resume::Representation
      
          property :resume_update_time, as: 'resumeUpdateTime'
          collection :skills, as: 'skills', class: Google::Apis::JobsV4beta1::Skill, decorator: Google::Apis::JobsV4beta1::Skill::Representation
      
          property :source, as: 'source'
          property :update_time, as: 'updateTime'
          property :uri, as: 'uri'
        end
      end
      
      class ProfileEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs'
          collection :profiles, as: 'profiles'
          property :type, as: 'type'
        end
      end
      
      class ProfileQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :application_date_filters, as: 'applicationDateFilters', class: Google::Apis::JobsV4beta1::ApplicationDateFilter, decorator: Google::Apis::JobsV4beta1::ApplicationDateFilter::Representation
      
          collection :application_job_filters, as: 'applicationJobFilters', class: Google::Apis::JobsV4beta1::ApplicationJobFilter, decorator: Google::Apis::JobsV4beta1::ApplicationJobFilter::Representation
      
          collection :application_outcome_notes_filters, as: 'applicationOutcomeNotesFilters', class: Google::Apis::JobsV4beta1::ApplicationOutcomeNotesFilter, decorator: Google::Apis::JobsV4beta1::ApplicationOutcomeNotesFilter::Representation
      
          collection :availability_filters, as: 'availabilityFilters', class: Google::Apis::JobsV4beta1::AvailabilityFilter, decorator: Google::Apis::JobsV4beta1::AvailabilityFilter::Representation
      
          property :candidate_availability_filter, as: 'candidateAvailabilityFilter', class: Google::Apis::JobsV4beta1::CandidateAvailabilityFilter, decorator: Google::Apis::JobsV4beta1::CandidateAvailabilityFilter::Representation
      
          property :custom_attribute_filter, as: 'customAttributeFilter'
          collection :education_filters, as: 'educationFilters', class: Google::Apis::JobsV4beta1::EducationFilter, decorator: Google::Apis::JobsV4beta1::EducationFilter::Representation
      
          collection :employer_filters, as: 'employerFilters', class: Google::Apis::JobsV4beta1::EmployerFilter, decorator: Google::Apis::JobsV4beta1::EmployerFilter::Representation
      
          property :hirable_filter, as: 'hirableFilter'
          collection :job_title_filters, as: 'jobTitleFilters', class: Google::Apis::JobsV4beta1::JobTitleFilter, decorator: Google::Apis::JobsV4beta1::JobTitleFilter::Representation
      
          collection :location_filters, as: 'locationFilters', class: Google::Apis::JobsV4beta1::LocationFilter, decorator: Google::Apis::JobsV4beta1::LocationFilter::Representation
      
          collection :person_name_filters, as: 'personNameFilters', class: Google::Apis::JobsV4beta1::PersonNameFilter, decorator: Google::Apis::JobsV4beta1::PersonNameFilter::Representation
      
          property :query, as: 'query'
          collection :skill_filters, as: 'skillFilters', class: Google::Apis::JobsV4beta1::SkillFilter, decorator: Google::Apis::JobsV4beta1::SkillFilter::Representation
      
          collection :time_filters, as: 'timeFilters', class: Google::Apis::JobsV4beta1::TimeFilter, decorator: Google::Apis::JobsV4beta1::TimeFilter::Representation
      
          collection :work_experience_filter, as: 'workExperienceFilter', class: Google::Apis::JobsV4beta1::WorkExperienceFilter, decorator: Google::Apis::JobsV4beta1::WorkExperienceFilter::Representation
      
        end
      end
      
      class Publication
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :authors, as: 'authors'
          property :description, as: 'description'
          property :isbn, as: 'isbn'
          property :journal, as: 'journal'
          property :publication_date, as: 'publicationDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :publication_type, as: 'publicationType'
          property :publisher, as: 'publisher'
          property :title, as: 'title'
          property :volume, as: 'volume'
        end
      end
      
      class Rating
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :interval, as: 'interval'
          property :max, as: 'max'
          property :min, as: 'min'
          property :overall, as: 'overall'
        end
      end
      
      class RequestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing_ids, as: 'allowMissingIds'
          property :device_info, as: 'deviceInfo', class: Google::Apis::JobsV4beta1::DeviceInfo, decorator: Google::Apis::JobsV4beta1::DeviceInfo::Representation
      
          property :domain, as: 'domain'
          property :session_id, as: 'sessionId'
          property :user_id, as: 'userId'
        end
      end
      
      class ResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class Resume
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :resume_type, as: 'resumeType'
          property :structured_resume, as: 'structuredResume'
        end
      end
      
      class SearchJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_ranking_info, as: 'customRankingInfo', class: Google::Apis::JobsV4beta1::CustomRankingInfo, decorator: Google::Apis::JobsV4beta1::CustomRankingInfo::Representation
      
          property :disable_keyword_match, as: 'disableKeywordMatch'
          property :diversification_level, as: 'diversificationLevel'
          property :enable_broadening, as: 'enableBroadening'
          collection :histogram_queries, as: 'histogramQueries', class: Google::Apis::JobsV4beta1::HistogramQuery, decorator: Google::Apis::JobsV4beta1::HistogramQuery::Representation
      
          property :job_query, as: 'jobQuery', class: Google::Apis::JobsV4beta1::JobQuery, decorator: Google::Apis::JobsV4beta1::JobQuery::Representation
      
          property :job_view, as: 'jobView'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::JobsV4beta1::RequestMetadata, decorator: Google::Apis::JobsV4beta1::RequestMetadata::Representation
      
          property :require_precise_result_size, as: 'requirePreciseResultSize'
          property :search_mode, as: 'searchMode'
        end
      end
      
      class SearchJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :broadened_query_jobs_count, as: 'broadenedQueryJobsCount'
          property :estimated_total_size, as: 'estimatedTotalSize'
          collection :histogram_query_results, as: 'histogramQueryResults', class: Google::Apis::JobsV4beta1::HistogramQueryResult, decorator: Google::Apis::JobsV4beta1::HistogramQueryResult::Representation
      
          collection :location_filters, as: 'locationFilters', class: Google::Apis::JobsV4beta1::Location, decorator: Google::Apis::JobsV4beta1::Location::Representation
      
          collection :matching_jobs, as: 'matchingJobs', class: Google::Apis::JobsV4beta1::MatchingJob, decorator: Google::Apis::JobsV4beta1::MatchingJob::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4beta1::ResponseMetadata, decorator: Google::Apis::JobsV4beta1::ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :spell_correction, as: 'spellCorrection', class: Google::Apis::JobsV4beta1::SpellingCorrection, decorator: Google::Apis::JobsV4beta1::SpellingCorrection::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class SearchProfilesRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive_sort, as: 'caseSensitiveSort'
          property :disable_spell_check, as: 'disableSpellCheck'
          collection :histogram_queries, as: 'histogramQueries', class: Google::Apis::JobsV4beta1::HistogramQuery, decorator: Google::Apis::JobsV4beta1::HistogramQuery::Representation
      
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :profile_query, as: 'profileQuery', class: Google::Apis::JobsV4beta1::ProfileQuery, decorator: Google::Apis::JobsV4beta1::ProfileQuery::Representation
      
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::JobsV4beta1::RequestMetadata, decorator: Google::Apis::JobsV4beta1::RequestMetadata::Representation
      
          property :result_set_id, as: 'resultSetId'
          property :strict_keywords_search, as: 'strictKeywordsSearch'
        end
      end
      
      class SearchProfilesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :estimated_total_size, :numeric_string => true, as: 'estimatedTotalSize'
          collection :histogram_query_results, as: 'histogramQueryResults', class: Google::Apis::JobsV4beta1::HistogramQueryResult, decorator: Google::Apis::JobsV4beta1::HistogramQueryResult::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4beta1::ResponseMetadata, decorator: Google::Apis::JobsV4beta1::ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :result_set_id, as: 'resultSetId'
          property :spell_correction, as: 'spellCorrection', class: Google::Apis::JobsV4beta1::SpellingCorrection, decorator: Google::Apis::JobsV4beta1::SpellingCorrection::Representation
      
          collection :summarized_profiles, as: 'summarizedProfiles', class: Google::Apis::JobsV4beta1::SummarizedProfile, decorator: Google::Apis::JobsV4beta1::SummarizedProfile::Representation
      
        end
      end
      
      class Skill
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :context, as: 'context'
          property :display_name, as: 'displayName'
          property :last_used_date, as: 'lastUsedDate', class: Google::Apis::JobsV4beta1::Date, decorator: Google::Apis::JobsV4beta1::Date::Representation
      
          property :level, as: 'level'
          property :skill_name_snippet, as: 'skillNameSnippet'
        end
      end
      
      class SkillFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :negated, as: 'negated'
          property :skill, as: 'skill'
        end
      end
      
      class SpellingCorrection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corrected, as: 'corrected'
          property :corrected_html, as: 'correctedHtml'
          property :corrected_text, as: 'correctedText'
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
      
      class SummarizedProfile
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :profiles, as: 'profiles', class: Google::Apis::JobsV4beta1::Profile, decorator: Google::Apis::JobsV4beta1::Profile::Representation
      
          property :summary, as: 'summary', class: Google::Apis::JobsV4beta1::Profile, decorator: Google::Apis::JobsV4beta1::Profile::Representation
      
        end
      end
      
      class Tenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_id, as: 'externalId'
          collection :keyword_searchable_profile_custom_attributes, as: 'keywordSearchableProfileCustomAttributes'
          property :name, as: 'name'
          property :usage_type, as: 'usageType'
        end
      end
      
      class TimeFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
          property :time_field, as: 'timeField'
        end
      end
      
      class TimeOfDay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
        end
      end
      
      class TimestampRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class UpdateApplicationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :application, as: 'application', class: Google::Apis::JobsV4beta1::Application, decorator: Google::Apis::JobsV4beta1::Application::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateCompanyRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :company, as: 'company', class: Google::Apis::JobsV4beta1::Company, decorator: Google::Apis::JobsV4beta1::Company::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateJobRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::JobsV4beta1::Job, decorator: Google::Apis::JobsV4beta1::Job::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateProfileRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :profile, as: 'profile', class: Google::Apis::JobsV4beta1::Profile, decorator: Google::Apis::JobsV4beta1::Profile::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class UpdateTenantRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :tenant, as: 'tenant', class: Google::Apis::JobsV4beta1::Tenant, decorator: Google::Apis::JobsV4beta1::Tenant::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class WorkExperienceFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_experience, as: 'maxExperience'
          property :min_experience, as: 'minExperience'
        end
      end
    end
  end
end
