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
    module CloudtraceV2
      # Stackdriver Trace API
      #
      # Send and retrieve trace data from Stackdriver Trace. Data is generated and
      #  available by default for all App Engine applications. Data from other
      #  applications can be written to Stackdriver Trace for display, reporting, and
      #  analysis.
      #
      # @example
      #    require 'google/apis/cloudtrace_v2'
      #
      #    Cloudtrace = Google::Apis::CloudtraceV2 # Alias the module
      #    service = Cloudtrace::CloudTraceService.new
      #
      # @see https://cloud.google.com/trace
      class CloudTraceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudtrace.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Sends new spans to Stackdriver Trace or updates existing traces. If the
        # name of a trace that you send matches that of an existing trace, new spans
        # are added to the existing trace. Attempt to update existing spans results
        # undefined behavior. If the name does not match, a new trace is created
        # with given set of spans.
        # @param [String] name
        #   Required. Name of the project where the spans belong. The format is
        #   `projects/PROJECT_ID`.
        # @param [Google::Apis::CloudtraceV2::BatchWriteSpansRequest] batch_write_spans_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_trace_write_spans(name, batch_write_spans_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2/{+name}/traces:batchWrite', options)
          command.request_representation = Google::Apis::CloudtraceV2::BatchWriteSpansRequest::Representation
          command.request_object = batch_write_spans_request_object
          command.response_representation = Google::Apis::CloudtraceV2::Empty::Representation
          command.response_class = Google::Apis::CloudtraceV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns of a list of traces that match the specified filter conditions.
        # @param [String] parent
        #   Required. The project where the trace data is stored. The format
        #   is `projects/PROJECT_ID`.
        # @param [String] end_time
        #   Optional. Do not return traces whose start time is later than this time.
        # @param [String] filter
        #   Opional. Return only traces that match this
        #   [trace filter](/trace/docs/trace-filters). Example:
        #   "label:/http/url root:/_ah/background my_label:17"
        # @param [String] order_by
        #   Optional. A single field used to sort the returned traces.
        #   Only the following field names can be used:
        #   *   `trace_id`: the trace's ID field
        #   *   `name`:  the root span's resource name
        #   *   `duration`: the difference between the root span's start time and end time
        #   *   `start`:  the start time of the root span
        #   Sorting is in ascending order unless `desc` is appended to the sort field name.
        #   Example: `"name desc"`).
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        #   Non-positive values are ignored. The presence of `next_page_token` in the
        #   response indicates that more results might be available, even if fewer than
        #   the maximum number of results is returned by this request.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method.  `page_token` must be the value of
        #   `next_page_token` from the previous response.  The values of other method
        #   parameters should be identical to those in the previous call.
        # @param [String] start_time
        #   Optional. Do not return traces whose end time is earlier than this time.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2::ListTracesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2::ListTracesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_traces(parent, end_time: nil, filter: nil, order_by: nil, page_size: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/{+parent}/traces', options)
          command.response_representation = Google::Apis::CloudtraceV2::ListTracesResponse::Representation
          command.response_class = Google::Apis::CloudtraceV2::ListTracesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of spans within a trace.
        # @param [String] parent
        #   Required: The resource name of the trace containing the spans to list.
        #   The format is `projects/PROJECT_ID/traces/TRACE_ID`.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. `page_token` must be the value of
        #   `next_page_token` from the previous response. The values of other method
        #   parameters should be identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2::ListSpansResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2::ListSpansResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_trace_spans(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/{+parent}:listSpans', options)
          command.response_representation = Google::Apis::CloudtraceV2::ListSpansResponse::Representation
          command.response_class = Google::Apis::CloudtraceV2::ListSpansResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Span.
        # @param [String] name
        #   The resource name of the span in the following format:
        #   projects/[PROJECT_ID]traces/[TRACE_ID]/spans/SPAN_ID is a unique
        #   identifier for a trace within a project.
        #   [SPAN_ID] is a unique identifier for a span within a trace,
        #   assigned when the span is created.
        # @param [Google::Apis::CloudtraceV2::Span] span_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2::Span] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2::Span]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_trace_span(name, span_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2/{+name}', options)
          command.request_representation = Google::Apis::CloudtraceV2::Span::Representation
          command.request_object = span_object
          command.response_representation = Google::Apis::CloudtraceV2::Span::Representation
          command.response_class = Google::Apis::CloudtraceV2::Span
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
