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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module JobsV4beta1
      # Cloud Talent Solution API
      #
      # Cloud Talent Solution provides the capability to create, read, update, and
      #  delete job postings, as well as search jobs based on keywords and filters.
      #
      # @example
      #    require 'google/apis/jobs_v4beta1'
      #
      #    Jobs = Google::Apis::JobsV4beta1 # Alias the module
      #    service = Jobs::CloudTalentSolutionService.new
      #
      # @see https://cloud.google.com/talent-solution/job-search/docs/
      class CloudTalentSolutionService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://jobs.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Completes the specified prefix with keyword suggestions.
        # Intended for use by a job search auto-complete search box.
        # @param [String] parent
        #   Required. Resource name of tenant the completion is performed within.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/foo".
        # @param [String] company
        #   If provided, restricts completion to specified company.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/foo/tenants/bar/companies/baz".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/foo".
        # @param [Array<String>, String] language_codes
        #   The list of languages of the query. This is
        #   the BCP-47 language code, such as "en-US" or "sr-Latn".
        #   For more information, see
        #   [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
        #   The maximum number of allowed characters is 255.
        # @param [Fixnum] page_size
        #   Required. Completion result count.
        #   The maximum allowed page size is 10.
        # @param [String] query
        #   Required. The query used to generate suggestions.
        #   The maximum number of allowed characters is 255.
        # @param [String] scope
        #   The scope of the completion. The defaults is CompletionScope.PUBLIC.
        # @param [String] type
        #   The completion topic. The default is CompletionType.COMBINED.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::CompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::CompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project(parent, company: nil, language_codes: nil, page_size: nil, query: nil, scope: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}:complete', options)
          command.response_representation = Google::Apis::JobsV4beta1::CompleteQueryResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::CompleteQueryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['company'] = company unless company.nil?
          command.query['languageCodes'] = language_codes unless language_codes.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['scope'] = scope unless scope.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report events issued when end user interacts with customer's application
        # that uses Cloud Talent Solution. You may inspect the created events in
        # [self service
        # tools](https://console.cloud.google.com/talent-solution/overview).
        # [Learn
        # more](https://cloud.google.com/talent-solution/docs/management-tools)
        # about self service tools.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the event is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created, for example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::CreateClientEventRequest] create_client_event_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ClientEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ClientEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_client_event(parent, create_client_event_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/clientEvents', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateClientEventRequest::Representation
          command.request_object = create_client_event_request_object
          command.response_representation = Google::Apis::JobsV4beta1::ClientEvent::Representation
          command.response_class = Google::Apis::JobsV4beta1::ClientEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new company entity.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the company is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created, for example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::CreateCompanyRequest] create_company_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_company(parent, create_company_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/companies', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateCompanyRequest::Representation
          command.request_object = create_company_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Company::Representation
          command.response_class = Google::Apis::JobsV4beta1::Company
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes specified company.
        # Prerequisite: The company has no jobs associated with it.
        # @param [String] name
        #   Required. The resource name of the company to be deleted.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/foo/tenants/bar/companies/baz".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/foo/companies/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_company(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves specified company.
        # @param [String] name
        #   Required. The resource name of the company to be retrieved.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/api-test-project/tenants/foo/companies/bar".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/api-test-project/companies/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_company(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Company::Representation
          command.response_class = Google::Apis::JobsV4beta1::Company
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all companies associated with the project.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the company is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar".
        #   If tenant id is unspecified, the default tenant will be used, for
        #   example, "projects/foo".
        # @param [Fixnum] page_size
        #   The maximum number of companies to be returned, at most 100.
        #   Default is 100 if a non-positive number is provided.
        # @param [String] page_token
        #   The starting indicator from which to return results.
        # @param [Boolean] require_open_jobs
        #   Set to true if the companies requested must have open jobs.
        #   Defaults to false.
        #   If true, at most page_size of companies are fetched, among which
        #   only those with open jobs are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ListCompaniesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ListCompaniesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_companies(parent, page_size: nil, page_token: nil, require_open_jobs: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}/companies', options)
          command.response_representation = Google::Apis::JobsV4beta1::ListCompaniesResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::ListCompaniesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['requireOpenJobs'] = require_open_jobs unless require_open_jobs.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified company.
        # @param [String] name
        #   Required during company update.
        #   The resource name for a company. This is generated by the service when a
        #   company is created.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/foo/tenants/bar/companies/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/companies/bar".
        # @param [Google::Apis::JobsV4beta1::UpdateCompanyRequest] update_company_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_company(name, update_company_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4beta1/{+name}', options)
          command.request_representation = Google::Apis::JobsV4beta1::UpdateCompanyRequest::Representation
          command.request_object = update_company_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Company::Representation
          command.response_class = Google::Apis::JobsV4beta1::Company
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins executing a batch create jobs operation.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::BatchCreateJobsRequest] batch_create_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_job_create(parent, batch_create_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:batchCreate', options)
          command.request_representation = Google::Apis::JobsV4beta1::BatchCreateJobsRequest::Representation
          command.request_object = batch_create_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Operation::Representation
          command.response_class = Google::Apis::JobsV4beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a list of Jobs by filter.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [String] filter
        #   Required. The filter string specifies the jobs to be deleted.
        #   Supported operator: =, AND
        #   The fields eligible for filtering are:
        #   * `companyName` (Required)
        #   * `requisitionId` (Required)
        #   Sample Query: companyName = "projects/foo/companies/bar" AND
        #   requisitionId = "req-1"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_job_delete(parent, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:batchDelete', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins executing a batch update jobs operation.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::BatchUpdateJobsRequest] batch_update_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_job_update(parent, batch_update_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:batchUpdate', options)
          command.request_representation = Google::Apis::JobsV4beta1::BatchUpdateJobsRequest::Representation
          command.request_object = batch_update_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Operation::Representation
          command.response_class = Google::Apis::JobsV4beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new job.
        # Typically, the job becomes searchable within 10 seconds, but it may take
        # up to 5 minutes.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::CreateJobRequest] create_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_job(parent, create_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateJobRequest::Representation
          command.request_object = create_job_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Job::Representation
          command.response_class = Google::Apis::JobsV4beta1::Job
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified job.
        # Typically, the job becomes unsearchable within 10 seconds, but it may take
        # up to 5 minutes.
        # @param [String] name
        #   Required. The resource name of the job to be deleted.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For
        #   example, "projects/foo/tenants/bar/jobs/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/jobs/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified job, whose status is OPEN or recently EXPIRED
        # within the last 90 days.
        # @param [String] name
        #   Required. The resource name of the job to retrieve.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For
        #   example, "projects/foo/tenants/bar/jobs/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/jobs/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Job::Representation
          command.response_class = Google::Apis::JobsV4beta1::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists jobs by filter.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [String] filter
        #   Required. The filter string specifies the jobs to be enumerated.
        #   Supported operator: =, AND
        #   The fields eligible for filtering are:
        #   * `companyName` (Required)
        #   * `requisitionId`
        #   * `status` Available values: OPEN, EXPIRED, ALL. Defaults to
        #   OPEN if no value is specified.
        #   Sample Query:
        #   * companyName = "projects/foo/tenants/bar/companies/baz"
        #   * companyName = "projects/foo/tenants/bar/companies/baz" AND
        #   requisitionId = "req-1"
        #   * companyName = "projects/foo/tenants/bar/companies/baz" AND
        #   status = "EXPIRED"
        # @param [String] job_view
        #   The desired job attributes returned for jobs in the
        #   search response. Defaults to JobView.JOB_VIEW_FULL if no value is
        #   specified.
        # @param [Fixnum] page_size
        #   The maximum number of jobs to be returned per page of results.
        #   If job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum allowed
        #   page size is 1000. Otherwise, the maximum allowed page size is 100.
        #   Default is 100 if empty or a number < 1 is specified.
        # @param [String] page_token
        #   The starting point of a query result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_jobs(parent, filter: nil, job_view: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::JobsV4beta1::ListJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['jobView'] = job_view unless job_view.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified job.
        # Typically, updated contents become visible in search results within 10
        # seconds, but it may take up to 5 minutes.
        # @param [String] name
        #   Required during job update.
        #   The resource name for the job. This is generated by the service when a
        #   job is created.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For
        #   example, "projects/foo/tenants/bar/jobs/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/jobs/bar".
        #   Use of this field in job queries and API calls is preferred over the use of
        #   requisition_id since this value is unique.
        # @param [Google::Apis::JobsV4beta1::UpdateJobRequest] update_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_job(name, update_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4beta1/{+name}', options)
          command.request_representation = Google::Apis::JobsV4beta1::UpdateJobRequest::Representation
          command.request_object = update_job_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Job::Representation
          command.response_class = Google::Apis::JobsV4beta1::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for jobs using the provided SearchJobsRequest.
        # This call constrains the visibility of jobs
        # present in the database, and only returns jobs that the caller has
        # permission to search against.
        # @param [String] parent
        #   Required. The resource name of the tenant to search within.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::SearchJobsRequest] search_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::SearchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::SearchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_jobs(parent, search_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:search', options)
          command.request_representation = Google::Apis::JobsV4beta1::SearchJobsRequest::Representation
          command.request_object = search_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::SearchJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::SearchJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for jobs using the provided SearchJobsRequest.
        # This API call is intended for the use case of targeting passive job
        # seekers (for example, job seekers who have signed up to receive email
        # alerts about potential job opportunities), and has different algorithmic
        # adjustments that are targeted to passive job seekers.
        # This call constrains the visibility of jobs
        # present in the database, and only returns jobs the caller has
        # permission to search against.
        # @param [String] parent
        #   Required. The resource name of the tenant to search within.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::SearchJobsRequest] search_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::SearchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::SearchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_job_for_alert(parent, search_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:searchForAlert', options)
          command.request_representation = Google::Apis::JobsV4beta1::SearchJobsRequest::Representation
          command.request_object = search_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::SearchJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::SearchJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation.  Clients can use this
        # method to poll the operation result at intervals as recommended by the API
        # service.
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
        # @yieldparam result [Google::Apis::JobsV4beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Operation::Representation
          command.response_class = Google::Apis::JobsV4beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Completes the specified prefix with keyword suggestions.
        # Intended for use by a job search auto-complete search box.
        # @param [String] parent
        #   Required. Resource name of tenant the completion is performed within.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/foo".
        # @param [String] company
        #   If provided, restricts completion to specified company.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/foo/tenants/bar/companies/baz".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/foo".
        # @param [Array<String>, String] language_codes
        #   The list of languages of the query. This is
        #   the BCP-47 language code, such as "en-US" or "sr-Latn".
        #   For more information, see
        #   [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
        #   The maximum number of allowed characters is 255.
        # @param [Fixnum] page_size
        #   Required. Completion result count.
        #   The maximum allowed page size is 10.
        # @param [String] query
        #   Required. The query used to generate suggestions.
        #   The maximum number of allowed characters is 255.
        # @param [String] scope
        #   The scope of the completion. The defaults is CompletionScope.PUBLIC.
        # @param [String] type
        #   The completion topic. The default is CompletionType.COMBINED.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::CompleteQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::CompleteQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def complete_project_tenant(parent, company: nil, language_codes: nil, page_size: nil, query: nil, scope: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}:complete', options)
          command.response_representation = Google::Apis::JobsV4beta1::CompleteQueryResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::CompleteQueryResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['company'] = company unless company.nil?
          command.query['languageCodes'] = language_codes unless language_codes.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['query'] = query unless query.nil?
          command.query['scope'] = scope unless scope.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new tenant entity.
        # @param [String] parent
        #   Required. Resource name of the project under which the tenant is created.
        #   The format is "projects/`project_id`", for example,
        #   "projects/foo".
        # @param [Google::Apis::JobsV4beta1::CreateTenantRequest] create_tenant_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_tenant(parent, create_tenant_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/tenants', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateTenantRequest::Representation
          command.request_object = create_tenant_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Tenant::Representation
          command.response_class = Google::Apis::JobsV4beta1::Tenant
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes specified tenant.
        # @param [String] name
        #   Required. The resource name of the tenant to be deleted.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenants/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves specified tenant.
        # @param [String] name
        #   Required. The resource name of the tenant to be retrieved.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenants/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Tenant::Representation
          command.response_class = Google::Apis::JobsV4beta1::Tenant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all tenants associated with the project.
        # @param [String] parent
        #   Required. Resource name of the project under which the tenant is created.
        #   The format is "projects/`project_id`", for example,
        #   "projects/foo".
        # @param [Fixnum] page_size
        #   The maximum number of tenants to be returned, at most 100.
        #   Default is 100 if a non-positive number is provided.
        # @param [String] page_token
        #   The starting indicator from which to return results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ListTenantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ListTenantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenants(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}/tenants', options)
          command.response_representation = Google::Apis::JobsV4beta1::ListTenantsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::ListTenantsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified tenant.
        # @param [String] name
        #   Required during tenant update.
        #   The resource name for a tenant. This is generated by the service when a
        #   tenant is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenants/bar".
        # @param [Google::Apis::JobsV4beta1::UpdateTenantRequest] update_tenant_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Tenant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Tenant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant(name, update_tenant_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4beta1/{+name}', options)
          command.request_representation = Google::Apis::JobsV4beta1::UpdateTenantRequest::Representation
          command.request_object = update_tenant_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Tenant::Representation
          command.response_class = Google::Apis::JobsV4beta1::Tenant
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for profiles within a tenant.
        # For example, search by raw queries "software engineer in Mountain View" or
        # search by structured filters (location filter, education filter, etc.).
        # See SearchProfilesRequest for more information.
        # @param [String] parent
        #   Required. The resource name of the tenant to search within.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenants/bar".
        # @param [Google::Apis::JobsV4beta1::SearchProfilesRequest] search_profiles_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::SearchProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::SearchProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_tenant_profiles(parent, search_profiles_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}:search', options)
          command.request_representation = Google::Apis::JobsV4beta1::SearchProfilesRequest::Representation
          command.request_object = search_profiles_request_object
          command.response_representation = Google::Apis::JobsV4beta1::SearchProfilesResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::SearchProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report events issued when end user interacts with customer's application
        # that uses Cloud Talent Solution. You may inspect the created events in
        # [self service
        # tools](https://console.cloud.google.com/talent-solution/overview).
        # [Learn
        # more](https://cloud.google.com/talent-solution/docs/management-tools)
        # about self service tools.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the event is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created, for example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::CreateClientEventRequest] create_client_event_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ClientEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ClientEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_client_event(parent, create_client_event_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/clientEvents', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateClientEventRequest::Representation
          command.request_object = create_client_event_request_object
          command.response_representation = Google::Apis::JobsV4beta1::ClientEvent::Representation
          command.response_class = Google::Apis::JobsV4beta1::ClientEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new company entity.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the company is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created, for example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::CreateCompanyRequest] create_company_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_company(parent, create_company_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/companies', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateCompanyRequest::Representation
          command.request_object = create_company_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Company::Representation
          command.response_class = Google::Apis::JobsV4beta1::Company
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes specified company.
        # Prerequisite: The company has no jobs associated with it.
        # @param [String] name
        #   Required. The resource name of the company to be deleted.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/foo/tenants/bar/companies/baz".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/foo/companies/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_company(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves specified company.
        # @param [String] name
        #   Required. The resource name of the company to be retrieved.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/api-test-project/tenants/foo/companies/bar".
        #   If tenant id is unspecified, the default tenant is used, for
        #   example, "projects/api-test-project/companies/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_company(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Company::Representation
          command.response_class = Google::Apis::JobsV4beta1::Company
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all companies associated with the project.
        # @param [String] parent
        #   Required. Resource name of the tenant under which the company is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`", for example,
        #   "projects/foo/tenant/bar".
        #   If tenant id is unspecified, the default tenant will be used, for
        #   example, "projects/foo".
        # @param [Fixnum] page_size
        #   The maximum number of companies to be returned, at most 100.
        #   Default is 100 if a non-positive number is provided.
        # @param [String] page_token
        #   The starting indicator from which to return results.
        # @param [Boolean] require_open_jobs
        #   Set to true if the companies requested must have open jobs.
        #   Defaults to false.
        #   If true, at most page_size of companies are fetched, among which
        #   only those with open jobs are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ListCompaniesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ListCompaniesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_companies(parent, page_size: nil, page_token: nil, require_open_jobs: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}/companies', options)
          command.response_representation = Google::Apis::JobsV4beta1::ListCompaniesResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::ListCompaniesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['requireOpenJobs'] = require_open_jobs unless require_open_jobs.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified company.
        # @param [String] name
        #   Required during company update.
        #   The resource name for a company. This is generated by the service when a
        #   company is created.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/companies/`company_id`", for
        #   example, "projects/foo/tenants/bar/companies/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/companies/bar".
        # @param [Google::Apis::JobsV4beta1::UpdateCompanyRequest] update_company_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_company(name, update_company_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4beta1/{+name}', options)
          command.request_representation = Google::Apis::JobsV4beta1::UpdateCompanyRequest::Representation
          command.request_object = update_company_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Company::Representation
          command.response_class = Google::Apis::JobsV4beta1::Company
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins executing a batch create jobs operation.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::BatchCreateJobsRequest] batch_create_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_job_create(parent, batch_create_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:batchCreate', options)
          command.request_representation = Google::Apis::JobsV4beta1::BatchCreateJobsRequest::Representation
          command.request_object = batch_create_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Operation::Representation
          command.response_class = Google::Apis::JobsV4beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a list of Jobs by filter.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::BatchDeleteJobsRequest] batch_delete_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_delete_jobs(parent, batch_delete_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:batchDelete', options)
          command.request_representation = Google::Apis::JobsV4beta1::BatchDeleteJobsRequest::Representation
          command.request_object = batch_delete_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins executing a batch update jobs operation.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::BatchUpdateJobsRequest] batch_update_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_tenant_job_update(parent, batch_update_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:batchUpdate', options)
          command.request_representation = Google::Apis::JobsV4beta1::BatchUpdateJobsRequest::Representation
          command.request_object = batch_update_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Operation::Representation
          command.response_class = Google::Apis::JobsV4beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new job.
        # Typically, the job becomes searchable within 10 seconds, but it may take
        # up to 5 minutes.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::CreateJobRequest] create_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_tenant_job(parent, create_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateJobRequest::Representation
          command.request_object = create_job_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Job::Representation
          command.response_class = Google::Apis::JobsV4beta1::Job
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified job.
        # Typically, the job becomes unsearchable within 10 seconds, but it may take
        # up to 5 minutes.
        # @param [String] name
        #   Required. The resource name of the job to be deleted.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For
        #   example, "projects/foo/tenants/bar/jobs/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/jobs/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified job, whose status is OPEN or recently EXPIRED
        # within the last 90 days.
        # @param [String] name
        #   Required. The resource name of the job to retrieve.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For
        #   example, "projects/foo/tenants/bar/jobs/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/jobs/bar".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Job::Representation
          command.response_class = Google::Apis::JobsV4beta1::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists jobs by filter.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the job is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [String] filter
        #   Required. The filter string specifies the jobs to be enumerated.
        #   Supported operator: =, AND
        #   The fields eligible for filtering are:
        #   * `companyName` (Required)
        #   * `requisitionId`
        #   * `status` Available values: OPEN, EXPIRED, ALL. Defaults to
        #   OPEN if no value is specified.
        #   Sample Query:
        #   * companyName = "projects/foo/tenants/bar/companies/baz"
        #   * companyName = "projects/foo/tenants/bar/companies/baz" AND
        #   requisitionId = "req-1"
        #   * companyName = "projects/foo/tenants/bar/companies/baz" AND
        #   status = "EXPIRED"
        # @param [String] job_view
        #   The desired job attributes returned for jobs in the
        #   search response. Defaults to JobView.JOB_VIEW_FULL if no value is
        #   specified.
        # @param [Fixnum] page_size
        #   The maximum number of jobs to be returned per page of results.
        #   If job_view is set to JobView.JOB_VIEW_ID_ONLY, the maximum allowed
        #   page size is 1000. Otherwise, the maximum allowed page size is 100.
        #   Default is 100 if empty or a number < 1 is specified.
        # @param [String] page_token
        #   The starting point of a query result.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_jobs(parent, filter: nil, job_view: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::JobsV4beta1::ListJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['jobView'] = job_view unless job_view.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified job.
        # Typically, updated contents become visible in search results within 10
        # seconds, but it may take up to 5 minutes.
        # @param [String] name
        #   Required during job update.
        #   The resource name for the job. This is generated by the service when a
        #   job is created.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/jobs/`job_id`". For
        #   example, "projects/foo/tenants/bar/jobs/baz".
        #   If tenant id is unspecified, the default tenant is used. For
        #   example, "projects/foo/jobs/bar".
        #   Use of this field in job queries and API calls is preferred over the use of
        #   requisition_id since this value is unique.
        # @param [Google::Apis::JobsV4beta1::UpdateJobRequest] update_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_job(name, update_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4beta1/{+name}', options)
          command.request_representation = Google::Apis::JobsV4beta1::UpdateJobRequest::Representation
          command.request_object = update_job_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Job::Representation
          command.response_class = Google::Apis::JobsV4beta1::Job
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for jobs using the provided SearchJobsRequest.
        # This call constrains the visibility of jobs
        # present in the database, and only returns jobs that the caller has
        # permission to search against.
        # @param [String] parent
        #   Required. The resource name of the tenant to search within.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::SearchJobsRequest] search_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::SearchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::SearchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_tenant_jobs(parent, search_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:search', options)
          command.request_representation = Google::Apis::JobsV4beta1::SearchJobsRequest::Representation
          command.request_object = search_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::SearchJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::SearchJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for jobs using the provided SearchJobsRequest.
        # This API call is intended for the use case of targeting passive job
        # seekers (for example, job seekers who have signed up to receive email
        # alerts about potential job opportunities), and has different algorithmic
        # adjustments that are targeted to passive job seekers.
        # This call constrains the visibility of jobs
        # present in the database, and only returns jobs the caller has
        # permission to search against.
        # @param [String] parent
        #   Required. The resource name of the tenant to search within.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenant/bar". If tenant id is unspecified, a default tenant
        #   is created. For example, "projects/foo".
        # @param [Google::Apis::JobsV4beta1::SearchJobsRequest] search_jobs_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::SearchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::SearchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_tenant_job_for_alert(parent, search_jobs_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/jobs:searchForAlert', options)
          command.request_representation = Google::Apis::JobsV4beta1::SearchJobsRequest::Representation
          command.request_object = search_jobs_request_object
          command.response_representation = Google::Apis::JobsV4beta1::SearchJobsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::SearchJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates and returns a new profile.
        # @param [String] parent
        #   Required. The name of the tenant this profile belongs to.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenants/bar".
        # @param [Google::Apis::JobsV4beta1::CreateProfileRequest] create_profile_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_profile(parent, create_profile_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/profiles', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateProfileRequest::Representation
          command.request_object = create_profile_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Profile::Representation
          command.response_class = Google::Apis::JobsV4beta1::Profile
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified profile.
        # Prerequisite: The profile has no associated applications or assignments
        # associated.
        # @param [String] name
        #   Required. Resource name of the profile to be deleted.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`". For
        #   example, "projects/foo/tenants/bar/profiles/baz".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the specified profile.
        # @param [String] name
        #   Required. Resource name of the profile to get.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`". For
        #   example, "projects/foo/tenants/bar/profiles/baz".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Profile::Representation
          command.response_class = Google::Apis::JobsV4beta1::Profile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists profiles by filter. The order is unspecified.
        # @param [String] parent
        #   Required. The resource name of the tenant under which the profile is created.
        #   The format is "projects/`project_id`/tenants/`tenant_id`". For example,
        #   "projects/foo/tenants/bar".
        # @param [String] filter
        #   The filter string specifies the profiles to be enumerated.
        #   Supported operator: =, AND
        #   The field(s) eligible for filtering are:
        #   * `externalId`
        #   * `groupId`
        #   externalId and groupId cannot be specified at the same time. If both
        #   externalId and groupId are provided, the API will return a bad request
        #   error.
        #   Sample Query:
        #   * externalId = "externalId-1"
        #   * groupId = "groupId-1"
        # @param [Fixnum] page_size
        #   The maximum number of profiles to be returned, at most 100.
        #   Default is 100 unless a positive number smaller than 100 is specified.
        # @param [String] page_token
        #   The token that specifies the current offset (that is, starting result).
        #   Please set the value to ListProfilesResponse.next_page_token to
        #   continue the list.
        # @param [String] read_mask
        #   A field mask to specify the profile fields to be listed in response.
        #   All fields are listed if it is unset.
        #   Valid values are:
        #   * name
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ListProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ListProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_profiles(parent, filter: nil, page_size: nil, page_token: nil, read_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}/profiles', options)
          command.response_representation = Google::Apis::JobsV4beta1::ListProfilesResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::ListProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['readMask'] = read_mask unless read_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified profile and returns the updated result.
        # @param [String] name
        #   Required during profile update.
        #   Resource name assigned to a profile by the API.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`",
        #   for example, "projects/foo/tenants/bar/profiles/baz".
        # @param [Google::Apis::JobsV4beta1::UpdateProfileRequest] update_profile_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Profile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Profile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_profile(name, update_profile_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4beta1/{+name}', options)
          command.request_representation = Google::Apis::JobsV4beta1::UpdateProfileRequest::Representation
          command.request_object = update_profile_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Profile::Representation
          command.response_class = Google::Apis::JobsV4beta1::Profile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new application entity.
        # @param [String] parent
        #   Required. Resource name of the profile under which the application is created.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`".
        #   For example, "projects/foo/tenants/bar/profiles/baz".
        # @param [Google::Apis::JobsV4beta1::CreateApplicationRequest] create_application_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Application] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Application]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_application(parent, create_application_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v4beta1/{+parent}/applications', options)
          command.request_representation = Google::Apis::JobsV4beta1::CreateApplicationRequest::Representation
          command.request_object = create_application_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Application::Representation
          command.response_class = Google::Apis::JobsV4beta1::Application
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes specified application.
        # @param [String] name
        #   Required. The resource name of the application to be deleted.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`/applications/`
        #   application_id`".
        #   For example, "projects/foo/tenants/bar/profiles/baz/applications/qux".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_tenant_profile_application(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Empty::Representation
          command.response_class = Google::Apis::JobsV4beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves specified application.
        # @param [String] name
        #   Required. The resource name of the application to be retrieved.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`/applications/`
        #   application_id`".
        #   For example, "projects/foo/tenants/bar/profiles/baz/applications/qux".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Application] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Application]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_tenant_profile_application(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+name}', options)
          command.response_representation = Google::Apis::JobsV4beta1::Application::Representation
          command.response_class = Google::Apis::JobsV4beta1::Application
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all applications associated with the profile.
        # @param [String] parent
        #   Required. Resource name of the profile under which the application is created.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`", for
        #   example, "projects/foo/tenants/bar/profiles/baz".
        # @param [Fixnum] page_size
        #   The maximum number of applications to be returned, at most 100.
        #   Default is 100 if a non-positive number is provided.
        # @param [String] page_token
        #   The starting indicator from which to return results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::ListApplicationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::ListApplicationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_tenant_profile_applications(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v4beta1/{+parent}/applications', options)
          command.response_representation = Google::Apis::JobsV4beta1::ListApplicationsResponse::Representation
          command.response_class = Google::Apis::JobsV4beta1::ListApplicationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates specified application.
        # @param [String] name
        #   Required during application update.
        #   Resource name assigned to an application by the API.
        #   The format is
        #   "projects/`project_id`/tenants/`tenant_id`/profiles/`profile_id`/applications/`
        #   application_id`".
        #   For example, "projects/foo/tenants/bar/profiles/baz/applications/qux".
        # @param [Google::Apis::JobsV4beta1::UpdateApplicationRequest] update_application_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::JobsV4beta1::Application] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::JobsV4beta1::Application]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_tenant_profile_application(name, update_application_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v4beta1/{+name}', options)
          command.request_representation = Google::Apis::JobsV4beta1::UpdateApplicationRequest::Representation
          command.request_object = update_application_request_object
          command.response_representation = Google::Apis::JobsV4beta1::Application::Representation
          command.response_class = Google::Apis::JobsV4beta1::Application
          command.params['name'] = name unless name.nil?
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
