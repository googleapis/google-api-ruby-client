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
    module MybusinessqandaV1
      # My Business Q&A API
      #
      # The My Business Q&A API allows questions and answers to be posted for specific
      #  listings. Note - If you have a quota of 0 after enabling the API, please
      #  request for GBP API access.
      #
      # @example
      #    require 'google/apis/mybusinessqanda_v1'
      #
      #    Mybusinessqanda = Google::Apis::MybusinessqandaV1 # Alias the module
      #    service = Mybusinessqanda::MyBusinessQAService.new
      #
      # @see https://developers.google.com/my-business/
      class MyBusinessQAService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://mybusinessqanda.googleapis.com/', '',
                client_name: 'google-apis-mybusinessqanda_v1',
                client_version: Google::Apis::MybusinessqandaV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Adds a question for the specified location.
        # @param [String] parent
        #   Required. The name of the location to write a question for.
        # @param [Google::Apis::MybusinessqandaV1::Question] question_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessqandaV1::Question] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessqandaV1::Question]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_question(parent, question_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}', options)
          command.request_representation = Google::Apis::MybusinessqandaV1::Question::Representation
          command.request_object = question_object
          command.response_representation = Google::Apis::MybusinessqandaV1::Question::Representation
          command.response_class = Google::Apis::MybusinessqandaV1::Question
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a specific question written by the current user.
        # @param [String] name
        #   Required. The name of the question to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessqandaV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessqandaV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_question(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MybusinessqandaV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessqandaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the paginated list of questions and some of its answers for a
        # specified location. This operation is only valid if the specified location is
        # verified.
        # @param [String] parent
        #   Required. The name of the location to fetch questions for.
        # @param [Fixnum] answers_per_question
        #   Optional. How many answers to fetch per question. The default and maximum `
        #   answers_per_question` values are 10.
        # @param [String] filter
        #   Optional. A filter constraining the questions to return. The only filter
        #   currently supported is "ignore_answered=true"
        # @param [String] order_by
        #   Optional. The order to return the questions. Valid options include '
        #   update_time desc' and 'upvote_count desc', which will return the questions
        #   sorted descendingly by the requested field. The default sort order is '
        #   update_time desc'.
        # @param [Fixnum] page_size
        #   Optional. How many questions to fetch per page. The default and maximum `
        #   page_size` values are 10.
        # @param [String] page_token
        #   Optional. If specified, the next page of questions is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessqandaV1::ListQuestionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessqandaV1::ListQuestionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_questions(parent, answers_per_question: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}', options)
          command.response_representation = Google::Apis::MybusinessqandaV1::ListQuestionsResponse::Representation
          command.response_class = Google::Apis::MybusinessqandaV1::ListQuestionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['answersPerQuestion'] = answers_per_question unless answers_per_question.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a specific question written by the current user.
        # @param [String] name
        #   Immutable. The unique name for the question. locations/*/questions/* This
        #   field will be ignored if set during question creation.
        # @param [Google::Apis::MybusinessqandaV1::Question] question_object
        # @param [String] update_mask
        #   Required. The specific fields to update. Only question text can be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessqandaV1::Question] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessqandaV1::Question]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_location_question(name, question_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MybusinessqandaV1::Question::Representation
          command.request_object = question_object
          command.response_representation = Google::Apis::MybusinessqandaV1::Question::Representation
          command.response_class = Google::Apis::MybusinessqandaV1::Question
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the answer written by the current user to a question.
        # @param [String] name
        #   Required. The name of the question to delete an answer for.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessqandaV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessqandaV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_question_answer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}/answers:delete', options)
          command.response_representation = Google::Apis::MybusinessqandaV1::Empty::Representation
          command.response_class = Google::Apis::MybusinessqandaV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the paginated list of answers for a specified question.
        # @param [String] parent
        #   Required. The name of the question to fetch answers for.
        # @param [String] order_by
        #   Optional. The order to return the answers. Valid options include 'update_time
        #   desc' and 'upvote_count desc', which will return the answers sorted
        #   descendingly by the requested field. The default sort order is 'update_time
        #   desc'.
        # @param [Fixnum] page_size
        #   Optional. How many answers to fetch per page. The default and maximum `
        #   page_size` values are 10.
        # @param [String] page_token
        #   Optional. If specified, the next page of answers is retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessqandaV1::ListAnswersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessqandaV1::ListAnswersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_question_answers(parent, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/answers', options)
          command.response_representation = Google::Apis::MybusinessqandaV1::ListAnswersResponse::Representation
          command.response_class = Google::Apis::MybusinessqandaV1::ListAnswersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an answer or updates the existing answer written by the user for the
        # specified question. A user can only create one answer per question.
        # @param [String] parent
        #   Required. The name of the question to write an answer for.
        # @param [Google::Apis::MybusinessqandaV1::UpsertAnswerRequest] upsert_answer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MybusinessqandaV1::Answer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MybusinessqandaV1::Answer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def upsert_answer(parent, upsert_answer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/answers:upsert', options)
          command.request_representation = Google::Apis::MybusinessqandaV1::UpsertAnswerRequest::Representation
          command.request_object = upsert_answer_request_object
          command.response_representation = Google::Apis::MybusinessqandaV1::Answer::Representation
          command.response_class = Google::Apis::MybusinessqandaV1::Answer
          command.params['parent'] = parent unless parent.nil?
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
