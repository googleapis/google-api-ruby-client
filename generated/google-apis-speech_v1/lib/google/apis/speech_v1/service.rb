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
    module SpeechV1
      # Cloud Speech-to-Text API
      #
      # Converts audio to text by applying powerful neural network models.
      #
      # @example
      #    require 'google/apis/speech_v1'
      #
      #    Speech = Google::Apis::SpeechV1 # Alias the module
      #    service = Speech::SpeechService.new
      #
      # @see https://cloud.google.com/speech-to-text/docs/quickstart-protocol
      class SpeechService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://speech.googleapis.com/', '',
                client_name: 'google-apis-speech_v1',
                client_version: Google::Apis::SpeechV1::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::SpeechV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/operations/{+name}', options)
          command.response_representation = Google::Apis::SpeechV1::Operation::Representation
          command.response_class = Google::Apis::SpeechV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] filter
        #   The standard list filter.
        # @param [String] name
        #   The name of the operation's parent resource.
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
        # @yieldparam result [Google::Apis::SpeechV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(filter: nil, name: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/operations', options)
          command.response_representation = Google::Apis::SpeechV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SpeechV1::ListOperationsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a custom class.
        # @param [String] parent
        #   Required. The parent resource where this custom class will be created. Format:
        #   `projects/`project`/locations/`location`/customClasses` Speech-to-Text
        #   supports three locations: `global`, `us` (US North America), and `eu` (Europe).
        #   If you are calling the `speech.googleapis.com` endpoint, use the `global`
        #   location. To specify a region, use a [regional endpoint](https://cloud.google.
        #   com/speech-to-text/docs/endpoints) with matching `us` or `eu` location value.
        # @param [Google::Apis::SpeechV1::CreateCustomClassRequest] create_custom_class_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::CustomClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::CustomClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_custom_class(parent, create_custom_class_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/customClasses', options)
          command.request_representation = Google::Apis::SpeechV1::CreateCustomClassRequest::Representation
          command.request_object = create_custom_class_request_object
          command.response_representation = Google::Apis::SpeechV1::CustomClass::Representation
          command.response_class = Google::Apis::SpeechV1::CustomClass
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a custom class.
        # @param [String] name
        #   Required. The name of the custom class to delete. Format: `projects/`project`/
        #   locations/`location`/customClasses/`custom_class`` Speech-to-Text supports
        #   three locations: `global`, `us` (US North America), and `eu` (Europe). If you
        #   are calling the `speech.googleapis.com` endpoint, use the `global` location.
        #   To specify a region, use a [regional endpoint](https://cloud.google.com/speech-
        #   to-text/docs/endpoints) with matching `us` or `eu` location value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_custom_class(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpeechV1::Empty::Representation
          command.response_class = Google::Apis::SpeechV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a custom class.
        # @param [String] name
        #   Required. The name of the custom class to retrieve. Format: `projects/`project`
        #   /locations/`location`/customClasses/`custom_class``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::CustomClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::CustomClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_custom_class(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpeechV1::CustomClass::Representation
          command.response_class = Google::Apis::SpeechV1::CustomClass
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List custom classes.
        # @param [String] parent
        #   Required. The parent, which owns this collection of custom classes. Format: `
        #   projects/`project`/locations/`location`/customClasses` Speech-to-Text supports
        #   three locations: `global`, `us` (US North America), and `eu` (Europe). If you
        #   are calling the `speech.googleapis.com` endpoint, use the `global` location.
        #   To specify a region, use a [regional endpoint](https://cloud.google.com/speech-
        #   to-text/docs/endpoints) with matching `us` or `eu` location value.
        # @param [Fixnum] page_size
        #   The maximum number of custom classes to return. The service may return fewer
        #   than this value. If unspecified, at most 50 custom classes will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListCustomClass` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListCustomClass` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::ListCustomClassesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::ListCustomClassesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_custom_classes(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/customClasses', options)
          command.response_representation = Google::Apis::SpeechV1::ListCustomClassesResponse::Representation
          command.response_class = Google::Apis::SpeechV1::ListCustomClassesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a custom class.
        # @param [String] name
        #   The resource name of the custom class.
        # @param [Google::Apis::SpeechV1::CustomClass] custom_class_object
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
        # @yieldparam result [Google::Apis::SpeechV1::CustomClass] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::CustomClass]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_custom_class(name, custom_class_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SpeechV1::CustomClass::Representation
          command.request_object = custom_class_object
          command.response_representation = Google::Apis::SpeechV1::CustomClass::Representation
          command.response_class = Google::Apis::SpeechV1::CustomClass
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a set of phrase hints. Each item in the set can be a single word or a
        # multi-word phrase. The items in the PhraseSet are favored by the recognition
        # model when you send a call that includes the PhraseSet.
        # @param [String] parent
        #   Required. The parent resource where this phrase set will be created. Format: `
        #   projects/`project`/locations/`location`/phraseSets` Speech-to-Text supports
        #   three locations: `global`, `us` (US North America), and `eu` (Europe). If you
        #   are calling the `speech.googleapis.com` endpoint, use the `global` location.
        #   To specify a region, use a [regional endpoint](https://cloud.google.com/speech-
        #   to-text/docs/endpoints) with matching `us` or `eu` location value.
        # @param [Google::Apis::SpeechV1::CreatePhraseSetRequest] create_phrase_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::PhraseSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::PhraseSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_phrase_set(parent, create_phrase_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/phraseSets', options)
          command.request_representation = Google::Apis::SpeechV1::CreatePhraseSetRequest::Representation
          command.request_object = create_phrase_set_request_object
          command.response_representation = Google::Apis::SpeechV1::PhraseSet::Representation
          command.response_class = Google::Apis::SpeechV1::PhraseSet
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a phrase set.
        # @param [String] name
        #   Required. The name of the phrase set to delete. Format: `projects/`project`/
        #   locations/`location`/phraseSets/`phrase_set``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_phrase_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpeechV1::Empty::Representation
          command.response_class = Google::Apis::SpeechV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a phrase set.
        # @param [String] name
        #   Required. The name of the phrase set to retrieve. Format: `projects/`project`/
        #   locations/`location`/phraseSets/`phrase_set`` Speech-to-Text supports three
        #   locations: `global`, `us` (US North America), and `eu` (Europe). If you are
        #   calling the `speech.googleapis.com` endpoint, use the `global` location. To
        #   specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-
        #   text/docs/endpoints) with matching `us` or `eu` location value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::PhraseSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::PhraseSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_phrase_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpeechV1::PhraseSet::Representation
          command.response_class = Google::Apis::SpeechV1::PhraseSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List phrase sets.
        # @param [String] parent
        #   Required. The parent, which owns this collection of phrase set. Format: `
        #   projects/`project`/locations/`location`` Speech-to-Text supports three
        #   locations: `global`, `us` (US North America), and `eu` (Europe). If you are
        #   calling the `speech.googleapis.com` endpoint, use the `global` location. To
        #   specify a region, use a [regional endpoint](https://cloud.google.com/speech-to-
        #   text/docs/endpoints) with matching `us` or `eu` location value.
        # @param [Fixnum] page_size
        #   The maximum number of phrase sets to return. The service may return fewer than
        #   this value. If unspecified, at most 50 phrase sets will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `ListPhraseSet` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListPhraseSet` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::ListPhraseSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::ListPhraseSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_phrase_sets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/phraseSets', options)
          command.response_representation = Google::Apis::SpeechV1::ListPhraseSetResponse::Representation
          command.response_class = Google::Apis::SpeechV1::ListPhraseSetResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update a phrase set.
        # @param [String] name
        #   The resource name of the phrase set.
        # @param [Google::Apis::SpeechV1::PhraseSet] phrase_set_object
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
        # @yieldparam result [Google::Apis::SpeechV1::PhraseSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::PhraseSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_phrase_set(name, phrase_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SpeechV1::PhraseSet::Representation
          command.request_object = phrase_set_object
          command.response_representation = Google::Apis::SpeechV1::PhraseSet::Representation
          command.response_class = Google::Apis::SpeechV1::PhraseSet
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs asynchronous speech recognition: receive results via the google.
        # longrunning.Operations interface. Returns either an `Operation.error` or an `
        # Operation.response` which contains a `LongRunningRecognizeResponse` message.
        # For more information on asynchronous speech recognition, see the [how-to](
        # https://cloud.google.com/speech-to-text/docs/async-recognize).
        # @param [Google::Apis::SpeechV1::LongRunningRecognizeRequest] long_running_recognize_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def longrunningrecognize_speech(long_running_recognize_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/speech:longrunningrecognize', options)
          command.request_representation = Google::Apis::SpeechV1::LongRunningRecognizeRequest::Representation
          command.request_object = long_running_recognize_request_object
          command.response_representation = Google::Apis::SpeechV1::Operation::Representation
          command.response_class = Google::Apis::SpeechV1::Operation
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs synchronous speech recognition: receive results after all audio has
        # been sent and processed.
        # @param [Google::Apis::SpeechV1::RecognizeRequest] recognize_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpeechV1::RecognizeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpeechV1::RecognizeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def recognize_speech(recognize_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/speech:recognize', options)
          command.request_representation = Google::Apis::SpeechV1::RecognizeRequest::Representation
          command.request_object = recognize_request_object
          command.response_representation = Google::Apis::SpeechV1::RecognizeResponse::Representation
          command.response_class = Google::Apis::SpeechV1::RecognizeResponse
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
