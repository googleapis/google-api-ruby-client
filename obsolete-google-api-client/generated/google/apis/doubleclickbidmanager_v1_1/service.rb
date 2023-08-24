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
    module DoubleclickbidmanagerV1_1
      # DoubleClick Bid Manager API
      #
      # DoubleClick Bid Manager API allows users to manage and create campaigns and
      #  reports.
      #
      # @example
      #    require 'google/apis/doubleclickbidmanager_v1_1'
      #
      #    Doubleclickbidmanager = Google::Apis::DoubleclickbidmanagerV1_1 # Alias the module
      #    service = Doubleclickbidmanager::DoubleClickBidManagerService.new
      #
      # @see https://developers.google.com/bid-manager/
      class DoubleClickBidManagerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://doubleclickbidmanager.googleapis.com/', 'doubleclickbidmanager/v1.1/')
          @batch_path = 'batch'
        end
        
        # Retrieves line items in CSV format. YouTube & partners line items are not
        # supported.
        # @param [Google::Apis::DoubleclickbidmanagerV1_1::DownloadLineItemsRequest] download_line_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1_1::DownloadLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1_1::DownloadLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def downloadlineitems_lineitem(download_line_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'lineitems/downloadlineitems', options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1_1::DownloadLineItemsRequest::Representation
          command.request_object = download_line_items_request_object
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1_1::DownloadLineItemsResponse::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1_1::DownloadLineItemsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads line items in CSV format. YouTube & partners line items are not
        # supported.
        # @param [Google::Apis::DoubleclickbidmanagerV1_1::UploadLineItemsRequest] upload_line_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1_1::UploadLineItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1_1::UploadLineItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def uploadlineitems_lineitem(upload_line_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'lineitems/uploadlineitems', options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1_1::UploadLineItemsRequest::Representation
          command.request_object = upload_line_items_request_object
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1_1::UploadLineItemsResponse::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1_1::UploadLineItemsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a query.
        # @param [Google::Apis::DoubleclickbidmanagerV1_1::Query] query_object
        # @param [Boolean] asynchronous
        #   If true, tries to run the query asynchronously. Only applicable when the
        #   frequency is ONE_TIME.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1_1::Query] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1_1::Query]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def createquery_query(query_object = nil, asynchronous: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'query', options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1_1::Query::Representation
          command.request_object = query_object
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1_1::Query::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1_1::Query
          command.query['asynchronous'] = asynchronous unless asynchronous.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a stored query as well as the associated stored reports.
        # @param [Fixnum] query_id
        #   Query ID to delete.
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
        def deletequery_query(query_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'query/{queryId}', options)
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a stored query.
        # @param [Fixnum] query_id
        #   Query ID to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1_1::Query] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1_1::Query]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def getquery_query(query_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'query/{queryId}', options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1_1::Query::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1_1::Query
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves stored queries.
        # @param [Fixnum] page_size
        #   Maximum number of results per page. Must be between 1 and 100. Defaults to 100
        #   if unspecified.
        # @param [String] page_token
        #   Optional pagination token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1_1::ListQueriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1_1::ListQueriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listqueries_query(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'queries', options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1_1::ListQueriesResponse::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1_1::ListQueriesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs a stored query to generate a report.
        # @param [Fixnum] query_id
        #   Query ID to run.
        # @param [Google::Apis::DoubleclickbidmanagerV1_1::RunQueryRequest] run_query_request_object
        # @param [Boolean] asynchronous
        #   If true, tries to run the query asynchronously.
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
        def runquery_query(query_id, run_query_request_object = nil, asynchronous: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'query/{queryId}', options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1_1::RunQueryRequest::Representation
          command.request_object = run_query_request_object
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['asynchronous'] = asynchronous unless asynchronous.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves stored reports.
        # @param [Fixnum] query_id
        #   Query ID with which the reports are associated.
        # @param [Fixnum] page_size
        #   Maximum number of results per page. Must be between 1 and 100. Defaults to 100
        #   if unspecified.
        # @param [String] page_token
        #   Optional pagination token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1_1::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1_1::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def listreports_report(query_id, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'queries/{queryId}/reports', options)
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1_1::ListReportsResponse::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1_1::ListReportsResponse
          command.params['queryId'] = query_id unless query_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves entities in SDF format.
        # @param [Google::Apis::DoubleclickbidmanagerV1_1::DownloadRequest] download_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DoubleclickbidmanagerV1_1::DownloadResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DoubleclickbidmanagerV1_1::DownloadResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def download_sdf(download_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'sdf/download', options)
          command.request_representation = Google::Apis::DoubleclickbidmanagerV1_1::DownloadRequest::Representation
          command.request_object = download_request_object
          command.response_representation = Google::Apis::DoubleclickbidmanagerV1_1::DownloadResponse::Representation
          command.response_class = Google::Apis::DoubleclickbidmanagerV1_1::DownloadResponse
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
