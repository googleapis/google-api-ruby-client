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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AuditmanagerV1
      # Audit Manager API
      #
      # The Audit Manager API allows customers to manage compliance audits.
      #
      # @example
      #    require 'google/apis/auditmanager_v1'
      #
      #    Auditmanager = Google::Apis::AuditmanagerV1 # Alias the module
      #    service = Auditmanager::CloudAuditManagerService.new
      #
      # @see https://cloud.google.com/assured-workloads/docs/audit-manager
      class CloudAuditManagerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://auditmanager.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-auditmanager_v1',
                client_version: Google::Apis::AuditmanagerV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Adds your project, folder, or organization to Audit Manager. This method
        # creates the Audit Manager service agent in your workload and grants required
        # permissions to the service agent. If you make this request on a workload that'
        # s already enrolled, then this method overrides the existing set of
        # destinations.
        # @param [String] scope
        #   Required. Organization, folder, or project to enroll in Audit Manager, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::EnrollResourceRequest] enroll_resource_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Enrollment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Enrollment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enroll_folder_location_resource(scope, enroll_resource_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}:enrollResource', options)
          command.request_representation = Google::Apis::AuditmanagerV1::EnrollResourceRequest::Representation
          command.request_object = enroll_resource_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Enrollment::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Enrollment
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers audit report generation requests. This method returns the operation
        # identifier that you can use to track the report generation progress.
        # @param [String] scope
        #   Required. Organization, folder, or project that the audit applies to, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::GenerateAuditReportRequest] generate_audit_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_folder_location_audit_report(scope, generate_audit_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}/auditReports:generate', options)
          command.request_representation = Google::Apis::AuditmanagerV1::GenerateAuditReportRequest::Representation
          command.request_object = generate_audit_report_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the full metadata and findings for an audit report.
        # @param [String] name
        #   Required. Name of the audit report, in one of the following formats: * `
        #   projects/`project`/locations/`location`/auditReports/`audit_report`` * `
        #   folders/`folder`/locations/`location`/auditReports/`audit_report`` * `
        #   organizations/`organization`/locations/`location`/auditReports/`audit_report``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_audit_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::AuditReport::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the audit reports for the organization, folder, or project that you
        # specify as the parent scope.
        # @param [String] parent
        #   Required. Parent organization, folder, or project to list reports for, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListAuditReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListAuditReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_audit_reports(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/auditReports', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListAuditReportsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListAuditReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new audit schedule in a given project and location.
        # @param [String] parent
        #   Required. Project or folder that this audit schedule is for, in one of the
        #   following formats: * `projects/`project`/locations/`location`` * `folders/`
        #   folder`/locations/`location``
        # @param [Google::Apis::AuditmanagerV1::AuditSchedule] audit_schedule_object
        # @param [String] audit_schedule_id
        #   Required. ID to use for the audit schedule, which becomes the final component
        #   of the audit schedule's resource name.
        # @param [Boolean] validate_only
        #   Optional. If `true`, only validates the request and does not create the audit
        #   schedule. This executes standard request validation (such as schema, framework
        #   existence, scope, and IAM checks) and skips the apply phase. Use this field
        #   for the following purposes: * **Infrastructure as Code (IaC)**: Allow tools
        #   like Terraform to run dry-run mutations (e.g., `terraform plan`) without
        #   creating real resources or incurring costs. * **User Interface Validation**:
        #   Enable real-time form and permission validation in custom UIs before
        #   submitting requests. * **CI/CD & Automation**: Test your scripts, permissions,
        #   and parameters safely without consuming resource quotas.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_folder_location_audit_schedule(parent, audit_schedule_object = nil, audit_schedule_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/auditSchedules', options)
          command.request_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.request_object = audit_schedule_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['parent'] = parent unless parent.nil?
          command.query['auditScheduleId'] = audit_schedule_id unless audit_schedule_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single audit schedule.
        # @param [String] name
        #   Required. Name of the audit schedule to retrieve, in one of the following
        #   formats: * `projects/`project`/locations/`location`/auditSchedules/`
        #   audit_schedule`` * `folders/`folder`/locations/`location`/auditSchedules/`
        #   audit_schedule`` * `organizations/`organization`/locations/`location`/
        #   auditSchedules/`audit_schedule``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_audit_schedule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists audit schedules in a given project and location.
        # @param [String] parent
        #   Required. Parent for the audit schedule, in one of the following formats: * `
        #   projects/`project`/locations/`location`` * `folders/`folder`/locations/`
        #   location`` * `organizations/`organization`/locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_audit_schedules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/auditSchedules', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing audit schedule.
        # @param [String] name
        #   Identifier. Unique identifier for the audit schedule. Format: projects/`
        #   project`/locations/`location`/auditSchedules/`audit_schedule` folders/`folder`/
        #   locations/`location`/auditSchedules/`audit_schedule` organizations/`
        #   organization`/locations/`location`/auditSchedules/`audit_schedule`
        # @param [Google::Apis::AuditmanagerV1::AuditSchedule] audit_schedule_object
        # @param [String] update_mask
        #   Optional. List of fields to update.
        # @param [Boolean] validate_only
        #   Optional. If `true`, only validates the request and does not update the audit
        #   schedule. This executes standard request validation (such as schema, framework
        #   existence, scope, and IAM checks) and skips the apply phase. Use this field
        #   for the following purposes: * **Infrastructure as Code (IaC)**: Allow tools
        #   like Terraform to run dry-run mutations (e.g., `terraform plan`) without
        #   creating real resources or incurring costs. * **User Interface Validation**:
        #   Enable real-time form and permission validation in custom UIs before
        #   submitting requests. * **CI/CD & Automation**: Test your scripts, permissions,
        #   and parameters safely without consuming resource quotas.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_folder_location_audit_schedule(name, audit_schedule_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.request_object = audit_schedule_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an audit scope report for the given standard. The report includes
        # the following: * The technical attributes and constraints that Audit Manager
        # uses to verify your compliance with a framework. * A list of Google Cloud
        # services and resources that are within the scope of the framework.
        # @param [String] scope
        #   Required. Project or folder that the audit scope report is generated for, in
        #   one of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::GenerateAuditScopeReportRequest] generate_audit_scope_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditScopeReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditScopeReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_folder_location_audit_scope_report(scope, generate_audit_scope_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}/auditScopeReports:generate', options)
          command.request_representation = Google::Apis::AuditmanagerV1::GenerateAuditScopeReportRequest::Representation
          command.request_object = generate_audit_scope_report_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditScopeReport::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditScopeReport
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about the long-running operation to generate audit reports.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_operation_detail(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about the long-running operation to generate audit reports.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_operation_id(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a resource and its enrollment status.
        # @param [String] name
        #   Required. Name of the resource enrollment status, in one of the following
        #   formats: * `folders/`folder`/locations/`location`/resourceEnrollmentStatuses/`
        #   resource_enrollment_status`` * `projects/`project`/locations/`location`/
        #   resourceEnrollmentStatuses/`resource_enrollment_status`` * `organizations/`
        #   organization`/locations/`location`/resourceEnrollmentStatuses/`
        #   resource_enrollment_status``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_folder_location_resource_enrollment_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the folders and projects in an organization or folder, along with
        # their enrollments.
        # @param [String] parent
        #   Required. Parent organization or folder to list enrollment statuses for, in
        #   one of the following formats: * `folders/`folder`/locations/`location`` * `
        #   organizations/`organization`/locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_resource_enrollment_statuses(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/resourceEnrollmentStatuses', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the controls that you must implement to become compliant to a regulatory
        # standard.
        # @param [String] parent
        #   Required. Standard to list controls for, in one of the following formats: * `
        #   projects/`project`/locations/`location`/standards/`standard`` * `folders/`
        #   folder`/locations/`location`/standards/`standard`` * `organizations/`
        #   organization`/locations/`location`/standards/`standard``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_folder_location_standard_controls(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/controls', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListControlsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds your project, folder, or organization to Audit Manager. This method
        # creates the Audit Manager service agent in your workload and grants required
        # permissions to the service agent. If you make this request on a workload that'
        # s already enrolled, then this method overrides the existing set of
        # destinations.
        # @param [String] scope
        #   Required. Organization, folder, or project to enroll in Audit Manager, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::EnrollResourceRequest] enroll_resource_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Enrollment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Enrollment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enroll_organization_location_resource(scope, enroll_resource_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}:enrollResource', options)
          command.request_representation = Google::Apis::AuditmanagerV1::EnrollResourceRequest::Representation
          command.request_object = enroll_resource_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Enrollment::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Enrollment
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers audit report generation requests. This method returns the operation
        # identifier that you can use to track the report generation progress.
        # @param [String] scope
        #   Required. Organization, folder, or project that the audit applies to, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::GenerateAuditReportRequest] generate_audit_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_organization_location_audit_report(scope, generate_audit_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}/auditReports:generate', options)
          command.request_representation = Google::Apis::AuditmanagerV1::GenerateAuditReportRequest::Representation
          command.request_object = generate_audit_report_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the full metadata and findings for an audit report.
        # @param [String] name
        #   Required. Name of the audit report, in one of the following formats: * `
        #   projects/`project`/locations/`location`/auditReports/`audit_report`` * `
        #   folders/`folder`/locations/`location`/auditReports/`audit_report`` * `
        #   organizations/`organization`/locations/`location`/auditReports/`audit_report``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_audit_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::AuditReport::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the audit reports for the organization, folder, or project that you
        # specify as the parent scope.
        # @param [String] parent
        #   Required. Parent organization, folder, or project to list reports for, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListAuditReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListAuditReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_audit_reports(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/auditReports', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListAuditReportsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListAuditReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new audit schedule in a given project and location.
        # @param [String] parent
        #   Required. Project or folder that this audit schedule is for, in one of the
        #   following formats: * `projects/`project`/locations/`location`` * `folders/`
        #   folder`/locations/`location``
        # @param [Google::Apis::AuditmanagerV1::AuditSchedule] audit_schedule_object
        # @param [String] audit_schedule_id
        #   Required. ID to use for the audit schedule, which becomes the final component
        #   of the audit schedule's resource name.
        # @param [Boolean] validate_only
        #   Optional. If `true`, only validates the request and does not create the audit
        #   schedule. This executes standard request validation (such as schema, framework
        #   existence, scope, and IAM checks) and skips the apply phase. Use this field
        #   for the following purposes: * **Infrastructure as Code (IaC)**: Allow tools
        #   like Terraform to run dry-run mutations (e.g., `terraform plan`) without
        #   creating real resources or incurring costs. * **User Interface Validation**:
        #   Enable real-time form and permission validation in custom UIs before
        #   submitting requests. * **CI/CD & Automation**: Test your scripts, permissions,
        #   and parameters safely without consuming resource quotas.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_audit_schedule(parent, audit_schedule_object = nil, audit_schedule_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/auditSchedules', options)
          command.request_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.request_object = audit_schedule_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['parent'] = parent unless parent.nil?
          command.query['auditScheduleId'] = audit_schedule_id unless audit_schedule_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single audit schedule.
        # @param [String] name
        #   Required. Name of the audit schedule to retrieve, in one of the following
        #   formats: * `projects/`project`/locations/`location`/auditSchedules/`
        #   audit_schedule`` * `folders/`folder`/locations/`location`/auditSchedules/`
        #   audit_schedule`` * `organizations/`organization`/locations/`location`/
        #   auditSchedules/`audit_schedule``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_audit_schedule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists audit schedules in a given project and location.
        # @param [String] parent
        #   Required. Parent for the audit schedule, in one of the following formats: * `
        #   projects/`project`/locations/`location`` * `folders/`folder`/locations/`
        #   location`` * `organizations/`organization`/locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_audit_schedules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/auditSchedules', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing audit schedule.
        # @param [String] name
        #   Identifier. Unique identifier for the audit schedule. Format: projects/`
        #   project`/locations/`location`/auditSchedules/`audit_schedule` folders/`folder`/
        #   locations/`location`/auditSchedules/`audit_schedule` organizations/`
        #   organization`/locations/`location`/auditSchedules/`audit_schedule`
        # @param [Google::Apis::AuditmanagerV1::AuditSchedule] audit_schedule_object
        # @param [String] update_mask
        #   Optional. List of fields to update.
        # @param [Boolean] validate_only
        #   Optional. If `true`, only validates the request and does not update the audit
        #   schedule. This executes standard request validation (such as schema, framework
        #   existence, scope, and IAM checks) and skips the apply phase. Use this field
        #   for the following purposes: * **Infrastructure as Code (IaC)**: Allow tools
        #   like Terraform to run dry-run mutations (e.g., `terraform plan`) without
        #   creating real resources or incurring costs. * **User Interface Validation**:
        #   Enable real-time form and permission validation in custom UIs before
        #   submitting requests. * **CI/CD & Automation**: Test your scripts, permissions,
        #   and parameters safely without consuming resource quotas.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_audit_schedule(name, audit_schedule_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.request_object = audit_schedule_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an audit scope report for the given standard. The report includes
        # the following: * The technical attributes and constraints that Audit Manager
        # uses to verify your compliance with a framework. * A list of Google Cloud
        # services and resources that are within the scope of the framework.
        # @param [String] scope
        #   Required. Project or folder that the audit scope report is generated for, in
        #   one of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::GenerateAuditScopeReportRequest] generate_audit_scope_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditScopeReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditScopeReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_organization_location_audit_scope_report(scope, generate_audit_scope_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}/auditScopeReports:generate', options)
          command.request_representation = Google::Apis::AuditmanagerV1::GenerateAuditScopeReportRequest::Representation
          command.request_object = generate_audit_scope_report_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditScopeReport::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditScopeReport
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about the long-running operation to generate audit reports.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation_detail(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about the long-running operation to generate audit reports.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation_id(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::AuditmanagerV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_organization_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::AuditmanagerV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Empty::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Empty::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a resource and its enrollment status.
        # @param [String] name
        #   Required. Name of the resource enrollment status, in one of the following
        #   formats: * `folders/`folder`/locations/`location`/resourceEnrollmentStatuses/`
        #   resource_enrollment_status`` * `projects/`project`/locations/`location`/
        #   resourceEnrollmentStatuses/`resource_enrollment_status`` * `organizations/`
        #   organization`/locations/`location`/resourceEnrollmentStatuses/`
        #   resource_enrollment_status``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_resource_enrollment_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the folders and projects in an organization or folder, along with
        # their enrollments.
        # @param [String] parent
        #   Required. Parent organization or folder to list enrollment statuses for, in
        #   one of the following formats: * `folders/`folder`/locations/`location`` * `
        #   organizations/`organization`/locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_resource_enrollment_statuses(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/resourceEnrollmentStatuses', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListResourceEnrollmentStatusesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the controls that you must implement to become compliant to a regulatory
        # standard.
        # @param [String] parent
        #   Required. Standard to list controls for, in one of the following formats: * `
        #   projects/`project`/locations/`location`/standards/`standard`` * `folders/`
        #   folder`/locations/`location`/standards/`standard`` * `organizations/`
        #   organization`/locations/`location`/standards/`standard``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_standard_controls(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/controls', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListControlsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds your project, folder, or organization to Audit Manager. This method
        # creates the Audit Manager service agent in your workload and grants required
        # permissions to the service agent. If you make this request on a workload that'
        # s already enrolled, then this method overrides the existing set of
        # destinations.
        # @param [String] scope
        #   Required. Organization, folder, or project to enroll in Audit Manager, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::EnrollResourceRequest] enroll_resource_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Enrollment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Enrollment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enroll_project_location_resource(scope, enroll_resource_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}:enrollResource', options)
          command.request_representation = Google::Apis::AuditmanagerV1::EnrollResourceRequest::Representation
          command.request_object = enroll_resource_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Enrollment::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Enrollment
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Location::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service. This method
        # lists locations based on the resource scope provided in the
        # ListLocationsRequest.name field: * **Global locations**: If `name` is empty,
        # the method lists the public locations available to all projects. * **Project-
        # specific locations**: If `name` follows the format `projects/`project``, the
        # method lists locations visible to that specific project. This includes public,
        # private, or other project-specific locations enabled for the project. For gRPC
        # and client library implementations, the resource name is passed as the `name`
        # field. For direct service calls, the resource name is incorporated into the
        # request path based on the specific service implementation and version.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. Do not use this field unless explicitly documented otherwise. This
        #   is primarily for internal usage.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/locations', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers audit report generation requests. This method returns the operation
        # identifier that you can use to track the report generation progress.
        # @param [String] scope
        #   Required. Organization, folder, or project that the audit applies to, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::GenerateAuditReportRequest] generate_audit_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_audit_report(scope, generate_audit_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}/auditReports:generate', options)
          command.request_representation = Google::Apis::AuditmanagerV1::GenerateAuditReportRequest::Representation
          command.request_object = generate_audit_report_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the full metadata and findings for an audit report.
        # @param [String] name
        #   Required. Name of the audit report, in one of the following formats: * `
        #   projects/`project`/locations/`location`/auditReports/`audit_report`` * `
        #   folders/`folder`/locations/`location`/auditReports/`audit_report`` * `
        #   organizations/`organization`/locations/`location`/auditReports/`audit_report``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_audit_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::AuditReport::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the audit reports for the organization, folder, or project that you
        # specify as the parent scope.
        # @param [String] parent
        #   Required. Parent organization, folder, or project to list reports for, in one
        #   of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListAuditReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListAuditReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_audit_reports(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/auditReports', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListAuditReportsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListAuditReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new audit schedule in a given project and location.
        # @param [String] parent
        #   Required. Project or folder that this audit schedule is for, in one of the
        #   following formats: * `projects/`project`/locations/`location`` * `folders/`
        #   folder`/locations/`location``
        # @param [Google::Apis::AuditmanagerV1::AuditSchedule] audit_schedule_object
        # @param [String] audit_schedule_id
        #   Required. ID to use for the audit schedule, which becomes the final component
        #   of the audit schedule's resource name.
        # @param [Boolean] validate_only
        #   Optional. If `true`, only validates the request and does not create the audit
        #   schedule. This executes standard request validation (such as schema, framework
        #   existence, scope, and IAM checks) and skips the apply phase. Use this field
        #   for the following purposes: * **Infrastructure as Code (IaC)**: Allow tools
        #   like Terraform to run dry-run mutations (e.g., `terraform plan`) without
        #   creating real resources or incurring costs. * **User Interface Validation**:
        #   Enable real-time form and permission validation in custom UIs before
        #   submitting requests. * **CI/CD & Automation**: Test your scripts, permissions,
        #   and parameters safely without consuming resource quotas.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_audit_schedule(parent, audit_schedule_object = nil, audit_schedule_id: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/auditSchedules', options)
          command.request_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.request_object = audit_schedule_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['parent'] = parent unless parent.nil?
          command.query['auditScheduleId'] = audit_schedule_id unless audit_schedule_id.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details of a single audit schedule.
        # @param [String] name
        #   Required. Name of the audit schedule to retrieve, in one of the following
        #   formats: * `projects/`project`/locations/`location`/auditSchedules/`
        #   audit_schedule`` * `folders/`folder`/locations/`location`/auditSchedules/`
        #   audit_schedule`` * `organizations/`organization`/locations/`location`/
        #   auditSchedules/`audit_schedule``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_audit_schedule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists audit schedules in a given project and location.
        # @param [String] parent
        #   Required. Parent for the audit schedule, in one of the following formats: * `
        #   projects/`project`/locations/`location`` * `folders/`folder`/locations/`
        #   location`` * `organizations/`organization`/locations/`location``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_audit_schedules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/auditSchedules', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListAuditSchedulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing audit schedule.
        # @param [String] name
        #   Identifier. Unique identifier for the audit schedule. Format: projects/`
        #   project`/locations/`location`/auditSchedules/`audit_schedule` folders/`folder`/
        #   locations/`location`/auditSchedules/`audit_schedule` organizations/`
        #   organization`/locations/`location`/auditSchedules/`audit_schedule`
        # @param [Google::Apis::AuditmanagerV1::AuditSchedule] audit_schedule_object
        # @param [String] update_mask
        #   Optional. List of fields to update.
        # @param [Boolean] validate_only
        #   Optional. If `true`, only validates the request and does not update the audit
        #   schedule. This executes standard request validation (such as schema, framework
        #   existence, scope, and IAM checks) and skips the apply phase. Use this field
        #   for the following purposes: * **Infrastructure as Code (IaC)**: Allow tools
        #   like Terraform to run dry-run mutations (e.g., `terraform plan`) without
        #   creating real resources or incurring costs. * **User Interface Validation**:
        #   Enable real-time form and permission validation in custom UIs before
        #   submitting requests. * **CI/CD & Automation**: Test your scripts, permissions,
        #   and parameters safely without consuming resource quotas.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditSchedule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditSchedule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_audit_schedule(name, audit_schedule_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.request_object = audit_schedule_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditSchedule::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditSchedule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an audit scope report for the given standard. The report includes
        # the following: * The technical attributes and constraints that Audit Manager
        # uses to verify your compliance with a framework. * A list of Google Cloud
        # services and resources that are within the scope of the framework.
        # @param [String] scope
        #   Required. Project or folder that the audit scope report is generated for, in
        #   one of the following formats: * `projects/`project`/locations/`location`` * `
        #   folders/`folder`/locations/`location`` * `organizations/`organization`/
        #   locations/`location``
        # @param [Google::Apis::AuditmanagerV1::GenerateAuditScopeReportRequest] generate_audit_scope_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::AuditScopeReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::AuditScopeReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_project_location_audit_scope_report(scope, generate_audit_scope_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+scope}/auditScopeReports:generate', options)
          command.request_representation = Google::Apis::AuditmanagerV1::GenerateAuditScopeReportRequest::Representation
          command.request_object = generate_audit_scope_report_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::AuditScopeReport::Representation
          command.response_class = Google::Apis::AuditmanagerV1::AuditScopeReport
          command.params['scope'] = scope unless scope.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about the long-running operation to generate audit reports.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation_detail(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets details about the long-running operation to generate audit reports.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation_id(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::AuditmanagerV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_location_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::AuditmanagerV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::AuditmanagerV1::Empty::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Empty::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::Operation::Representation
          command.response_class = Google::Apis::AuditmanagerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [Boolean] return_partial_success
        #   When set to `true`, operations that are reachable are returned as normal, and
        #   those that are unreachable are returned in the ListOperationsResponse.
        #   unreachable field. This can only be `true` when reading across collections.
        #   For example, when `parent` is set to `"projects/example/locations/-"`. This
        #   field is not supported by default and will result in an `UNIMPLEMENTED` error
        #   if set unless explicitly documented otherwise in service or product specific
        #   documentation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_operations(name, filter: nil, page_size: nil, page_token: nil, return_partial_success: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}/operations', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['returnPartialSuccess'] = return_partial_success unless return_partial_success.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a resource and its enrollment status.
        # @param [String] name
        #   Required. Name of the resource enrollment status, in one of the following
        #   formats: * `folders/`folder`/locations/`location`/resourceEnrollmentStatuses/`
        #   resource_enrollment_status`` * `projects/`project`/locations/`location`/
        #   resourceEnrollmentStatuses/`resource_enrollment_status`` * `organizations/`
        #   organization`/locations/`location`/resourceEnrollmentStatuses/`
        #   resource_enrollment_status``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_resource_enrollment_status(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ResourceEnrollmentStatus
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the controls that you must implement to become compliant to a regulatory
        # standard.
        # @param [String] parent
        #   Required. Standard to list controls for, in one of the following formats: * `
        #   projects/`project`/locations/`location`/standards/`standard`` * `folders/`
        #   folder`/locations/`location`/standards/`standard`` * `organizations/`
        #   organization`/locations/`location`/standards/`standard``
        # @param [Fixnum] page_size
        #   Optional. Maximum number of items to return in a single page. The service
        #   might return fewer items than this value. If unspecified, the service picks an
        #   appropriate default. The maximum value is 100; values above 100 are reduced to
        #   100.
        # @param [String] page_token
        #   Optional. A page token, received from a previous call, to retrieve the next
        #   page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditmanagerV1::ListControlsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditmanagerV1::ListControlsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_standard_controls(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/controls', options)
          command.response_representation = Google::Apis::AuditmanagerV1::ListControlsResponse::Representation
          command.response_class = Google::Apis::AuditmanagerV1::ListControlsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
