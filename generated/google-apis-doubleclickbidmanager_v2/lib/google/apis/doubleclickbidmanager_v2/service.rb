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
    module DoubleclickbidmanagerV2
      # DoubleClick Bid Manager API
      #
      # DoubleClick Bid Manager API allows users to manage and create campaigns and
      #  reports.
      #
      # @example
      #    require 'google/apis/doubleclickbidmanager_v2'
      #
      #    Doubleclickbidmanager = Google::Apis::DoubleclickbidmanagerV2 # Alias the module
      #    service = Doubleclickbidmanager::DoubleClickBidManagerService.new
      #
      # @see https://developers.google.com/bid-manager/
      class DoubleClickBidManagerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://doubleclickbidmanager.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, 'v2/',
                client_name: 'google-apis-doubleclickbidmanager_v2',
                client_version: Google::Apis::DoubleclickbidmanagerV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a query.
        # @param [Google::Apis::DoubleclickbidmanagerV2::Query] query_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV2::Query] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV2::Query]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_query(query_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'queries', options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV2::Query::Representation
          command.request_object = query_object
          command.response_representation = Google::Apis::DoubleclickbidmanagerV2::Query::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV2::Query
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a query as well as the associated reports.
        # @param [Fixnum] query_id
        #   Required. ID of query to delete.
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
        def delete_query(query_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'queries/{queryId}', options)
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a query.
        # @param [Fixnum] query_id
        #   Required. ID of query to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV2::Query] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV2::Query]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_query(query_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'queries/{queryId}', options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV2::Query::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV2::Query
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists queries created by the current user.
        # @param [String] order_by
        #   Name of a field used to order results. The default sorting order is ascending.
        #   To specify descending order for a field, append a " desc" suffix. For example "
        #   metadata.title desc". Sorting is only supported for the following fields: * `
        #   queryId` * `metadata.title`
        # @param [Fixnum] page_size
        #   Maximum number of results per page. Must be between `1` and `100`. Defaults to
        #   `100` if unspecified.
        # @param [String] page_token
        #   A page token, received from a previous list call. Provide this to retrieve the
        #   subsequent page of queries.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV2::ListQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV2::ListQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_queries(order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'queries', options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV2::ListQueriesResponse::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV2::ListQueriesResponse
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs a stored query to generate a report.
        # @param [Fixnum] query_id
        #   Required. ID of query to run.
        # @param [Google::Apis::DoubleclickbidmanagerV2::RunQueryRequest] run_query_request_object
        # @param [Boolean] synchronous
        #   Whether the query should be run synchronously. When true, this method will not
        #   return until the query has finished running. When false or not specified, this
        #   method will return immediately.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV2::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV2::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_query(query_id, run_query_request_object = nil, synchronous: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'queries/{queryId}:run', options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV2::RunQueryRequest::Representation
          command.request_object = run_query_request_object
          command.response_representation = Google::Apis::DoubleclickbidmanagerV2::Report::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV2::Report
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['synchronous'] = synchronous unless synchronous.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a report.
        # @param [Fixnum] query_id
        #   Required. ID of the query the report is associated with.
        # @param [Fixnum] report_id
        #   Required. ID of the report to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV2::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV2::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_query_report(query_id, report_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'queries/{queryId}/reports/{reportId}', options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV2::Report::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV2::Report
          command.params['queryId'] = query_id unless query_id.nil?
          command.params['reportId'] = report_id unless report_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists reports associated with a query.
        # @param [Fixnum] query_id
        #   Required. ID of the query with which the reports are associated.
        # @param [String] order_by
        #   Name of a field used to order results. The default sorting order is ascending.
        #   To specify descending order for a field, append a " desc" suffix. For example "
        #   key.reportId desc". Sorting is only supported for the following fields: * `key.
        #   reportId`
        # @param [Fixnum] page_size
        #   Maximum number of results per page. Must be between `1` and `100`. Defaults to
        #   `100` if unspecified.
        # @param [String] page_token
        #   A page token, received from a previous list call. Provide this to retrieve the
        #   subsequent page of reports.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV2::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV2::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_query_reports(query_id, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'queries/{queryId}/reports', options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV2::ListReportsResponse::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV2::ListReportsResponse
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
