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
      # Google Cloud Logging API lets you create logs, ingest log entries, and manage
      #  log sinks.
      #
      # @example
      #    require 'google/apis/logging_v1beta3'
      #
      #    Logging = Google::Apis::LoggingV1beta3 # Alias the module
      #    service = Logging::LoggingService.new
      #
      # @see 
      class LoggingService < Google::Apis::Core::BaseService

        # @return [String]
        #  OAuth access token.
        attr_accessor :access_token

        # @return [String]
        #  OAuth bearer token.
        attr_accessor :bearer_token

        # @return [String]
        #  JSONP
        attr_accessor :callback

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [Boolean]
        #  Pretty-print response.
        attr_accessor :pp

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        # @return [String]
        #  V1 error format.
        attr_accessor :__xgafv

        def initialize
          super('https://logging.googleapis.com/', '')
        end

        # Lists log resources belonging to the specified project.
        # @param [String] projects_id
        #   Part of `projectName`. The project name for which to list the log resources.
        # @param [String] service_name
        #   A service name for which to list logs. Only logs containing entries whose
        #   metadata includes this service name are returned. If `serviceName` and `
        #   serviceIndexPrefix` are both empty, then all log names are returned. To list
        #   all log names, regardless of service, leave both the `serviceName` and `
        #   serviceIndexPrefix` empty. To list log names containing entries with a
        #   particular service name (or explicitly empty service name) set `serviceName`
        #   to the desired value and `serviceIndexPrefix` to `"/"`.
        # @param [String] service_index_prefix
        #   A log service index prefix for which to list logs. Only logs containing
        #   entries whose metadata that includes these label values (associated with index
        #   keys) are returned. The prefix is a slash separated list of values, and need
        #   not specify all index labels. An empty index (or a single slash) matches all
        #   log service indexes.
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        # @param [String] page_token
        #   An opaque token, returned as `nextPageToken` by a prior `ListLogs` operation.
        #   If `pageToken` is supplied, then the other fields of this request are ignored,
        #   and instead the previous `ListLogs` operation is continued.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def list_project_logs(projects_id, service_name: nil, service_index_prefix: nil, page_size: nil, page_token: nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogsResponseRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogsResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['serviceName'] = service_name unless service_name.nil?
          command.query['serviceIndexPrefix'] = service_index_prefix unless service_index_prefix.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified log resource and all log entries contained in it.
        # @param [String] projects_id
        #   Part of `logName`. The log resource to delete.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def delete_project_log(projects_id, logs_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs/{logsId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::EmptyRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates one or more log entries in a log. You must supply a list of `LogEntry`
        # objects, named `entries`. Each `LogEntry` object must contain a payload object
        # and a `LogEntryMetadata` object that describes the entry. You must fill in all
        # the fields of the entry, metadata, and payload. You can also supply a map, `
        # commonLabels`, that supplies default (key, value) data for the `entries[].
        # metadata.labels` maps, saving you the trouble of creating identical copies for
        # each entry.
        # @param [String] projects_id
        #   Part of `logName`. The name of the log resource into which to insert the log
        #   entries.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::WriteLogEntriesRequest] write_log_entries_request
        #   
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def write_log_entries(projects_id, logs_id, write_log_entries_request = nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs/{logsId}/entries:write'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::LoggingV1beta3::WriteLogEntriesRequestRepresentation
          command.request_object = write_log_entries_request
          command.response_representation = Google::Apis::LoggingV1beta3::WriteLogEntriesResponseRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::WriteLogEntriesResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Lists log sinks associated with the specified log.
        # @param [String] projects_id
        #   Part of `logName`. The log for which to list sinks.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def list_project_log_sinks(projects_id, logs_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogSinksResponseRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogSinksResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the specified log sink resource.
        # @param [String] projects_id
        #   Part of `sinkName`. The name of the sink resource to return.
        # @param [String] logs_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def get_project_log_sink(projects_id, logs_id, sinks_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks/{sinksId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates the specified log sink resource.
        # @param [String] projects_id
        #   Part of `logName`. The log in which to create a sink resource.
        # @param [String] logs_id
        #   Part of `logName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink
        #   
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def create_project_log_sink(projects_id, logs_id, log_sink = nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.request_object = log_sink
          command.response_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates or updates the specified log sink resource.
        # @param [String] projects_id
        #   Part of `sinkName`. The name of the sink to update.
        # @param [String] logs_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink
        #   
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def update_project_log_sink(projects_id, logs_id, sinks_id, log_sink = nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks/{sinksId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.request_object = log_sink
          command.response_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified log sink resource.
        # @param [String] projects_id
        #   Part of `sinkName`. The name of the sink to delete.
        # @param [String] logs_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def delete_project_log_sink(projects_id, logs_id, sinks_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logs/{logsId}/sinks/{sinksId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::EmptyRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logsId'] = logs_id unless logs_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        
        # Lists log services associated with log entries ingested for a project.
        # @param [String] projects_id
        #   Part of `projectName`. The project resource whose services are to be listed.
        # @param [String] log
        #   The name of the log resource whose services are to be listed. log for which to
        #   list services. When empty, all services are listed.
        # @param [Fixnum] page_size
        #   The maximum number of `LogService` objects to return in one operation.
        # @param [String] page_token
        #   An opaque token, returned as `nextPageToken` by a prior `ListLogServices`
        #   operation. If `pageToken` is supplied, then the other fields of this request
        #   are ignored, and instead the previous `ListLogServices` operation is continued.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def list_project_log_services(projects_id, log: nil, page_size: nil, page_token: nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logServices'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogServicesResponseRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogServicesResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.query['log'] = log unless log.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Lists log service indexes associated with a log service.
        # @param [String] projects_id
        #   Part of `serviceName`. A log service resource of the form `/projects/*/
        #   logServices/*`. The service indexes of the log service are returned. Example: `
        #   "/projects/myProj/logServices/appengine.googleapis.com"`.
        # @param [String] log_services_id
        #   Part of `serviceName`. See documentation of `projectsId`.
        # @param [String] index_prefix
        #   Restricts the indexes returned to be those with a specified prefix. The prefix
        #   has the form `"/label_value/label_value/..."`, in order corresponding to the [`
        #   LogService indexKeys`][google.logging.v1.LogService.index_keys]. Non-empty
        #   prefixes must begin with `/` . Example prefixes: + `"/myModule/"` retrieves
        #   App Engine versions associated with `myModule`. The trailing slash terminates
        #   the value. + `"/myModule"` retrieves App Engine modules with names beginning
        #   with `myModule`. + `""` retrieves all indexes.
        # @param [Fixnum] depth
        #   A limit to the number of levels of the index hierarchy that are expanded. If `
        #   depth` is 0, it defaults to the level specified by the prefix field (the
        #   number of slash separators). The default empty prefix implies a `depth` of 1.
        #   It is an error for `depth` to be any non-zero value less than the number of
        #   components in `indexPrefix`.
        # @param [String] log
        #   A log resource like `/projects/project_id/logs/log_name`, identifying the log
        #   for which to list service indexes.
        # @param [Fixnum] page_size
        #   The maximum number of log service index resources to return in one operation.
        # @param [String] page_token
        #   An opaque token, returned as `nextPageToken` by a prior `ListLogServiceIndexes`
        #   operation. If `pageToken` is supplied, then the other fields of this request
        #   are ignored, and instead the previous `ListLogServiceIndexes` operation is
        #   continued.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def list_project_log_service_indexes(projects_id, log_services_id, index_prefix: nil, depth: nil, log: nil, page_size: nil, page_token: nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/indexes'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogServiceIndexesResponseRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogServiceIndexesResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.query['indexPrefix'] = index_prefix unless index_prefix.nil?
          command.query['depth'] = depth unless depth.nil?
          command.query['log'] = log unless log.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        
        # Lists log service sinks associated with the specified service.
        # @param [String] projects_id
        #   Part of `serviceName`. The name of the service for which to list sinks.
        # @param [String] log_services_id
        #   Part of `serviceName`. See documentation of `projectsId`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def list_project_log_service_sinks(projects_id, log_services_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::ListLogServiceSinksResponseRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::ListLogServiceSinksResponse
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Gets the specified log service sink resource.
        # @param [String] projects_id
        #   Part of `sinkName`. The name of the sink to return.
        # @param [String] log_services_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def get_project_log_service_sink(projects_id, log_services_id, sinks_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks/{sinksId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates the specified log service sink resource.
        # @param [String] projects_id
        #   Part of `serviceName`. The name of the service in which to create a sink.
        # @param [String] log_services_id
        #   Part of `serviceName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink
        #   
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def create_project_log_service_sink(projects_id, log_services_id, log_sink = nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks'
          command =  make_simple_command(:post, path, options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.request_object = log_sink
          command.response_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Creates or update the specified log service sink resource.
        # @param [String] projects_id
        #   Part of `sinkName`. The name of the sink to update.
        # @param [String] log_services_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [Google::Apis::LoggingV1beta3::LogSink] log_sink
        #   
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def update_project_log_service_sink(projects_id, log_services_id, sinks_id, log_sink = nil, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks/{sinksId}'
          command =  make_simple_command(:put, path, options)
          command.request_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.request_object = log_sink
          command.response_representation = Google::Apis::LoggingV1beta3::LogSinkRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::LogSink
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end
        
        
        # Deletes the specified log service sink.
        # @param [String] projects_id
        #   Part of `sinkName`. The name of the sink to delete.
        # @param [String] log_services_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] sinks_id
        #   Part of `sinkName`. See documentation of `projectsId`.
        # @param [String] access_token
        #   OAuth access token.
        # @param [String] bearer_token
        #   OAuth bearer token.
        # @param [String] callback
        #   JSONP
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [Boolean] pp
        #   Pretty-print response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [String] __xgafv
        #   V1 error format.
        # @param [Google::Api::RequestOptions] options
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
        def delete_project_log_service_sink(projects_id, log_services_id, sinks_id, access_token: nil, bearer_token: nil, callback: nil, fields: nil, pp: nil, quota_user: nil, __xgafv: nil, options: nil, &block)
          path = 'v1beta3/projects/{projectsId}/logServices/{logServicesId}/sinks/{sinksId}'
          command =  make_simple_command(:delete, path, options)
          command.response_representation = Google::Apis::LoggingV1beta3::EmptyRepresentation
          command.response_class = Google::Apis::LoggingV1beta3::Empty
          command.params['projectsId'] = projects_id unless projects_id.nil?
          command.params['logServicesId'] = log_services_id unless log_services_id.nil?
          command.params['sinksId'] = sinks_id unless sinks_id.nil?
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['access_token'] = access_token unless access_token.nil?
          command.query['bearer_token'] = bearer_token unless bearer_token.nil?
          command.query['callback'] = callback unless callback.nil?
          command.query['key'] = key unless key.nil?
          command.query['pp'] = pp unless pp.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['$.xgafv'] = __xgafv unless __xgafv.nil?
        end
      end
    end
  end
end
