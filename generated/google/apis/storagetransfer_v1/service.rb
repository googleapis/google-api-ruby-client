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
    module StoragetransferV1
      # Storage Transfer API
      #
      # Transfers data from external data sources to a Google Cloud Storage bucket or
      #  between Google Cloud Storage buckets.
      #
      # @example
      #    require 'google/apis/storagetransfer_v1'
      #
      #    Storagetransfer = Google::Apis::StoragetransferV1 # Alias the module
      #    service = Storagetransfer::StoragetransferService.new
      #
      # @see https://cloud.google.com/storage-transfer/docs
      class StoragetransferService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://storagetransfer.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns the Google service account that is used by Storage Transfer Service to
        # access buckets in the project where transfers run or in other projects. Each
        # Google service account is associated with one Google Cloud Platform Console
        # project. Users should add this service account to the Google Cloud Storage
        # bucket ACLs to grant access to Storage Transfer Service. This service account
        # is created and owned by Storage Transfer Service and can only be used by
        # Storage Transfer Service.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform Console project that the Google
        #   service account is associated with.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::GoogleServiceAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::GoogleServiceAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_google_service_account(project_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/googleServiceAccounts/{projectId}', options)
          command.response_representation = Google::Apis::StoragetransferV1::GoogleServiceAccount::Representation
          command.response_class = Google::Apis::StoragetransferV1::GoogleServiceAccount
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a transfer job that runs periodically.
        # @param [Google::Apis::StoragetransferV1::TransferJob] transfer_job_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::TransferJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::TransferJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_transfer_job(transfer_job_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/transferJobs', options)
          command.request_representation = Google::Apis::StoragetransferV1::TransferJob::Representation
          command.request_object = transfer_job_object
          command.response_representation = Google::Apis::StoragetransferV1::TransferJob::Representation
          command.response_class = Google::Apis::StoragetransferV1::TransferJob
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a transfer job.
        # @param [String] job_name
        #   Required. " The job to get.
        # @param [String] project_id
        #   Required. The ID of the Google Cloud Platform Console project that owns the
        #   job.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::TransferJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::TransferJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_transfer_job(job_name, project_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+jobName}', options)
          command.response_representation = Google::Apis::StoragetransferV1::TransferJob::Representation
          command.response_class = Google::Apis::StoragetransferV1::TransferJob
          command.params['jobName'] = job_name unless job_name.nil?
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists transfer jobs.
        # @param [String] filter
        #   Required. A list of query parameters specified as JSON text in the form of: ``"
        #   projectId":"my_project_id", "jobNames":["jobid1","jobid2",...], "jobStatuses":[
        #   "status1","status2",...]`` Since `jobNames` and `jobStatuses` support multiple
        #   values, their values must be specified with array notation. `projectId` is
        #   required. `jobNames` and `jobStatuses` are optional. The valid values for `
        #   jobStatuses` are case-insensitive: ENABLED, DISABLED, and DELETED.
        # @param [Fixnum] page_size
        #   The list page size. The max allowed value is 256.
        # @param [String] page_token
        #   The list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::ListTransferJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::ListTransferJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_transfer_jobs(filter, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/transferJobs', options)
          command.response_representation = Google::Apis::StoragetransferV1::ListTransferJobsResponse::Representation
          command.response_class = Google::Apis::StoragetransferV1::ListTransferJobsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a transfer job. Updating a job's transfer spec does not affect
        # transfer operations that are running already. **Note:** The job's status field
        # can be modified using this RPC (for example, to set a job's status to DELETED,
        # DISABLED, or ENABLED).
        # @param [String] job_name
        #   Required. The name of job to update.
        # @param [Google::Apis::StoragetransferV1::UpdateTransferJobRequest] update_transfer_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::TransferJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::TransferJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_transfer_job(job_name, update_transfer_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+jobName}', options)
          command.request_representation = Google::Apis::StoragetransferV1::UpdateTransferJobRequest::Representation
          command.request_object = update_transfer_job_request_object
          command.response_representation = Google::Apis::StoragetransferV1::TransferJob::Representation
          command.response_class = Google::Apis::StoragetransferV1::TransferJob
          command.params['jobName'] = job_name unless job_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a transfer. Use the transferOperations.get method to check if the
        # cancellation succeeded or if the operation completed despite the `cancel`
        # request. When you cancel an operation, the currently running transfer is
        # interrupted. For recurring transfer jobs, the next instance of the transfer
        # job will still run. For example, if your job is configured to run every day at
        # 1pm and you cancel Monday's operation at 1:05pm, Monday's transfer will stop.
        # However, a transfer job will still be attempted on Tuesday. This applies only
        # to currently running operations. If an operation is not currently running, `
        # cancel` does nothing. *Caution:* Canceling a transfer job can leave your data
        # in an unknown state. We recommend that you restore the state at both the
        # destination and the source after the `cancel` request completes so that your
        # data is in a consistent state. When you cancel a job, the next job computes a
        # delta of files and may repair any inconsistent state. For instance, if you run
        # a job every day, and today's job found 10 new files and transferred five files
        # before you canceled the job, tomorrow's transfer operation will compute a new
        # delta with the five files that were not copied today plus any new files
        # discovered tomorrow.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::StoragetransferV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_transfer_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::StoragetransferV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::StoragetransferV1::Empty::Representation
          command.response_class = Google::Apis::StoragetransferV1::Empty
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
        # @yieldparam result [Google::Apis::StoragetransferV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_transfer_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::StoragetransferV1::Operation::Representation
          command.response_class = Google::Apis::StoragetransferV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists transfer operations.
        # @param [String] name
        #   Required. The value `transferOperations`.
        # @param [String] filter
        #   Required. A list of query parameters specified as JSON text in the form of: ``"
        #   projectId":"my_project_id", "jobNames":["jobid1","jobid2",...], "
        #   operationNames":["opid1","opid2",...], "transferStatuses":["status1","status2",
        #   ...]`` Since `jobNames`, `operationNames`, and `transferStatuses` support
        #   multiple values, they must be specified with array notation. `projectId` is
        #   required. `jobNames`, `operationNames`, and `transferStatuses` are optional.
        #   The valid values for `transferStatuses` are case-insensitive: IN_PROGRESS,
        #   PAUSED, SUCCESS, FAILED, and ABORTED.
        # @param [Fixnum] page_size
        #   The list page size. The max allowed value is 256.
        # @param [String] page_token
        #   The list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_transfer_operations(name, filter, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::StoragetransferV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::StoragetransferV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses a transfer operation.
        # @param [String] name
        #   Required. The name of the transfer operation.
        # @param [Google::Apis::StoragetransferV1::PauseTransferOperationRequest] pause_transfer_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_transfer_operation(name, pause_transfer_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:pause', options)
          command.request_representation = Google::Apis::StoragetransferV1::PauseTransferOperationRequest::Representation
          command.request_object = pause_transfer_operation_request_object
          command.response_representation = Google::Apis::StoragetransferV1::Empty::Representation
          command.response_class = Google::Apis::StoragetransferV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes a transfer operation that is paused.
        # @param [String] name
        #   Required. The name of the transfer operation.
        # @param [Google::Apis::StoragetransferV1::ResumeTransferOperationRequest] resume_transfer_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::StoragetransferV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::StoragetransferV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_transfer_operation(name, resume_transfer_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resume', options)
          command.request_representation = Google::Apis::StoragetransferV1::ResumeTransferOperationRequest::Representation
          command.request_object = resume_transfer_operation_request_object
          command.response_representation = Google::Apis::StoragetransferV1::Empty::Representation
          command.response_class = Google::Apis::StoragetransferV1::Empty
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
