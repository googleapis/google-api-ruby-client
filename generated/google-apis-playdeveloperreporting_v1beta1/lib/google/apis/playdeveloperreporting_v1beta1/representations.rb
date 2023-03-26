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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module PlaydeveloperreportingV1beta1
      
      class GooglePlayDeveloperReportingV1beta1Anomaly
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1AnrRateMetricSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1CrashRateMetricSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1DimensionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1ErrorIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1ErrorReport
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1FreshnessInfo
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1MetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1MetricsRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1TimelineSpec
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDateTime
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeDecimal
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleTypeTimeZone
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GooglePlayDeveloperReportingV1beta1Anomaly
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1DimensionValue, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1DimensionValue::Representation
      
          property :metric, as: 'metric', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricValue, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricValue::Representation
      
          property :metric_set, as: 'metricSet'
          property :name, as: 'name'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1AnrRateMetricSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_info, as: 'freshnessInfo', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1CrashRateMetricSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_info, as: 'freshnessInfo', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1DimensionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :int64_value, :numeric_string => true, as: 'int64Value'
          property :string_value, as: 'stringValue'
          property :value_label, as: 'valueLabel'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1ErrorCountMetricSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_info, as: 'freshnessInfo', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1ErrorIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cause, as: 'cause'
          property :location, as: 'location'
          property :name, as: 'name'
          property :type, as: 'type'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1ErrorReport
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue, as: 'issue'
          property :name, as: 'name'
          property :report_text, as: 'reportText'
          property :type, as: 'type'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1ExcessiveWakeupRateMetricSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_info, as: 'freshnessInfo', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1FreshnessInfo
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :freshnesses, as: 'freshnesses', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1FreshnessInfoFreshness
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_period, as: 'aggregationPeriod'
          property :latest_end_time, as: 'latestEndTime', class: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1ListAnomaliesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :anomalies, as: 'anomalies', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1Anomaly, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1Anomaly::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1MetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :decimal_value, as: 'decimalValue', class: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDecimal, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDecimal::Representation
      
          property :metric, as: 'metric'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1MetricsRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_period, as: 'aggregationPeriod'
          collection :dimensions, as: 'dimensions', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1DimensionValue, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1DimensionValue::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricValue, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricValue::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
          property :user_cohort, as: 'userCohort'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryAnrRateMetricSetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
          property :user_cohort, as: 'userCohort'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryCrashRateMetricSetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryErrorCountMetricSetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
          property :user_cohort, as: 'userCohort'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryExcessiveWakeupRateMetricSetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
          property :user_cohort, as: 'userCohort'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowRenderingRateMetricSetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
          property :user_cohort, as: 'userCohort'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QuerySlowStartRateMetricSetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimensions, as: 'dimensions'
          property :filter, as: 'filter'
          collection :metrics, as: 'metrics'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :timeline_spec, as: 'timelineSpec', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1TimelineSpec::Representation
      
          property :user_cohort, as: 'userCohort'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1QueryStuckBackgroundWakelockRateMetricSetResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1MetricsRow::Representation
      
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1SearchErrorIssuesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_issues, as: 'errorIssues', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ErrorIssue, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ErrorIssue::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1SearchErrorReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :error_reports, as: 'errorReports', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ErrorReport, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1ErrorReport::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1SlowRenderingRateMetricSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_info, as: 'freshnessInfo', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1SlowStartRateMetricSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_info, as: 'freshnessInfo', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1StuckBackgroundWakelockRateMetricSet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :freshness_info, as: 'freshnessInfo', class: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GooglePlayDeveloperReportingV1beta1FreshnessInfo::Representation
      
          property :name, as: 'name'
        end
      end
      
      class GooglePlayDeveloperReportingV1beta1TimelineSpec
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_period, as: 'aggregationPeriod'
          property :end_time, as: 'endTime', class: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime::Representation
      
          property :start_time, as: 'startTime', class: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeDateTime::Representation
      
        end
      end
      
      class GoogleTypeDateTime
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :hours, as: 'hours'
          property :minutes, as: 'minutes'
          property :month, as: 'month'
          property :nanos, as: 'nanos'
          property :seconds, as: 'seconds'
          property :time_zone, as: 'timeZone', class: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeTimeZone, decorator: Google::Apis::PlaydeveloperreportingV1beta1::GoogleTypeTimeZone::Representation
      
          property :utc_offset, as: 'utcOffset'
          property :year, as: 'year'
        end
      end
      
      class GoogleTypeDecimal
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleTypeTimeZone
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :version, as: 'version'
        end
      end
    end
  end
end
