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
    module LoggingV2beta1
      # Stackdriver Logging API
      #
      # Writes log entries and manages your Stackdriver Logging configuration.
      #
      # @example
      #    require 'google/apis/logging_v2beta1'
      #
      #    Logging = Google::Apis::LoggingV2beta1 # Alias the module
      #    service = Logging::LoggingService.new
      #
      # @see https://cloud.google.com/logging/docs/
      class LoggingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://logging.googleapis.com/', '')
        end
        
        # Creates or updates a logs-based metric.
        # @param [String] metric_name
        #   The resource name of the metric to update.
        #   Example: `"projects/my-project-id/metrics/my-metric-id"`.
        #   The updated metric must be provided in the request and have the
        #   same identifier that is specified in `metricName`.
        #   If the metric does not exist, it is created.
        # @param [Google::Apis::LoggingV2beta1::LogMetric] log_metric_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_metric(metric_name, log_metric_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/{+metricName}', options)
          command.request_representation = Google::Apis::LoggingV2beta1::LogMetric::Representation
          command.request_object = log_metric_object
          command.response_representation = Google::Apis::LoggingV2beta1::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV2beta1::LogMetric
          command.params['metricName'] = metric_name unless metric_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a logs-based metric.
        # @param [String] metric_name
        #   The resource name of the desired metric.
        #   Example: `"projects/my-project-id/metrics/my-metric-id"`.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_metric(metric_name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+metricName}', options)
          command.response_representation = Google::Apis::LoggingV2beta1::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV2beta1::LogMetric
          command.params['metricName'] = metric_name unless metric_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a logs-based metric.
        # @param [String] parent
        #   The resource name of the project in which to create the metric.
        #   Example: `"projects/my-project-id"`.
        #   The new metric must be provided in the request.
        # @param [Google::Apis::LoggingV2beta1::LogMetric] log_metric_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_metric(parent, log_metric_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/{+parent}/metrics', options)
          command.request_representation = Google::Apis::LoggingV2beta1::LogMetric::Representation
          command.request_object = log_metric_object
          command.response_representation = Google::Apis::LoggingV2beta1::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV2beta1::LogMetric
          command.params['parent'] = parent unless parent.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists logs-based metrics.
        # @param [String] parent
        #   Required. The resource name containing the metrics.
        #   Example: `"projects/my-project-id"`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        #   Non-positive values are ignored.  The presence of `nextPageToken` in the
        #   response indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method.  `pageToken` must be the value of
        #   `nextPageToken` from the previous response.  The values of other method
        #   parameters should be identical to those in the previous call.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::ListLogMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::ListLogMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_metrics(parent, page_size: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+parent}/metrics', options)
          command.response_representation = Google::Apis::LoggingV2beta1::ListLogMetricsResponse::Representation
          command.response_class = Google::Apis::LoggingV2beta1::ListLogMetricsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a logs-based metric.
        # @param [String] metric_name
        #   The resource name of the metric to delete.
        #   Example: `"projects/my-project-id/metrics/my-metric-id"`.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_metric(metric_name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/{+metricName}', options)
          command.response_representation = Google::Apis::LoggingV2beta1::Empty::Representation
          command.response_class = Google::Apis::LoggingV2beta1::Empty
          command.params['metricName'] = metric_name unless metric_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log and all its log entries.
        # The log will reappear if it receives new entries.
        # @param [String] log_name
        #   Required. The resource name of the log to delete.  Example:
        #   `"projects/my-project/logs/syslog"`.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_log(log_name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2beta1::Empty::Representation
          command.response_class = Google::Apis::LoggingV2beta1::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates or creates a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink to update, including the parent
        #   resource and the sink identifier.  If the sink does not exist, this method
        #   creates the sink.  Example: `"projects/my-project-id/sinks/my-sink-id"`.
        # @param [Google::Apis::LoggingV2beta1::LogSink] log_sink_object
        # @param [Boolean] unique_writer_identity
        #   Optional. Whether the sink will have a dedicated service account returned
        #   in the sink's writer_identity. Set this field to be true to export
        #   logs from one project to a different project. This field is ignored for
        #   non-project sinks (e.g. organization sinks) because those sinks are
        #   required to have dedicated service accounts.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_sink(sink_name, log_sink_object = nil, unique_writer_identity: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2beta1/{+sinkName}', options)
          command.request_representation = Google::Apis::LoggingV2beta1::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2beta1::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2beta1::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink to return.
        #   Example: `"projects/my-project-id/sinks/my-sink-id"`.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_sink(sink_name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2beta1::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2beta1::LogSink
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a sink.
        # @param [String] parent
        #   Required. The resource in which to create the sink.
        #   Example: `"projects/my-project-id"`.
        #   The new sink must be provided in the request.
        # @param [Google::Apis::LoggingV2beta1::LogSink] log_sink_object
        # @param [Boolean] unique_writer_identity
        #   Optional. Whether the sink will have a dedicated service account returned
        #   in the sink's writer_identity. Set this field to be true to export
        #   logs from one project to a different project. This field is ignored for
        #   non-project sinks (e.g. organization sinks) because those sinks are
        #   required to have dedicated service accounts.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_sink(parent, log_sink_object = nil, unique_writer_identity: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/{+parent}/sinks', options)
          command.request_representation = Google::Apis::LoggingV2beta1::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV2beta1::LogSink::Representation
          command.response_class = Google::Apis::LoggingV2beta1::LogSink
          command.params['parent'] = parent unless parent.nil?
          command.query['uniqueWriterIdentity'] = unique_writer_identity unless unique_writer_identity.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sinks.
        # @param [String] parent
        #   Required. The resource name where this sink was created.
        #   Example: `"projects/my-logging-project"`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        #   Non-positive values are ignored.  The presence of `nextPageToken` in the
        #   response indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method.  `pageToken` must be the value of
        #   `nextPageToken` from the previous response.  The values of other method
        #   parameters should be identical to those in the previous call.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::ListSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::ListSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_sinks(parent, page_size: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/{+parent}/sinks', options)
          command.response_representation = Google::Apis::LoggingV2beta1::ListSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV2beta1::ListSinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sink.
        # @param [String] sink_name
        #   Required. The resource name of the sink to delete, including the parent
        #   resource and the sink identifier.  Example:
        #   `"projects/my-project-id/sinks/my-sink-id"`.  It is an error if the sink
        #   does not exist.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_sink(sink_name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/{+sinkName}', options)
          command.response_representation = Google::Apis::LoggingV2beta1::Empty::Representation
          command.response_class = Google::Apis::LoggingV2beta1::Empty
          command.params['sinkName'] = sink_name unless sink_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log and all its log entries.
        # The log will reappear if it receives new entries.
        # @param [String] log_name
        #   Required. The resource name of the log to delete.  Example:
        #   `"projects/my-project/logs/syslog"`.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_log(log_name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2beta1::Empty::Representation
          command.response_class = Google::Apis::LoggingV2beta1::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes log entries to Stackdriver Logging.  All log entries are
        # written by this method.
        # @param [Google::Apis::LoggingV2beta1::WriteLogEntriesRequest] write_log_entries_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::WriteLogEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::WriteLogEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_entry_log_entries(write_log_entries_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/entries:write', options)
          command.request_representation = Google::Apis::LoggingV2beta1::WriteLogEntriesRequest::Representation
          command.request_object = write_log_entries_request_object
          command.response_representation = Google::Apis::LoggingV2beta1::WriteLogEntriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2beta1::WriteLogEntriesResponse
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log entries.  Use this method to retrieve log entries from Cloud
        # Logging.  For ways to export log entries, see
        # [Exporting Logs](/logging/docs/export).
        # @param [Google::Apis::LoggingV2beta1::ListLogEntriesRequest] list_log_entries_request_object
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::ListLogEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::ListLogEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_entry_log_entries(list_log_entries_request_object = nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2beta1/entries:list', options)
          command.request_representation = Google::Apis::LoggingV2beta1::ListLogEntriesRequest::Representation
          command.request_object = list_log_entries_request_object
          command.response_representation = Google::Apis::LoggingV2beta1::ListLogEntriesResponse::Representation
          command.response_class = Google::Apis::LoggingV2beta1::ListLogEntriesResponse
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the monitored resource descriptors used by Stackdriver Logging.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of results to return from this request.
        #   Non-positive values are ignored.  The presence of `nextPageToken` in the
        #   response indicates that more results might be available.
        # @param [String] page_token
        #   Optional. If present, then retrieve the next batch of results from the
        #   preceding call to this method.  `pageToken` must be the value of
        #   `nextPageToken` from the previous response.  The values of other method
        #   parameters should be identical to those in the previous call.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::ListMonitoredResourceDescriptorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::ListMonitoredResourceDescriptorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_monitored_resource_descriptors(page_size: nil, page_token: nil, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2beta1/monitoredResourceDescriptors', options)
          command.response_representation = Google::Apis::LoggingV2beta1::ListMonitoredResourceDescriptorsResponse::Representation
          command.response_class = Google::Apis::LoggingV2beta1::ListMonitoredResourceDescriptorsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log and all its log entries.
        # The log will reappear if it receives new entries.
        # @param [String] log_name
        #   Required. The resource name of the log to delete.  Example:
        #   `"projects/my-project/logs/syslog"`.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV2beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV2beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_billing_account_log(log_name, quota_user: nil, fields: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2beta1/{+logName}', options)
          command.response_representation = Google::Apis::LoggingV2beta1::Empty::Representation
          command.response_class = Google::Apis::LoggingV2beta1::Empty
          command.params['logName'] = log_name unless log_name.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['fields'] = fields unless fields.nil?
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
