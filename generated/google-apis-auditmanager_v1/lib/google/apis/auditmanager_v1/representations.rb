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
    module AuditmanagerV1
      
      class AuditReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditSchedule
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditScopeReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CancelOperationRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Control
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ControlDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ControlFamily
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DestinationDetails
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EligibleDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EnrollResourceRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Enrollment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAuditReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GenerateAuditScopeReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuditReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListAuditSchedulesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListControlsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListLocationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListOperationsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListResourceEnrollmentStatusesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Location
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OperationMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportGenerationProgress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceEnrollmentStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ScheduleConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AuditReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_framework, as: 'complianceFramework'
          property :compliance_standard, as: 'complianceStandard'
          collection :control_details, as: 'controlDetails', class: Google::Apis::AuditmanagerV1::ControlDetails, decorator: Google::Apis::AuditmanagerV1::ControlDetails::Representation
      
          property :create_time, as: 'createTime'
          property :destination_details, as: 'destinationDetails', class: Google::Apis::AuditmanagerV1::DestinationDetails, decorator: Google::Apis::AuditmanagerV1::DestinationDetails::Representation
      
          property :name, as: 'name'
          property :operation_id, as: 'operationId'
          property :report_generation_state, as: 'reportGenerationState'
          property :report_summary, as: 'reportSummary', class: Google::Apis::AuditmanagerV1::ReportSummary, decorator: Google::Apis::AuditmanagerV1::ReportSummary::Representation
      
          property :scope, as: 'scope'
          property :scope_id, as: 'scopeId'
        end
      end
      
      class AuditSchedule
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_framework, as: 'complianceFramework'
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :error_message, as: 'errorMessage'
          property :gcs_uri, as: 'gcsUri'
          property :last_trigger_time, as: 'lastTriggerTime'
          property :name, as: 'name'
          property :next_run_time, as: 'nextRunTime'
          property :report_format, as: 'reportFormat'
          property :schedule_config, as: 'scheduleConfig', class: Google::Apis::AuditmanagerV1::ScheduleConfig, decorator: Google::Apis::AuditmanagerV1::ScheduleConfig::Representation
      
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
        end
      end
      
      class AuditScopeReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :scope_report_contents, :base64 => true, as: 'scopeReportContents'
        end
      end
      
      class CancelOperationRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Control
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :control_family, as: 'controlFamily', class: Google::Apis::AuditmanagerV1::ControlFamily, decorator: Google::Apis::AuditmanagerV1::ControlFamily::Representation
      
          property :customer_responsibility_description, as: 'customerResponsibilityDescription'
          property :customer_responsibility_implementation, as: 'customerResponsibilityImplementation'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :family, as: 'family'
          property :google_responsibility_description, as: 'googleResponsibilityDescription'
          property :google_responsibility_implementation, as: 'googleResponsibilityImplementation'
          property :id, as: 'id'
          property :responsibility_type, as: 'responsibilityType'
        end
      end
      
      class ControlDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_state, as: 'complianceState'
          property :control, as: 'control', class: Google::Apis::AuditmanagerV1::Control, decorator: Google::Apis::AuditmanagerV1::Control::Representation
      
          property :control_report_summary, as: 'controlReportSummary', class: Google::Apis::AuditmanagerV1::ReportSummary, decorator: Google::Apis::AuditmanagerV1::ReportSummary::Representation
      
        end
      end
      
      class ControlFamily
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :family_id, as: 'familyId'
        end
      end
      
      class DestinationDetails
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :gcs_bucket_uri, as: 'gcsBucketUri'
        end
      end
      
      class EligibleDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :eligible_gcs_bucket, as: 'eligibleGcsBucket'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class EnrollResourceRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destinations, as: 'destinations', class: Google::Apis::AuditmanagerV1::EligibleDestination, decorator: Google::Apis::AuditmanagerV1::EligibleDestination::Representation
      
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class Enrollment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destination_details, as: 'destinationDetails', class: Google::Apis::AuditmanagerV1::DestinationDetails, decorator: Google::Apis::AuditmanagerV1::DestinationDetails::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GenerateAuditReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_framework, as: 'complianceFramework'
          property :compliance_standard, as: 'complianceStandard'
          property :gcs_uri, as: 'gcsUri'
          property :report_format, as: 'reportFormat'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class GenerateAuditScopeReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliance_framework, as: 'complianceFramework'
          property :compliance_standard, as: 'complianceStandard'
          property :report_format, as: 'reportFormat'
          property :validate_only, as: 'validateOnly'
        end
      end
      
      class ListAuditReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_reports, as: 'auditReports', class: Google::Apis::AuditmanagerV1::AuditReport, decorator: Google::Apis::AuditmanagerV1::AuditReport::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListAuditSchedulesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :audit_schedules, as: 'auditSchedules', class: Google::Apis::AuditmanagerV1::AuditSchedule, decorator: Google::Apis::AuditmanagerV1::AuditSchedule::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListControlsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :controls, as: 'controls', class: Google::Apis::AuditmanagerV1::Control, decorator: Google::Apis::AuditmanagerV1::Control::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListLocationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :locations, as: 'locations', class: Google::Apis::AuditmanagerV1::Location, decorator: Google::Apis::AuditmanagerV1::Location::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListOperationsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :operations, as: 'operations', class: Google::Apis::AuditmanagerV1::Operation, decorator: Google::Apis::AuditmanagerV1::Operation::Representation
      
          collection :unreachable, as: 'unreachable'
        end
      end
      
      class ListResourceEnrollmentStatusesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :resource_enrollment_statuses, as: 'resourceEnrollmentStatuses', class: Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus, decorator: Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus::Representation
      
        end
      end
      
      class Location
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          hash :labels, as: 'labels'
          property :location_id, as: 'locationId'
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::AuditmanagerV1::Status, decorator: Google::Apis::AuditmanagerV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class OperationMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :api_version, as: 'apiVersion'
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          property :requested_cancellation, as: 'requestedCancellation'
          property :status_message, as: 'statusMessage'
          property :target, as: 'target'
          property :verb, as: 'verb'
        end
      end
      
      class ReportGenerationProgress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audit_report, as: 'auditReport'
          property :destination_gcs_bucket, as: 'destinationGcsBucket'
          property :evaluation_percent_complete, as: 'evaluationPercentComplete'
          property :failure_reason, as: 'failureReason'
          property :report_generation_percent_complete, as: 'reportGenerationPercentComplete'
          property :report_uploading_percent_complete, as: 'reportUploadingPercentComplete'
          property :state, as: 'state'
        end
      end
      
      class ReportSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :compliant_count, as: 'compliantCount'
          property :error_count, as: 'errorCount'
          property :manual_review_needed_count, as: 'manualReviewNeededCount'
          property :total_count, as: 'totalCount'
          property :violation_count, as: 'violationCount'
        end
      end
      
      class ResourceEnrollmentStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :enrolled, as: 'enrolled'
          property :enrollment, as: 'enrollment', class: Google::Apis::AuditmanagerV1::Enrollment, decorator: Google::Apis::AuditmanagerV1::Enrollment::Representation
      
          property :enrollment_state, as: 'enrollmentState'
          property :name, as: 'name'
        end
      end
      
      class ScheduleConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time, as: 'endTime'
          property :frequency, as: 'frequency'
          property :start_time, as: 'startTime'
          property :time_zone, as: 'timeZone'
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
