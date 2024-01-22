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
    module FormsV1
      # Google Forms API
      #
      # Reads and writes Google Forms and responses.
      #
      # @example
      #    require 'google/apis/forms_v1'
      #
      #    Forms = Google::Apis::FormsV1 # Alias the module
      #    service = Forms::FormsService.new
      #
      # @see https://developers.google.com/forms/api
      class FormsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://forms.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-forms_v1',
                client_version: Google::Apis::FormsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Change the form with a batch of updates.
        # @param [String] form_id
        #   Required. The form ID.
        # @param [Google::Apis::FormsV1::BatchUpdateFormRequest] batch_update_form_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::BatchUpdateFormResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::BatchUpdateFormResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_form(form_id, batch_update_form_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/forms/{formId}:batchUpdate', options)
          command.request_representation = Google::Apis::FormsV1::BatchUpdateFormRequest::Representation
          command.request_object = batch_update_form_request_object
          command.response_representation = Google::Apis::FormsV1::BatchUpdateFormResponse::Representation
          command.response_class = Google::Apis::FormsV1::BatchUpdateFormResponse
          command.params['formId'] = form_id unless form_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new form using the title given in the provided form message in the
        # request. *Important:* Only the form.info.title and form.info.document_title
        # fields are copied to the new form. All other fields including the form
        # description, items and settings are disallowed. To create a new form and add
        # items, you must first call forms.create to create an empty form with a title
        # and (optional) document title, and then call forms.update to add the items.
        # @param [Google::Apis::FormsV1::Form] form_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::Form] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::Form]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_form(form_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/forms', options)
          command.request_representation = Google::Apis::FormsV1::Form::Representation
          command.request_object = form_object
          command.response_representation = Google::Apis::FormsV1::Form::Representation
          command.response_class = Google::Apis::FormsV1::Form
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a form.
        # @param [String] form_id
        #   Required. The form ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::Form] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::Form]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_form(form_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/forms/{formId}', options)
          command.response_representation = Google::Apis::FormsV1::Form::Representation
          command.response_class = Google::Apis::FormsV1::Form
          command.params['formId'] = form_id unless form_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get one response from the form.
        # @param [String] form_id
        #   Required. The form ID.
        # @param [String] response_id
        #   Required. The response ID within the form.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::FormResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::FormResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_form_response(form_id, response_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/forms/{formId}/responses/{responseId}', options)
          command.response_representation = Google::Apis::FormsV1::FormResponse::Representation
          command.response_class = Google::Apis::FormsV1::FormResponse
          command.params['formId'] = form_id unless form_id.nil?
          command.params['responseId'] = response_id unless response_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List a form's responses.
        # @param [String] form_id
        #   Required. ID of the Form whose responses to list.
        # @param [String] filter
        #   Which form responses to return. Currently, the only supported filters are: *
        #   timestamp > *N* which means to get all form responses submitted after (but not
        #   at) timestamp *N*. * timestamp >= *N* which means to get all form responses
        #   submitted at and after timestamp *N*. For both supported filters, timestamp
        #   must be formatted in RFC3339 UTC "Zulu" format. Examples: "2014-10-02T15:01:
        #   23Z" and "2014-10-02T15:01:23.045123456Z".
        # @param [Fixnum] page_size
        #   The maximum number of responses to return. The service may return fewer than
        #   this value. If unspecified or zero, at most 5000 responses are returned.
        # @param [String] page_token
        #   A page token returned by a previous list response. If this field is set, the
        #   form and the values of the filter must be the same as for the original request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::ListFormResponsesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::ListFormResponsesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_form_responses(form_id, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/forms/{formId}/responses', options)
          command.response_representation = Google::Apis::FormsV1::ListFormResponsesResponse::Representation
          command.response_class = Google::Apis::FormsV1::ListFormResponsesResponse
          command.params['formId'] = form_id unless form_id.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new watch. If a watch ID is provided, it must be unused. For each
        # invoking project, the per form limit is one watch per Watch.EventType. A watch
        # expires seven days after it is created (see Watch.expire_time).
        # @param [String] form_id
        #   Required. ID of the Form to watch.
        # @param [Google::Apis::FormsV1::CreateWatchRequest] create_watch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::Watch] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::Watch]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_watch(form_id, create_watch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/forms/{formId}/watches', options)
          command.request_representation = Google::Apis::FormsV1::CreateWatchRequest::Representation
          command.request_object = create_watch_request_object
          command.response_representation = Google::Apis::FormsV1::Watch::Representation
          command.response_class = Google::Apis::FormsV1::Watch
          command.params['formId'] = form_id unless form_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a watch.
        # @param [String] form_id
        #   Required. The ID of the Form.
        # @param [String] watch_id
        #   Required. The ID of the Watch to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_form_watch(form_id, watch_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/forms/{formId}/watches/{watchId}', options)
          command.response_representation = Google::Apis::FormsV1::Empty::Representation
          command.response_class = Google::Apis::FormsV1::Empty
          command.params['formId'] = form_id unless form_id.nil?
          command.params['watchId'] = watch_id unless watch_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Return a list of the watches owned by the invoking project. The maximum number
        # of watches is two: For each invoker, the limit is one for each event type per
        # form.
        # @param [String] form_id
        #   Required. ID of the Form whose watches to list.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::ListWatchesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::ListWatchesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_form_watches(form_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/forms/{formId}/watches', options)
          command.response_representation = Google::Apis::FormsV1::ListWatchesResponse::Representation
          command.response_class = Google::Apis::FormsV1::ListWatchesResponse
          command.params['formId'] = form_id unless form_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Renew an existing watch for seven days. The state of the watch after renewal
        # is `ACTIVE`, and the `expire_time` is seven days from the renewal. Renewing a
        # watch in an error state (e.g. `SUSPENDED`) succeeds if the error is no longer
        # present, but fail otherwise. After a watch has expired, RenewWatch returns `
        # NOT_FOUND`.
        # @param [String] form_id
        #   Required. The ID of the Form.
        # @param [String] watch_id
        #   Required. The ID of the Watch to renew.
        # @param [Google::Apis::FormsV1::RenewWatchRequest] renew_watch_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::FormsV1::Watch] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::FormsV1::Watch]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def renew_watch(form_id, watch_id, renew_watch_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/forms/{formId}/watches/{watchId}:renew', options)
          command.request_representation = Google::Apis::FormsV1::RenewWatchRequest::Representation
          command.request_object = renew_watch_request_object
          command.response_representation = Google::Apis::FormsV1::Watch::Representation
          command.response_class = Google::Apis::FormsV1::Watch
          command.params['formId'] = form_id unless form_id.nil?
          command.params['watchId'] = watch_id unless watch_id.nil?
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
