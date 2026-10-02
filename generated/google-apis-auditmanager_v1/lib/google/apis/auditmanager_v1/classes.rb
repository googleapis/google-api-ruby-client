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
      
      # An audit report.
      class AuditReport
        include Google::Apis::Core::Hashable
      
        # Output only. Compliance framework to use for the audit report. For example, `
        # CIS_GCP_FOUNDATIONS_V1_2_0`.
        # Corresponds to the JSON property `complianceFramework`
        # @return [String]
        attr_accessor :compliance_framework
      
        # Output only. Deprecated. Compliance standard to be audited against. Use the `
        # compliance_framework` field instead.
        # Corresponds to the JSON property `complianceStandard`
        # @return [String]
        attr_accessor :compliance_standard
      
        # Output only. Overall status of the controls.
        # Corresponds to the JSON property `controlDetails`
        # @return [Array<Google::Apis::AuditmanagerV1::ControlDetails>]
        attr_accessor :control_details
      
        # Output only. Creation time of the audit report.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Cloud Storage bucket where the audit report is uploaded to.
        # Corresponds to the JSON property `destinationDetails`
        # @return [Google::Apis::AuditmanagerV1::DestinationDetails]
        attr_accessor :destination_details
      
        # Identifier. Name of the audit report, in one of the following formats: * `
        # projects/`project`/locations/`location`/auditReports/`audit_report`` * `
        # folders/`folder`/locations/`location`/auditReports/`audit_report`` * `
        # organizations/`organization`/locations/`location`/auditReports/`audit_report``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Client operation ID for the audit report.
        # Corresponds to the JSON property `operationId`
        # @return [String]
        attr_accessor :operation_id
      
        # Output only. State of audit report generation.
        # Corresponds to the JSON property `reportGenerationState`
        # @return [String]
        attr_accessor :report_generation_state
      
        # Additional information about the number of checks that were made during an
        # audit operation.
        # Corresponds to the JSON property `reportSummary`
        # @return [Google::Apis::AuditmanagerV1::ReportSummary]
        attr_accessor :report_summary
      
        # Output only. Organization, folder, or project that the report is generated for,
        # in one of the following formats: * `projects/`project`/locations/`location`` *
        # `folders/`folder`/locations/`location`` * `organizations/`organization`/
        # locations/`location``
        # Corresponds to the JSON property `scope`
        # @return [String]
        attr_accessor :scope
      
        # Output only. Project number, folder ID, or organization ID that the audit
        # report was generated for.
        # Corresponds to the JSON property `scopeId`
        # @return [String]
        attr_accessor :scope_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_framework = args[:compliance_framework] if args.key?(:compliance_framework)
          @compliance_standard = args[:compliance_standard] if args.key?(:compliance_standard)
          @control_details = args[:control_details] if args.key?(:control_details)
          @create_time = args[:create_time] if args.key?(:create_time)
          @destination_details = args[:destination_details] if args.key?(:destination_details)
          @name = args[:name] if args.key?(:name)
          @operation_id = args[:operation_id] if args.key?(:operation_id)
          @report_generation_state = args[:report_generation_state] if args.key?(:report_generation_state)
          @report_summary = args[:report_summary] if args.key?(:report_summary)
          @scope = args[:scope] if args.key?(:scope)
          @scope_id = args[:scope_id] if args.key?(:scope_id)
        end
      end
      
      # An audit schedule, in one of the following formats: * `projects/`project`/
      # locations/`location`/auditSchedules/`audit_schedule`` * `folders/`folder`/
      # locations/`location`/auditSchedules/`audit_schedule``
      class AuditSchedule
        include Google::Apis::Core::Hashable
      
        # Required. Framework (set of controls) that the audit scope report is generated
        # against. For example, `NIST_800_53`.
        # Corresponds to the JSON property `complianceFramework`
        # @return [String]
        attr_accessor :compliance_framework
      
        # Output only. Timestamp when the schedule was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Display name for the audit schedule.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Describes the error if the schedule is in an error state.
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        # Required. Cloud Storage bucket where Audit Manager can upload the audit report
        # and evidence. The format is `gs://`bucket_name``.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # Output only. Timestamp when the audit run was last triggered.
        # Corresponds to the JSON property `lastTriggerTime`
        # @return [String]
        attr_accessor :last_trigger_time
      
        # Identifier. Unique identifier for the audit schedule. Format: projects/`
        # project`/locations/`location`/auditSchedules/`audit_schedule` folders/`folder`/
        # locations/`location`/auditSchedules/`audit_schedule` organizations/`
        # organization`/locations/`location`/auditSchedules/`audit_schedule`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Calculated timestamp for the next scheduled run.
        # Corresponds to the JSON property `nextRunTime`
        # @return [String]
        attr_accessor :next_run_time
      
        # Required. Format for the audit report.
        # Corresponds to the JSON property `reportFormat`
        # @return [String]
        attr_accessor :report_format
      
        # Timing and frequency parameters for recurring audit runs.
        # Corresponds to the JSON property `scheduleConfig`
        # @return [Google::Apis::AuditmanagerV1::ScheduleConfig]
        attr_accessor :schedule_config
      
        # Optional. State of the audit schedule. While most states are managed by the
        # system, you can use UpdateAuditSchedule to start, pause, or delete the
        # schedule.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Timestamp when the schedule was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_framework = args[:compliance_framework] if args.key?(:compliance_framework)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @error_message = args[:error_message] if args.key?(:error_message)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @last_trigger_time = args[:last_trigger_time] if args.key?(:last_trigger_time)
          @name = args[:name] if args.key?(:name)
          @next_run_time = args[:next_run_time] if args.key?(:next_run_time)
          @report_format = args[:report_format] if args.key?(:report_format)
          @schedule_config = args[:schedule_config] if args.key?(:schedule_config)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Audit scope report.
      class AuditScopeReport
        include Google::Apis::Core::Hashable
      
        # Identifier. Name for the audit scope report, in one of the following formats: *
        # `projects/`project`/locations/`location`/auditScopeReports/`
        # audit_scope_report`` * `folders/`folder`/locations/`location`/
        # auditScopeReports/`audit_scope_report`` * `organizations/`organization`/
        # locations/`location`/auditScopeReports/`audit_scope_report``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Audit scope report content in byte format.
        # Corresponds to the JSON property `scopeReportContents`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :scope_report_contents
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @scope_report_contents = args[:scope_report_contents] if args.key?(:scope_report_contents)
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
      
      # A control.
      class Control
        include Google::Apis::Core::Hashable
      
        # Regulatory family of the control.
        # Corresponds to the JSON property `controlFamily`
        # @return [Google::Apis::AuditmanagerV1::ControlFamily]
        attr_accessor :control_family
      
        # Output only. A description of your responsibility for this control.
        # Corresponds to the JSON property `customerResponsibilityDescription`
        # @return [String]
        attr_accessor :customer_responsibility_description
      
        # Output only. A description of how you can implement your responsibility for
        # this control.
        # Corresponds to the JSON property `customerResponsibilityImplementation`
        # @return [String]
        attr_accessor :customer_responsibility_implementation
      
        # Output only. Description of the control.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Output only. Display name of the control.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Category that the control belongs to.
        # Corresponds to the JSON property `family`
        # @return [String]
        attr_accessor :family
      
        # Output only. A description of Google's responsibility for this control.
        # Corresponds to the JSON property `googleResponsibilityDescription`
        # @return [String]
        attr_accessor :google_responsibility_description
      
        # Output only. A description of how Google implements its responsibility for
        # this control.
        # Corresponds to the JSON property `googleResponsibilityImplementation`
        # @return [String]
        attr_accessor :google_responsibility_implementation
      
        # Output only. Control identifier that's used to fetch the findings. The
        # identifier is the same as the control report name.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Output only. Who is responsible for implementing this control. Set to one of
        # the following values: `GOOGLE`, `CUSTOMER`, or `SHARED`.
        # Corresponds to the JSON property `responsibilityType`
        # @return [String]
        attr_accessor :responsibility_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @control_family = args[:control_family] if args.key?(:control_family)
          @customer_responsibility_description = args[:customer_responsibility_description] if args.key?(:customer_responsibility_description)
          @customer_responsibility_implementation = args[:customer_responsibility_implementation] if args.key?(:customer_responsibility_implementation)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @family = args[:family] if args.key?(:family)
          @google_responsibility_description = args[:google_responsibility_description] if args.key?(:google_responsibility_description)
          @google_responsibility_implementation = args[:google_responsibility_implementation] if args.key?(:google_responsibility_implementation)
          @id = args[:id] if args.key?(:id)
          @responsibility_type = args[:responsibility_type] if args.key?(:responsibility_type)
        end
      end
      
      # Evaluation details for a control.
      class ControlDetails
        include Google::Apis::Core::Hashable
      
        # Output only. Overall status of the findings for the control.
        # Corresponds to the JSON property `complianceState`
        # @return [String]
        attr_accessor :compliance_state
      
        # A control.
        # Corresponds to the JSON property `control`
        # @return [Google::Apis::AuditmanagerV1::Control]
        attr_accessor :control
      
        # Additional information about the number of checks that were made during an
        # audit operation.
        # Corresponds to the JSON property `controlReportSummary`
        # @return [Google::Apis::AuditmanagerV1::ReportSummary]
        attr_accessor :control_report_summary
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_state = args[:compliance_state] if args.key?(:compliance_state)
          @control = args[:control] if args.key?(:control)
          @control_report_summary = args[:control_report_summary] if args.key?(:control_report_summary)
        end
      end
      
      # Regulatory family of the control.
      class ControlFamily
        include Google::Apis::Core::Hashable
      
        # Display name of the regulatory control family.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # ID of the regulatory control family. To find the list of supported control
        # families, use the ListControls method and review the `control_family` field in
        # the response.
        # Corresponds to the JSON property `familyId`
        # @return [String]
        attr_accessor :family_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @family_id = args[:family_id] if args.key?(:family_id)
        end
      end
      
      # Cloud Storage bucket where the audit report is uploaded to.
      class DestinationDetails
        include Google::Apis::Core::Hashable
      
        # URI for the Cloud Storage bucket, in the format `gs://`bucket_name``.
        # Corresponds to the JSON property `gcsBucketUri`
        # @return [String]
        attr_accessor :gcs_bucket_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @gcs_bucket_uri = args[:gcs_bucket_uri] if args.key?(:gcs_bucket_uri)
        end
      end
      
      # Details about the bucket where you want to upload the audit report.
      class EligibleDestination
        include Google::Apis::Core::Hashable
      
        # The location of the Cloud Storage bucket where you want to upload the audit
        # report and evidence during the GenerateAuditReport API call.
        # Corresponds to the JSON property `eligibleGcsBucket`
        # @return [String]
        attr_accessor :eligible_gcs_bucket
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @eligible_gcs_bucket = args[:eligible_gcs_bucket] if args.key?(:eligible_gcs_bucket)
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
      
      # Request message for EnrollResource.
      class EnrollResourceRequest
        include Google::Apis::Core::Hashable
      
        # Required. Cloud Storage buckets that you can upload your audit reports to
        # during the audit process. When you enroll an organization or folder, you can
        # choose a Cloud Storage bucket from any project in the organization or folder.
        # If you run an audit at the project level using the service agent at the
        # organization or folder level, all the buckets that are associated with the
        # service agent are available.
        # Corresponds to the JSON property `destinations`
        # @return [Array<Google::Apis::AuditmanagerV1::EligibleDestination>]
        attr_accessor :destinations
      
        # Optional. If `true`, only validates the request and does not enroll the
        # resource. This executes standard request validation (such as schema, IAM, and
        # destination checks) and skips the apply phase. Use this field for the
        # following purposes: * **Infrastructure as Code (IaC)**: Allow tools like
        # Terraform to run dry-run mutations (e.g., `terraform plan`) without creating
        # real resources or incurring costs. * **User Interface Validation**: Enable
        # real-time form and permission validation in custom UIs before submitting
        # requests. * **CI/CD & Automation**: Test your scripts, permissions, and
        # parameters safely without consuming resource quotas.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destinations = args[:destinations] if args.key?(:destinations)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Organization, folder, or project to enroll for audit reports.
      class Enrollment
        include Google::Apis::Core::Hashable
      
        # Output only. Cloud Storage buckets where you want to upload the audit reports.
        # Corresponds to the JSON property `destinationDetails`
        # @return [Array<Google::Apis::AuditmanagerV1::DestinationDetails>]
        attr_accessor :destination_details
      
        # Identifier. Name of the enrollment, in one of the following formats: * `
        # projects/`project`/locations/`location`/enrollments/`enrollment`` * `folders/`
        # folder`/locations/`location`/enrollments/`enrollment`` * `organizations/`
        # organization`/locations/`location`/enrollments/`enrollment``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_details = args[:destination_details] if args.key?(:destination_details)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Request message for GenerateAuditReport.
      class GenerateAuditReportRequest
        include Google::Apis::Core::Hashable
      
        # Required. The framework that's used for the audit report. For example, `
        # NIST_800_53`.
        # Corresponds to the JSON property `complianceFramework`
        # @return [String]
        attr_accessor :compliance_framework
      
        # Optional. Deprecated. Compliance standard for the audit report. Use the `
        # compliance_framework` field instead.
        # Corresponds to the JSON property `complianceStandard`
        # @return [String]
        attr_accessor :compliance_standard
      
        # URL for the Cloud Storage bucket where the report and evidence is uploaded.
        # You must select a bucket that was provided during the enrollment process.
        # Corresponds to the JSON property `gcsUri`
        # @return [String]
        attr_accessor :gcs_uri
      
        # Required. Format for the audit report.
        # Corresponds to the JSON property `reportFormat`
        # @return [String]
        attr_accessor :report_format
      
        # Optional. If `true`, only validates the request and does not generate the
        # audit report. This executes standard request validation (such as schema,
        # framework existence, scope, and IAM checks) and skips the apply phase. Use
        # this field for the following purposes: * **Infrastructure as Code (IaC)**:
        # Allow tools like Terraform to run dry-run mutations (e.g., `terraform plan`)
        # without creating real resources or incurring costs. * **User Interface
        # Validation**: Enable real-time form and permission validation in custom UIs
        # before submitting requests. * **CI/CD & Automation**: Test your scripts,
        # permissions, and parameters safely without triggering expensive Long-Running
        # Operations (LROs) or consuming resource quotas.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_framework = args[:compliance_framework] if args.key?(:compliance_framework)
          @compliance_standard = args[:compliance_standard] if args.key?(:compliance_standard)
          @gcs_uri = args[:gcs_uri] if args.key?(:gcs_uri)
          @report_format = args[:report_format] if args.key?(:report_format)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Request message for GenerateAuditScopeReport.
      class GenerateAuditScopeReportRequest
        include Google::Apis::Core::Hashable
      
        # Required. Framework (set of controls) that the audit scope report is generated
        # against. For example, `NIST_800_53`.
        # Corresponds to the JSON property `complianceFramework`
        # @return [String]
        attr_accessor :compliance_framework
      
        # Optional. Deprecated. The standard (industry or regulatory requirements) that
        # the audit scope report is run against. Use the `compliance_framework` field
        # instead.
        # Corresponds to the JSON property `complianceStandard`
        # @return [String]
        attr_accessor :compliance_standard
      
        # Required. Format for the audit scope report.
        # Corresponds to the JSON property `reportFormat`
        # @return [String]
        attr_accessor :report_format
      
        # Optional. If `true`, only validates the request and does not generate the
        # audit scope report. This executes standard request validation (such as schema,
        # framework existence, scope, and IAM checks) and skips the apply phase. Use
        # this field for the following purposes: * **Infrastructure as Code (IaC)**:
        # Allow tools like Terraform to run dry-run mutations (e.g., `terraform plan`)
        # without creating real resources or incurring costs. * **User Interface
        # Validation**: Enable real-time form and permission validation in custom UIs
        # before submitting requests. * **CI/CD & Automation**: Test your scripts,
        # permissions, and parameters safely without consuming resource quotas.
        # Corresponds to the JSON property `validateOnly`
        # @return [Boolean]
        attr_accessor :validate_only
        alias_method :validate_only?, :validate_only
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliance_framework = args[:compliance_framework] if args.key?(:compliance_framework)
          @compliance_standard = args[:compliance_standard] if args.key?(:compliance_standard)
          @report_format = args[:report_format] if args.key?(:report_format)
          @validate_only = args[:validate_only] if args.key?(:validate_only)
        end
      end
      
      # Response message for ListAuditReports.
      class ListAuditReportsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Audit reports.
        # Corresponds to the JSON property `auditReports`
        # @return [Array<Google::Apis::AuditmanagerV1::AuditReport>]
        attr_accessor :audit_reports
      
        # Output only. A token that you can send as the `page_token` in a subsequent
        # request to retrieve the next page of results. If this field is empty, there
        # are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_reports = args[:audit_reports] if args.key?(:audit_reports)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListAuditSchedules.
      class ListAuditSchedulesResponse
        include Google::Apis::Core::Hashable
      
        # List of audit schedules.
        # Corresponds to the JSON property `auditSchedules`
        # @return [Array<Google::Apis::AuditmanagerV1::AuditSchedule>]
        attr_accessor :audit_schedules
      
        # A token that you can send as the `page_token` in a subsequent request to
        # retrieve the next page of results. If this field is empty, there are no
        # subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that can't be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_schedules = args[:audit_schedules] if args.key?(:audit_schedules)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for ListControls.
      class ListControlsResponse
        include Google::Apis::Core::Hashable
      
        # Output only. Controls for a given regulatory standard.
        # Corresponds to the JSON property `controls`
        # @return [Array<Google::Apis::AuditmanagerV1::Control>]
        attr_accessor :controls
      
        # Output only. A token that you can send as the `page_token` in a subsequent
        # request to retrieve the next page of results. If this field is empty, there
        # are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @controls = args[:controls] if args.key?(:controls)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response message for Locations.ListLocations.
      class ListLocationsResponse
        include Google::Apis::Core::Hashable
      
        # A list of locations that matches the specified filter in the request.
        # Corresponds to the JSON property `locations`
        # @return [Array<Google::Apis::AuditmanagerV1::Location>]
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
        # @return [Array<Google::Apis::AuditmanagerV1::Operation>]
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
      
      # Response message for ListResourceEnrollmentStatuses.
      class ListResourceEnrollmentStatusesResponse
        include Google::Apis::Core::Hashable
      
        # Output only. A token that you can send as the `page_token` in a subsequent
        # request to retrieve the next page of results. If this field is empty, there
        # are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Resources with their enrollment status.
        # Corresponds to the JSON property `resourceEnrollmentStatuses`
        # @return [Array<Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus>]
        attr_accessor :resource_enrollment_statuses
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @resource_enrollment_statuses = args[:resource_enrollment_statuses] if args.key?(:resource_enrollment_statuses)
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
        # @return [Google::Apis::AuditmanagerV1::Status]
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
      
      # Metadata for the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. The API version used to start the operation. For example, `v1`.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. Time that the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. Time that the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Whether you requested that the operation be cancelled. Operations
        # that were cancelled successfully have an Operation.error value with a status
        # code Code.CANCELLED.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. A human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. A server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. The name of the verb that was executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Details about the current status of the report-generation process.
      class ReportGenerationProgress
        include Google::Apis::Core::Hashable
      
        # Output only. Name of the audit report.
        # Corresponds to the JSON property `auditReport`
        # @return [String]
        attr_accessor :audit_report
      
        # Output only. Cloud Storage bucket where the audit report is uploaded to after
        # the evaluation process is completed.
        # Corresponds to the JSON property `destinationGcsBucket`
        # @return [String]
        attr_accessor :destination_gcs_bucket
      
        # Progress of the evaluation process. The progress is defined in terms of
        # percentage complete.
        # Corresponds to the JSON property `evaluationPercentComplete`
        # @return [Float]
        attr_accessor :evaluation_percent_complete
      
        # Output only. Reason for failure during the audit report generation process.
        # This field is set only if the `OperationState` attribute is `
        # OPERATION_STATE_FAILED`.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # Report generation progress, defined in terms of percentage complete. Until
        # evaluation is complete, this value is always `0`.
        # Corresponds to the JSON property `reportGenerationPercentComplete`
        # @return [Float]
        attr_accessor :report_generation_percent_complete
      
        # Report uploading progress, defined in terms of percentage complete. Until
        # evaluation and report generation are complete, this value is always `0`.
        # Corresponds to the JSON property `reportUploadingPercentComplete`
        # @return [Float]
        attr_accessor :report_uploading_percent_complete
      
        # Output only. Current state of execution for report generation.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audit_report = args[:audit_report] if args.key?(:audit_report)
          @destination_gcs_bucket = args[:destination_gcs_bucket] if args.key?(:destination_gcs_bucket)
          @evaluation_percent_complete = args[:evaluation_percent_complete] if args.key?(:evaluation_percent_complete)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @report_generation_percent_complete = args[:report_generation_percent_complete] if args.key?(:report_generation_percent_complete)
          @report_uploading_percent_complete = args[:report_uploading_percent_complete] if args.key?(:report_uploading_percent_complete)
          @state = args[:state] if args.key?(:state)
        end
      end
      
      # Additional information about the number of checks that were made during an
      # audit operation.
      class ReportSummary
        include Google::Apis::Core::Hashable
      
        # Number of compliant checks.
        # Corresponds to the JSON property `compliantCount`
        # @return [Fixnum]
        attr_accessor :compliant_count
      
        # Number of checks that can't be performed due to errors.
        # Corresponds to the JSON property `errorCount`
        # @return [Fixnum]
        attr_accessor :error_count
      
        # Number of checks that require a manual review.
        # Corresponds to the JSON property `manualReviewNeededCount`
        # @return [Fixnum]
        attr_accessor :manual_review_needed_count
      
        # Total number of evaluated checks.
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        # Number of checks with violations.
        # Corresponds to the JSON property `violationCount`
        # @return [Fixnum]
        attr_accessor :violation_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliant_count = args[:compliant_count] if args.key?(:compliant_count)
          @error_count = args[:error_count] if args.key?(:error_count)
          @manual_review_needed_count = args[:manual_review_needed_count] if args.key?(:manual_review_needed_count)
          @total_count = args[:total_count] if args.key?(:total_count)
          @violation_count = args[:violation_count] if args.key?(:violation_count)
        end
      end
      
      # An organization, folder, or project with its enrollment status.
      class ResourceEnrollmentStatus
        include Google::Apis::Core::Hashable
      
        # Output only. Display name for the organization, folder, or project.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. Deprecated. Whether the organization, folder, or project is
        # enrolled. Use `enrollment_state` instead.
        # Corresponds to the JSON property `enrolled`
        # @return [Boolean]
        attr_accessor :enrolled
        alias_method :enrolled?, :enrolled
      
        # Organization, folder, or project to enroll for audit reports.
        # Corresponds to the JSON property `enrollment`
        # @return [Google::Apis::AuditmanagerV1::Enrollment]
        attr_accessor :enrollment
      
        # Output only. Enrollment state of the organization, folder, or project.
        # Corresponds to the JSON property `enrollmentState`
        # @return [String]
        attr_accessor :enrollment_state
      
        # Identifier. Name of the resource enrollment status, in one of the following
        # formats: * `folders/`folder`/locations/`location`/resourceEnrollmentStatuses/`
        # resource_enrollment_status`` * `projects/`project`/locations/`location`/
        # resourceEnrollmentStatuses/`resource_enrollment_status`` * `organizations/`
        # organization`/locations/`location`/resourceEnrollmentStatuses/`
        # resource_enrollment_status``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @enrolled = args[:enrolled] if args.key?(:enrolled)
          @enrollment = args[:enrollment] if args.key?(:enrollment)
          @enrollment_state = args[:enrollment_state] if args.key?(:enrollment_state)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Timing and frequency parameters for recurring audit runs.
      class ScheduleConfig
        include Google::Apis::Core::Hashable
      
        # Optional. Date that the schedule stops. If not specified, the schedule runs
        # indefinitely.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Required. Frequency of audit runs.
        # Corresponds to the JSON property `frequency`
        # @return [String]
        attr_accessor :frequency
      
        # Required. Date and time when the first audit run is triggered. Subsequent runs
        # are based on this time and the chosen frequency.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Optional. Time zone for the audit schedule in IANA format (for example, `
        # America/New_York`). The time zone is used to interpret the `start_time` and
        # the `end_time`, and to calculate subsequent run dates. If not specified, the
        # time zone default is UTC.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time = args[:end_time] if args.key?(:end_time)
          @frequency = args[:frequency] if args.key?(:frequency)
          @start_time = args[:start_time] if args.key?(:start_time)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
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
