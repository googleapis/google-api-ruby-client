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
    module CloudtraceV1
      # Google Cloud Trace API
      #
      # The Google Cloud Trace API provides services for reading and writing runtime
      #  trace data for Cloud applications.
      #
      # @example
      #    require 'google/apis/cloudtrace_v1'
      #
      #    Cloudtrace = Google::Apis::CloudtraceV1 # Alias the module
      #    service = Cloudtrace::CloudtraceService.new
      #
      # @see https://cloud.google.com/tools/cloud-trace
      class CloudtraceService < Google::Apis::Core::BaseService
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
        end
        
        # Updates the existing traces specified by PatchTracesRequest and inserts the
        # new traces. Any existing trace or span fields included in an update are
        # overwritten by the update, and any additional fields in an update are merged
        # with the existing trace data.
        # @param [String] project_id
        #   The project id of the trace to patch.
        # @param [Google::Apis::CloudtraceV1::Traces] traces_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_traces(project_id, traces_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v1/projects/{projectId}/traces', options)
          command.request_representation = Google::Apis::CloudtraceV1::Traces::Representation
          command.request_object = traces_object
          command.response_representation = Google::Apis::CloudtraceV1::Empty::Representation
          command.response_class = Google::Apis::CloudtraceV1::Empty
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List traces matching the filter expression.
        # @param [String] project_id
        #   The stringified-version of the project id.
        # @param [String] view
        #   ViewType specifies the projection of the result.
        # @param [Fixnum] page_size
        #   Maximum number of topics to return. If not specified or <= 0, the
        #   implementation will select a reasonable value. The implemenation may always
        #   return fewer than the requested page_size.
        # @param [String] page_token
        #   The token identifying the page of results to return from the ListTraces method.
        #   If present, this value is should be taken from the next_page_token field of a
        #   previous ListTracesResponse.
        # @param [String] start_time
        #   End of the time interval (inclusive).
        # @param [String] end_time
        #   Start of the time interval (exclusive).
        # @param [String] filter
        #   An optional filter for the request.
        # @param [String] order_by
        #   The trace field used to establish the order of traces returned by the
        #   ListTraces method. Possible options are: trace_id name (name field of root
        #   span) duration (different between end_time and start_time fields of root span)
        #   start (start_time field of root span) Descending order can be specified by
        #   appending "desc" to the sort field: name desc Only one sort field is permitted,
        #   though this may change in the future.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV1::ListTracesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV1::ListTracesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_traces(project_id, view: nil, page_size: nil, page_token: nil, start_time: nil, end_time: nil, filter: nil, order_by: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/traces', options)
          command.response_representation = Google::Apis::CloudtraceV1::ListTracesResponse::Representation
          command.response_class = Google::Apis::CloudtraceV1::ListTracesResponse
          command.params['projectId'] = project_id unless project_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets one trace by id.
        # @param [String] project_id
        #   The project id of the trace to return.
        # @param [String] trace_id
        #   The trace id of the trace to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV1::Trace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV1::Trace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_trace(project_id, trace_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/projects/{projectId}/traces/{traceId}', options)
          command.response_representation = Google::Apis::CloudtraceV1::Trace::Representation
          command.response_class = Google::Apis::CloudtraceV1::Trace
          command.params['projectId'] = project_id unless project_id.nil?
          command.params['traceId'] = trace_id unless trace_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a discovery document in the specified `format`. The typeurl in the
        # returned google.protobuf.Any value depends on the requested format.
        # @param [String] format
        #   The format requested for discovery.
        # @param [Array<String>, String] labels
        #   A list of labels (like visibility) influencing the scope of the requested doc.
        # @param [String] version
        #   The API version of the requested discovery doc.
        # @param [Array<String>, String] args
        #   Any additional arguments.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_discovery(format: nil, labels: nil, version: nil, args: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/discovery', options)
          command.query['format'] = format unless format.nil?
          command.query['labels'] = labels unless labels.nil?
          command.query['version'] = version unless version.nil?
          command.query['args'] = args unless args.nil?
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
