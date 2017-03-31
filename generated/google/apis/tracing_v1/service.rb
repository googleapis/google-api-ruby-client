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
    module TracingV1
      # Google Tracing API
      #
      # Send and retrieve trace data from Google Stackdriver Trace.
      #
      # @example
      #    require 'google/apis/tracing_v1'
      #
      #    Tracing = Google::Apis::TracingV1 # Alias the module
      #    service = Tracing::TracingService.new
      #
      # @see https://cloud.google.com/trace
      class TracingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://tracing.googleapis.com/', '')
        end
        
        # Returns a list of spans within a trace.
        # @param [String] name
        #   ID of the trace for which to list child spans. Format is
        #   `projects/PROJECT_ID/traces/TRACE_ID`.
        # @param [String] page_token
        #   Token identifying the page of results to return. If provided, use the
        #   value of the `nextPageToken` field from a previous request. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TracingV1::ListSpansResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TracingV1::ListSpansResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_trace_spans(name, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}:listSpans', options)
          command.response_representation = Google::Apis::TracingV1::ListSpansResponse::Representation
          command.response_class = Google::Apis::TracingV1::ListSpansResponse
          command.params['name'] = name unless name.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns of a list of traces that match the specified filter conditions.
        # @param [String] parent
        #   ID of the Cloud project where the trace data is stored.
        # @param [String] filter
        #   An optional filter for the request.
        #   Example:
        #   `version_label_key:a some_label:some_label_key`
        #   returns traces from version `a` and has `some_label` with `some_label_key`.
        # @param [String] end_time
        #   End of the time interval (inclusive) during which the trace data was
        #   collected from the application.
        # @param [String] page_token
        #   Token identifying the page of results to return. If provided, use the
        #   value of the `next_page_token` field from a previous request. Optional.
        # @param [String] start_time
        #   Start of the time interval (inclusive) during which the trace data was
        #   collected from the application.
        # @param [Fixnum] page_size
        #   Maximum number of traces to return. If not specified or <= 0, the
        #   implementation selects a reasonable value. The implementation may
        #   return fewer traces than the requested page size. Optional.
        # @param [String] order_by
        #   Field used to sort the returned traces. Optional.
        #   Can be one of the following:
        #   *   `trace_id`
        #   *   `name` (`name` field of root span in the trace)
        #   *   `duration` (difference between `end_time` and `start_time` fields of
        #   the root span)
        #   *   `start` (`start_time` field of the root span)
        #   Descending order can be specified by appending `desc` to the sort field
        #   (for example, `name desc`).
        #   Only one sort field is permitted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TracingV1::ListTracesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TracingV1::ListTracesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_traces(parent, filter: nil, end_time: nil, page_token: nil, start_time: nil, page_size: nil, order_by: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+parent}/traces', options)
          command.response_representation = Google::Apis::TracingV1::ListTracesResponse::Representation
          command.response_class = Google::Apis::TracingV1::ListTracesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a specific trace.
        # @param [String] name
        #   ID of the trace. Format is `projects/PROJECT_ID/traces/TRACE_ID`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TracingV1::Trace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TracingV1::Trace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_trace(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::TracingV1::Trace::Representation
          command.response_class = Google::Apis::TracingV1::Trace
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends new spans to Stackdriver Trace or updates existing spans. If the
        # name of a trace that you send matches that of an existing trace, any fields
        # in the existing trace and its spans are overwritten by the provided values,
        # and any new fields provided are merged with the existing trace data. If the
        # name does not match, a new trace is created with given set of spans.
        # @param [String] parent
        #   ID of the Cloud project where the trace data is stored.
        # @param [Google::Apis::TracingV1::BatchUpdateSpansRequest] batch_update_spans_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::TracingV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::TracingV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_trace_update_spans(parent, batch_update_spans_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/{+parent}/traces:batchUpdate', options)
          command.request_representation = Google::Apis::TracingV1::BatchUpdateSpansRequest::Representation
          command.request_object = batch_update_spans_request_object
          command.response_representation = Google::Apis::TracingV1::Empty::Representation
          command.response_class = Google::Apis::TracingV1::Empty
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
