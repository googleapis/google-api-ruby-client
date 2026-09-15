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
    module CurationpartnersV1
      
      class AccessControlSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivateCuratedPackageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ActivateDataSegmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdSize
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CriteriaTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class CuratedPackage
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DataSegment
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Date
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeactivateCuratedPackageRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeactivateDataSegmentRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DoubleList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FetchReportResultRowsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Field
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FieldFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Filter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FilterList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FixedDateRange
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IntList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListCuratedPackagesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDataSegmentsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListMediaPlannersResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListReportsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MediaPlanner
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MetricValueGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Money
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Operation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackagePlacementTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackagePublisherProvidedSignalsTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PackageVideoTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Report
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportDefinition
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ReportValue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunReportMetadata
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunReportRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunReportResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Sort
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Status
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringList
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringTargetingDimension
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TaxonomyTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoPlayerSizeTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoPlcmtTargeting
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AccessControlSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :allowlisted_media_planners, as: 'allowlistedMediaPlanners'
        end
      end
      
      class ActivateCuratedPackageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class ActivateDataSegmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class AdSize
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :height, :numeric_string => true, as: 'height'
          property :type, as: 'type'
          property :width, :numeric_string => true, as: 'width'
        end
      end
      
      class CriteriaTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_criteria_ids, as: 'excludedCriteriaIds'
          collection :targeted_criteria_ids, as: 'targetedCriteriaIds'
        end
      end
      
      class CuratedPackage
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :access_settings, as: 'accessSettings', class: Google::Apis::CurationpartnersV1::AccessControlSettings, decorator: Google::Apis::CurationpartnersV1::AccessControlSettings::Representation
      
          property :create_time, as: 'createTime'
          property :curation_fee_visibility, as: 'curationFeeVisibility'
          property :description, as: 'description'
          property :display_name, as: 'displayName'
          property :fee_cpm, as: 'feeCpm', class: Google::Apis::CurationpartnersV1::Money, decorator: Google::Apis::CurationpartnersV1::Money::Representation
      
          property :floor_price_cpm, as: 'floorPriceCpm', class: Google::Apis::CurationpartnersV1::Money, decorator: Google::Apis::CurationpartnersV1::Money::Representation
      
          property :millipercent_of_media_fee, :numeric_string => true, as: 'millipercentOfMediaFee'
          property :name, as: 'name'
          property :state, as: 'state'
          property :targeting, as: 'targeting', class: Google::Apis::CurationpartnersV1::PackageTargeting, decorator: Google::Apis::CurationpartnersV1::PackageTargeting::Representation
      
          property :update_time, as: 'updateTime'
        end
      end
      
      class DataSegment
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :cpm_fee, as: 'cpmFee', class: Google::Apis::CurationpartnersV1::Money, decorator: Google::Apis::CurationpartnersV1::Money::Representation
      
          property :create_time, as: 'createTime'
          property :millipercent_of_media_fee, :numeric_string => true, as: 'millipercentOfMediaFee'
          property :name, as: 'name'
          property :state, as: 'state'
          property :update_time, as: 'updateTime'
          property :user_list_id, as: 'userListId'
        end
      end
      
      class Date
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :day, as: 'day'
          property :month, as: 'month'
          property :year, as: 'year'
        end
      end
      
      class DateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :fixed, as: 'fixed', class: Google::Apis::CurationpartnersV1::FixedDateRange, decorator: Google::Apis::CurationpartnersV1::FixedDateRange::Representation
      
          property :relative, as: 'relative'
        end
      end
      
      class DeactivateCuratedPackageRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DeactivateDataSegmentRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class DoubleList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class FetchReportResultRowsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :date_ranges, as: 'dateRanges', class: Google::Apis::CurationpartnersV1::FixedDateRange, decorator: Google::Apis::CurationpartnersV1::FixedDateRange::Representation
      
          property :next_page_token, as: 'nextPageToken'
          collection :rows, as: 'rows', class: Google::Apis::CurationpartnersV1::Row, decorator: Google::Apis::CurationpartnersV1::Row::Representation
      
          property :run_time, as: 'runTime'
          property :total_row_count, as: 'totalRowCount'
        end
      end
      
      class Field
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :metric, as: 'metric'
        end
      end
      
      class FieldFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :field, as: 'field', class: Google::Apis::CurationpartnersV1::Field, decorator: Google::Apis::CurationpartnersV1::Field::Representation
      
          property :operation, as: 'operation'
          collection :values, as: 'values', class: Google::Apis::CurationpartnersV1::ReportValue, decorator: Google::Apis::CurationpartnersV1::ReportValue::Representation
      
        end
      end
      
      class Filter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :and_filter, as: 'andFilter', class: Google::Apis::CurationpartnersV1::FilterList, decorator: Google::Apis::CurationpartnersV1::FilterList::Representation
      
          property :field_filter, as: 'fieldFilter', class: Google::Apis::CurationpartnersV1::FieldFilter, decorator: Google::Apis::CurationpartnersV1::FieldFilter::Representation
      
          property :not_filter, as: 'notFilter', class: Google::Apis::CurationpartnersV1::Filter, decorator: Google::Apis::CurationpartnersV1::Filter::Representation
      
          property :or_filter, as: 'orFilter', class: Google::Apis::CurationpartnersV1::FilterList, decorator: Google::Apis::CurationpartnersV1::FilterList::Representation
      
        end
      end
      
      class FilterList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::CurationpartnersV1::Filter, decorator: Google::Apis::CurationpartnersV1::Filter::Representation
      
        end
      end
      
      class FixedDateRange
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_date, as: 'endDate', class: Google::Apis::CurationpartnersV1::Date, decorator: Google::Apis::CurationpartnersV1::Date::Representation
      
          property :start_date, as: 'startDate', class: Google::Apis::CurationpartnersV1::Date, decorator: Google::Apis::CurationpartnersV1::Date::Representation
      
        end
      end
      
      class IntList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class ListCuratedPackagesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :curated_packages, as: 'curatedPackages', class: Google::Apis::CurationpartnersV1::CuratedPackage, decorator: Google::Apis::CurationpartnersV1::CuratedPackage::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListDataSegmentsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :data_segments, as: 'dataSegments', class: Google::Apis::CurationpartnersV1::DataSegment, decorator: Google::Apis::CurationpartnersV1::DataSegment::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListMediaPlannersResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :media_planners, as: 'mediaPlanners', class: Google::Apis::CurationpartnersV1::MediaPlanner, decorator: Google::Apis::CurationpartnersV1::MediaPlanner::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListReportsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :reports, as: 'reports', class: Google::Apis::CurationpartnersV1::Report, decorator: Google::Apis::CurationpartnersV1::Report::Representation
      
          property :total_size, as: 'totalSize'
        end
      end
      
      class MediaPlanner
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :account_id, as: 'accountId'
          collection :ancestor_names, as: 'ancestorNames'
          property :display_name, as: 'displayName'
          property :name, as: 'name'
        end
      end
      
      class MetricValueGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :primary_values, as: 'primaryValues', class: Google::Apis::CurationpartnersV1::ReportValue, decorator: Google::Apis::CurationpartnersV1::ReportValue::Representation
      
        end
      end
      
      class Money
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :nanos, as: 'nanos'
          property :units, :numeric_string => true, as: 'units'
        end
      end
      
      class Operation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :done, as: 'done'
          property :error, as: 'error', class: Google::Apis::CurationpartnersV1::Status, decorator: Google::Apis::CurationpartnersV1::Status::Representation
      
          hash :metadata, as: 'metadata'
          property :name, as: 'name'
          hash :response, as: 'response'
        end
      end
      
      class PackagePlacementTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :included_mobile_app_category_targeting, as: 'includedMobileAppCategoryTargeting'
          property :mobile_app_targeting, as: 'mobileAppTargeting', class: Google::Apis::CurationpartnersV1::StringTargetingDimension, decorator: Google::Apis::CurationpartnersV1::StringTargetingDimension::Representation
      
          property :uri_targeting, as: 'uriTargeting', class: Google::Apis::CurationpartnersV1::StringTargetingDimension, decorator: Google::Apis::CurationpartnersV1::StringTargetingDimension::Representation
      
        end
      end
      
      class PackagePublisherProvidedSignalsTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audience_targeting, as: 'audienceTargeting', class: Google::Apis::CurationpartnersV1::TaxonomyTargeting, decorator: Google::Apis::CurationpartnersV1::TaxonomyTargeting::Representation
      
          property :content_targeting, as: 'contentTargeting', class: Google::Apis::CurationpartnersV1::TaxonomyTargeting, decorator: Google::Apis::CurationpartnersV1::TaxonomyTargeting::Representation
      
          property :video_and_audio_signals_targeting, as: 'videoAndAudioSignalsTargeting', class: Google::Apis::CurationpartnersV1::StringTargetingDimension, decorator: Google::Apis::CurationpartnersV1::StringTargetingDimension::Representation
      
        end
      end
      
      class PackageTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :geo_targeting, as: 'geoTargeting', class: Google::Apis::CurationpartnersV1::CriteriaTargeting, decorator: Google::Apis::CurationpartnersV1::CriteriaTargeting::Representation
      
          property :included_accelerated_mobile_page_type, as: 'includedAcceleratedMobilePageType'
          collection :included_ad_sizes, as: 'includedAdSizes', class: Google::Apis::CurationpartnersV1::AdSize, decorator: Google::Apis::CurationpartnersV1::AdSize::Representation
      
          collection :included_authorized_seller_statuses, as: 'includedAuthorizedSellerStatuses'
          property :included_creative_format, as: 'includedCreativeFormat'
          collection :included_data_segments, as: 'includedDataSegments'
          collection :included_device_types, as: 'includedDeviceTypes'
          property :included_environment, as: 'includedEnvironment'
          collection :included_native_inventory_types, as: 'includedNativeInventoryTypes'
          collection :included_open_measurement_types, as: 'includedOpenMeasurementTypes'
          collection :included_restricted_categories, as: 'includedRestrictedCategories'
          property :included_rewarded_type, as: 'includedRewardedType'
          property :language_targeting, as: 'languageTargeting', class: Google::Apis::CurationpartnersV1::StringTargetingDimension, decorator: Google::Apis::CurationpartnersV1::StringTargetingDimension::Representation
      
          property :minimum_predicted_click_through_rate_percentage_millis, :numeric_string => true, as: 'minimumPredictedClickThroughRatePercentageMillis'
          property :minimum_predicted_viewability_percentage, :numeric_string => true, as: 'minimumPredictedViewabilityPercentage'
          property :placement_targeting, as: 'placementTargeting', class: Google::Apis::CurationpartnersV1::PackagePlacementTargeting, decorator: Google::Apis::CurationpartnersV1::PackagePlacementTargeting::Representation
      
          property :publisher_provided_signals_targeting, as: 'publisherProvidedSignalsTargeting', class: Google::Apis::CurationpartnersV1::PackagePublisherProvidedSignalsTargeting, decorator: Google::Apis::CurationpartnersV1::PackagePublisherProvidedSignalsTargeting::Representation
      
          property :publisher_targeting, as: 'publisherTargeting', class: Google::Apis::CurationpartnersV1::StringTargetingDimension, decorator: Google::Apis::CurationpartnersV1::StringTargetingDimension::Representation
      
          property :vertical_targeting, as: 'verticalTargeting', class: Google::Apis::CurationpartnersV1::CriteriaTargeting, decorator: Google::Apis::CurationpartnersV1::CriteriaTargeting::Representation
      
          property :video_targeting, as: 'videoTargeting', class: Google::Apis::CurationpartnersV1::PackageVideoTargeting, decorator: Google::Apis::CurationpartnersV1::PackageVideoTargeting::Representation
      
        end
      end
      
      class PackageVideoTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :included_content_delivery_method, as: 'includedContentDeliveryMethod'
          property :included_maximum_ad_duration_targeting, as: 'includedMaximumAdDurationTargeting'
          collection :included_mime_types, as: 'includedMimeTypes'
          collection :included_playback_methods, as: 'includedPlaybackMethods'
          property :included_player_size_targeting, as: 'includedPlayerSizeTargeting', class: Google::Apis::CurationpartnersV1::VideoPlayerSizeTargeting, decorator: Google::Apis::CurationpartnersV1::VideoPlayerSizeTargeting::Representation
      
          collection :included_position_types, as: 'includedPositionTypes'
          property :minimum_predicted_completion_rate_percentage, :numeric_string => true, as: 'minimumPredictedCompletionRatePercentage'
          property :plcmt_targeting, as: 'plcmtTargeting', class: Google::Apis::CurationpartnersV1::VideoPlcmtTargeting, decorator: Google::Apis::CurationpartnersV1::VideoPlcmtTargeting::Representation
      
        end
      end
      
      class Report
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :display_name, as: 'displayName'
          property :locale, as: 'locale'
          property :name, as: 'name'
          property :report_definition, as: 'reportDefinition', class: Google::Apis::CurationpartnersV1::ReportDefinition, decorator: Google::Apis::CurationpartnersV1::ReportDefinition::Representation
      
          property :report_id, :numeric_string => true, as: 'reportId'
          property :update_time, as: 'updateTime'
        end
      end
      
      class ReportDefinition
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency_code, as: 'currencyCode'
          property :date_range, as: 'dateRange', class: Google::Apis::CurationpartnersV1::DateRange, decorator: Google::Apis::CurationpartnersV1::DateRange::Representation
      
          collection :dimensions, as: 'dimensions'
          collection :filters, as: 'filters', class: Google::Apis::CurationpartnersV1::Filter, decorator: Google::Apis::CurationpartnersV1::Filter::Representation
      
          collection :metrics, as: 'metrics'
          collection :sorts, as: 'sorts', class: Google::Apis::CurationpartnersV1::Sort, decorator: Google::Apis::CurationpartnersV1::Sort::Representation
      
          property :time_zone, as: 'timeZone'
          property :time_zone_source, as: 'timeZoneSource'
        end
      end
      
      class ReportValue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bool_value, as: 'boolValue'
          property :bytes_value, :base64 => true, as: 'bytesValue'
          property :double_list_value, as: 'doubleListValue', class: Google::Apis::CurationpartnersV1::DoubleList, decorator: Google::Apis::CurationpartnersV1::DoubleList::Representation
      
          property :double_value, as: 'doubleValue'
          property :int_list_value, as: 'intListValue', class: Google::Apis::CurationpartnersV1::IntList, decorator: Google::Apis::CurationpartnersV1::IntList::Representation
      
          property :int_value, :numeric_string => true, as: 'intValue'
          property :string_list_value, as: 'stringListValue', class: Google::Apis::CurationpartnersV1::StringList, decorator: Google::Apis::CurationpartnersV1::StringList::Representation
      
          property :string_value, as: 'stringValue'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :dimension_values, as: 'dimensionValues', class: Google::Apis::CurationpartnersV1::ReportValue, decorator: Google::Apis::CurationpartnersV1::ReportValue::Representation
      
          collection :metric_value_groups, as: 'metricValueGroups', class: Google::Apis::CurationpartnersV1::MetricValueGroup, decorator: Google::Apis::CurationpartnersV1::MetricValueGroup::Representation
      
        end
      end
      
      class RunReportMetadata
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :percent_complete, as: 'percentComplete'
          property :report, as: 'report'
        end
      end
      
      class RunReportRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class RunReportResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :report_result, as: 'reportResult'
        end
      end
      
      class Sort
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :descending, as: 'descending'
          property :field, as: 'field', class: Google::Apis::CurationpartnersV1::Field, decorator: Google::Apis::CurationpartnersV1::Field::Representation
      
        end
      end
      
      class Status
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :code, as: 'code'
          collection :details, as: 'details'
          property :message, as: 'message'
        end
      end
      
      class StringList
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :values, as: 'values'
        end
      end
      
      class StringTargetingDimension
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selection_type, as: 'selectionType'
          collection :values, as: 'values'
        end
      end
      
      class TaxonomyTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :excluded_taxonomy_ids, as: 'excludedTaxonomyIds'
          collection :targeted_taxonomy_ids, as: 'targetedTaxonomyIds'
        end
      end
      
      class VideoPlayerSizeTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :minimum_height, :numeric_string => true, as: 'minimumHeight'
          property :minimum_width, :numeric_string => true, as: 'minimumWidth'
        end
      end
      
      class VideoPlcmtTargeting
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :selection_type, as: 'selectionType'
          collection :video_plcmt_types, as: 'videoPlcmtTypes'
        end
      end
    end
  end
end
