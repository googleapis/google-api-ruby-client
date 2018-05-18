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
    module VisionV1p2beta1
      # Cloud Vision API
      #
      # Integrates Google Vision features, including image labeling, face, logo, and
      #  landmark detection, optical character recognition (OCR), and detection of
      #  explicit content, into applications.
      #
      # @example
      #    require 'google/apis/vision_v1p2beta1'
      #
      #    Vision = Google::Apis::VisionV1p2beta1 # Alias the module
      #    service = Vision::VisionService.new
      #
      # @see https://cloud.google.com/vision/
      class VisionService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://vision.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Run asynchronous image detection and annotation for a list of generic
        # files, such as PDF files, which may contain multiple pages and multiple
        # images per page. Progress and results can be retrieved through the
        # `google.longrunning.Operations` interface.
        # `Operation.metadata` contains `OperationMetadata` (metadata).
        # `Operation.response` contains `AsyncBatchAnnotateFilesResponse` (results).
        # @param [Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest] google_cloud_vision_v1p2beta1_async_batch_annotate_files_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VisionV1p2beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VisionV1p2beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def async_file_batch_annotate(google_cloud_vision_v1p2beta1_async_batch_annotate_files_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1p2beta1/files:asyncBatchAnnotate', options)
          command.request_representation = Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1AsyncBatchAnnotateFilesRequest::Representation
          command.request_object = google_cloud_vision_v1p2beta1_async_batch_annotate_files_request_object
          command.response_representation = Google::Apis::VisionV1p2beta1::Operation::Representation
          command.response_class = Google::Apis::VisionV1p2beta1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Run image detection and annotation for a batch of images.
        # @param [Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest] google_cloud_vision_v1p2beta1_batch_annotate_images_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def annotate_image(google_cloud_vision_v1p2beta1_batch_annotate_images_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1p2beta1/images:annotate', options)
          command.request_representation = Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1BatchAnnotateImagesRequest::Representation
          command.request_object = google_cloud_vision_v1p2beta1_batch_annotate_images_request_object
          command.response_representation = Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse::Representation
          command.response_class = Google::Apis::VisionV1p2beta1::GoogleCloudVisionV1p2beta1BatchAnnotateImagesResponse
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
