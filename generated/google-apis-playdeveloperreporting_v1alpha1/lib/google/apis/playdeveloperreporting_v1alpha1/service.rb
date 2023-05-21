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
    module PlaydeveloperreportingV1alpha1
      # Google Play Developer Reporting API
      #
      # 
      #
      # @example
      #    require 'google/apis/playdeveloperreporting_v1alpha1'
      #
      #    Playdeveloperreporting = Google::Apis::PlaydeveloperreportingV1alpha1 # Alias the module
      #    service = Playdeveloperreporting::PlaydeveloperreportingService.new
      #
      # @see https://developers.google.com/play/developer/reporting
      class PlaydeveloperreportingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://playdeveloperreporting.googleapis.com/', '',
                client_name: 'google-apis-playdeveloperreporting_v1alpha1',
                client_version: Google::Apis::PlaydeveloperreportingV1alpha1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists anomalies in any of the datasets.
        # @param [String] parent
        #   Required. Parent app for which anomalies were detected. Format: apps/`app`
        # @param [String] filter
        #   Filtering criteria for anomalies. For basic filter guidance, please check:
        #   https://google.aip.dev/160. **Supported functions:** * `activeBetween(
        #   startTime, endTime)`: If specified, only list anomalies that were active in
        #   between `startTime` (inclusive) and `endTime` (exclusive). Both parameters are
        #   expected to conform to an RFC-3339 formatted string (e.g. `2012-04-21T11:30:00-
        #   04:00`). UTC offsets are supported. Both `startTime` and `endTime` accept the
        #   special value `UNBOUNDED`, to signify intervals with no lower or upper bound,
        #   respectively. Examples: * `activeBetween("2021-04-21T11:30:00Z", "2021-07-
        #   21T00:00:00Z")` * `activeBetween(UNBOUNDED, "2021-11-21T00:00:00-04:00")` * `
        #   activeBetween("2021-07-21T00:00:00-04:00", UNBOUNDED)`
        # @param [Fixnum] page_size
        #   Maximum size of the returned data. If unspecified, at most 10 anomalies will
        #   be returned. The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   A page token, received from a previous `ListErrorReports` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListErrorReports` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_anomalies(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/anomalies', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ListAnomaliesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes filtering options for releases.
        # @param [String] name
        #   Required. Name of the resource, i.e. app the filtering options are for. Format:
        #   apps/`app`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_app_release_filter_options(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}:fetchReleaseFilterOptions', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ReleaseFilterOptions
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for Apps accessible by the user.
        # @param [Fixnum] page_size
        #   The maximum number of apps to return. The service may return fewer than this
        #   value. If unspecified, at most 50 apps will be returned. The maximum value is
        #   1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `SearchAccessibleApps` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `SearchAccessibleApps` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_apps(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/apps:search', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchAccessibleAppsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes the properties of the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/anrRateMetricSet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_anrrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1AnrRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/anrRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest] google_play_developer_reporting_v1alpha1_query_anr_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_anrrate(name, google_play_developer_reporting_v1alpha1_query_anr_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1alpha1_query_anr_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryAnrRateMetricSetResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes the properties of the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/crashRateMetricSet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_crashrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1CrashRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/crashRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest] google_play_developer_reporting_v1alpha1_query_crash_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_crashrate(name, google_play_developer_reporting_v1alpha1_query_crash_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1alpha1_query_crash_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryCrashRateMetricSetResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes the properties of the metrics set.
        # @param [String] name
        #   Required. Name of the errors metric set. Format: apps/`app`/
        #   errorCountMetricSet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_error_count(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ErrorCountMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metrics set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/errorCountMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest] google_play_developer_reporting_v1alpha1_query_error_count_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_error_count(name, google_play_developer_reporting_v1alpha1_query_error_count_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1alpha1_query_error_count_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryErrorCountMetricSetResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches all error issues in which reports have been grouped.
        # @param [String] parent
        #   Required. Parent resource of the error issues, indicating the application for
        #   which they were received. Format: apps/`app`
        # @param [String] filter
        #   A selection predicate to retrieve only a subset of the issues. Counts in the
        #   returned error issues will only reflect occurrences that matched the filter.
        #   For filtering basics, please check [AIP-160](https://google.aip.dev/160). **
        #   Supported field names:** * `apiLevel`: Matches error issues that occurred in
        #   the requested Android versions (specified as the numeric API level) only.
        #   Example: `apiLevel = 28 OR apiLevel = 29`. * `versionCode`: Matches error
        #   issues that occurred in the requested app version codes only. Example: `
        #   versionCode = 123 OR versionCode = 456`. * `deviceModel`: Matches error issues
        #   that occurred in the requested devices. Example: `deviceModel = "google/
        #   walleye" OR deviceModel = "google/marlin"`. * `deviceBrand`: Matches error
        #   issues that occurred in the requested device brands. Example: `deviceBrand = "
        #   Google". * `deviceType`: Matches error issues that occurred in the requested
        #   device types. Example: `deviceType = "PHONE"`. * `errorIssueType`: Matches
        #   error issues of the requested types only. Valid candidates: `CRASH`, `ANR`.
        #   Example: `errorIssueType = CRASH OR errorIssueType = ANR`. * `appProcessState`:
        #   Matches error issues on the process state of an app, indicating whether an
        #   app runs in the foreground (user-visible) or background. Valid candidates: `
        #   FOREGROUND`, `BACKGROUND`. Example: `appProcessState = FOREGROUND`. * `
        #   isUserPerceived`: Matches error issues that are user-perceived. It is not
        #   accompanied by any operators. Example: `isUserPerceived`. ** Supported
        #   operators:** * Comparison operators: The only supported comparison operator is
        #   equality. The filtered field must appear on the left hand side of the
        #   comparison. * Logical Operators: Logical operators `AND` and `OR` can be used
        #   to build complex filters following a conjunctive normal form (CNF), i.e.,
        #   conjunctions of disjunctions. The `OR` operator takes precedence over `AND` so
        #   the use of parenthesis is not necessary when building CNF. The `OR` operator
        #   is only supported to build disjunctions that apply to the same field, e.g., `
        #   versionCode = 123 OR errorIssueType = ANR` is not a valid filter. ** Examples *
        #   * Some valid filtering expressions: * `versionCode = 123 AND errorIssueType =
        #   ANR` * `versionCode = 123 AND errorIssueType = OR errorIssueType = CRASH` * `
        #   versionCode = 123 AND (errorIssueType = OR errorIssueType = CRASH)`
        # @param [Fixnum] interval_end_time_day
        #   Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        #   or 0 if specifying a datetime without a day.
        # @param [Fixnum] interval_end_time_hours
        #   Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        #   0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        #   like business closing time.
        # @param [Fixnum] interval_end_time_minutes
        #   Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # @param [Fixnum] interval_end_time_month
        #   Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        #   without a month.
        # @param [Fixnum] interval_end_time_nanos
        #   Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        #   defaults to 0.
        # @param [Fixnum] interval_end_time_seconds
        #   Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        #   defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # @param [String] interval_end_time_time_zone_id
        #   IANA Time Zone Database time zone, e.g. "America/New_York".
        # @param [String] interval_end_time_time_zone_version
        #   Optional. IANA Time Zone Database version number, e.g. "2019a".
        # @param [String] interval_end_time_utc_offset
        #   UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        #   example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # @param [Fixnum] interval_end_time_year
        #   Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        #   without a year.
        # @param [Fixnum] interval_start_time_day
        #   Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        #   or 0 if specifying a datetime without a day.
        # @param [Fixnum] interval_start_time_hours
        #   Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        #   0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        #   like business closing time.
        # @param [Fixnum] interval_start_time_minutes
        #   Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # @param [Fixnum] interval_start_time_month
        #   Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        #   without a month.
        # @param [Fixnum] interval_start_time_nanos
        #   Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        #   defaults to 0.
        # @param [Fixnum] interval_start_time_seconds
        #   Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        #   defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # @param [String] interval_start_time_time_zone_id
        #   IANA Time Zone Database time zone, e.g. "America/New_York".
        # @param [String] interval_start_time_time_zone_version
        #   Optional. IANA Time Zone Database version number, e.g. "2019a".
        # @param [String] interval_start_time_utc_offset
        #   UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        #   example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # @param [Fixnum] interval_start_time_year
        #   Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        #   without a year.
        # @param [String] order_by
        #   Specifies a field that will be used to order the results. ** Supported
        #   dimensions:** * `errorReportCount`: Orders issues by number of error reports. *
        #   `distinctUsers`: Orders issues by number of unique affected users. **
        #   Supported operations:** * `asc` for ascending order. * `desc` for descending
        #   order. Format: A field and an operation, e.g., `errorReportCount desc` *Note:*
        #   currently only one field is supported at a time.
        # @param [Fixnum] page_size
        #   The maximum number of error issues to return. The service may return fewer
        #   than this value. If unspecified, at most 50 error issues will be returned. The
        #   maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous call. Provide this to retrieve the
        #   subsequent page. When paginating, all other parameters provided to the request
        #   must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_vital_error_issues(parent, filter: nil, interval_end_time_day: nil, interval_end_time_hours: nil, interval_end_time_minutes: nil, interval_end_time_month: nil, interval_end_time_nanos: nil, interval_end_time_seconds: nil, interval_end_time_time_zone_id: nil, interval_end_time_time_zone_version: nil, interval_end_time_utc_offset: nil, interval_end_time_year: nil, interval_start_time_day: nil, interval_start_time_hours: nil, interval_start_time_minutes: nil, interval_start_time_month: nil, interval_start_time_nanos: nil, interval_start_time_seconds: nil, interval_start_time_time_zone_id: nil, interval_start_time_time_zone_version: nil, interval_start_time_utc_offset: nil, interval_start_time_year: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/errorIssues:search', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorIssuesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['interval.endTime.day'] = interval_end_time_day unless interval_end_time_day.nil?
          command.query['interval.endTime.hours'] = interval_end_time_hours unless interval_end_time_hours.nil?
          command.query['interval.endTime.minutes'] = interval_end_time_minutes unless interval_end_time_minutes.nil?
          command.query['interval.endTime.month'] = interval_end_time_month unless interval_end_time_month.nil?
          command.query['interval.endTime.nanos'] = interval_end_time_nanos unless interval_end_time_nanos.nil?
          command.query['interval.endTime.seconds'] = interval_end_time_seconds unless interval_end_time_seconds.nil?
          command.query['interval.endTime.timeZone.id'] = interval_end_time_time_zone_id unless interval_end_time_time_zone_id.nil?
          command.query['interval.endTime.timeZone.version'] = interval_end_time_time_zone_version unless interval_end_time_time_zone_version.nil?
          command.query['interval.endTime.utcOffset'] = interval_end_time_utc_offset unless interval_end_time_utc_offset.nil?
          command.query['interval.endTime.year'] = interval_end_time_year unless interval_end_time_year.nil?
          command.query['interval.startTime.day'] = interval_start_time_day unless interval_start_time_day.nil?
          command.query['interval.startTime.hours'] = interval_start_time_hours unless interval_start_time_hours.nil?
          command.query['interval.startTime.minutes'] = interval_start_time_minutes unless interval_start_time_minutes.nil?
          command.query['interval.startTime.month'] = interval_start_time_month unless interval_start_time_month.nil?
          command.query['interval.startTime.nanos'] = interval_start_time_nanos unless interval_start_time_nanos.nil?
          command.query['interval.startTime.seconds'] = interval_start_time_seconds unless interval_start_time_seconds.nil?
          command.query['interval.startTime.timeZone.id'] = interval_start_time_time_zone_id unless interval_start_time_time_zone_id.nil?
          command.query['interval.startTime.timeZone.version'] = interval_start_time_time_zone_version unless interval_start_time_time_zone_version.nil?
          command.query['interval.startTime.utcOffset'] = interval_start_time_utc_offset unless interval_start_time_utc_offset.nil?
          command.query['interval.startTime.year'] = interval_start_time_year unless interval_start_time_year.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches all error reports received for an app.
        # @param [String] parent
        #   Required. Parent resource of the reports, indicating the application for which
        #   they were received. Format: apps/`app`
        # @param [String] filter
        #   A selection predicate to retrieve only a subset of the reports. For filtering
        #   basics, please check [AIP-160](https://google.aip.dev/160). ** Supported field
        #   names:** * `apiLevel`: Matches error reports that occurred in the requested
        #   Android versions (specified as the numeric API level) only. Example: `apiLevel
        #   = 28 OR apiLevel = 29`. * `versionCode`: Matches error reports that occurred
        #   in the requested app version codes only. Example: `versionCode = 123 OR
        #   versionCode = 456`. * `deviceModel`: Matches error issues that occurred in the
        #   requested devices. Example: `deviceModel = "google/walleye" OR deviceModel = "
        #   google/marlin"`. * `deviceBrand`: Matches error issues that occurred in the
        #   requested device brands. Example: `deviceBrand = "Google". * `deviceType`:
        #   Matches error reports that occurred in the requested device types. Example: `
        #   deviceType = "PHONE"`. * `errorIssueType`: Matches error reports of the
        #   requested types only. Valid candidates: `JAVA_CRASH`, `NATIVE_CRASH`, `ANR`.
        #   Example: `errorIssueType = JAVA_CRASH OR errorIssueType = NATIVE_CRASH`. * `
        #   errorIssueId`: Matches error reports belonging to the requested error issue
        #   ids only. Example: `errorIssueId = 1234 OR errorIssueId = 4567`. * `
        #   appProcessState`: Matches error reports on the process state of an app,
        #   indicating whether an app runs in the foreground (user-visible) or background.
        #   Valid candidates: `FOREGROUND`, `BACKGROUND`. Example: `appProcessState =
        #   FOREGROUND`. * `isUserPerceived`: Matches error reports that are user-
        #   perceived. It is not accompanied by any operators. Example: `isUserPerceived`.
        #   ** Supported operators:** * Comparison operators: The only supported
        #   comparison operator is equality. The filtered field must appear on the left
        #   hand side of the comparison. * Logical Operators: Logical operators `AND` and `
        #   OR` can be used to build complex filters following a conjunctive normal form (
        #   CNF), i.e., conjunctions of disjunctions. The `OR` operator takes precedence
        #   over `AND` so the use of parenthesis is not necessary when building CNF. The `
        #   OR` operator is only supported to build disjunctions that apply to the same
        #   field, e.g., `versionCode = 123 OR versionCode = ANR`. The filter expression `
        #   versionCode = 123 OR errorIssueType = ANR` is not valid. ** Examples ** Some
        #   valid filtering expressions: * `versionCode = 123 AND errorIssueType = ANR` * `
        #   versionCode = 123 AND errorIssueType = OR errorIssueType = CRASH` * `
        #   versionCode = 123 AND (errorIssueType = OR errorIssueType = CRASH)`
        # @param [Fixnum] interval_end_time_day
        #   Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        #   or 0 if specifying a datetime without a day.
        # @param [Fixnum] interval_end_time_hours
        #   Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        #   0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        #   like business closing time.
        # @param [Fixnum] interval_end_time_minutes
        #   Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # @param [Fixnum] interval_end_time_month
        #   Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        #   without a month.
        # @param [Fixnum] interval_end_time_nanos
        #   Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        #   defaults to 0.
        # @param [Fixnum] interval_end_time_seconds
        #   Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        #   defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # @param [String] interval_end_time_time_zone_id
        #   IANA Time Zone Database time zone, e.g. "America/New_York".
        # @param [String] interval_end_time_time_zone_version
        #   Optional. IANA Time Zone Database version number, e.g. "2019a".
        # @param [String] interval_end_time_utc_offset
        #   UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        #   example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # @param [Fixnum] interval_end_time_year
        #   Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        #   without a year.
        # @param [Fixnum] interval_start_time_day
        #   Optional. Day of month. Must be from 1 to 31 and valid for the year and month,
        #   or 0 if specifying a datetime without a day.
        # @param [Fixnum] interval_start_time_hours
        #   Optional. Hours of day in 24 hour format. Should be from 0 to 23, defaults to
        #   0 (midnight). An API may choose to allow the value "24:00:00" for scenarios
        #   like business closing time.
        # @param [Fixnum] interval_start_time_minutes
        #   Optional. Minutes of hour of day. Must be from 0 to 59, defaults to 0.
        # @param [Fixnum] interval_start_time_month
        #   Optional. Month of year. Must be from 1 to 12, or 0 if specifying a datetime
        #   without a month.
        # @param [Fixnum] interval_start_time_nanos
        #   Optional. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999,
        #   defaults to 0.
        # @param [Fixnum] interval_start_time_seconds
        #   Optional. Seconds of minutes of the time. Must normally be from 0 to 59,
        #   defaults to 0. An API may allow the value 60 if it allows leap-seconds.
        # @param [String] interval_start_time_time_zone_id
        #   IANA Time Zone Database time zone, e.g. "America/New_York".
        # @param [String] interval_start_time_time_zone_version
        #   Optional. IANA Time Zone Database version number, e.g. "2019a".
        # @param [String] interval_start_time_utc_offset
        #   UTC offset. Must be whole seconds, between -18 hours and +18 hours. For
        #   example, a UTC offset of -4:00 would be represented as ` seconds: -14400 `.
        # @param [Fixnum] interval_start_time_year
        #   Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime
        #   without a year.
        # @param [Fixnum] page_size
        #   The maximum number of reports to return. The service may return fewer than
        #   this value. If unspecified, at most 50 reports will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   A page token, received from a previous `SearchErrorReports` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `SearchErrorReports` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_vital_error_reports(parent, filter: nil, interval_end_time_day: nil, interval_end_time_hours: nil, interval_end_time_minutes: nil, interval_end_time_month: nil, interval_end_time_nanos: nil, interval_end_time_seconds: nil, interval_end_time_time_zone_id: nil, interval_end_time_time_zone_version: nil, interval_end_time_utc_offset: nil, interval_end_time_year: nil, interval_start_time_day: nil, interval_start_time_hours: nil, interval_start_time_minutes: nil, interval_start_time_month: nil, interval_start_time_nanos: nil, interval_start_time_seconds: nil, interval_start_time_time_zone_id: nil, interval_start_time_time_zone_version: nil, interval_start_time_utc_offset: nil, interval_start_time_year: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+parent}/errorReports:search', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SearchErrorReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['interval.endTime.day'] = interval_end_time_day unless interval_end_time_day.nil?
          command.query['interval.endTime.hours'] = interval_end_time_hours unless interval_end_time_hours.nil?
          command.query['interval.endTime.minutes'] = interval_end_time_minutes unless interval_end_time_minutes.nil?
          command.query['interval.endTime.month'] = interval_end_time_month unless interval_end_time_month.nil?
          command.query['interval.endTime.nanos'] = interval_end_time_nanos unless interval_end_time_nanos.nil?
          command.query['interval.endTime.seconds'] = interval_end_time_seconds unless interval_end_time_seconds.nil?
          command.query['interval.endTime.timeZone.id'] = interval_end_time_time_zone_id unless interval_end_time_time_zone_id.nil?
          command.query['interval.endTime.timeZone.version'] = interval_end_time_time_zone_version unless interval_end_time_time_zone_version.nil?
          command.query['interval.endTime.utcOffset'] = interval_end_time_utc_offset unless interval_end_time_utc_offset.nil?
          command.query['interval.endTime.year'] = interval_end_time_year unless interval_end_time_year.nil?
          command.query['interval.startTime.day'] = interval_start_time_day unless interval_start_time_day.nil?
          command.query['interval.startTime.hours'] = interval_start_time_hours unless interval_start_time_hours.nil?
          command.query['interval.startTime.minutes'] = interval_start_time_minutes unless interval_start_time_minutes.nil?
          command.query['interval.startTime.month'] = interval_start_time_month unless interval_start_time_month.nil?
          command.query['interval.startTime.nanos'] = interval_start_time_nanos unless interval_start_time_nanos.nil?
          command.query['interval.startTime.seconds'] = interval_start_time_seconds unless interval_start_time_seconds.nil?
          command.query['interval.startTime.timeZone.id'] = interval_start_time_time_zone_id unless interval_start_time_time_zone_id.nil?
          command.query['interval.startTime.timeZone.version'] = interval_start_time_time_zone_version unless interval_start_time_time_zone_version.nil?
          command.query['interval.startTime.utcOffset'] = interval_start_time_utc_offset unless interval_start_time_utc_offset.nil?
          command.query['interval.startTime.year'] = interval_start_time_year unless interval_start_time_year.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes the properties of the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/excessiveWakeupRateMetricSet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_excessivewakeuprate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1ExcessiveWakeupRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/excessiveWakeupRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest] google_play_developer_reporting_v1alpha1_query_excessive_wakeup_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_excessivewakeuprate(name, google_play_developer_reporting_v1alpha1_query_excessive_wakeup_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1alpha1_query_excessive_wakeup_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryExcessiveWakeupRateMetricSetResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes the properties of the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/slowRenderingRateMetricSet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_slowrenderingrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowRenderingRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/slowRenderingRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest] google_play_developer_reporting_v1alpha1_query_slow_rendering_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_slowrenderingrate(name, google_play_developer_reporting_v1alpha1_query_slow_rendering_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1alpha1_query_slow_rendering_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowRenderingRateMetricSetResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes the properties of the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/slowStartRateMetricSet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_slowstartrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1SlowStartRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/slowStartRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest] google_play_developer_reporting_v1alpha1_query_slow_start_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_slowstartrate(name, google_play_developer_reporting_v1alpha1_query_slow_start_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1alpha1_query_slow_start_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QuerySlowStartRateMetricSetResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Describes the properties of the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/
        #   stuckBackgroundWakelockRateMetricSet
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_stuckbackgroundwakelockrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1StuckBackgroundWakelockRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/
        #   stuckBackgroundWakelockRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest] google_play_developer_reporting_v1alpha1_query_stuck_background_wakelock_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_stuckbackgroundwakelockrate(name, google_play_developer_reporting_v1alpha1_query_stuck_background_wakelock_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1alpha1_query_stuck_background_wakelock_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1alpha1::GooglePlayDeveloperReportingV1alpha1QueryStuckBackgroundWakelockRateMetricSetResponse
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
