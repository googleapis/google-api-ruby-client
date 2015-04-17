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
    module DataflowV1beta3
      # Google Dataflow API
      #
      # Google Dataflow API.
      #
      # @example
      #    require 'google/apis/dataflow_v1beta3'
      #
      #    Dataflow = Google::Apis::DataflowV1beta3 # Alias the module
      #    service = Dataflow::DataflowService.new
      #
      # @see 
      class DataflowService < Google::Apis::Core::BaseService

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', '/dataflow/v1b3/projects/')
        end

        # Creates a dataflow job.
        # @param [Google::Apis::DataflowV1beta3::Job] job_obj
        #   
        # @param [String] project_id
        #   
        # @param [String] view
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_v1b3_project_job(job_obj, project_id, view: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DataflowV1beta3::JobRepresentation
          command.request_object = job_obj
          command.response_representation = Google::Apis::DataflowV1beta3::JobRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the state of the specified dataflow job.
        # @param [String] project_id
        #   
        # @param [String] job_id
        #   
        # @param [String] view
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_v1b3_project_job(project_id, job_id, view: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs/{jobId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DataflowV1beta3::JobRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Request the job status.
        # @param [String] project_id
        #   
        # @param [String] job_id
        #   
        # @param [String] start_time
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::JobMetrics] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::JobMetrics]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_metrics(project_id, job_id, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs/{jobId}/metrics'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DataflowV1beta3::JobMetricsRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::JobMetrics
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # List the jobs of a project
        # @param [String] project_id
        #   
        # @param [Fixnum] page_size
        #   
        # @param [String] page_token
        #   
        # @param [String] view
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_v1b3_project_jobs(project_id, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DataflowV1beta3::ListJobsResponseRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::ListJobsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates the state of an existing dataflow job. This method supports patch
        # semantics.
        # @param [Google::Apis::DataflowV1beta3::Job] job_obj
        #   
        # @param [String] project_id
        #   
        # @param [String] job_id
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_v1b3_project_job(job_obj, project_id, job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs/{jobId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::DataflowV1beta3::JobRepresentation
          command.request_object = job_obj
          command.response_representation = Google::Apis::DataflowV1beta3::JobRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates the state of an existing dataflow job.
        # @param [Google::Apis::DataflowV1beta3::Job] job_obj
        #   
        # @param [String] project_id
        #   
        # @param [String] job_id
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_v1b3_project_job(job_obj, project_id, job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs/{jobId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::DataflowV1beta3::JobRepresentation
          command.request_object = job_obj
          command.response_representation = Google::Apis::DataflowV1beta3::JobRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Request the job status.
        # @param [String] project_id
        #   
        # @param [String] job_id
        #   
        # @param [String] end_time
        #   
        # @param [String] minimum_importance
        #   
        # @param [Fixnum] page_size
        #   
        # @param [String] page_token
        #   
        # @param [String] start_time
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::ListJobMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::ListJobMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_v1b3_project_job_messages(project_id, job_id, end_time: nil, minimum_importance: nil, page_size: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs/{jobId}/messages'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::DataflowV1beta3::ListJobMessagesResponseRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::ListJobMessagesResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['minimumImportance'] = minimum_importance unless minimum_importance.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Leases a dataflow WorkItem to run.
        # @param [Google::Apis::DataflowV1beta3::LeaseWorkItemRequest] lease_work_item_request_obj
        #   
        # @param [String] project_id
        #   
        # @param [String] job_id
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::LeaseWorkItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::LeaseWorkItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lease_v1b3_project_job_work_item(lease_work_item_request_obj, project_id, job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs/{jobId}/workItems:lease'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DataflowV1beta3::LeaseWorkItemRequestRepresentation
          command.request_object = lease_work_item_request_obj
          command.response_representation = Google::Apis::DataflowV1beta3::LeaseWorkItemResponseRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::LeaseWorkItemResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Reports the status of dataflow WorkItems leased by a worker.
        # @param [Google::Apis::DataflowV1beta3::ReportWorkItemStatusRequest] report_work_item_status_request_obj
        #   
        # @param [String] project_id
        #   
        # @param [String] job_id
        #   
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DataflowV1beta3::ReportWorkItemStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DataflowV1beta3::ReportWorkItemStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_status(report_work_item_status_request_obj, project_id, job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{projectId}/jobs/{jobId}/workItems:reportStatus'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::DataflowV1beta3::ReportWorkItemStatusRequestRepresentation
          command.request_object = report_work_item_status_request_obj
          command.response_representation = Google::Apis::DataflowV1beta3::ReportWorkItemStatusResponseRepresentation
          command.response_class = Google::Apis::DataflowV1beta3::ReportWorkItemStatusResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
