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
    module CloudtraceV2beta1
      # Cloud Trace API
      #
      # Sends application trace data to Cloud Trace for viewing. Trace data is
      #  collected for all App Engine applications by default. Trace data from other
      #  applications can be provided using this API. This library is used to interact
      #  with the Cloud Trace API directly. If you are looking to instrument your
      #  application for Cloud Trace, we recommend using OpenCensus.
      #
      # @example
      #    require 'google/apis/cloudtrace_v2beta1'
      #
      #    Cloudtrace = Google::Apis::CloudtraceV2beta1 # Alias the module
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
        
        # Creates a sink that exports trace spans to a destination. The export of newly-
        # ingested traces begins immediately, unless the sink's `writer_identity` is not
        # permitted to write to the destination. A sink can export traces only from the
        # resource owning the sink (the 'parent').
        # @param [String] parent
        #   Required. The resource in which to create the sink (currently only project
        #   sinks are supported): "projects/[PROJECT_ID]" Examples: `"projects/my-trace-
        #   project"`, `"projects/123456789"`.
        # @param [Google::Apis::CloudtraceV2beta1::TraceSink] trace_sink_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2beta1::TraceSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2beta1::TraceSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_trace_sink(parent, trace_sink_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2beta1/{+parent}/traceSinks', options)
          command.request_representation = Google::Apis::CloudtraceV2beta1::TraceSink::Representation
          command.request_object = trace_sink_object
          command.response_representation = Google::Apis::CloudtraceV2beta1::TraceSink::Representation
          command.response_class = Google::Apis::CloudtraceV2beta1::TraceSink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sink.
        # @param [String] name
        #   Required. The full resource name of the sink to delete, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_NUMBER]/traceSinks/[
        #   SINK_ID]" Example: `"projects/12345/traceSinks/my-sink-id"`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_trace_sink(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudtraceV2beta1::Empty::Representation
          command.response_class = Google::Apis::CloudtraceV2beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a trace sink by name under the parent resource (GCP project).
        # @param [String] name
        #   Required. The resource name of the sink: "projects/[PROJECT_NUMBER]/traceSinks/
        #   [SINK_ID]" Example: `"projects/12345/traceSinks/my-sink-id"`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2beta1::TraceSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2beta1::TraceSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_trace_sink(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+name}', options)
          command.response_representation = Google::Apis::CloudtraceV2beta1::TraceSink::Representation
          command.response_class = Google::Apis::CloudtraceV2beta1::TraceSink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all sinks for the parent resource (GCP project).
        # @param [String] parent
        #   Required. The parent resource whose sinks are to be listed (currently only
        #   project parent resources are supported): "projects/[PROJECT_ID]"
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request. Non-
        #   positive values are ignored. The presence of `nextPageToken` in the response
        #   indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method. `pageToken` must be the value of `nextPageToken`
        #   from the previous response. The values of other method parameters should be
        #   identical to those in the previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2beta1::ListTraceSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2beta1::ListTraceSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_trace_sinks(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2beta1/{+parent}/traceSinks', options)
          command.response_representation = Google::Apis::CloudtraceV2beta1::ListTraceSinksResponse::Representation
          command.response_class = Google::Apis::CloudtraceV2beta1::ListTraceSinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a sink. This method updates fields in the existing sink according to
        # the provided update mask. The sink's name cannot be changed nor any output-
        # only fields (e.g. the writer_identity).
        # @param [String] name
        #   Required. The full resource name of the sink to update, including the parent
        #   resource and the sink identifier: "projects/[PROJECT_NUMBER]/traceSinks/[
        #   SINK_ID]" Example: `"projects/12345/traceSinks/my-sink-id"`.
        # @param [Google::Apis::CloudtraceV2beta1::TraceSink] trace_sink_object
        # @param [String] update_mask
        #   Required. Field mask that specifies the fields in `trace_sink` that are to be
        #   updated. A sink field is overwritten if, and only if, it is in the update mask.
        #   `name` and `writer_identity` fields cannot be updated. An empty updateMask is
        #   considered an error. For a detailed `FieldMask` definition, see https://
        #   developers.google.com/protocol-buffers/docs/reference/google.protobuf#
        #   fieldmask Example: `updateMask=output_config`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudtraceV2beta1::TraceSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudtraceV2beta1::TraceSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_trace_sink(name, trace_sink_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2beta1/{+name}', options)
          command.request_representation = Google::Apis::CloudtraceV2beta1::TraceSink::Representation
          command.request_object = trace_sink_object
          command.response_representation = Google::Apis::CloudtraceV2beta1::TraceSink::Representation
          command.response_class = Google::Apis::CloudtraceV2beta1::TraceSink
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
