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
      # Accesses report data in Google Analytics. Warning: Creating multiple Customer
      #  Applications, Accounts, or Projects to simulate or act as a single Customer
      #  Application, Account, or Project (respectively) or to circumvent Service-
      #  specific usage limits or quotas is a direct violation of Google Cloud Platform
      #  Terms of Service as well as Google APIs Terms of Service. These actions can
      #  result in immediate termination of your GCP project(s) without any warning.
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
        
        # Creates an audience export for later retrieval. This method quickly returns
        # the audience export's resource name and initiates a long running asynchronous
        # request to form an audience export. To export the users in an audience export,
        # first create the audience export through this method and then send the
        # audience resource name to the `QueryAudienceExport` method. See [Creating an
        # Audience Export](https://developers.google.com/analytics/devguides/reporting/
        # data/v1/audience-list-basics) for an introduction to Audience Exports with
        # examples. An audience export is a snapshot of the users currently in the
        # audience at the time of audience export creation. Creating audience exports
        # for one audience on different days will return different results as users
        # enter and exit the audience. Audiences in Google Analytics 4 allow you to
        # segment your users in the ways that are important to your business. To learn
        # more, see https://support.google.com/analytics/answer/9267572. Audience
        # exports contain the users in each audience. Audience Export APIs have some
        # methods at alpha and other methods at beta stability. The intention is to
        # advance methods to beta stability after some feedback and adoption. To give
        # your feedback on this API, complete the [Google Analytics Audience Export API
        # Feedback](https://forms.gle/EeA5u5LW6PEggtCEA) form.
        # @param [String] parent
        #   Required. The parent resource where this audience export will be created.
        #   Format: `properties/`property``
        # @param [Google::Apis::AnalyticsdataV1beta::AudienceExport] audience_export_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_audience_export(parent, audience_export_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/audienceExports', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::AudienceExport::Representation
          command.request_object = audience_export_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::Operation::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets configuration metadata about a specific audience export. This method can
        # be used to understand an audience export after it has been created. See [
        # Creating an Audience Export](https://developers.google.com/analytics/devguides/
        # reporting/data/v1/audience-list-basics) for an introduction to Audience
        # Exports with examples. Audience Export APIs have some methods at alpha and
        # other methods at beta stability. The intention is to advance methods to beta
        # stability after some feedback and adoption. To give your feedback on this API,
        # complete the [Google Analytics Audience Export API Feedback](https://forms.gle/
        # EeA5u5LW6PEggtCEA) form.
        # @param [String] name
        #   Required. The audience export resource name. Format: `properties/`property`/
        #   audienceExports/`audience_export``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::AudienceExport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::AudienceExport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_audience_export(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsdataV1beta::AudienceExport::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::AudienceExport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all audience exports for a property. This method can be used for you to
        # find and reuse existing audience exports rather than creating unnecessary new
        # audience exports. The same audience can have multiple audience exports that
        # represent the export of users that were in an audience on different days. See [
        # Creating an Audience Export](https://developers.google.com/analytics/devguides/
        # reporting/data/v1/audience-list-basics) for an introduction to Audience
        # Exports with examples. Audience Export APIs have some methods at alpha and
        # other methods at beta stability. The intention is to advance methods to beta
        # stability after some feedback and adoption. To give your feedback on this API,
        # complete the [Google Analytics Audience Export API Feedback](https://forms.gle/
        # EeA5u5LW6PEggtCEA) form.
        # @param [String] parent
        #   Required. All audience exports for this property will be listed in the
        #   response. Format: `properties/`property``
        # @param [Fixnum] page_size
        #   Optional. The maximum number of audience exports to return. The service may
        #   return fewer than this value. If unspecified, at most 200 audience exports
        #   will be returned. The maximum value is 1000 (higher values will be coerced to
        #   the maximum).
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAudienceExports` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListAudienceExports` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::ListAudienceExportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::ListAudienceExportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_audience_exports(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/audienceExports', options)
          command.response_representation = Google::Apis::AnalyticsdataV1beta::ListAudienceExportsResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::ListAudienceExportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an audience export of users. After creating an audience, the users
        # are not immediately available for exporting. First, a request to `
        # CreateAudienceExport` is necessary to create an audience export of users, and
        # then second, this method is used to retrieve the users in the audience export.
        # See [Creating an Audience Export](https://developers.google.com/analytics/
        # devguides/reporting/data/v1/audience-list-basics) for an introduction to
        # Audience Exports with examples. Audiences in Google Analytics 4 allow you to
        # segment your users in the ways that are important to your business. To learn
        # more, see https://support.google.com/analytics/answer/9267572. Audience Export
        # APIs have some methods at alpha and other methods at beta stability. The
        # intention is to advance methods to beta stability after some feedback and
        # adoption. To give your feedback on this API, complete the [Google Analytics
        # Audience Export API Feedback](https://forms.gle/EeA5u5LW6PEggtCEA) form.
        # @param [String] name
        #   Required. The name of the audience export to retrieve users from. Format: `
        #   properties/`property`/audienceExports/`audience_export``
        # @param [Google::Apis::AnalyticsdataV1beta::QueryAudienceExportRequest] query_audience_export_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsdataV1beta::QueryAudienceExportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsdataV1beta::QueryAudienceExportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_audience_export(name, query_audience_export_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:query', options)
          command.request_representation = Google::Apis::AnalyticsdataV1beta::QueryAudienceExportRequest::Representation
          command.request_object = query_audience_export_request_object
          command.response_representation = Google::Apis::AnalyticsdataV1beta::QueryAudienceExportResponse::Representation
          command.response_class = Google::Apis::AnalyticsdataV1beta::QueryAudienceExportResponse
          command.params['name'] = name unless name.nil?
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
