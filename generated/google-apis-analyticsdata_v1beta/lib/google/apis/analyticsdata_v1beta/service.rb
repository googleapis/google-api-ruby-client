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
    module AnalyticsdataV1beta
      # Google Analytics Data API
      #
      # Accesses report data in Google Analytics.
      #
      # @example
      #    require 'google/apis/analyticsdata_v1beta'
      #
      #    Analyticsdata = Google::Apis::AnalyticsdataV1beta # Alias the module
      #    service = Analyticsdata::AnalyticsDataService.new
      #
      # @see https://developers.google.com/analytics/devguides/reporting/data/v1/
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
          super('https://analyticsdata.googleapis.com/', '',
                client_name: 'google-apis-analyticsdata_v1beta',
                client_version: Google::Apis::AnalyticsdataV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns multiple pivot reports in a batch. All reports must be for the same
        # GA4 Property.
        # @param [String] property
        #   A Google Analytics GA4 property identifier whose events are tracked. Specified
        #   in the URL path and not the body. To learn more, see [where to find your
        #   Property ID](https://developers.google.com/analytics/devguides/reporting/data/
        #   v1/property-id). This property must be specified for the batch. The property
        #   within RunPivotReportRequest may either be unspecified or consistent with this
        #   property. Example: properties/1234
        # @param [Google::Apis::AnalyticsdataV1beta::BatchRunPivotReportsRequest] batch_run_pivot_reports_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::BatchRunPivotReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::BatchRunPivotReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_run_pivot_reports(property, batch_run_pivot_reports_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+property}:batchRunPivotReports', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::BatchRunPivotReportsRequest::Representation
          command.request_object = batch_run_pivot_reports_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::BatchRunPivotReportsResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::BatchRunPivotReportsResponse
          command.params['property'] = property unless property.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns multiple reports in a batch. All reports must be for the same GA4
        # Property.
        # @param [String] property
        #   A Google Analytics GA4 property identifier whose events are tracked. Specified
        #   in the URL path and not the body. To learn more, see [where to find your
        #   Property ID](https://developers.google.com/analytics/devguides/reporting/data/
        #   v1/property-id). This property must be specified for the batch. The property
        #   within RunReportRequest may either be unspecified or consistent with this
        #   property. Example: properties/1234
        # @param [Google::Apis::AnalyticsdataV1beta::BatchRunReportsRequest] batch_run_reports_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::BatchRunReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::BatchRunReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_run_reports(property, batch_run_reports_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+property}:batchRunReports', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::BatchRunReportsRequest::Representation
          command.request_object = batch_run_reports_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::BatchRunReportsResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::BatchRunReportsResponse
          command.params['property'] = property unless property.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # This compatibility method lists dimensions and metrics that can be added to a
        # report request and maintain compatibility. This method fails if the request's
        # dimensions and metrics are incompatible. In Google Analytics, reports fail if
        # they request incompatible dimensions and/or metrics; in that case, you will
        # need to remove dimensions and/or metrics from the incompatible report until
        # the report is compatible. The Realtime and Core reports have different
        # compatibility rules. This method checks compatibility for Core reports.
        # @param [String] property
        #   A Google Analytics GA4 property identifier whose events are tracked. To learn
        #   more, see [where to find your Property ID](https://developers.google.com/
        #   analytics/devguides/reporting/data/v1/property-id). `property` should be the
        #   same value as in your `runReport` request. Example: properties/1234
        # @param [Google::Apis::AnalyticsdataV1beta::CheckCompatibilityRequest] check_compatibility_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::CheckCompatibilityResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::CheckCompatibilityResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_property_compatibility(property, check_compatibility_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+property}:checkCompatibility', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::CheckCompatibilityRequest::Representation
          command.request_object = check_compatibility_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::CheckCompatibilityResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::CheckCompatibilityResponse
          command.params['property'] = property unless property.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        #   Property ID](https://developers.google.com/analytics/devguides/reporting/data/
        #   v1/property-id). Example: properties/1234/metadata Set the Property ID to 0
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
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::Metadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::Metadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_metadata(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsdataV1beta::Metadata::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::Metadata
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a customized pivot report of your Google Analytics event data. Pivot
        # reports are more advanced and expressive formats than regular reports. In a
        # pivot report, dimensions are only visible if they are included in a pivot.
        # Multiple pivots can be specified to further dissect your data.
        # @param [String] property
        #   A Google Analytics GA4 property identifier whose events are tracked. Specified
        #   in the URL path and not the body. To learn more, see [where to find your
        #   Property ID](https://developers.google.com/analytics/devguides/reporting/data/
        #   v1/property-id). Within a batch request, this property should either be
        #   unspecified or consistent with the batch-level property. Example: properties/
        #   1234
        # @param [Google::Apis::AnalyticsdataV1beta::RunPivotReportRequest] run_pivot_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::RunPivotReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::RunPivotReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_property_pivot_report(property, run_pivot_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+property}:runPivotReport', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::RunPivotReportRequest::Representation
          command.request_object = run_pivot_report_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::RunPivotReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::RunPivotReportResponse
          command.params['property'] = property unless property.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a customized report of realtime event data for your property. Events
        # appear in realtime reports seconds after they have been sent to the Google
        # Analytics. Realtime reports show events and usage data for the periods of time
        # ranging from the present moment to 30 minutes ago (up to 60 minutes for Google
        # Analytics 360 properties). For a guide to constructing realtime requests &
        # understanding responses, see [Creating a Realtime Report](https://developers.
        # google.com/analytics/devguides/reporting/data/v1/realtime-basics).
        # @param [String] property
        #   A Google Analytics GA4 property identifier whose events are tracked. Specified
        #   in the URL path and not the body. To learn more, see [where to find your
        #   Property ID](https://developers.google.com/analytics/devguides/reporting/data/
        #   v1/property-id). Example: properties/1234
        # @param [Google::Apis::AnalyticsdataV1beta::RunRealtimeReportRequest] run_realtime_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::RunRealtimeReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::RunRealtimeReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_property_realtime_report(property, run_realtime_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+property}:runRealtimeReport', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::RunRealtimeReportRequest::Representation
          command.request_object = run_realtime_report_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::RunRealtimeReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::RunRealtimeReportResponse
          command.params['property'] = property unless property.nil?
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
        # event name. For a guide to constructing requests & understanding responses,
        # see [Creating a Report](https://developers.google.com/analytics/devguides/
        # reporting/data/v1/basics).
        # @param [String] property
        #   A Google Analytics GA4 property identifier whose events are tracked. Specified
        #   in the URL path and not the body. To learn more, see [where to find your
        #   Property ID](https://developers.google.com/analytics/devguides/reporting/data/
        #   v1/property-id). Within a batch request, this property should either be
        #   unspecified or consistent with the batch-level property. Example: properties/
        #   1234
        # @param [Google::Apis::AnalyticsdataV1beta::RunReportRequest] run_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::RunReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::RunReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_property_report(property, run_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+property}:runReport', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::RunReportRequest::Representation
          command.request_object = run_report_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::RunReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::RunReportResponse
          command.params['property'] = property unless property.nil?
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
