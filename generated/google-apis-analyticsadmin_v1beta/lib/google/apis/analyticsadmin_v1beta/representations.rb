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
    module AnalyticsadminV1beta
      
      class GoogleAnalyticsAdminV1betaAccessBetweenFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessDimensionHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessDimensionValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessFilterExpression
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessFilterExpressionList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessInListFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessMetricHeader
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessMetricValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessNumericFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessQuota
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessQuotaStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessStringFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccountSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaConversionEvent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaCustomDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaCustomMetric
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataRetentionSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataSharingSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamWebStreamData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaFirebaseLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaGoogleAdsLink
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListAccountSummariesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListAccountsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListConversionEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListCustomMetricsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListDataStreamsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaListPropertiesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaNumericValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaProperty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaPropertySummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaRunAccessReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaRunAccessReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleProtobufEmpty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class GoogleAnalyticsAdminV1betaAccessBetweenFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :from_value, as: 'fromValue', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaNumericValue, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaNumericValue::Representation
      
          property :to_value, as: 'toValue', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaNumericValue, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaNumericValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessDateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate'
          property :start_date, as: 'startDate'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessDimensionHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessDimensionValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :between_filter, as: 'betweenFilter', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessBetweenFilter, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessBetweenFilter::Representation
      
          property :field_name, as: 'fieldName'
          property :in_list_filter, as: 'inListFilter', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessInListFilter, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessInListFilter::Representation
      
          property :numeric_filter, as: 'numericFilter', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessNumericFilter, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessNumericFilter::Representation
      
          property :string_filter, as: 'stringFilter', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessStringFilter, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessStringFilter::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessFilterExpression
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_filter, as: 'accessFilter', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilter, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilter::Representation
      
          property :and_group, as: 'andGroup', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpressionList, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpressionList::Representation
      
          property :not_expression, as: 'notExpression', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression::Representation
      
          property :or_group, as: 'orGroup', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpressionList, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpressionList::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessFilterExpressionList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :expressions, as: 'expressions', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessInListFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          collection :values, as: 'values'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessMetricHeader
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessMetricValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessNumericFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :operation, as: 'operation'
          property :value, as: 'value', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaNumericValue, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaNumericValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :desc, as: 'desc'
          property :dimension, as: 'dimension', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy::Representation
      
          property :metric, as: 'metric', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessOrderByDimensionOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension_name, as: 'dimensionName'
          property :order_type, as: 'orderType'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessOrderByMetricOrderBy
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :metric_name, as: 'metricName'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessQuota
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :concurrent_requests, as: 'concurrentRequests', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus::Representation
      
          property :server_errors_per_project_per_hour, as: 'serverErrorsPerProjectPerHour', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus::Representation
      
          property :tokens_per_day, as: 'tokensPerDay', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus::Representation
      
          property :tokens_per_hour, as: 'tokensPerHour', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus::Representation
      
          property :tokens_per_project_per_hour, as: 'tokensPerProjectPerHour', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuotaStatus::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessQuotaStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :consumed, as: 'consumed'
          property :remaining, as: 'remaining'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_values, as: 'dimensionValues', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDimensionValue, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDimensionValue::Representation
      
          collection :metric_values, as: 'metricValues', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessMetricValue, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessMetricValue::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccessStringFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :case_sensitive, as: 'caseSensitive'
          property :match_type, as: 'matchType'
          property :value, as: 'value'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :deleted, as: 'deleted'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :region_code, as: 'regionCode'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAccountSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          collection :property_summaries, as: 'propertySummaries', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaPropertySummary, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaPropertySummary::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :acknowledgement, as: 'acknowledgement'
        end
      end
      
      class GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :action, as: 'action'
          property :resource, as: 'resource'
          property :resource_after_change, as: 'resourceAfterChange', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource::Representation
      
          property :resource_before_change, as: 'resourceBeforeChange', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryChangeChangeHistoryResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
      
          property :conversion_event, as: 'conversionEvent', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent::Representation
      
          property :data_retention_settings, as: 'dataRetentionSettings', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings::Representation
      
          property :data_stream, as: 'dataStream', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
      
          property :firebase_link, as: 'firebaseLink', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink::Representation
      
          property :google_ads_link, as: 'googleAdsLink', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
      
          property :measurement_protocol_secret, as: 'measurementProtocolSecret', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
      
          property :property, as: 'property', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaChangeHistoryEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :actor_type, as: 'actorType'
          property :change_time, as: 'changeTime'
          collection :changes, as: 'changes', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChange, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryChange::Representation
      
          property :changes_filtered, as: 'changesFiltered'
          property :id, as: 'id'
          property :user_actor_email, as: 'userActorEmail'
        end
      end
      
      class GoogleAnalyticsAdminV1betaConversionEvent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :counting_method, as: 'countingMethod'
          property :create_time, as: 'createTime'
          property :custom, as: 'custom'
          property :deletable, as: 'deletable'
          property :event_name, as: 'eventName'
          property :name, as: 'name'
        end
      end
      
      class GoogleAnalyticsAdminV1betaCustomDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :disallow_ads_personalization, as: 'disallowAdsPersonalization'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :parameter_name, as: 'parameterName'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1betaCustomMetric
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :measurement_unit, as: 'measurementUnit'
          property :name, as: 'name'
          property :parameter_name, as: 'parameterName'
          collection :restricted_metric_type, as: 'restrictedMetricType'
          property :scope, as: 'scope'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataRetentionSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :event_data_retention, as: 'eventDataRetention'
          property :name, as: 'name'
          property :reset_user_data_on_new_activity, as: 'resetUserDataOnNewActivity'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataSharingSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :name, as: 'name'
          property :sharing_with_google_any_sales_enabled, as: 'sharingWithGoogleAnySalesEnabled'
          property :sharing_with_google_assigned_sales_enabled, as: 'sharingWithGoogleAssignedSalesEnabled'
          property :sharing_with_google_products_enabled, as: 'sharingWithGoogleProductsEnabled'
          property :sharing_with_google_support_enabled, as: 'sharingWithGoogleSupportEnabled'
          property :sharing_with_others_enabled, as: 'sharingWithOthersEnabled'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :android_app_stream_data, as: 'androidAppStreamData', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData::Representation
      
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :ios_app_stream_data, as: 'iosAppStreamData', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData::Representation
      
          property :name, as: 'name'
          property :type, as: 'type'
          property :update_time, as: 'updateTime'
          property :web_stream_data, as: 'webStreamData', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamWebStreamData, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStreamWebStreamData::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamAndroidAppStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :firebase_app_id, as: 'firebaseAppId'
          property :package_name, as: 'packageName'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamIosAppStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bundle_id, as: 'bundleId'
          property :firebase_app_id, as: 'firebaseAppId'
        end
      end
      
      class GoogleAnalyticsAdminV1betaDataStreamWebStreamData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :default_uri, as: 'defaultUri'
          property :firebase_app_id, as: 'firebaseAppId'
          property :measurement_id, as: 'measurementId'
        end
      end
      
      class GoogleAnalyticsAdminV1betaFirebaseLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :project, as: 'project'
        end
      end
      
      class GoogleAnalyticsAdminV1betaGoogleAdsLink
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :ads_personalization_enabled, as: 'adsPersonalizationEnabled'
          property :can_manage_clients, as: 'canManageClients'
          property :create_time, as: 'createTime'
          property :creator_email_address, as: 'creatorEmailAddress'
          property :customer_id, as: 'customerId'
          property :name, as: 'name'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListAccountSummariesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :account_summaries, as: 'accountSummaries', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccountSummary, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccountSummary::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListAccountsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :accounts, as: 'accounts', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListConversionEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :conversion_events, as: 'conversionEvents', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_dimensions, as: 'customDimensions', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListCustomMetricsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :custom_metrics, as: 'customMetrics', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListDataStreamsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_streams, as: 'dataStreams', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :firebase_links, as: 'firebaseLinks', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :google_ads_links, as: 'googleAdsLinks', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :measurement_protocol_secrets, as: 'measurementProtocolSecrets', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleAnalyticsAdminV1betaListPropertiesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :properties, as: 'properties', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :name, as: 'name'
          property :secret_value, as: 'secretValue'
        end
      end
      
      class GoogleAnalyticsAdminV1betaNumericValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :double_value, as: 'doubleValue'
          property :int64_value, :numeric_string => true, as: 'int64Value'
        end
      end
      
      class GoogleAnalyticsAdminV1betaProperty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account'
          property :create_time, as: 'createTime'
          property :currency_code, as: 'currencyCode'
          property :delete_time, as: 'deleteTime'
          property :display_name, as: 'displayName'
          property :expire_time, as: 'expireTime'
          property :industry_category, as: 'industryCategory'
          property :name, as: 'name'
          property :parent, as: 'parent'
          property :property_type, as: 'propertyType'
          property :service_level, as: 'serviceLevel'
          property :time_zone, as: 'timeZone'
          property :update_time, as: 'updateTime'
        end
      end
      
      class GoogleAnalyticsAdminV1betaPropertySummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :display_name, as: 'displayName'
          property :parent, as: 'parent'
          property :property, as: 'property'
          property :property_type, as: 'propertyType'
        end
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account, as: 'account', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
      
          property :redirect_uri, as: 'redirectUri'
        end
      end
      
      class GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_ticket_id, as: 'accountTicketId'
        end
      end
      
      class GoogleAnalyticsAdminV1betaRunAccessReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDateRange, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDateRange::Representation
      
          property :dimension_filter, as: 'dimensionFilter', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression::Representation
      
          collection :dimensions, as: 'dimensions', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDimension, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDimension::Representation
      
          property :limit, :numeric_string => true, as: 'limit'
          property :metric_filter, as: 'metricFilter', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessFilterExpression::Representation
      
          collection :metrics, as: 'metrics', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessMetric, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessMetric::Representation
      
          property :offset, :numeric_string => true, as: 'offset'
          collection :order_bys, as: 'orderBys', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessOrderBy, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessOrderBy::Representation
      
          property :return_entity_quota, as: 'returnEntityQuota'
          property :time_zone, as: 'timeZone'
        end
      end
      
      class GoogleAnalyticsAdminV1betaRunAccessReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_headers, as: 'dimensionHeaders', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDimensionHeader, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessDimensionHeader::Representation
      
          collection :metric_headers, as: 'metricHeaders', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessMetricHeader, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessMetricHeader::Representation
      
          property :quota, as: 'quota', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuota, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessQuota::Representation
      
          property :row_count, as: 'rowCount'
          collection :rows, as: 'rows', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessRow, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccessRow::Representation
      
        end
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :action, as: 'action'
          collection :actor_email, as: 'actorEmail'
          property :earliest_change_time, as: 'earliestChangeTime'
          property :latest_change_time, as: 'latestChangeTime'
          property :page_size, as: 'pageSize'
          property :page_token, as: 'pageToken'
          property :property, as: 'property'
          collection :resource_type, as: 'resourceType'
        end
      end
      
      class GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :change_history_events, as: 'changeHistoryEvents', class: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryEvent, decorator: Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaChangeHistoryEvent::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class GoogleProtobufEmpty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
    end
  end
end
