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
    module AgenciesandbrandsV1
      # Agencies and Brands API
      #
      # Agencies and brands API is an externally available HTTP API for ad agencies
      #  and brands to programmatically manage their deals and spending with Google Ad
      #  Manager publishers.
      #
      # @example
      #    require 'google/apis/agenciesandbrands_v1'
      #
      #    Agenciesandbrands = Google::Apis::AgenciesandbrandsV1 # Alias the module
      #    service = Agenciesandbrands::AgenciesAndBrandsService.new
      #
      # @see https://developers.google.com/authorized-buyers/agencies-and-brands/get-started/start
      class AgenciesAndBrandsService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://agenciesandbrands.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-agenciesandbrands_v1',
                client_version: Google::Apis::AgenciesandbrandsV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Creates a `Report` object.
        # @param [String] parent
        #   Required. The parent resource where this `Report` will be created. Format: `
        #   agencies/`account_id``
        # @param [Google::Apis::AgenciesandbrandsV1::Report] report_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_agency_report(parent, report_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/reports', options)
          command.request_representation = Google::Apis::AgenciesandbrandsV1::Report::Representation
          command.request_object = report_object
          command.response_representation = Google::Apis::AgenciesandbrandsV1::Report::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::Report
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a `Report` object.
        # @param [String] name
        #   Required. Resource name of the report to delete. Format: `agencies/`account_id`
        #   /reports/`report_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_agency_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AgenciesandbrandsV1::Empty::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a `Report` object.
        # @param [String] name
        #   Required. The resource name of the report. Format: `agencies/`account_id`/
        #   reports/`report_id``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_agency_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AgenciesandbrandsV1::Report::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::Report
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists `Report` objects.
        # @param [String] parent
        #   Required. The parent, which owns this collection of reports. Format: `agencies/
        #   `account_id``
        # @param [String] filter
        #   Optional. Expression to filter the response. See syntax details at https://
        #   developers.google.com/ad-manager/api/beta/filters
        # @param [String] order_by
        #   Optional. Expression to specify sorting order. See syntax details at https://
        #   developers.google.com/ad-manager/api/beta/filters#order
        # @param [Fixnum] page_size
        #   Optional. The maximum number of `Reports` to return. The service may return
        #   fewer than this value. If unspecified, at most 50 `Reports` will be returned.
        #   The maximum value is 1000; values greater than 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListReports` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListReports` must match the call that provided the page token.
        # @param [Fixnum] skip
        #   Optional. Number of individual resources to skip while paginating.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_agency_reports(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, skip: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reports', options)
          command.response_representation = Google::Apis::AgenciesandbrandsV1::ListReportsResponse::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::ListReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['skip'] = skip unless skip.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `Report` object.
        # @param [String] name
        #   Identifier. The resource name of the report. Report resource name have the
        #   form: `agencies/`account_id`/reports/`report_id``
        # @param [Google::Apis::AgenciesandbrandsV1::Report] report_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_agency_report(name, report_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AgenciesandbrandsV1::Report::Representation
          command.request_object = report_object
          command.response_representation = Google::Apis::AgenciesandbrandsV1::Report::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::Report
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates the execution of an existing report asynchronously. Users can get
        # the report by polling this operation using `OperationsService.GetOperation`.
        # Poll every 5 seconds initially, with an exponential backoff. Once a report is
        # complete, the operation will contain a `RunReportResponse` in its response
        # field containing a report_result that can be passed to the `
        # FetchReportResultRows` method to retrieve the report data.
        # @param [String] name
        #   Required. The report to run. Format: `agencies/`account_id`/reports/`report_id`
        #   `
        # @param [Google::Apis::AgenciesandbrandsV1::RunReportRequest] run_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_report(name, run_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:run', options)
          command.request_representation = Google::Apis::AgenciesandbrandsV1::RunReportRequest::Representation
          command.request_object = run_report_request_object
          command.response_representation = Google::Apis::AgenciesandbrandsV1::Operation::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_agency_report_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AgenciesandbrandsV1::Operation::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the result rows from a completed report. The caller must have
        # previously called `RunReport` and waited for that operation to complete. The
        # rows will be returned according to the order specified by the `sorts` member
        # of the report definition.
        # @param [String] name
        #   The report result being fetched. Format: `agencies/`account_id`/reports/`
        #   report_id`/results/`report_result_id``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of rows to return. The service may return fewer
        #   than this value. If unspecified, at most 1,000 rows will be returned. The
        #   maximum value is 10,000; values greater than 10,000 will be reduced to 10,000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `FetchReportResultRows` call.
        #   Provide this to retrieve the second and subsequent batches of rows.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AgenciesandbrandsV1::FetchReportResultRowsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AgenciesandbrandsV1::FetchReportResultRowsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_agency_report_result_rows(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:fetchRows', options)
          command.response_representation = Google::Apis::AgenciesandbrandsV1::FetchReportResultRowsResponse::Representation
          command.response_class = Google::Apis::AgenciesandbrandsV1::FetchReportResultRowsResponse
          command.params['name'] = name unless name.nil?
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
