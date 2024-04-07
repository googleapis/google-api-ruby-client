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
    module FirebasemlV2beta
      # Firebase ML API
      #
      # Access custom machine learning models hosted via Firebase ML.
      #
      # @example
      #    require 'google/apis/firebaseml_v2beta'
      #
      #    Firebaseml = Google::Apis::FirebasemlV2beta # Alias the module
      #    service = Firebaseml::FirebaseMLService.new
      #
      # @see https://firebase.google.com
      class FirebaseMLService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://firebaseml.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-firebaseml_v2beta',
                client_version: Google::Apis::FirebasemlV2beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Perform a token counting.
        # @param [String] endpoint
        #   Required. The name of the Endpoint requested to perform token counting. Format:
        #   `projects/`project`/locations/`location`/endpoints/`endpoint``
        # @param [Google::Apis::FirebasemlV2beta::CountTokensRequest] count_tokens_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasemlV2beta::CountTokensResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasemlV2beta::CountTokensResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def count_model_tokens(endpoint, count_tokens_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+endpoint}:countTokens', options)
          command.request_representation = Google::Apis::FirebasemlV2beta::CountTokensRequest::Representation
          command.request_object = count_tokens_request_object
          command.response_representation = Google::Apis::FirebasemlV2beta::CountTokensResponse::Representation
          command.response_class = Google::Apis::FirebasemlV2beta::CountTokensResponse
          command.params['endpoint'] = endpoint unless endpoint.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate content with multimodal inputs.
        # @param [String] model
        #   Required. The name of the publisher model requested to serve the prediction.
        #   Format: `projects/`project`/locations/`location`/publishers/*/models/*`
        # @param [Google::Apis::FirebasemlV2beta::GenerateContentRequest] generate_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasemlV2beta::GenerateContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasemlV2beta::GenerateContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_model_content(model, generate_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+model}:generateContent', options)
          command.request_representation = Google::Apis::FirebasemlV2beta::GenerateContentRequest::Representation
          command.request_object = generate_content_request_object
          command.response_representation = Google::Apis::FirebasemlV2beta::GenerateContentResponse::Representation
          command.response_class = Google::Apis::FirebasemlV2beta::GenerateContentResponse
          command.params['model'] = model unless model.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate content with multimodal inputs with streaming support.
        # @param [String] model
        #   Required. The name of the publisher model requested to serve the prediction.
        #   Format: `projects/`project`/locations/`location`/publishers/*/models/*`
        # @param [Google::Apis::FirebasemlV2beta::GenerateContentRequest] generate_content_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FirebasemlV2beta::GenerateContentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FirebasemlV2beta::GenerateContentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stream_project_location_publisher_model_generate_content(model, generate_content_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta/{+model}:streamGenerateContent', options)
          command.request_representation = Google::Apis::FirebasemlV2beta::GenerateContentRequest::Representation
          command.request_object = generate_content_request_object
          command.response_representation = Google::Apis::FirebasemlV2beta::GenerateContentResponse::Representation
          command.response_class = Google::Apis::FirebasemlV2beta::GenerateContentResponse
          command.params['model'] = model unless model.nil?
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
