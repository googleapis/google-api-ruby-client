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
    module BigqueryV2
      # BigQuery API
      #
      # A data platform for customers to create, manage, share and query data.
      #
      # @example
      #    require 'google/apis/bigquery_v2'
      #
      #    Bigquery = Google::Apis::BigqueryV2 # Alias the module
      #    service = Bigquery::BigqueryService.new
      #
      # @see https://developers.google.com/bigquery/docs/overview
      class BigqueryService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', '/bigquery/v2/')
        end

        # Deletes the dataset specified by the datasetId value. Before you can delete a
        # dataset, you must delete all its tables, either manually or by specifying
        # deleteContents. Immediately after deletion, you can create another dataset
        # with the same name.
        # @param [String] project_id
        #   Project ID of the dataset being deleted
        # @param [String] dataset_id
        #   Dataset ID of dataset being deleted
        # @param [Boolean] delete_contents
        #   If True, delete all the tables in the dataset. If False and the dataset
        #   contains tables, the request will fail. Default is False
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
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_dataset(project_id, dataset_id, delete_contents: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}'
          command =  make_simple_command(:delete, path, options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['deleteContents'] = delete_contents unless delete_contents.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Returns the dataset specified by datasetID.
        # @param [String] project_id
        #   Project ID of the requested dataset
        # @param [String] dataset_id
        #   Dataset ID of the requested dataset
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
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_dataset(project_id, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::DatasetRepresentation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a new empty dataset.
        # @param [Google::Apis::BigqueryV2::Dataset] dataset_obj
        #   
        # @param [String] project_id
        #   Project ID of the new dataset
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
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_dataset(dataset_obj, project_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::BigqueryV2::DatasetRepresentation
          command.request_object = dataset_obj
          command.response_representation = Google::Apis::BigqueryV2::DatasetRepresentation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all the datasets in the specified project to which the caller has read
        # access; however, a project owner can list (but not necessarily get) all
        # datasets in his project.
        # @param [String] project_id
        #   Project ID of the datasets to be listed
        # @param [Boolean] all
        #   Whether to list all datasets, including hidden ones
        # @param [Fixnum] max_results
        #   The maximum number of results to return
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
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
        # @yieldparam result [Google::Apis::BigqueryV2::DatasetList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::DatasetList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datasets(project_id, all: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::DatasetListRepresentation
          command.response_class = Google::Apis::BigqueryV2::DatasetList
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['all'] = all unless all.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates information in an existing dataset. The update method replaces the
        # entire dataset resource, whereas the patch method only replaces fields that
        # are provided in the submitted dataset resource. This method supports patch
        # semantics.
        # @param [Google::Apis::BigqueryV2::Dataset] dataset_obj
        #   
        # @param [String] project_id
        #   Project ID of the dataset being updated
        # @param [String] dataset_id
        #   Dataset ID of the dataset being updated
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
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_dataset(dataset_obj, project_id, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::BigqueryV2::DatasetRepresentation
          command.request_object = dataset_obj
          command.response_representation = Google::Apis::BigqueryV2::DatasetRepresentation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates information in an existing dataset. The update method replaces the
        # entire dataset resource, whereas the patch method only replaces fields that
        # are provided in the submitted dataset resource.
        # @param [Google::Apis::BigqueryV2::Dataset] dataset_obj
        #   
        # @param [String] project_id
        #   Project ID of the dataset being updated
        # @param [String] dataset_id
        #   Dataset ID of the dataset being updated
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
        # @yieldparam result [Google::Apis::BigqueryV2::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_dataset(dataset_obj, project_id, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::BigqueryV2::DatasetRepresentation
          command.request_object = dataset_obj
          command.response_representation = Google::Apis::BigqueryV2::DatasetRepresentation
          command.response_class = Google::Apis::BigqueryV2::Dataset
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Retrieves the specified job by ID.
        # @param [String] project_id
        #   Project ID of the requested job
        # @param [String] job_id
        #   Job ID of the requested job
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
        # @yieldparam result [Google::Apis::BigqueryV2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_job(project_id, job_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/jobs/{jobId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::JobRepresentation
          command.response_class = Google::Apis::BigqueryV2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves the results of a query job.
        # @param [String] project_id
        #   Project ID of the query job
        # @param [String] job_id
        #   Job ID of the query job
        # @param [Fixnum] max_results
        #   Maximum number of results to read
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
        # @param [String] start_index
        #   Zero-based index of the starting row
        # @param [Fixnum] timeout_ms
        #   How long to wait for the query to complete, in milliseconds, before returning.
        #   Default is to return immediately. If the timeout passes before the job
        #   completes, the request will fail with a TIMEOUT error
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
        # @yieldparam result [Google::Apis::BigqueryV2::GetQueryResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::GetQueryResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_query_results(project_id, job_id, max_results: nil, page_token: nil, start_index: nil, timeout_ms: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/queries/{jobId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::GetQueryResultsResponseRepresentation
          command.response_class = Google::Apis::BigqueryV2::GetQueryResultsResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['jobId'] = job_id unless job_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['timeoutMs'] = timeout_ms unless timeout_ms.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Starts a new asynchronous job.
        # @param [Google::Apis::BigqueryV2::Job] job_obj
        #   
        # @param [String] project_id
        #   Project ID of the project that will be billed for the job
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryV2::Job] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Job]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_job(job_obj, project_id, fields: nil, quota_user: nil, user_ip: nil, upload_source: nil, content_type: nil, options: nil, &block)
          path = 'projects/{projectId}/jobs'
          if upload_source.nil?
            command =  make_simple_command(:post, path, options)
          else
            command = make_upload_command(:post, path, options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::BigqueryV2::JobRepresentation
          command.request_object = job_obj
          command.response_representation = Google::Apis::BigqueryV2::JobRepresentation
          command.response_class = Google::Apis::BigqueryV2::Job
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all the Jobs in the specified project that were started by the user. The
        # job list returns in reverse chronological order of when the jobs were created,
        # starting with the most recent job created.
        # @param [String] project_id
        #   Project ID of the jobs to list
        # @param [Boolean] all_users
        #   Whether to display jobs owned by all users in the project. Default false
        # @param [Fixnum] max_results
        #   Maximum number of results to return
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
        # @param [String] projection
        #   Restrict information returned to a set of selected fields
        # @param [Array<String>, String] state_filter
        #   Filter for job state
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
        # @yieldparam result [Google::Apis::BigqueryV2::JobList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::JobList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_jobs(project_id, all_users: nil, max_results: nil, page_token: nil, projection: nil, state_filter: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/jobs'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::JobListRepresentation
          command.response_class = Google::Apis::BigqueryV2::JobList
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['allUsers'] = all_users unless all_users.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['stateFilter'] = state_filter unless state_filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Runs a BigQuery SQL query synchronously and returns query results if the query
        # completes within a specified timeout.
        # @param [Google::Apis::BigqueryV2::QueryRequest] query_request_obj
        #   
        # @param [String] project_id
        #   Project ID of the project billed for the query
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
        # @yieldparam result [Google::Apis::BigqueryV2::QueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::QueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_job(query_request_obj, project_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/queries'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::BigqueryV2::QueryRequestRepresentation
          command.request_object = query_request_obj
          command.response_representation = Google::Apis::BigqueryV2::QueryResponseRepresentation
          command.response_class = Google::Apis::BigqueryV2::QueryResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Lists the projects to which you have at least read access.
        # @param [Fixnum] max_results
        #   Maximum number of results to return
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
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
        # @yieldparam result [Google::Apis::BigqueryV2::ProjectList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::ProjectList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_projects(max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::ProjectListRepresentation
          command.response_class = Google::Apis::BigqueryV2::ProjectList
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Streams data into BigQuery one record at a time without needing to run a load
        # job.
        # @param [Google::Apis::BigqueryV2::TableDataInsertAllRequest] table_data_insert_all_request_obj
        #   
        # @param [String] project_id
        #   Project ID of the destination table.
        # @param [String] dataset_id
        #   Dataset ID of the destination table.
        # @param [String] table_id
        #   Table ID of the destination table.
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
        # @yieldparam result [Google::Apis::BigqueryV2::TableDataInsertAllResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TableDataInsertAllResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_all(table_data_insert_all_request_obj, project_id, dataset_id, table_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables/{tableId}/insertAll'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::BigqueryV2::TableDataInsertAllRequestRepresentation
          command.request_object = table_data_insert_all_request_obj
          command.response_representation = Google::Apis::BigqueryV2::TableDataInsertAllResponseRepresentation
          command.response_class = Google::Apis::BigqueryV2::TableDataInsertAllResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Retrieves table data from a specified set of rows.
        # @param [String] project_id
        #   Project ID of the table to read
        # @param [String] dataset_id
        #   Dataset ID of the table to read
        # @param [String] table_id
        #   Table ID of the table to read
        # @param [Fixnum] max_results
        #   Maximum number of results to return
        # @param [String] page_token
        #   Page token, returned by a previous call, identifying the result set
        # @param [String] start_index
        #   Zero-based index of the starting row to read
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
        # @yieldparam result [Google::Apis::BigqueryV2::TableDataList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TableDataList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tabledata(project_id, dataset_id, table_id, max_results: nil, page_token: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables/{tableId}/data'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::TableDataListRepresentation
          command.response_class = Google::Apis::BigqueryV2::TableDataList
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        # Deletes the table specified by tableId from the dataset. If the table contains
        # data, all the data will be deleted.
        # @param [String] project_id
        #   Project ID of the table to delete
        # @param [String] dataset_id
        #   Dataset ID of the table to delete
        # @param [String] table_id
        #   Table ID of the table to delete
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
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_table(project_id, dataset_id, table_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables/{tableId}'
          command =  make_simple_command(:delete, path, options)
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the specified table resource by table ID. This method does not return the
        # data in the table, it only returns the table resource, which describes the
        # structure of this table.
        # @param [String] project_id
        #   Project ID of the requested table
        # @param [String] dataset_id
        #   Dataset ID of the requested table
        # @param [String] table_id
        #   Table ID of the requested table
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
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table(project_id, dataset_id, table_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables/{tableId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::TableRepresentation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates a new, empty table in the dataset.
        # @param [Google::Apis::BigqueryV2::Table] table_obj
        #   
        # @param [String] project_id
        #   Project ID of the new table
        # @param [String] dataset_id
        #   Dataset ID of the new table
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
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_table(table_obj, project_id, dataset_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::BigqueryV2::TableRepresentation
          command.request_object = table_obj
          command.response_representation = Google::Apis::BigqueryV2::TableRepresentation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists all tables in the specified dataset.
        # @param [String] project_id
        #   Project ID of the tables to list
        # @param [String] dataset_id
        #   Dataset ID of the tables to list
        # @param [Fixnum] max_results
        #   Maximum number of results to return
        # @param [String] page_token
        #   Page token, returned by a previous call, to request the next page of results
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
        # @yieldparam result [Google::Apis::BigqueryV2::TableList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::TableList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_tables(project_id, dataset_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::BigqueryV2::TableListRepresentation
          command.response_class = Google::Apis::BigqueryV2::TableList
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates information in an existing table. The update method replaces the
        # entire table resource, whereas the patch method only replaces fields that are
        # provided in the submitted table resource. This method supports patch semantics.
        # @param [Google::Apis::BigqueryV2::Table] table_obj
        #   
        # @param [String] project_id
        #   Project ID of the table to update
        # @param [String] dataset_id
        #   Dataset ID of the table to update
        # @param [String] table_id
        #   Table ID of the table to update
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
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_table(table_obj, project_id, dataset_id, table_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables/{tableId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::BigqueryV2::TableRepresentation
          command.request_object = table_obj
          command.response_representation = Google::Apis::BigqueryV2::TableRepresentation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Updates information in an existing table. The update method replaces the
        # entire table resource, whereas the patch method only replaces fields that are
        # provided in the submitted table resource.
        # @param [Google::Apis::BigqueryV2::Table] table_obj
        #   
        # @param [String] project_id
        #   Project ID of the table to update
        # @param [String] dataset_id
        #   Dataset ID of the table to update
        # @param [String] table_id
        #   Table ID of the table to update
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
        # @yieldparam result [Google::Apis::BigqueryV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_table(table_obj, project_id, dataset_id, table_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = 'projects/{projectId}/datasets/{datasetId}/tables/{tableId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::BigqueryV2::TableRepresentation
          command.request_object = table_obj
          command.response_representation = Google::Apis::BigqueryV2::TableRepresentation
          command.response_class = Google::Apis::BigqueryV2::Table
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.params['tableId'] = table_id unless table_id.nil?
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
