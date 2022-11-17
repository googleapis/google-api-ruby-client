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
    module DatapipelinesV1
      # Data pipelines API
      #
      # Data Pipelines provides an interface for creating, updating, and managing
      #  recurring Data Analytics jobs.
      #
      # @example
      #    require 'google/apis/datapipelines_v1'
      #
      #    Datapipelines = Google::Apis::DatapipelinesV1 # Alias the module
      #    service = Datapipelines::DatapipelinesService.new
      #
      # @see https://cloud.google.com/dataflow/docs/guides/data-pipelines
      class DatapipelinesService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://datapipelines.googleapis.com/', '',
                client_name: 'google-apis-datapipelines_v1',
                client_version: Google::Apis::DatapipelinesV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Computes the schema for the transform. Computation from `raw_schema` will
        # always occur if it is set. This requires that the transform supports that
        # encoding. If no raw schema is provided and if the transform is for an IO, then
        # this will attempt to connect to the resource using the details provided in `
        # config` and infer the schema from that. If the transform is not an IO, is a
        # sink that doesn't exist yet, or is a sink with no schema requirement, then
        # this will fall back to basing the schema off the one provided in `
        # input_schemas`. The computed schema will be validated.
        # @param [String] location
        #   Required. The full location formatted as "projects/`your-project`/locations/`
        #   google-cloud-region`". If attempting to infer the schema from an existing
        #   Google Cloud resource, the default Data Pipelines service account for this
        #   project will be used in making requests for the resource. If the region given
        #   for "`google-cloud-region`" is different than the region where the resource is
        #   stored, then the data will be transferred to and processed in the region
        #   specified here, but it will not be persistently stored in this region.
        # @param [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ComputeSchemaRequest] google_cloud_datapipelines_v1_compute_schema_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def compute_project_location_schema(location, google_cloud_datapipelines_v1_compute_schema_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+location}:computeSchema', options)
          command.request_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ComputeSchemaRequest::Representation
          command.request_object = google_cloud_datapipelines_v1_compute_schema_request_object
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Schema
          command.params['location'] = location unless location.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists pipelines. Returns a "FORBIDDEN" error if the caller doesn't have
        # permission to access it.
        # @param [String] parent
        #   Required. The location name. For example: `projects/PROJECT_ID/locations/
        #   LOCATION_ID`.
        # @param [String] filter
        #   An expression for filtering the results of the request. If unspecified, all
        #   pipelines will be returned. Multiple filters can be applied and must be comma
        #   separated. Fields eligible for filtering are: + `type`: The type of the
        #   pipeline (streaming or batch). Allowed values are `ALL`, `BATCH`, and `
        #   STREAMING`. + `status`: The activity status of the pipeline. Allowed values
        #   are `ALL`, `ACTIVE`, `ARCHIVED`, and `PAUSED`. For example, to limit results
        #   to active batch processing pipelines: type:BATCH,status:ACTIVE
        # @param [Fixnum] page_size
        #   The maximum number of entities to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, the max limit
        #   is yet to be determined by the backend implementation.
        # @param [String] page_token
        #   A page token, received from a previous `ListPipelines` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListPipelines` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListPipelinesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListPipelinesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_pipelines(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}', options)
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListPipelinesResponse::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListPipelinesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a pipeline. For a batch pipeline, you can pass scheduler information.
        # Data Pipelines uses the scheduler information to create an internal scheduler
        # that runs jobs periodically. If the internal scheduler is not configured, you
        # can use RunPipeline to run jobs.
        # @param [String] parent
        #   Required. The location name. For example: `projects/PROJECT_ID/locations/
        #   LOCATION_ID`.
        # @param [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline] google_cloud_datapipelines_v1_pipeline_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_pipeline(parent, google_cloud_datapipelines_v1_pipeline_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/pipelines', options)
          command.request_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline::Representation
          command.request_object = google_cloud_datapipelines_v1_pipeline_object
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a pipeline. If a scheduler job is attached to the pipeline, it will be
        # deleted.
        # @param [String] name
        #   Required. The pipeline name. For example: `projects/PROJECT_ID/locations/
        #   LOCATION_ID/pipelines/PIPELINE_ID`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_pipeline(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a single pipeline. Returns a "NOT_FOUND" error if no such pipeline
        # exists. Returns a "FORBIDDEN" error if the caller doesn't have permission to
        # access it.
        # @param [String] name
        #   Required. The pipeline name. For example: `projects/PROJECT_ID/locations/
        #   LOCATION_ID/pipelines/PIPELINE_ID`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_pipeline(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a pipeline. If successful, the updated Pipeline is returned. Returns `
        # NOT_FOUND` if the pipeline doesn't exist. If UpdatePipeline does not return
        # successfully, you can retry the UpdatePipeline request until you receive a
        # successful response.
        # @param [String] name
        #   The pipeline name. For example: `projects/PROJECT_ID/locations/LOCATION_ID/
        #   pipelines/PIPELINE_ID`. * `PROJECT_ID` can contain letters ([A-Za-z]), numbers
        #   ([0-9]), hyphens (-), colons (:), and periods (.). For more information, see [
        #   Identifying projects](https://cloud.google.com/resource-manager/docs/creating-
        #   managing-projects#identifying_projects). * `LOCATION_ID` is the canonical ID
        #   for the pipeline's location. The list of available locations can be obtained
        #   by calling `google.cloud.location.Locations.ListLocations`. Note that the Data
        #   Pipelines service is not available in all regions. It depends on Cloud
        #   Scheduler, an App Engine application, so it's only available in [App Engine
        #   regions](https://cloud.google.com/about/locations#region). * `PIPELINE_ID` is
        #   the ID of the pipeline. Must be unique for the selected project and location.
        # @param [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline] google_cloud_datapipelines_v1_pipeline_object
        # @param [String] update_mask
        #   The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_pipeline(name, google_cloud_datapipelines_v1_pipeline_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline::Representation
          command.request_object = google_cloud_datapipelines_v1_pipeline_object
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a job for the specified pipeline directly. You can use this method
        # when the internal scheduler is not configured and you want to trigger the job
        # directly or through an external system. Returns a "NOT_FOUND" error if the
        # pipeline doesn't exist. Returns a "FORBIDDEN" error if the user doesn't have
        # permission to access the pipeline or run jobs for the pipeline.
        # @param [String] name
        #   Required. The pipeline name. For example: `projects/PROJECT_ID/locations/
        #   LOCATION_ID/pipelines/PIPELINE_ID`.
        # @param [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RunPipelineRequest] google_cloud_datapipelines_v1_run_pipeline_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RunPipelineResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RunPipelineResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_project_location_pipeline(name, google_cloud_datapipelines_v1_run_pipeline_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:run', options)
          command.request_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RunPipelineRequest::Representation
          command.request_object = google_cloud_datapipelines_v1_run_pipeline_request_object
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RunPipelineResponse::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1RunPipelineResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Freezes pipeline execution permanently. If there's a corresponding scheduler
        # entry, it's deleted, and the pipeline state is changed to "ARCHIVED". However,
        # pipeline metadata is retained.
        # @param [String] name
        #   Required. The pipeline name. For example: `projects/PROJECT_ID/locations/
        #   LOCATION_ID/pipelines/PIPELINE_ID`.
        # @param [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1StopPipelineRequest] google_cloud_datapipelines_v1_stop_pipeline_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_project_location_pipeline(name, google_cloud_datapipelines_v1_stop_pipeline_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:stop', options)
          command.request_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1StopPipelineRequest::Representation
          command.request_object = google_cloud_datapipelines_v1_stop_pipeline_request_object
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1Pipeline
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists jobs for a given pipeline. Throws a "FORBIDDEN" error if the caller
        # doesn't have permission to access it.
        # @param [String] parent
        #   Required. The pipeline name. For example: `projects/PROJECT_ID/locations/
        #   LOCATION_ID/pipelines/PIPELINE_ID`.
        # @param [Fixnum] page_size
        #   The maximum number of entities to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, the max limit
        #   will be determined by the backend implementation.
        # @param [String] page_token
        #   A page token, received from a previous `ListJobs` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListJobs` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_pipeline_jobs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/jobs', options)
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListJobsResponse::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1ListJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets transform descriptions in a batch, associated with a list of provided
        # uniform resource names.
        # @param [String] parent
        #   Required. The project and location shared by all transform descriptions being
        #   retrieved, formatted as "projects/`project`/locations/`location`".
        # @param [Array<String>, String] names
        #   Optional. The names of the transform descriptions being retrieved, formatted
        #   as "projects/`project`/locations/`location`/transformdescriptions/`
        #   transform_description`". If no name is provided, all of the transform
        #   descriptions will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_transform_description_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/transformDescriptions:batchGet', options)
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1BatchGetTransformDescriptionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the transform description associated with the provided uniform resource
        # name.
        # @param [String] name
        #   Required. The full name formatted as "projects/`your-project`/locations/`
        #   google-cloud-region`/transformdescriptions/`uniform-resource-name`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1TransformDescription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1TransformDescription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_transform_description(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1TransformDescription::Representation
          command.response_class = Google::Apis::DatapipelinesV1::GoogleCloudDatapipelinesV1TransformDescription
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
