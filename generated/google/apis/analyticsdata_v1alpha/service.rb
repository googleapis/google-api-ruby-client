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
    module AnalyticsdataV1alpha
      # Google Analytics Data API
      #
      # Accesses report data in Google Analytics.
      #
      # @example
      #    require 'google/apis/analyticsdata_v1alpha'
      #
      #    Analyticsdata = Google::Apis::AnalyticsdataV1alpha # Alias the module
      #    service = Analyticsdata::AnalyticsDataService.new
      #
      # @see https://developers.google.com/analytics/trusted-testing/analytics-data/
      class AnalyticsDataService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://analyticsdata.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Returns metadata for dimensions and metrics available in reporting methods.
        # Used to explore the dimensions and metrics. In this method, a Google Analytics
        # GA4 Property Identifier is specified in the request, and the metadata response
        # includes Custom dimensions and metrics as well as Universal metadata. For
        # example if a custom metric with parameter name `levels_unlocked` is registered
        # to a property, the Metadata response will contain `customEvent:levels_unlocked`
        # . Universal metadata are dimensions and metrics applicable to any property
        # such as `country` and `totalUsers`.
        # @param [String] name
        #   Required. The resource name of the metadata to retrieve. This name field is
        #   specified in the URL path and not URL parameters. Property is a numeric Google
        #   Analytics GA4 Property identifier. To learn more, see [where to find your
        #   Property ID](https://developers.google.com/analytics/trusted-testing/analytics-
        #   data/property-id). Example: properties/1234/metadata Set the Property ID to 0
        #   for dimensions and metrics common to all properties. In this special mode,
        #   this method will not return custom dimensions and metrics.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1alpha::Metadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1alpha::Metadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_metadata(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsdataV1alpha::Metadata::Representation
          command.response_class = Google::Apis::AnalyticsdataV1alpha::Metadata
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # The Google Analytics Realtime API returns a customized report of realtime
        # event data for your property. These reports show events and usage from the
        # last 30 minutes.
        # @param [String] property
        #   A Google Analytics GA4 property identifier whose events are tracked. Specified
        #   in the URL path and not the body. To learn more, see [where to find your
        #   Property ID](https://developers.google.com/analytics/trusted-testing/analytics-
        #   data/property-id). Example: properties/1234
        # @param [Google::Apis::AnalyticsdataV1alpha::RunRealtimeReportRequest] run_realtime_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1alpha::RunRealtimeReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1alpha::RunRealtimeReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_property_realtime_report(property, run_realtime_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+property}:runRealtimeReport', options)
          command.request_representation = Google::Apis::AnalyticsdataV1alpha::RunRealtimeReportRequest::Representation
          command.request_object = run_realtime_report_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1alpha::RunRealtimeReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1alpha::RunRealtimeReportResponse
          command.params['property'] = property unless property.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns multiple pivot reports in a batch. All reports must be for the same
        # Entity.
        # @param [Google::Apis::AnalyticsdataV1alpha::BatchRunPivotReportsRequest] batch_run_pivot_reports_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1alpha::BatchRunPivotReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1alpha::BatchRunPivotReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_run_pivot_reports(batch_run_pivot_reports_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha:batchRunPivotReports', options)
          command.request_representation = Google::Apis::AnalyticsdataV1alpha::BatchRunPivotReportsRequest::Representation
          command.request_object = batch_run_pivot_reports_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1alpha::BatchRunPivotReportsResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1alpha::BatchRunPivotReportsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns multiple reports in a batch. All reports must be for the same Entity.
        # @param [Google::Apis::AnalyticsdataV1alpha::BatchRunReportsRequest] batch_run_reports_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1alpha::BatchRunReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1alpha::BatchRunReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_run_reports(batch_run_reports_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha:batchRunReports', options)
          command.request_representation = Google::Apis::AnalyticsdataV1alpha::BatchRunReportsRequest::Representation
          command.request_object = batch_run_reports_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1alpha::BatchRunReportsResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1alpha::BatchRunReportsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a customized pivot report of your Google Analytics event data. Pivot
        # reports are more advanced and expressive formats than regular reports. In a
        # pivot report, dimensions are only visible if they are included in a pivot.
        # Multiple pivots can be specified to further dissect your data.
        # @param [Google::Apis::AnalyticsdataV1alpha::RunPivotReportRequest] run_pivot_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1alpha::RunPivotReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1alpha::RunPivotReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_pivot_report(run_pivot_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha:runPivotReport', options)
          command.request_representation = Google::Apis::AnalyticsdataV1alpha::RunPivotReportRequest::Representation
          command.request_object = run_pivot_report_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1alpha::RunPivotReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1alpha::RunPivotReportResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a customized report of your Google Analytics event data. Reports
        # contain statistics derived from data collected by the Google Analytics
        # tracking code. The data returned from the API is as a table with columns for
        # the requested dimensions and metrics. Metrics are individual measurements of
        # user activity on your property, such as active users or event count.
        # Dimensions break down metrics across some common criteria, such as country or
        # event name.
        # @param [Google::Apis::AnalyticsdataV1alpha::RunReportRequest] run_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1alpha::RunReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1alpha::RunReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_report(run_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha:runReport', options)
          command.request_representation = Google::Apis::AnalyticsdataV1alpha::RunReportRequest::Representation
          command.request_object = run_report_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1alpha::RunReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1alpha::RunReportResponse
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
