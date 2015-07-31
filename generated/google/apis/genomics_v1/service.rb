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
    module GenomicsV1
      # Genomics API
      #
      # An API to store, process, explore, and share DNA sequence reads, reference-
      #  based alignments, and variant calls.
      #
      # @example
      #    require 'google/apis/genomics_v1'
      #
      #    Genomics = Google::Apis::GenomicsV1 # Alias the module
      #    service = Genomics::GenomicsService.new
      #
      # @see 
      class GenomicsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://genomics.googleapis.com/', '')
        end
        
        # Lists datasets within a project.
        # @param [String] project_id
        #   Required. The project to list datasets for.
        # @param [Fixnum] page_size
        #   The maximum number of results returned by this request. If unspecified,
        #   defaults to 50. The maximum value is 1024.
        # @param [String] page_token
        #   The continuation token, which is used to page through large result sets. To
        #   get the next page of results, set this parameter to the value of `
        #   nextPageToken` from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::ListDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::ListDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_datasets(project_id: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/datasets'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::ListDatasetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::ListDatasetsResponse
          command.query['projectId'] = project_id unless project_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new dataset.
        # @param [Google::Apis::GenomicsV1::Dataset] dataset_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_dataset(dataset_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/datasets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::GenomicsV1::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1::Dataset
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a dataset by ID.
        # @param [String] dataset_id
        #   The ID of the dataset.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_dataset(dataset_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/datasets/{datasetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1::Dataset
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a dataset. This method supports patch semantics.
        # @param [String] dataset_id
        #   The ID of the dataset to be updated.
        # @param [Google::Apis::GenomicsV1::Dataset] dataset_object
        # @param [String] update_mask
        #   An optional mask specifying which fields to update. At this time, the only
        #   mutable field is [name][google.genomics.v1.Dataset.name]. The only acceptable
        #   value is "name". If unspecified, all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_dataset(dataset_id, dataset_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/datasets/{datasetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1::Dataset::Representation
          command.request_object = dataset_object
          command.response_representation = Google::Apis::GenomicsV1::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1::Dataset
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a dataset.
        # @param [String] dataset_id
        #   The ID of the dataset to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_dataset(dataset_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/datasets/{datasetId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Undeletes a dataset by restoring a dataset which was deleted via this API.
        # This operation is only possible for a week after the deletion occurred.
        # @param [String] dataset_id
        #   The ID of the dataset to be undeleted.
        # @param [Google::Apis::GenomicsV1::UndeleteDatasetRequest] undelete_dataset_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_dataset(dataset_id, undelete_dataset_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/datasets/{datasetId}:undelete'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::UndeleteDatasetRequest::Representation
          command.request_object = undelete_dataset_request_object
          command.response_representation = Google::Apis::GenomicsV1::Dataset::Representation
          command.response_class = Google::Apis::GenomicsV1::Dataset
          command.params['datasetId'] = dataset_id unless dataset_id.nil?
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
        # @yieldparam result [Google::Apis::GenomicsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/{+name}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Operation::Representation
          command.response_class = Google::Apis::GenomicsV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request.
        # @param [String] name
        #   The name of the operation collection.
        # @param [String] filter
        #   A string for filtering [Operations][google.longrunning.Operation]. The
        #   following filter fields are supported: * projectId: Required. Corresponds to [
        #   OperationMetadata.projectId][google.genomics.v1.OperationMetadata.project_id].
        #   * createTime: The time this job was created, in seconds from the [epoch](http:/
        #   /en.wikipedia.org/wiki/Unix_time). Can use `>=` and/or `= 1432140000` * `
        #   projectId = my-project AND createTime >= 1432140000 AND createTime <=
        #   1432150000 AND status = RUNNING`
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If unspecified, defaults to 256. The
        #   maximum value is 2048.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/{+name}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. Clients
        # may use [Operations.GetOperation][google.longrunning.Operations.GetOperation]
        # or [Operations.ListOperations][google.longrunning.Operations.ListOperations]
        # to check whether the cancellation succeeded or the operation completed despite
        # cancellation.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::GenomicsV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/{+name}:cancel'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This method is not implemented. To cancel an operation, please use [Operations.
        # CancelOperation][google.longrunning.Operations.CancelOperation].
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
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/{+name}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates read group sets by asynchronously importing the provided information.
        # Note that currently comments in the input file header are **not** imported and
        # some custom tags will be converted to strings, rather than preserving tag
        # types. The caller must have WRITE permissions to the dataset.
        # @param [Google::Apis::GenomicsV1::ImportReadGroupSetsRequest] import_read_group_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_read_group_sets(import_read_group_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/readgroupsets:import'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::ImportReadGroupSetsRequest::Representation
          command.request_object = import_read_group_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1::Operation::Representation
          command.response_class = Google::Apis::GenomicsV1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports a read group set to a BAM file in Google Cloud Storage. Note that
        # currently there may be some differences between exported BAM files and the
        # original BAM file at the time of import. In particular, comments in the input
        # file header will not be preserved, some custom tags will be converted to
        # strings, and original reference sequence order is not necessarily preserved.
        # @param [String] read_group_set_id
        #   Required. The ID of the read group set to export.
        # @param [Google::Apis::GenomicsV1::ExportReadGroupSetRequest] export_read_group_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_read_group_sets(read_group_set_id, export_read_group_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/readgroupsets/{readGroupSetId}:export'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::ExportReadGroupSetRequest::Representation
          command.request_object = export_read_group_set_request_object
          command.response_representation = Google::Apis::GenomicsV1::Operation::Representation
          command.response_class = Google::Apis::GenomicsV1::Operation
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for read group sets matching the criteria. Implements [
        # GlobalAllianceApi.searchReadGroupSets](https://github.com/ga4gh/schemas/blob/
        # v0.5.1/src/main/resources/avro/readmethods.avdl#L135).
        # @param [Google::Apis::GenomicsV1::SearchReadGroupSetsRequest] search_read_group_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::SearchReadGroupSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::SearchReadGroupSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_read_group_sets(search_read_group_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/readgroupsets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::SearchReadGroupSetsRequest::Representation
          command.request_object = search_read_group_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1::SearchReadGroupSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::SearchReadGroupSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a read group set. This method supports patch semantics.
        # @param [String] read_group_set_id
        #   The ID of the read group set to be updated. The caller must have WRITE
        #   permissions to the dataset associated with this read group set.
        # @param [Google::Apis::GenomicsV1::ReadGroupSet] read_group_set_object
        # @param [String] update_mask
        #   An optional mask specifying which fields to update. At this time, mutable
        #   fields are [referenceSetId][google.genomics.v1.ReadGroupSet.reference_set_id]
        #   and [name][google.genomics.v1.ReadGroupSet.name]. Acceptable values are "
        #   referenceSetId" and "name". If unspecified, all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::ReadGroupSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::ReadGroupSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_read_group_set(read_group_set_id, read_group_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/readgroupsets/{readGroupSetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1::ReadGroupSet::Representation
          command.request_object = read_group_set_object
          command.response_representation = Google::Apis::GenomicsV1::ReadGroupSet::Representation
          command.response_class = Google::Apis::GenomicsV1::ReadGroupSet
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a read group set.
        # @param [String] read_group_set_id
        #   The ID of the read group set to be deleted. The caller must have WRITE
        #   permissions to the dataset associated with this read group set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_read_group_set(read_group_set_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/readgroupsets/{readGroupSetId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a read group set by ID.
        # @param [String] read_group_set_id
        #   The ID of the read group set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::ReadGroupSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::ReadGroupSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_read_group_set(read_group_set_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/readgroupsets/{readGroupSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::ReadGroupSet::Representation
          command.response_class = Google::Apis::GenomicsV1::ReadGroupSet
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists fixed width coverage buckets for a read group set, each of which
        # correspond to a range of a reference sequence. Each bucket summarizes coverage
        # information across its corresponding genomic range. Coverage is defined as the
        # number of reads which are aligned to a given base in the reference sequence.
        # Coverage buckets are available at several precomputed bucket widths, enabling
        # retrieval of various coverage 'zoom levels'. The caller must have READ
        # permissions for the target read group set.
        # @param [String] read_group_set_id
        #   Required. The ID of the read group set over which coverage is requested.
        # @param [String] reference_name
        #   The name of the reference to query, within the reference set associated with
        #   this query. Optional.
        # @param [String] start
        #   The start position of the range on the reference, 0-based inclusive. If
        #   specified, `referenceName` must also be specified. Defaults to 0.
        # @param [String] end_
        #   The end position of the range on the reference, 0-based exclusive. If
        #   specified, `referenceName` must also be specified. If unset or 0, defaults to
        #   the length of the reference.
        # @param [String] target_bucket_width
        #   The desired width of each reported coverage bucket in base pairs. This will be
        #   rounded down to the nearest precomputed bucket width; the value of which is
        #   returned as `bucketWidth` in the response. Defaults to infinity (each bucket
        #   spans an entire reference sequence) or the length of the target range, if
        #   specified. The smallest precomputed `bucketWidth` is currently 2048 base pairs;
        #   this is subject to change.
        # @param [String] page_token
        #   The continuation token, which is used to page through large result sets. To
        #   get the next page of results, set this parameter to the value of `
        #   nextPageToken` from the previous response.
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single page. If unspecified,
        #   defaults to 1024. The maximum value is 2048.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::ListCoverageBucketsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::ListCoverageBucketsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_coverage_buckets(read_group_set_id, reference_name: nil, start: nil, end_: nil, target_bucket_width: nil, page_token: nil, page_size: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/readgroupsets/{readGroupSetId}/coveragebuckets'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::ListCoverageBucketsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::ListCoverageBucketsResponse
          command.params['readGroupSetId'] = read_group_set_id unless read_group_set_id.nil?
          command.query['referenceName'] = reference_name unless reference_name.nil?
          command.query['start'] = start unless start.nil?
          command.query['end'] = end_ unless end_.nil?
          command.query['targetBucketWidth'] = target_bucket_width unless target_bucket_width.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of reads for one or more read group sets. Reads search operates
        # over a genomic coordinate space of reference sequence & position defined over
        # the reference sequences to which the requested read group sets are aligned. If
        # a target positional range is specified, search returns all reads whose
        # alignment to the reference genome overlap the range. A query which specifies
        # only read group set IDs yields all reads in those read group sets, including
        # unmapped reads. All reads returned (including reads on subsequent pages) are
        # ordered by genomic coordinate (reference sequence & position). Reads with
        # equivalent genomic coordinates are returned in a deterministic order.
        # Implements [GlobalAllianceApi.searchReads](https://github.com/ga4gh/schemas/
        # blob/v0.5.1/src/main/resources/avro/readmethods.avdl#L85).
        # @param [Google::Apis::GenomicsV1::SearchReadsRequest] search_reads_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::SearchReadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::SearchReadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_reads(search_reads_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/reads/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::SearchReadsRequest::Representation
          command.request_object = search_reads_request_object
          command.response_representation = Google::Apis::GenomicsV1::SearchReadsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::SearchReadsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for reference sets which match the given criteria. Implements [
        # GlobalAllianceApi.searchReferenceSets](http://ga4gh.org/documentation/api/v0.5.
        # 1/ga4gh_api.html#/schema/org.ga4gh.searchReferenceSets).
        # @param [Google::Apis::GenomicsV1::SearchReferenceSetsRequest] search_reference_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::SearchReferenceSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::SearchReferenceSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_reference_sets(search_reference_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/referencesets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::SearchReferenceSetsRequest::Representation
          command.request_object = search_reference_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1::SearchReferenceSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::SearchReferenceSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a reference set. Implements [GlobalAllianceApi.getReferenceSet](https://
        # github.com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.
        # avdl#L83).
        # @param [String] reference_set_id
        #   The ID of the reference set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::ReferenceSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::ReferenceSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_reference_set(reference_set_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/referencesets/{referenceSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::ReferenceSet::Representation
          command.response_class = Google::Apis::GenomicsV1::ReferenceSet
          command.params['referenceSetId'] = reference_set_id unless reference_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for references which match the given criteria. Implements [
        # GlobalAllianceApi.searchReferences](https://github.com/ga4gh/schemas/blob/v0.5.
        # 1/src/main/resources/avro/referencemethods.avdl#L146).
        # @param [Google::Apis::GenomicsV1::SearchReferencesRequest] search_references_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::SearchReferencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::SearchReferencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_references(search_references_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/references/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::SearchReferencesRequest::Representation
          command.request_object = search_references_request_object
          command.response_representation = Google::Apis::GenomicsV1::SearchReferencesResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::SearchReferencesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a reference. Implements [GlobalAllianceApi.getReference](https://github.
        # com/ga4gh/schemas/blob/v0.5.1/src/main/resources/avro/referencemethods.avdl#
        # L158).
        # @param [String] reference_id
        #   The ID of the reference.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Reference] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Reference]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_reference(reference_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/references/{referenceId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Reference::Representation
          command.response_class = Google::Apis::GenomicsV1::Reference
          command.params['referenceId'] = reference_id unless reference_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the bases in a reference, optionally restricted to a range. Implements [
        # GlobalAllianceApi.getReferenceBases](https://github.com/ga4gh/schemas/blob/v0.
        # 5.1/src/main/resources/avro/referencemethods.avdl#L221).
        # @param [String] reference_id
        #   The ID of the reference.
        # @param [String] start_position
        #   The start position (0-based) of this query. Defaults to 0.
        # @param [String] end_position
        #   The end position (0-based, exclusive) of this query. Defaults to the length of
        #   this reference.
        # @param [String] page_token
        #   The continuation token, which is used to page through large result sets. To
        #   get the next page of results, set this parameter to the value of `
        #   nextPageToken` from the previous response.
        # @param [Fixnum] page_size
        #   Specifies the maximum number of bases to return in a single page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::ListBasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::ListBasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_reference_bases(reference_id, start_position: nil, end_position: nil, page_token: nil, page_size: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/references/{referenceId}/bases'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::ListBasesResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::ListBasesResponse
          command.params['referenceId'] = reference_id unless reference_id.nil?
          command.query['start'] = start_position unless start_position.nil?
          command.query['end'] = end_position unless end_position.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates variant data by asynchronously importing the provided information. The
        # variants for import will be merged with any existing data and each other
        # according to the behavior of mergeVariants. In particular, this means for
        # merged VCF variants that have conflicting INFO fields, some data will be
        # arbitrarily discarded. As a special case, for single-sample VCF files, QUAL
        # and FILTER fields will be moved to the call level; these are sometimes
        # interpreted in a call-specific context. Imported VCF headers are appended to
        # the metadata already in a variant set.
        # @param [Google::Apis::GenomicsV1::ImportVariantsRequest] import_variants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_variants(import_variants_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variants:import'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::ImportVariantsRequest::Representation
          command.request_object = import_variants_request_object
          command.response_representation = Google::Apis::GenomicsV1::Operation::Representation
          command.response_class = Google::Apis::GenomicsV1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of variants matching the criteria. Implements [GlobalAllianceApi.
        # searchVariants](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/
        # resources/avro/variantmethods.avdl#L126).
        # @param [Google::Apis::GenomicsV1::SearchVariantsRequest] search_variants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::SearchVariantsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::SearchVariantsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_variants(search_variants_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variants/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::SearchVariantsRequest::Representation
          command.request_object = search_variants_request_object
          command.response_representation = Google::Apis::GenomicsV1::SearchVariantsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::SearchVariantsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new variant.
        # @param [Google::Apis::GenomicsV1::Variant] variant_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_variant(variant_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variants'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::Variant::Representation
          command.request_object = variant_object
          command.response_representation = Google::Apis::GenomicsV1::Variant::Representation
          command.response_class = Google::Apis::GenomicsV1::Variant
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a variant. This method supports patch semantics. Returns the modified
        # variant without its calls.
        # @param [String] variant_id
        #   The ID of the variant to be updated.
        # @param [Google::Apis::GenomicsV1::Variant] variant_object
        # @param [String] update_mask
        #   An optional mask specifying which fields to update. At this time, mutable
        #   fields are [names][google.genomics.v1.Variant.names] and [info][google.
        #   genomics.v1.Variant.info]. Acceptable values are "names" and "info". If
        #   unspecified, all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_variant(variant_id, variant_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variants/{variantId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1::Variant::Representation
          command.request_object = variant_object
          command.response_representation = Google::Apis::GenomicsV1::Variant::Representation
          command.response_class = Google::Apis::GenomicsV1::Variant
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a variant.
        # @param [String] variant_id
        #   The ID of the variant to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_variant(variant_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variants/{variantId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a variant by ID.
        # @param [String] variant_id
        #   The ID of the variant.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Variant] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Variant]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_variant(variant_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variants/{variantId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Variant::Representation
          command.response_class = Google::Apis::GenomicsV1::Variant
          command.params['variantId'] = variant_id unless variant_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Merges the given variants with existing variants. Each variant will be merged
        # with an existing variant that matches its reference sequence, start, end,
        # reference bases, and alternative bases. If no such variant exists, a new one
        # will be created. When variants are merged, the call information from the new
        # variant is added to the existing variant, and other fields (such as key/value
        # pairs) are discarded.
        # @param [Google::Apis::GenomicsV1::MergeVariantsRequest] merge_variants_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def merge_variants(merge_variants_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variants:merge'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::MergeVariantsRequest::Representation
          command.request_object = merge_variants_request_object
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new variant set.
        # @param [Google::Apis::GenomicsV1::VariantSet] variant_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::VariantSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::VariantSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_variantset(variant_set_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variantsets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::VariantSet::Representation
          command.request_object = variant_set_object
          command.response_representation = Google::Apis::GenomicsV1::VariantSet::Representation
          command.response_class = Google::Apis::GenomicsV1::VariantSet
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports variant set data to an external destination.
        # @param [String] variant_set_id
        #   Required. The ID of the variant set that contains variant data which should be
        #   exported. The caller must have READ access to this variant set.
        # @param [Google::Apis::GenomicsV1::ExportVariantSetRequest] export_variant_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_variant_set(variant_set_id, export_variant_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variantsets/{variantSetId}:export'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::ExportVariantSetRequest::Representation
          command.request_object = export_variant_set_request_object
          command.response_representation = Google::Apis::GenomicsV1::Operation::Representation
          command.response_class = Google::Apis::GenomicsV1::Operation
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a variant set by ID.
        # @param [String] variant_set_id
        #   Required. The ID of the variant set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::VariantSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::VariantSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_variantset(variant_set_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variantsets/{variantSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::VariantSet::Representation
          command.response_class = Google::Apis::GenomicsV1::VariantSet
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of all variant sets matching search criteria. Implements [
        # GlobalAllianceApi.searchVariantSets](https://github.com/ga4gh/schemas/blob/v0.
        # 5.1/src/main/resources/avro/variantmethods.avdl#L49).
        # @param [Google::Apis::GenomicsV1::SearchVariantSetsRequest] search_variant_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::SearchVariantSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::SearchVariantSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_variant_sets(search_variant_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variantsets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::SearchVariantSetsRequest::Representation
          command.request_object = search_variant_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1::SearchVariantSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::SearchVariantSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the contents of a variant set. The variant set object is not deleted.
        # @param [String] variant_set_id
        #   The ID of the variant set to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_variantset(variant_set_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variantsets/{variantSetId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a variant set. This method supports patch semantics.
        # @param [String] variant_set_id
        #   The ID of the variant to be updated (must already exist).
        # @param [Google::Apis::GenomicsV1::VariantSet] variant_set_object
        # @param [String] update_mask
        #   An optional mask specifying which fields to update. At this time, the only
        #   mutable field is [metadata][google.genomics.v1.VariantSet.metadata]. The only
        #   acceptable value is "metadata". If unspecified, all mutable fields will be
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::VariantSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::VariantSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_variantset(variant_set_id, variant_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/variantsets/{variantSetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1::VariantSet::Representation
          command.request_object = variant_set_object
          command.response_representation = Google::Apis::GenomicsV1::VariantSet::Representation
          command.response_class = Google::Apis::GenomicsV1::VariantSet
          command.params['variantSetId'] = variant_set_id unless variant_set_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a list of call sets matching the criteria. Implements [GlobalAllianceApi.
        # searchCallSets](https://github.com/ga4gh/schemas/blob/v0.5.1/src/main/
        # resources/avro/variantmethods.avdl#L178).
        # @param [Google::Apis::GenomicsV1::SearchCallSetsRequest] search_call_sets_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::SearchCallSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::SearchCallSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_call_sets(search_call_sets_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/callsets/search'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::SearchCallSetsRequest::Representation
          command.request_object = search_call_sets_request_object
          command.response_representation = Google::Apis::GenomicsV1::SearchCallSetsResponse::Representation
          command.response_class = Google::Apis::GenomicsV1::SearchCallSetsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new call set.
        # @param [Google::Apis::GenomicsV1::CallSet] call_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::CallSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::CallSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_call_set(call_set_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/callsets'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::GenomicsV1::CallSet::Representation
          command.request_object = call_set_object
          command.response_representation = Google::Apis::GenomicsV1::CallSet::Representation
          command.response_class = Google::Apis::GenomicsV1::CallSet
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a call set. This method supports patch semantics.
        # @param [String] call_set_id
        #   The ID of the call set to be updated.
        # @param [Google::Apis::GenomicsV1::CallSet] call_set_object
        # @param [String] update_mask
        #   An optional mask specifying which fields to update. At this time, the only
        #   mutable field is [name][google.genomics.v1.CallSet.name]. The only acceptable
        #   value is "name". If unspecified, all mutable fields will be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::CallSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::CallSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_call_set(call_set_id, call_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/callsets/{callSetId}'
          command =  make_simple_command(:patch, path, options)
          command.request_representation = Google::Apis::GenomicsV1::CallSet::Representation
          command.request_object = call_set_object
          command.response_representation = Google::Apis::GenomicsV1::CallSet::Representation
          command.response_class = Google::Apis::GenomicsV1::CallSet
          command.params['callSetId'] = call_set_id unless call_set_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a call set.
        # @param [String] call_set_id
        #   The ID of the call set to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_call_set(call_set_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/callsets/{callSetId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::GenomicsV1::Empty::Representation
          command.response_class = Google::Apis::GenomicsV1::Empty
          command.params['callSetId'] = call_set_id unless call_set_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a call set by ID.
        # @param [String] call_set_id
        #   The ID of the call set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GenomicsV1::CallSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GenomicsV1::CallSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_call_set(call_set_id, fields: nil, quota_user: nil, options: nil, &block)
          path = 'v1/callsets/{callSetId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::GenomicsV1::CallSet::Representation
          command.response_class = Google::Apis::GenomicsV1::CallSet
          command.params['callSetId'] = call_set_id unless call_set_id.nil?
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
