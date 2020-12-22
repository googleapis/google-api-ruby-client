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
    module DatalabelingV1beta1
      # Data Labeling API
      #
      # Public API for Google Cloud AI Data Labeling Service.
      #
      # @example
      #    require 'google/apis/datalabeling_v1beta1'
      #
      #    Datalabeling = Google::Apis::DatalabelingV1beta1 # Alias the module
      #    service = Datalabeling::DataLabelingService.new
      #
      # @see https://cloud.google.com/data-labeling/docs/
      class DataLabelingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://datalabeling.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates an annotation spec set by providing a set of labels.
        # @param [String] parent
        #   Required. AnnotationSpecSet resource parent, format: projects/`project_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest] google_cloud_datalabeling_v1beta1_create_annotation_spec_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_annotation_spec_set(parent, google_cloud_datalabeling_v1beta1_create_annotation_spec_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/annotationSpecSets', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateAnnotationSpecSetRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_create_annotation_spec_set_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an annotation spec set by resource name.
        # @param [String] name
        #   Required. AnnotationSpec resource name, format: `projects/`project_id`/
        #   annotationSpecSets/`annotation_spec_set_id``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_annotation_spec_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an annotation spec set by resource name.
        # @param [String] name
        #   Required. AnnotationSpecSet resource name, format: projects/`project_id`/
        #   annotationSpecSets/`annotation_spec_set_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_annotation_spec_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotationSpecSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists annotation spec sets for a project. Pagination is supported.
        # @param [String] parent
        #   Required. Parent of AnnotationSpecSet resource, format: projects/`project_id`
        # @param [String] filter
        #   Optional. Filter is not supported at this moment.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListAnnotationSpecSetsResponse.next_page_token of the
        #   previous [DataLabelingService.ListAnnotationSpecSets] call. Return first page
        #   if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_annotation_spec_sets(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/annotationSpecSets', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotationSpecSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates dataset. If success return a Dataset resource.
        # @param [String] parent
        #   Required. Dataset resource parent, format: projects/`project_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateDatasetRequest] google_cloud_datalabeling_v1beta1_create_dataset_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_dataset(parent, google_cloud_datalabeling_v1beta1_create_dataset_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/datasets', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateDatasetRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_create_dataset_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a dataset by resource name.
        # @param [String] name
        #   Required. Dataset resource name, format: projects/`project_id`/datasets/`
        #   dataset_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Exports data and annotations from dataset.
        # @param [String] name
        #   Required. Dataset resource name, format: projects/`project_id`/datasets/`
        #   dataset_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ExportDataRequest] google_cloud_datalabeling_v1beta1_export_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def export_project_dataset_data(name, google_cloud_datalabeling_v1beta1_export_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:exportData', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ExportDataRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_export_data_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets dataset by resource name.
        # @param [String] name
        #   Required. Dataset resource name, format: projects/`project_id`/datasets/`
        #   dataset_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Dataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports data into dataset based on source locations defined in request. It can
        # be called multiple times for the same dataset. Each dataset can only have one
        # long running operation running on it. For example, no labeling task (also long
        # running operation) can be started while importing is still ongoing. Vice versa.
        # @param [String] name
        #   Required. Dataset resource name, format: projects/`project_id`/datasets/`
        #   dataset_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImportDataRequest] google_cloud_datalabeling_v1beta1_import_data_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_project_dataset_data(name, google_cloud_datalabeling_v1beta1_import_data_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:importData', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ImportDataRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_import_data_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists datasets under a project. Pagination is supported.
        # @param [String] parent
        #   Required. Dataset resource parent, format: projects/`project_id`
        # @param [String] filter
        #   Optional. Filter on dataset is not supported at this moment.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListDatasetsResponse.next_page_token of the previous [
        #   DataLabelingService.ListDatasets] call. Returns the first page if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_datasets(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/datasets', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDatasetsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an annotated dataset by resource name.
        # @param [String] name
        #   Required. Name of the annotated dataset to delete, format: projects/`
        #   project_id`/datasets/`dataset_id`/annotatedDatasets/ `annotated_dataset_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_dataset_annotated_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an annotated dataset by resource name.
        # @param [String] name
        #   Required. Name of the annotated dataset to get, format: projects/`project_id`/
        #   datasets/`dataset_id`/annotatedDatasets/ `annotated_dataset_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDataset] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDataset]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset_annotated_dataset(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDataset::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1AnnotatedDataset
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists annotated datasets for a dataset. Pagination is supported.
        # @param [String] parent
        #   Required. Name of the dataset to list annotated datasets, format: projects/`
        #   project_id`/datasets/`dataset_id`
        # @param [String] filter
        #   Optional. Filter is not supported at this moment.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListAnnotatedDatasetsResponse.next_page_token of the
        #   previous [DataLabelingService.ListAnnotatedDatasets] call. Return first page
        #   if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dataset_annotated_datasets(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/annotatedDatasets', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListAnnotatedDatasetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a data item in a dataset by resource name. This API can be called after
        # data are imported into dataset.
        # @param [String] name
        #   Required. The name of the data item to get, format: projects/`project_id`/
        #   datasets/`dataset_id`/dataItems/`data_item_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset_annotated_dataset_data_item(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists data items in a dataset. This API can be called after data are imported
        # into dataset. Pagination is supported.
        # @param [String] parent
        #   Required. Name of the dataset to list data items, format: projects/`project_id`
        #   /datasets/`dataset_id`
        # @param [String] filter
        #   Optional. Filter is not supported at this moment.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListDataItemsResponse.next_page_token of the previous [
        #   DataLabelingService.ListDataItems] call. Return first page if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dataset_annotated_dataset_data_items(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dataItems', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an example by resource name, including both data and annotation.
        # @param [String] name
        #   Required. Name of example, format: projects/`project_id`/datasets/`dataset_id`/
        #   annotatedDatasets/ `annotated_dataset_id`/examples/`example_id`
        # @param [String] filter
        #   Optional. An expression for filtering Examples. Filter by annotation_spec.
        #   display_name is supported. Format "annotation_spec.display_name = `
        #   display_name`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset_annotated_dataset_example(name, filter: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Example
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists examples in an annotated dataset. Pagination is supported.
        # @param [String] parent
        #   Required. Example resource parent.
        # @param [String] filter
        #   Optional. An expression for filtering Examples. For annotated datasets that
        #   have annotation spec set, filter by annotation_spec.display_name is supported.
        #   Format "annotation_spec.display_name = `display_name`"
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListExamplesResponse.next_page_token of the previous [
        #   DataLabelingService.ListExamples] call. Return first page if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListExamplesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListExamplesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dataset_annotated_dataset_examples(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/examples', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListExamplesResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListExamplesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a FeedbackThread.
        # @param [String] name
        #   Required. Name of the FeedbackThread that is going to be deleted. Format: '
        #   projects/`project_id`/datasets/`dataset_id`/annotatedDatasets/`
        #   annotated_dataset_id`/feedbackThreads/`feedback_thread_id`'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_dataset_annotated_dataset_feedback_thread(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a FeedbackThread object.
        # @param [String] name
        #   Required. Name of the feedback. Format: 'projects/`project_id`/datasets/`
        #   dataset_id`/annotatedDatasets/`annotated_dataset_id`/feedbackThreads/`
        #   feedback_thread_id`'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset_annotated_dataset_feedback_thread(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThread::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackThread
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List FeedbackThreads with pagination.
        # @param [String] parent
        #   Required. FeedbackThread resource parent. Format: "projects/`project_id`/
        #   datasets/`dataset_id`/annotatedDatasets/`annotated_dataset_id`"
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListFeedbackThreads.next_page_token of the previous [
        #   DataLabelingService.ListFeedbackThreads] call. Return first page if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dataset_annotated_dataset_feedback_threads(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/feedbackThreads', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackThreadsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a FeedbackMessage object.
        # @param [String] parent
        #   Required. FeedbackMessage resource parent, format: projects/`project_id`/
        #   datasets/`dataset_id`/annotatedDatasets/`annotated_dataset_id`/feedbackThreads/
        #   `feedback_thread_id`.
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage] google_cloud_datalabeling_v1beta1_feedback_message_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_dataset_annotated_dataset_feedback_thread_feedback_message(parent, google_cloud_datalabeling_v1beta1_feedback_message_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/feedbackMessages', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_feedback_message_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a FeedbackMessage.
        # @param [String] name
        #   Required. Name of the FeedbackMessage that is going to be deleted. Format: '
        #   projects/`project_id`/datasets/`dataset_id`/annotatedDatasets/`
        #   annotated_dataset_id`/feedbackThreads/`feedback_thread_id`/feedbackMessages/`
        #   feedback_message_id`'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_dataset_annotated_dataset_feedback_thread_feedback_message(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a FeedbackMessage object.
        # @param [String] name
        #   Required. Name of the feedback. Format: 'projects/`project_id`/datasets/`
        #   dataset_id`/annotatedDatasets/`annotated_dataset_id`/feedbackThreads/`
        #   feedback_thread_id`/feedbackMessages/`feedback_message_id`'.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset_annotated_dataset_feedback_thread_feedback_message(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1FeedbackMessage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List FeedbackMessages with pagination.
        # @param [String] parent
        #   Required. FeedbackMessage resource parent. Format: "projects/`project_id`/
        #   datasets/`dataset_id`/annotatedDatasets/`annotated_dataset_id`/feedbackThreads/
        #   `feedback_thread_id`"
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListFeedbackMessages.next_page_token of the previous [
        #   DataLabelingService.ListFeedbackMessages] call. Return first page if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dataset_annotated_dataset_feedback_thread_feedback_messages(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/feedbackMessages', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListFeedbackMessagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a data item in a dataset by resource name. This API can be called after
        # data are imported into dataset.
        # @param [String] name
        #   Required. The name of the data item to get, format: projects/`project_id`/
        #   datasets/`dataset_id`/dataItems/`data_item_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset_data_item(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1DataItem
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists data items in a dataset. This API can be called after data are imported
        # into dataset. Pagination is supported.
        # @param [String] parent
        #   Required. Name of the dataset to list data items, format: projects/`project_id`
        #   /datasets/`dataset_id`
        # @param [String] filter
        #   Optional. Filter is not supported at this moment.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListDataItemsResponse.next_page_token of the previous [
        #   DataLabelingService.ListDataItems] call. Return first page if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dataset_data_items(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/dataItems', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListDataItemsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an evaluation by resource name (to search, use projects.evaluations.
        # search).
        # @param [String] name
        #   Required. Name of the evaluation. Format: "projects/`project_id`/datasets/ `
        #   dataset_id`/evaluations/`evaluation_id`'
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Evaluation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Evaluation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dataset_evaluation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Evaluation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Evaluation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches example comparisons from an evaluation. The return format is a list
        # of example comparisons that show ground truth and prediction(s) for a single
        # input. Search by providing an evaluation ID.
        # @param [String] parent
        #   Required. Name of the Evaluation resource to search for example comparisons
        #   from. Format: "projects/`project_id`/datasets/`dataset_id`/evaluations/ `
        #   evaluation_id`"
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest] google_cloud_datalabeling_v1beta1_search_example_comparisons_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_dataset_evaluation_example_comparisons(parent, google_cloud_datalabeling_v1beta1_search_example_comparisons_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/exampleComparisons:search', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchExampleComparisonsRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_search_example_comparisons_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchExampleComparisonsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a labeling task for image. The type of image labeling task is
        # configured by feature in the request.
        # @param [String] parent
        #   Required. Name of the dataset to request labeling task, format: projects/`
        #   project_id`/datasets/`dataset_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageRequest] google_cloud_datalabeling_v1beta1_label_image_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def label_project_dataset_image(parent, google_cloud_datalabeling_v1beta1_label_image_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/image:label', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelImageRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_label_image_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a labeling task for text. The type of text labeling task is configured
        # by feature in the request.
        # @param [String] parent
        #   Required. Name of the data set to request labeling task, format: projects/`
        #   project_id`/datasets/`dataset_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextRequest] google_cloud_datalabeling_v1beta1_label_text_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def label_project_dataset_text(parent, google_cloud_datalabeling_v1beta1_label_text_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/text:label', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelTextRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_label_text_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts a labeling task for video. The type of video labeling task is
        # configured by feature in the request.
        # @param [String] parent
        #   Required. Name of the dataset to request labeling task, format: projects/`
        #   project_id`/datasets/`dataset_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoRequest] google_cloud_datalabeling_v1beta1_label_video_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def label_project_dataset_video(parent, google_cloud_datalabeling_v1beta1_label_video_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/video:label', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1LabelVideoRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_label_video_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an evaluation job.
        # @param [String] parent
        #   Required. Evaluation job resource parent. Format: "projects/`project_id`"
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest] google_cloud_datalabeling_v1beta1_create_evaluation_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_evaluation_job(parent, google_cloud_datalabeling_v1beta1_create_evaluation_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/evaluationJobs', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateEvaluationJobRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_create_evaluation_job_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stops and deletes an evaluation job.
        # @param [String] name
        #   Required. Name of the evaluation job that is going to be deleted. Format: "
        #   projects/`project_id`/evaluationJobs/`evaluation_job_id`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_evaluation_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an evaluation job by resource name.
        # @param [String] name
        #   Required. Name of the evaluation job. Format: "projects/`project_id` /
        #   evaluationJobs/`evaluation_job_id`"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_evaluation_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all evaluation jobs within a project with possible filters. Pagination
        # is supported.
        # @param [String] parent
        #   Required. Evaluation job resource parent. Format: "projects/`project_id`"
        # @param [String] filter
        #   Optional. You can filter the jobs to list by model_id (also known as
        #   model_name, as described in EvaluationJob.modelVersion) or by evaluation job
        #   state (as described in EvaluationJob.state). To filter by both criteria, use
        #   the `AND` operator or the `OR` operator. For example, you can use the
        #   following string for your filter: "evaluation_job.model_id = `model_name` AND
        #   evaluation_job.state = `evaluation_job_state`"
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by the nextPageToken in the response to the previous
        #   request. The request returns the first page if this is empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_evaluation_jobs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/evaluationJobs', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListEvaluationJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an evaluation job. You can only update certain fields of the job's
        # EvaluationJobConfig: `humanAnnotationConfig.instruction`, `exampleCount`, and `
        # exampleSamplePercentage`. If you want to change any other aspect of the
        # evaluation job, you must delete the job and create a new one.
        # @param [String] name
        #   Output only. After you create a job, Data Labeling Service assigns a name to
        #   the job with the following format: "projects/`project_id`/evaluationJobs/ `
        #   evaluation_job_id`"
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob] google_cloud_datalabeling_v1beta1_evaluation_job_object
        # @param [String] update_mask
        #   Optional. Mask for which fields to update. You can only provide the following
        #   fields: * `evaluationJobConfig.humanAnnotationConfig.instruction` * `
        #   evaluationJobConfig.exampleCount` * `evaluationJobConfig.
        #   exampleSamplePercentage` You can provide more than one of these fields by
        #   separating them with commas.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_evaluation_job(name, google_cloud_datalabeling_v1beta1_evaluation_job_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_evaluation_job_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1EvaluationJob
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses an evaluation job. Pausing an evaluation job that is already in a `
        # PAUSED` state is a no-op.
        # @param [String] name
        #   Required. Name of the evaluation job that is going to be paused. Format: "
        #   projects/`project_id`/evaluationJobs/`evaluation_job_id`"
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest] google_cloud_datalabeling_v1beta1_pause_evaluation_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_project_evaluation_job(name, google_cloud_datalabeling_v1beta1_pause_evaluation_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:pause', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1PauseEvaluationJobRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_pause_evaluation_job_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes a paused evaluation job. A deleted evaluation job can't be resumed.
        # Resuming a running or scheduled evaluation job is a no-op.
        # @param [String] name
        #   Required. Name of the evaluation job that is going to be resumed. Format: "
        #   projects/`project_id`/evaluationJobs/`evaluation_job_id`"
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest] google_cloud_datalabeling_v1beta1_resume_evaluation_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_project_evaluation_job(name, google_cloud_datalabeling_v1beta1_resume_evaluation_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:resume', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ResumeEvaluationJobRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_resume_evaluation_job_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches evaluations within a project.
        # @param [String] parent
        #   Required. Evaluation search parent (project ID). Format: "projects/ `
        #   project_id`"
        # @param [String] filter
        #   Optional. To search evaluations, you can filter by the following: *
        #   evaluation_job.evaluation_job_id (the last part of EvaluationJob.name) *
        #   evaluation_job.model_id (the `model_name` portion of EvaluationJob.
        #   modelVersion) * evaluation_job.evaluation_job_run_time_start (Minimum
        #   threshold for the evaluationJobRunTime that created the evaluation) *
        #   evaluation_job.evaluation_job_run_time_end (Maximum threshold for the
        #   evaluationJobRunTime that created the evaluation) * evaluation_job.job_state (
        #   EvaluationJob.state) * annotation_spec.display_name (the Evaluation contains a
        #   metric for the annotation spec with this displayName) To filter by multiple
        #   critiera, use the `AND` operator or the `OR` operator. The following examples
        #   shows a string that filters by several critiera: "evaluation_job.
        #   evaluation_job_id = `evaluation_job_id` AND evaluation_job.model_id = `
        #   model_name` AND evaluation_job.evaluation_job_run_time_start = `timestamp_1`
        #   AND evaluation_job.evaluation_job_run_time_end = `timestamp_2` AND
        #   annotation_spec.display_name = `display_name`"
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by the nextPageToken of the response to a previous search
        #   request. If you don't specify this field, the API call requests the first page
        #   of the search.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_evaluations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/evaluations:search', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1SearchEvaluationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an instruction for how data should be labeled.
        # @param [String] parent
        #   Required. Instruction resource parent, format: projects/`project_id`
        # @param [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateInstructionRequest] google_cloud_datalabeling_v1beta1_create_instruction_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instruction(parent, google_cloud_datalabeling_v1beta1_create_instruction_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/instructions', options)
          command.request_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1CreateInstructionRequest::Representation
          command.request_object = google_cloud_datalabeling_v1beta1_create_instruction_request_object
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an instruction object by resource name.
        # @param [String] name
        #   Required. Instruction resource name, format: projects/`project_id`/
        #   instructions/`instruction_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instruction(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an instruction by resource name.
        # @param [String] name
        #   Required. Instruction resource name, format: projects/`project_id`/
        #   instructions/`instruction_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instruction(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1Instruction
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists instructions for a project. Pagination is supported.
        # @param [String] parent
        #   Required. Instruction resource parent, format: projects/`project_id`
        # @param [String] filter
        #   Optional. Filter is not supported at this moment.
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server may return fewer results than requested.
        #   Default value is 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results for the server to return.
        #   Typically obtained by ListInstructionsResponse.next_page_token of the previous
        #   [DataLabelingService.ListInstructions] call. Return first page if empty.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListInstructionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListInstructionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instructions(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/instructions', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListInstructionsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleCloudDatalabelingV1beta1ListInstructionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}:cancel', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
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
        # @yieldparam result [Google::Apis::DatalabelingV1beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatalabelingV1beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::DatalabelingV1beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::DatalabelingV1beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
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
