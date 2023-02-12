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
    module ChromeuxreportV1
      # Chrome UX Report API
      #
      # The Chrome UX Report API lets you view real user experience data for millions
      #  of websites.
      #
      # @example
      #    require 'google/apis/chromeuxreport_v1'
      #
      #    Chromeuxreport = Google::Apis::ChromeuxreportV1 # Alias the module
      #    service = Chromeuxreport::ChromeUXReportService.new
      #
      # @see https://developers.google.com/web/tools/chrome-user-experience-report/api/reference
      class ChromeUXReportService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://chromeuxreport.googleapis.com/', '',
                client_name: 'google-apis-chromeuxreport_v1',
                client_version: Google::Apis::ChromeuxreportV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Queries the Chrome User Experience Report for a timeseries `history record`
        # for a given site. Returns a `history record` that contains one or more `metric
        # timeseries` corresponding to performance data about the requested site.
        # @param [Google::Apis::ChromeuxreportV1::QueryHistoryRequest] query_history_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromeuxreportV1::QueryHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromeuxreportV1::QueryHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_record_history_record(query_history_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/records:queryHistoryRecord', options)
          command.request_representation = Google::Apis::ChromeuxreportV1::QueryHistoryRequest::Representation
          command.request_object = query_history_request_object
          command.response_representation = Google::Apis::ChromeuxreportV1::QueryHistoryResponse::Representation
          command.response_class = Google::Apis::ChromeuxreportV1::QueryHistoryResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the Chrome User Experience for a single `record` for a given site.
        # Returns a `record` that contains one or more `metrics` corresponding to
        # performance data about the requested site.
        # @param [Google::Apis::ChromeuxreportV1::QueryRequest] query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ChromeuxreportV1::QueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ChromeuxreportV1::QueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_record_record(query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/records:queryRecord', options)
          command.request_representation = Google::Apis::ChromeuxreportV1::QueryRequest::Representation
          command.request_object = query_request_object
          command.response_representation = Google::Apis::ChromeuxreportV1::QueryResponse::Representation
          command.response_class = Google::Apis::ChromeuxreportV1::QueryResponse
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
