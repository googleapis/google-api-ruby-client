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
    module LoggingV1beta3
      # Google Cloud Logging API
      #
      # The Google Cloud Logging API lets you write log entries and manage your logs,
      #  log sinks and logs-based metrics.
      #
      # @example
      #    require 'google/apis/logging_v1beta3'
      #
      #    Logging = Google::Apis::LoggingV1beta3 # Alias the module
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
        
        # Lists the logs in the project. Only logs that have entries are listed.
        # @param [String] projects_id
        #   Part of `projectName`. The resource name of the project whose logs are
        #   requested. If both `serviceName` and `serviceIndexPrefix` are empty, then all
        #   logs with entries in this project are listed.
        # @param [String] service_name
        #   If not empty, this field must be a log service name such as `"compute.
        #   googleapis.com"`. Only logs associated with that that log service are listed.
        # @param [String] service_index_prefix
        #   The purpose of this field is to restrict the listed logs to those with entries
        #   of a certain kind. If `serviceName` is the name of a log service, then this
        #   field may contain values for the log service's indexes. Only logs that have
        #   entries whose indexes include the values are listed. The format for this field
        #   is `"/val1/val2.../valN"`, where `val1` is a value for the first index, `val2`
        #   for the second index, etc. An empty value (a single slash) for an index
        #   matches all values, and you can omit values for later indexes entirely.
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        # @param [String] page_token
        #   An opaque token, returned as `nextPageToken` by a prior `ListLogs` operation.
        #   If `pageToken` is supplied, then the other fields of this request are ignored,
        #   and instead the previous `ListLogs` operation is continued.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::ListLogsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::ListLogsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_logs(projects_id, service_name: nil, service_index_prefix: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/logs', options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogsResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogsResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['serviceName'] = service_name unless service_name.nil?
          command.query['serviceIndexPrefix'] = service_index_prefix unless service_index_prefix.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log and all its log entries. The log will reappear if it receives
        # new entries.
        # @param [String] projects_id
        #   Part of `logName`. The resource name of the log to be deleted.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_log(projects_id, logs_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta3/projects/{projectsId}/logs/{logsId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::Empty::Representation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Writes log entries to Cloud Logging. Each entry consists of a `LogEntry`
        # object. You must fill in all the fields of the object, including one of the
        # payload fields. You may supply a map, `commonLabels`, that holds default (key,
        # value) data for the `entries[].metadata.labels` map in each entry, saving you
        # the trouble of creating identical copies for each entry.
        # @param [String] projects_id
        #   Part of `logName`. The resource name of the log that will receive the log
        #   entries.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::WriteLogEntriesRequest] write_log_entries_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::WriteLogEntriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::WriteLogEntriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def write_log_entries(projects_id, logs_id, write_log_entries_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta3/projects/{projectsId}/logs/{logsId}/entries:write', options)
          command.request_representation = Google::Apis::LoggingV1beta3::WriteLogEntriesRequest::Representation
          command.request_object = write_log_entries_request_object
          command.response_representation = Google::Apis::LoggingV1beta3::WriteLogEntriesResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::WriteLogEntriesResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log sinks associated with a log.
        # @param [String] projects_id
        #   Part of `logName`. The log whose sinks are wanted. For example, `"compute.
        #   google.com/syslog"`.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::ListLogSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::ListLogSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_log_sinks(projects_id, logs_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks', options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogSinksResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log sink.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the log sink to return.
        # @param [String] logs_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_log_sink(projects_id, logs_id, sinks_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks/{sinksId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log sink. All log entries for a specified log are written to the
        # destination.
        # @param [String] projects_id
        #   Part of `logName`. The resource name of the log to which to the sink is bound.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_log_sink(projects_id, logs_id, log_sink_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log sink. If the sink does not exist, it is created.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the sink to update.
        # @param [String] logs_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_log_sink(projects_id, logs_id, sinks_id, log_sink_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks/{sinksId}', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log sink. After deletion, no new log entries are written to the
        # destination.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the log sink to delete.
        # @param [String] logs_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_log_sink(projects_id, logs_id, sinks_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks/{sinksId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::Empty::Representation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the log services that have log entries in this project.
        # @param [String] projects_id
        #   Part of `projectName`. The resource name of the project whose services are to
        #   be listed.
        # @param [Fixnum] page_size
        #   The maximum number of `LogService` objects to return in one operation.
        # @param [String] page_token
        #   An opaque token, returned as `nextPageToken` by a prior `ListLogServices`
        #   operation. If `pageToken` is supplied, then the other fields of this request
        #   are ignored, and instead the previous `ListLogServices` operation is continued.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::ListLogServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::ListLogServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_log_services(projects_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/logServices', options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogServicesResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogServicesResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the current index values for a log service.
        # @param [String] projects_id
        #   Part of `serviceName`. The resource name of a log service whose service
        #   indexes are requested. Example: `"projects/my-project-id/logServices/appengine.
        #   googleapis.com"`.
        # @param [String] log_services_id
        #   Part of `serviceName`. See documentation of `projectsId`.
        # @param [String] index_prefix
        #   Restricts the index values returned to be those with a specified prefix for
        #   each index key. This field has the form `"/prefix1/prefix2/..."`, in order
        #   corresponding to the `LogService indexKeys`. Non-empty prefixes must begin
        #   with `/`. For example, App Engine's two keys are the module ID and the version
        #   ID. Following is the effect of using various values for `indexPrefix`: + `"/
        #   Mod/"` retrieves `/Mod/10` and `/Mod/11` but not `/ModA/10`. + `"/Mod`
        #   retrieves `/Mod/10`, `/Mod/11` and `/ModA/10` but not `/XXX/33`. + `"/Mod/1"`
        #   retrieves `/Mod/10` and `/Mod/11` but not `/ModA/10`. + `"/Mod/10/"` retrieves
        #   `/Mod/10` only. + An empty prefix or `"/"` retrieves all values.
        # @param [Fixnum] depth
        #   A non-negative integer that limits the number of levels of the index hierarchy
        #   that are returned. If `depth` is 1 (default), only the first index key value
        #   is returned. If `depth` is 2, both primary and secondary key values are
        #   returned. If `depth` is 0, the depth is the number of slash-separators in the `
        #   indexPrefix` field, not counting a slash appearing as the last character of
        #   the prefix. If the `indexPrefix` field is empty, the default depth is 1. It is
        #   an error for `depth` to be any positive value less than the number of
        #   components in `indexPrefix`.
        # @param [Fixnum] page_size
        #   The maximum number of log service index resources to return in one operation.
        # @param [String] page_token
        #   An opaque token, returned as `nextPageToken` by a prior `ListLogServiceIndexes`
        #   operation. If `pageToken` is supplied, then the other fields of this request
        #   are ignored, and instead the previous `ListLogServiceIndexes` operation is
        #   continued.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::ListLogServiceIndexesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::ListLogServiceIndexesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_log_service_indexes(projects_id, log_services_id, index_prefix: nil, depth: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/indexes', options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogServiceIndexesResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogServiceIndexesResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.query['indexPrefix'] = index_prefix unless index_prefix.nil?
          command.query['depth'] = depth unless depth.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists log service sinks associated with a log service.
        # @param [String] projects_id
        #   Part of `serviceName`. The log service whose sinks are wanted.
        # @param [String] log_services_id
        #   Part of `serviceName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::ListLogServiceSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::ListLogServiceSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_log_service_sinks(projects_id, log_services_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks', options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogServiceSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogServiceSinksResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a log service sink.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the log service sink to return.
        # @param [String] log_services_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_log_service_sink(projects_id, log_services_id, sinks_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks/{sinksId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a log service sink. All log entries from a specified log service are
        # written to the destination.
        # @param [String] projects_id
        #   Part of `serviceName`. The resource name of the log service to which the sink
        #   is bound.
        # @param [String] log_services_id
        #   Part of `serviceName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_log_service_sink(projects_id, log_services_id, log_sink_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a log service sink. If the sink does not exist, it is created.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the log service sink to update.
        # @param [String] log_services_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_log_service_sink(projects_id, log_services_id, sinks_id, log_sink_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks/{sinksId}', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a log service sink. After deletion, no new log entries are written to
        # the destination.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the log service sink to delete.
        # @param [String] log_services_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_log_service_sink(projects_id, log_services_id, sinks_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks/{sinksId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::Empty::Representation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists project sinks associated with a project.
        # @param [String] projects_id
        #   Part of `projectName`. The project whose sinks are wanted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::ListSinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::ListSinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_sinks(projects_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/sinks', options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListSinksResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::ListSinksResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a project sink.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the project sink to return.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_sink(projects_id, sinks_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/sinks/{sinksId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a project sink. A logs filter determines which log entries are written
        # to the destination.
        # @param [String] projects_id
        #   Part of `projectName`. The resource name of the project to which the sink is
        #   bound.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_sink(projects_id, log_sink_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta3/projects/{projectsId}/sinks', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a project sink. If the sink does not exist, it is created. The
        # destination, filter, or both may be updated.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the project sink to update.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogSink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogSink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_sink(projects_id, sinks_id, log_sink_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1beta3/projects/{projectsId}/sinks/{sinksId}', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.request_object = log_sink_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogSink::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a project sink. After deletion, no new log entries are written to the
        # destination.
        # @param [String] projects_id
        #   Part of `sinkName`. The resource name of the project sink to delete.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_sink(projects_id, sinks_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta3/projects/{projectsId}/sinks/{sinksId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::Empty::Representation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the logs-based metrics associated with a project.
        # @param [String] projects_id
        #   Part of `projectName`. The resource name for the project whose metrics are
        #   wanted.
        # @param [String] page_token
        #   An opaque token, returned as `nextPageToken` by a prior `ListLogMetrics`
        #   operation. If `pageToken` is supplied, then the other fields of this request
        #   are ignored, and instead the previous `ListLogMetrics` operation is continued.
        # @param [Fixnum] page_size
        #   The maximum number of `LogMetric` objects to return in one operation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::ListLogMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::ListLogMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_metrics(projects_id, page_token: nil, page_size: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/metrics', options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogMetricsResponse::Representation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogMetricsResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a logs-based metric.
        # @param [String] projects_id
        #   Part of `metricName`. The resource name of the desired metric.
        # @param [String] metrics_id
        #   Part of `metricName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_metric(projects_id, metrics_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1beta3/projects/{projectsId}/metrics/{metricsId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogMetric
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['metricsId'] = metrics_id unless metrics_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a logs-based metric.
        # @param [String] projects_id
        #   Part of `projectName`. The resource name of the project in which to create the
        #   metric.
        # @param [Google::Apis::LoggingV1beta3::LogMetric] log_metric_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_metric(projects_id, log_metric_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1beta3/projects/{projectsId}/metrics', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogMetric::Representation
          command.request_object = log_metric_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogMetric
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or updates a logs-based metric.
        # @param [String] projects_id
        #   Part of `metricName`. The resource name of the metric to update.
        # @param [String] metrics_id
        #   Part of `metricName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogMetric] log_metric_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::LogMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::LogMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_metric(projects_id, metrics_id, log_metric_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v1beta3/projects/{projectsId}/metrics/{metricsId}', options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogMetric::Representation
          command.request_object = log_metric_object
          command.response_representation = Google::Apis::LoggingV1beta3::LogMetric::Representation
          command.response_class = Google::Apis::LoggingV1beta3::LogMetric
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['metricsId'] = metrics_id unless metrics_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a logs-based metric.
        # @param [String] projects_id
        #   Part of `metricName`. The resource name of the metric to delete.
        # @param [String] metrics_id
        #   Part of `metricName`. See documentation of `projectsId`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::LoggingV1beta3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::LoggingV1beta3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_metric(projects_id, metrics_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v1beta3/projects/{projectsId}/metrics/{metricsId}', options)
          command.response_representation = Google::Apis::LoggingV1beta3::Empty::Representation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['metricsId'] = metrics_id unless metrics_id.nil?
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
