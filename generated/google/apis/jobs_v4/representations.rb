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
    module JobsV4
      
      class ApplicationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BatchOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CompensationEntry
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
      
      class CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4BatchCreateJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4BatchCreateJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4BatchDeleteJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4BatchDeleteJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4BatchOperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4BatchUpdateJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4BatchUpdateJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4ClientEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CommuteFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4Company
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CompanyDerivedInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CompensationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CompensationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CompensationInfoCompensationEntry
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CompensationInfoCompensationRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CompleteQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CompleteQueryResponseCompletionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4CustomAttribute
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4DeviceInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4HistogramQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4HistogramQueryResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4JobApplicationInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4JobDerivedInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4JobEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4JobProcessingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4JobQuery
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4JobResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4ListCompaniesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4ListTenantsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4LocationFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4RequestMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4ResponseMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4SearchJobsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4SearchJobsRequestCustomRankingInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4SearchJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4SearchJobsResponseCommuteInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4SearchJobsResponseMatchingJob
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4SpellingCorrection
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4Tenant
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleCloudTalentV4TimestampRange
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
      
      class JobOperationResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class LatLng
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
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
      
      class PostalAddress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ProcessingOptions
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TimeOfDay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApplicationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :emails, as: 'emails'
          property :instruction, as: 'instruction'
          collection :uris, as: 'uris'
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
      
      class CompensationEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::JobsV4::Money, decorator: Google::Apis::JobsV4::Money::Representation
      
          property :description, as: 'description'
          property :expected_units_per_year, as: 'expectedUnitsPerYear'
          property :range, as: 'range', class: Google::Apis::JobsV4::CompensationRange, decorator: Google::Apis::JobsV4::CompensationRange::Representation
      
          property :type, as: 'type'
          property :unit, as: 'unit'
        end
      end
      
      class CompensationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annualized_base_compensation_range, as: 'annualizedBaseCompensationRange', class: Google::Apis::JobsV4::CompensationRange, decorator: Google::Apis::JobsV4::CompensationRange::Representation
      
          property :annualized_total_compensation_range, as: 'annualizedTotalCompensationRange', class: Google::Apis::JobsV4::CompensationRange, decorator: Google::Apis::JobsV4::CompensationRange::Representation
      
          collection :entries, as: 'entries', class: Google::Apis::JobsV4::CompensationEntry, decorator: Google::Apis::JobsV4::CompensationEntry::Representation
      
        end
      end
      
      class CompensationRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_compensation, as: 'maxCompensation', class: Google::Apis::JobsV4::Money, decorator: Google::Apis::JobsV4::Money::Representation
      
          property :min_compensation, as: 'minCompensation', class: Google::Apis::JobsV4::Money, decorator: Google::Apis::JobsV4::Money::Representation
      
        end
      end
      
      class CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filterable, as: 'filterable'
          property :keyword_searchable, as: 'keywordSearchable'
          collection :long_values, as: 'longValues'
          collection :string_values, as: 'stringValues'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleCloudTalentV4BatchCreateJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::JobsV4::GoogleCloudTalentV4Job, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Job::Representation
      
        end
      end
      
      class GoogleCloudTalentV4BatchCreateJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_results, as: 'jobResults', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobResult, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobResult::Representation
      
        end
      end
      
      class GoogleCloudTalentV4BatchDeleteJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :names, as: 'names'
        end
      end
      
      class GoogleCloudTalentV4BatchDeleteJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_results, as: 'jobResults', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobResult, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobResult::Representation
      
        end
      end
      
      class GoogleCloudTalentV4BatchOperationMetadata
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
      
      class GoogleCloudTalentV4BatchUpdateJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::JobsV4::GoogleCloudTalentV4Job, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Job::Representation
      
          property :update_mask, as: 'updateMask'
        end
      end
      
      class GoogleCloudTalentV4BatchUpdateJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_results, as: 'jobResults', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobResult, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobResult::Representation
      
        end
      end
      
      class GoogleCloudTalentV4ClientEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :event_id, as: 'eventId'
          property :event_notes, as: 'eventNotes'
          property :job_event, as: 'jobEvent', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobEvent, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobEvent::Representation
      
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudTalentV4CommuteFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_imprecise_addresses, as: 'allowImpreciseAddresses'
          property :commute_method, as: 'commuteMethod'
          property :departure_time, as: 'departureTime', class: Google::Apis::JobsV4::TimeOfDay, decorator: Google::Apis::JobsV4::TimeOfDay::Representation
      
          property :road_traffic, as: 'roadTraffic'
          property :start_coordinates, as: 'startCoordinates', class: Google::Apis::JobsV4::LatLng, decorator: Google::Apis::JobsV4::LatLng::Representation
      
          property :travel_duration, as: 'travelDuration'
        end
      end
      
      class GoogleCloudTalentV4Company
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :career_site_uri, as: 'careerSiteUri'
          property :derived_info, as: 'derivedInfo', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompanyDerivedInfo, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompanyDerivedInfo::Representation
      
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
      
      class GoogleCloudTalentV4CompanyDerivedInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :headquarters_location, as: 'headquartersLocation', class: Google::Apis::JobsV4::GoogleCloudTalentV4Location, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Location::Representation
      
        end
      end
      
      class GoogleCloudTalentV4CompensationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :include_jobs_with_unspecified_compensation_range, as: 'includeJobsWithUnspecifiedCompensationRange'
          property :range, as: 'range', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange::Representation
      
          property :type, as: 'type'
          collection :units, as: 'units'
        end
      end
      
      class GoogleCloudTalentV4CompensationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :annualized_base_compensation_range, as: 'annualizedBaseCompensationRange', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange::Representation
      
          property :annualized_total_compensation_range, as: 'annualizedTotalCompensationRange', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange::Representation
      
          collection :entries, as: 'entries', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationEntry, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationEntry::Representation
      
        end
      end
      
      class GoogleCloudTalentV4CompensationInfoCompensationEntry
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amount, as: 'amount', class: Google::Apis::JobsV4::Money, decorator: Google::Apis::JobsV4::Money::Representation
      
          property :description, as: 'description'
          property :expected_units_per_year, as: 'expectedUnitsPerYear'
          property :range, as: 'range', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfoCompensationRange::Representation
      
          property :type, as: 'type'
          property :unit, as: 'unit'
        end
      end
      
      class GoogleCloudTalentV4CompensationInfoCompensationRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :max_compensation, as: 'maxCompensation', class: Google::Apis::JobsV4::Money, decorator: Google::Apis::JobsV4::Money::Representation
      
          property :min_compensation, as: 'minCompensation', class: Google::Apis::JobsV4::Money, decorator: Google::Apis::JobsV4::Money::Representation
      
        end
      end
      
      class GoogleCloudTalentV4CompleteQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :completion_results, as: 'completionResults', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompleteQueryResponseCompletionResult, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompleteQueryResponseCompletionResult::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata::Representation
      
        end
      end
      
      class GoogleCloudTalentV4CompleteQueryResponseCompletionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :image_uri, as: 'imageUri'
          property :suggestion, as: 'suggestion'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudTalentV4CustomAttribute
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :filterable, as: 'filterable'
          property :keyword_searchable, as: 'keywordSearchable'
          collection :long_values, as: 'longValues'
          collection :string_values, as: 'stringValues'
        end
      end
      
      class GoogleCloudTalentV4DeviceInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :device_type, as: 'deviceType'
          property :id, as: 'id'
        end
      end
      
      class GoogleCloudTalentV4HistogramQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :histogram_query, as: 'histogramQuery'
        end
      end
      
      class GoogleCloudTalentV4HistogramQueryResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :histogram, as: 'histogram'
          property :histogram_query, as: 'histogramQuery'
        end
      end
      
      class GoogleCloudTalentV4Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses'
          property :application_info, as: 'applicationInfo', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobApplicationInfo, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobApplicationInfo::Representation
      
          property :company, as: 'company'
          property :company_display_name, as: 'companyDisplayName'
          property :compensation_info, as: 'compensationInfo', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfo, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationInfo::Representation
      
          hash :custom_attributes, as: 'customAttributes', class: Google::Apis::JobsV4::GoogleCloudTalentV4CustomAttribute, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CustomAttribute::Representation
      
          collection :degree_types, as: 'degreeTypes'
          property :department, as: 'department'
          property :derived_info, as: 'derivedInfo', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobDerivedInfo, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobDerivedInfo::Representation
      
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
          property :processing_options, as: 'processingOptions', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobProcessingOptions, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobProcessingOptions::Representation
      
          property :promotion_value, as: 'promotionValue'
          property :qualifications, as: 'qualifications'
          property :requisition_id, as: 'requisitionId'
          property :responsibilities, as: 'responsibilities'
          property :title, as: 'title'
          property :visibility, as: 'visibility'
        end
      end
      
      class GoogleCloudTalentV4JobApplicationInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :emails, as: 'emails'
          property :instruction, as: 'instruction'
          collection :uris, as: 'uris'
        end
      end
      
      class GoogleCloudTalentV4JobDerivedInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_categories, as: 'jobCategories'
          collection :locations, as: 'locations', class: Google::Apis::JobsV4::GoogleCloudTalentV4Location, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Location::Representation
      
        end
      end
      
      class GoogleCloudTalentV4JobEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs'
          property :type, as: 'type'
        end
      end
      
      class GoogleCloudTalentV4JobProcessingOptions
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :disable_street_address_resolution, as: 'disableStreetAddressResolution'
          property :html_sanitization, as: 'htmlSanitization'
        end
      end
      
      class GoogleCloudTalentV4JobQuery
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commute_filter, as: 'commuteFilter', class: Google::Apis::JobsV4::GoogleCloudTalentV4CommuteFilter, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CommuteFilter::Representation
      
          collection :companies, as: 'companies'
          collection :company_display_names, as: 'companyDisplayNames'
          property :compensation_filter, as: 'compensationFilter', class: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationFilter, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4CompensationFilter::Representation
      
          property :custom_attribute_filter, as: 'customAttributeFilter'
          property :disable_spell_check, as: 'disableSpellCheck'
          collection :employment_types, as: 'employmentTypes'
          collection :excluded_jobs, as: 'excludedJobs'
          collection :job_categories, as: 'jobCategories'
          collection :language_codes, as: 'languageCodes'
          collection :location_filters, as: 'locationFilters', class: Google::Apis::JobsV4::GoogleCloudTalentV4LocationFilter, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4LocationFilter::Representation
      
          property :publish_time_range, as: 'publishTimeRange', class: Google::Apis::JobsV4::GoogleCloudTalentV4TimestampRange, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4TimestampRange::Representation
      
          property :query, as: 'query'
          property :query_language_code, as: 'queryLanguageCode'
        end
      end
      
      class GoogleCloudTalentV4JobResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::JobsV4::GoogleCloudTalentV4Job, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Job::Representation
      
          property :status, as: 'status', class: Google::Apis::JobsV4::Status, decorator: Google::Apis::JobsV4::Status::Representation
      
        end
      end
      
      class GoogleCloudTalentV4ListCompaniesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :companies, as: 'companies', class: Google::Apis::JobsV4::GoogleCloudTalentV4Company, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Company::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudTalentV4ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::JobsV4::GoogleCloudTalentV4Job, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Job::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleCloudTalentV4ListTenantsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :tenants, as: 'tenants', class: Google::Apis::JobsV4::GoogleCloudTalentV4Tenant, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Tenant::Representation
      
        end
      end
      
      class GoogleCloudTalentV4Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat_lng, as: 'latLng', class: Google::Apis::JobsV4::LatLng, decorator: Google::Apis::JobsV4::LatLng::Representation
      
          property :location_type, as: 'locationType'
          property :postal_address, as: 'postalAddress', class: Google::Apis::JobsV4::PostalAddress, decorator: Google::Apis::JobsV4::PostalAddress::Representation
      
          property :radius_miles, as: 'radiusMiles'
        end
      end
      
      class GoogleCloudTalentV4LocationFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :address, as: 'address'
          property :distance_in_miles, as: 'distanceInMiles'
          property :lat_lng, as: 'latLng', class: Google::Apis::JobsV4::LatLng, decorator: Google::Apis::JobsV4::LatLng::Representation
      
          property :region_code, as: 'regionCode'
          property :telecommute_preference, as: 'telecommutePreference'
        end
      end
      
      class GoogleCloudTalentV4RequestMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_missing_ids, as: 'allowMissingIds'
          property :device_info, as: 'deviceInfo', class: Google::Apis::JobsV4::GoogleCloudTalentV4DeviceInfo, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4DeviceInfo::Representation
      
          property :domain, as: 'domain'
          property :session_id, as: 'sessionId'
          property :user_id, as: 'userId'
        end
      end
      
      class GoogleCloudTalentV4ResponseMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_id, as: 'requestId'
        end
      end
      
      class GoogleCloudTalentV4SearchJobsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :custom_ranking_info, as: 'customRankingInfo', class: Google::Apis::JobsV4::GoogleCloudTalentV4SearchJobsRequestCustomRankingInfo, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4SearchJobsRequestCustomRankingInfo::Representation
      
          property :disable_keyword_match, as: 'disableKeywordMatch'
          property :diversification_level, as: 'diversificationLevel'
          property :enable_broadening, as: 'enableBroadening'
          collection :histogram_queries, as: 'histogramQueries', class: Google::Apis::JobsV4::GoogleCloudTalentV4HistogramQuery, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4HistogramQuery::Representation
      
          property :job_query, as: 'jobQuery', class: Google::Apis::JobsV4::GoogleCloudTalentV4JobQuery, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4JobQuery::Representation
      
          property :job_view, as: 'jobView'
          property :max_page_size, as: 'maxPageSize'
          property :offset, as: 'offset'
          property :order_by, as: 'orderBy'
          property :page_token, as: 'pageToken'
          property :request_metadata, as: 'requestMetadata', class: Google::Apis::JobsV4::GoogleCloudTalentV4RequestMetadata, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4RequestMetadata::Representation
      
          property :search_mode, as: 'searchMode'
        end
      end
      
      class GoogleCloudTalentV4SearchJobsRequestCustomRankingInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :importance_level, as: 'importanceLevel'
          property :ranking_expression, as: 'rankingExpression'
        end
      end
      
      class GoogleCloudTalentV4SearchJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :broadened_query_jobs_count, as: 'broadenedQueryJobsCount'
          collection :histogram_query_results, as: 'histogramQueryResults', class: Google::Apis::JobsV4::GoogleCloudTalentV4HistogramQueryResult, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4HistogramQueryResult::Representation
      
          collection :location_filters, as: 'locationFilters', class: Google::Apis::JobsV4::GoogleCloudTalentV4Location, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Location::Representation
      
          collection :matching_jobs, as: 'matchingJobs', class: Google::Apis::JobsV4::GoogleCloudTalentV4SearchJobsResponseMatchingJob, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4SearchJobsResponseMatchingJob::Representation
      
          property :metadata, as: 'metadata', class: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4ResponseMetadata::Representation
      
          property :next_page_token, as: 'nextPageToken'
          property :spell_correction, as: 'spellCorrection', class: Google::Apis::JobsV4::GoogleCloudTalentV4SpellingCorrection, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4SpellingCorrection::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class GoogleCloudTalentV4SearchJobsResponseCommuteInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job_location, as: 'jobLocation', class: Google::Apis::JobsV4::GoogleCloudTalentV4Location, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Location::Representation
      
          property :travel_duration, as: 'travelDuration'
        end
      end
      
      class GoogleCloudTalentV4SearchJobsResponseMatchingJob
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :commute_info, as: 'commuteInfo', class: Google::Apis::JobsV4::GoogleCloudTalentV4SearchJobsResponseCommuteInfo, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4SearchJobsResponseCommuteInfo::Representation
      
          property :job, as: 'job', class: Google::Apis::JobsV4::GoogleCloudTalentV4Job, decorator: Google::Apis::JobsV4::GoogleCloudTalentV4Job::Representation
      
          property :job_summary, as: 'jobSummary'
          property :job_title_snippet, as: 'jobTitleSnippet'
          property :search_text_snippet, as: 'searchTextSnippet'
        end
      end
      
      class GoogleCloudTalentV4SpellingCorrection
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :corrected, as: 'corrected'
          property :corrected_html, as: 'correctedHtml'
          property :corrected_text, as: 'correctedText'
        end
      end
      
      class GoogleCloudTalentV4Tenant
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :external_id, as: 'externalId'
          property :name, as: 'name'
        end
      end
      
      class GoogleCloudTalentV4TimestampRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :start_time, as: 'startTime'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :addresses, as: 'addresses'
          property :application_info, as: 'applicationInfo', class: Google::Apis::JobsV4::ApplicationInfo, decorator: Google::Apis::JobsV4::ApplicationInfo::Representation
      
          property :company, as: 'company'
          property :company_display_name, as: 'companyDisplayName'
          property :compensation_info, as: 'compensationInfo', class: Google::Apis::JobsV4::CompensationInfo, decorator: Google::Apis::JobsV4::CompensationInfo::Representation
      
          hash :custom_attributes, as: 'customAttributes', class: Google::Apis::JobsV4::CustomAttribute, decorator: Google::Apis::JobsV4::CustomAttribute::Representation
      
          collection :degree_types, as: 'degreeTypes'
          property :department, as: 'department'
          property :derived_info, as: 'derivedInfo', class: Google::Apis::JobsV4::JobDerivedInfo, decorator: Google::Apis::JobsV4::JobDerivedInfo::Representation
      
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
          property :processing_options, as: 'processingOptions', class: Google::Apis::JobsV4::ProcessingOptions, decorator: Google::Apis::JobsV4::ProcessingOptions::Representation
      
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
          collection :locations, as: 'locations', class: Google::Apis::JobsV4::Location, decorator: Google::Apis::JobsV4::Location::Representation
      
        end
      end
      
      class JobOperationResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_results, as: 'jobResults', class: Google::Apis::JobsV4::JobResult, decorator: Google::Apis::JobsV4::JobResult::Representation
      
        end
      end
      
      class JobResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :job, as: 'job', class: Google::Apis::JobsV4::Job, decorator: Google::Apis::JobsV4::Job::Representation
      
          property :status, as: 'status', class: Google::Apis::JobsV4::Status, decorator: Google::Apis::JobsV4::Status::Representation
      
        end
      end
      
      class LatLng
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :lat_lng, as: 'latLng', class: Google::Apis::JobsV4::LatLng, decorator: Google::Apis::JobsV4::LatLng::Representation
      
          property :location_type, as: 'locationType'
          property :postal_address, as: 'postalAddress', class: Google::Apis::JobsV4::PostalAddress, decorator: Google::Apis::JobsV4::PostalAddress::Representation
      
          property :radius_miles, as: 'radiusMiles'
        end
      end
      
      class MendelDebugInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          hash :namespaced_debug_input, as: 'namespacedDebugInput', class: Google::Apis::JobsV4::NamespacedDebugInput, decorator: Google::Apis::JobsV4::NamespacedDebugInput::Representation
      
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
          property :error, as: 'error', class: Google::Apis::JobsV4::Status, decorator: Google::Apis::JobsV4::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
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
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
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
    end
  end
end
