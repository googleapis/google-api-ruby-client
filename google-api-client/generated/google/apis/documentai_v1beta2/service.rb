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
    module DocumentaiV1beta2
      # Cloud Document AI API
      #
      # Service to parse structured information from unstructured or semi-structured
      #  documents using state-of-the-art Google AI such as natural language, computer
      #  vision, translation, and AutoML.
      #
      # @example
      #    require 'google/apis/documentai_v1beta2'
      #
      #    Documentai = Google::Apis::DocumentaiV1beta2 # Alias the module
      #    service = Documentai::DocumentService.new
      #
      # @see https://cloud.google.com/document-ai/docs/
      class DocumentService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://documentai.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # LRO endpoint to batch process many documents. The output is written to Cloud
        # Storage as JSON in the [Document] format.
        # @param [String] parent
        #   Target project and location to make a call. Format: `projects/`project-id`/
        #   locations/`location-id``. If no location is specified, a region will be chosen
        #   automatically.
        # @param [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest] google_cloud_documentai_v1beta2_batch_process_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_document_process(parent, google_cloud_documentai_v1beta2_batch_process_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/documents:batchProcess', options)
          command.request_representation = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest::Representation
          command.request_object = google_cloud_documentai_v1beta2_batch_process_documents_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a single document.
        # @param [String] parent
        #   Target project and location to make a call. Format: `projects/`project-id`/
        #   locations/`location-id``. If no location is specified, a region will be chosen
        #   automatically. This field is only populated when used in ProcessDocument
        #   method.
        # @param [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentRequest] google_cloud_documentai_v1beta2_process_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_project_document(parent, google_cloud_documentai_v1beta2_process_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/documents:process', options)
          command.request_representation = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentRequest::Representation
          command.request_object = google_cloud_documentai_v1beta2_process_document_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document::Representation
          command.response_class = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # LRO endpoint to batch process many documents. The output is written to Cloud
        # Storage as JSON in the [Document] format.
        # @param [String] parent
        #   Target project and location to make a call. Format: `projects/`project-id`/
        #   locations/`location-id``. If no location is specified, a region will be chosen
        #   automatically.
        # @param [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest] google_cloud_documentai_v1beta2_batch_process_documents_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_project_location_document_process(parent, google_cloud_documentai_v1beta2_batch_process_documents_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/documents:batchProcess', options)
          command.request_representation = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2BatchProcessDocumentsRequest::Representation
          command.request_object = google_cloud_documentai_v1beta2_batch_process_documents_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Processes a single document.
        # @param [String] parent
        #   Target project and location to make a call. Format: `projects/`project-id`/
        #   locations/`location-id``. If no location is specified, a region will be chosen
        #   automatically. This field is only populated when used in ProcessDocument
        #   method.
        # @param [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentRequest] google_cloud_documentai_v1beta2_process_document_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def process_project_location_document(parent, google_cloud_documentai_v1beta2_process_document_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta2/{+parent}/documents:process', options)
          command.request_representation = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2ProcessDocumentRequest::Representation
          command.request_object = google_cloud_documentai_v1beta2_process_document_request_object
          command.response_representation = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document::Representation
          command.response_class = Google::Apis::DocumentaiV1beta2::GoogleCloudDocumentaiV1beta2Document
          command.params['parent'] = parent unless parent.nil?
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
        # @yieldparam result [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta2/{+name}', options)
          command.response_representation = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::DocumentaiV1beta2::GoogleLongrunningOperation
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
