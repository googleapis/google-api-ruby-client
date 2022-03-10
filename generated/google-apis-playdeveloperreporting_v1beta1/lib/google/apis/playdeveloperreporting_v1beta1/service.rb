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
    module PlaydeveloperreportingV1beta1
      # Google Play Developer Reporting API
      #
      # 
      #
      # @example
      #    require 'google/apis/playdeveloperreporting_v1beta1'
      #
      #    Playdeveloperreporting = Google::Apis::PlaydeveloperreportingV1beta1 # Alias the module
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
                client_name: 'google-apis-playdeveloperreporting_v1beta1',
                client_version: Google::Apis::PlaydeveloperreportingV1beta1::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_anomalies(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/anomalies', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
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
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1AnrRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1AnrRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_anrrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1AnrRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1AnrRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/anrRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest] google_play_developer_reporting_v1beta1_query_anr_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_anrrate(name, google_play_developer_reporting_v1beta1_query_anr_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1beta1_query_anr_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse
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
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1CrashRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1CrashRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_crashrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1CrashRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1CrashRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/crashRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest] google_play_developer_reporting_v1beta1_query_crash_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_crashrate(name, google_play_developer_reporting_v1beta1_query_crash_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1beta1_query_crash_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse
          command.params['name'] = name unless name.nil?
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
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_excessivewakeuprate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/excessiveWakeupRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest] google_play_developer_reporting_v1beta1_query_excessive_wakeup_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_excessivewakeuprate(name, google_play_developer_reporting_v1beta1_query_excessive_wakeup_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1beta1_query_excessive_wakeup_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse
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
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_vital_stuckbackgroundwakelockrate(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries the metrics in the metric set.
        # @param [String] name
        #   Required. The resource name. Format: apps/`app`/
        #   stuckBackgroundWakelockRateMetricSet
        # @param [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest] google_play_developer_reporting_v1beta1_query_stuck_background_wakelock_rate_metric_set_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_vital_stuckbackgroundwakelockrate(name, google_play_developer_reporting_v1beta1_query_stuck_background_wakelock_rate_metric_set_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:query', options)
          command.request_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest::Representation
          command.request_object = google_play_developer_reporting_v1beta1_query_stuck_background_wakelock_rate_metric_set_request_object
          command.response_representation = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse::Representation
          command.response_class = Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse
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
