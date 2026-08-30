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
      
      # Settings for controlling access to a curated package.
      class AccessControlSettings
        include Google::Apis::Core::Hashable
      
        # Required. Immutable. The list of media planners that are explicitly granted
        # access to the curated package. Eligible media planners can be found in the
        # mediaPlanners.list method. Only a single media planner may be allowlisted at
        # this time. Format: `mediaPlanners/`mediaPlannerAccountId``
        # Corresponds to the JSON property `allowlistedMediaPlanners`
        # @return [Array<String>]
        attr_accessor :allowlisted_media_planners
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allowlisted_media_planners = args[:allowlisted_media_planners] if args.key?(:allowlisted_media_planners)
        end
      end
      
      # Request message for ActivateCuratedPackage.
      class ActivateCuratedPackageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for activating a data segment
      class ActivateDataSegmentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Represents size of a single ad slot, or a creative.
      class AdSize
        include Google::Apis::Core::Hashable
      
        # The height of the ad slot in pixels. This field will be present only when size
        # type is `PIXEL`.
        # Corresponds to the JSON property `height`
        # @return [Fixnum]
        attr_accessor :height
      
        # The type of the ad slot size.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # The width of the ad slot in pixels. This field will be present only when size
        # type is `PIXEL`.
        # Corresponds to the JSON property `width`
        # @return [Fixnum]
        attr_accessor :width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @height = args[:height] if args.key?(:height)
          @type = args[:type] if args.key?(:type)
          @width = args[:width] if args.key?(:width)
        end
      end
      
      # Generic targeting used for targeting dimensions that contains a list of
      # included and excluded numeric IDs. This cannot be filtered using list filter
      # syntax.
      class CriteriaTargeting
        include Google::Apis::Core::Hashable
      
        # A list of numeric IDs to be excluded.
        # Corresponds to the JSON property `excludedCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :excluded_criteria_ids
      
        # A list of numeric IDs to be included.
        # Corresponds to the JSON property `targetedCriteriaIds`
        # @return [Array<Fixnum>]
        attr_accessor :targeted_criteria_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_criteria_ids = args[:excluded_criteria_ids] if args.key?(:excluded_criteria_ids)
          @targeted_criteria_ids = args[:targeted_criteria_ids] if args.key?(:targeted_criteria_ids)
        end
      end
      
      # Represents a curated package of inventory created and managed by a Curator.
      class CuratedPackage
        include Google::Apis::Core::Hashable
      
        # Settings for controlling access to a curated package.
        # Corresponds to the JSON property `accessSettings`
        # @return [Google::Apis::CurationpartnersV1::AccessControlSettings]
        attr_accessor :access_settings
      
        # Output only. The timestamp when the curated package was created. Can be used
        # to filter the response of the curatedPackages.list method.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Immutable. The visibility of the combined curation package fee and
        # data segment fees (the total curation fee).
        # Corresponds to the JSON property `curationFeeVisibility`
        # @return [String]
        attr_accessor :curation_fee_visibility
      
        # Optional. A description of the curated package, provided by the curator.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Required. The display name assigned to the curated package by the curator. Can
        # be used to filter the response of the curatedPackages.list method.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `feeCpm`
        # @return [Google::Apis::CurationpartnersV1::Money]
        attr_accessor :fee_cpm
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `floorPriceCpm`
        # @return [Google::Apis::CurationpartnersV1::Money]
        attr_accessor :floor_price_cpm
      
        # Optional. The fee will be charged as a percentage of the impression cost,
        # represented in millipercent. For example, 1% is represented as 1000.
        # Corresponds to the JSON property `millipercentOfMediaFee`
        # @return [Fixnum]
        attr_accessor :millipercent_of_media_fee
      
        # Identifier. The unique resource name for the curated package. Format: `
        # curators/`accountId`/curatedPackages/`curatedPackageId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the curated package. Can be used to filter the
        # response of the curatedPackages.list method.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Targeting criteria for curated and auction packages.
        # Corresponds to the JSON property `targeting`
        # @return [Google::Apis::CurationpartnersV1::PackageTargeting]
        attr_accessor :targeting
      
        # Output only. The timestamp when the curated package was last updated. Can be
        # used to filter the response of the curatedPackages.list method.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_settings = args[:access_settings] if args.key?(:access_settings)
          @create_time = args[:create_time] if args.key?(:create_time)
          @curation_fee_visibility = args[:curation_fee_visibility] if args.key?(:curation_fee_visibility)
          @description = args[:description] if args.key?(:description)
          @display_name = args[:display_name] if args.key?(:display_name)
          @fee_cpm = args[:fee_cpm] if args.key?(:fee_cpm)
          @floor_price_cpm = args[:floor_price_cpm] if args.key?(:floor_price_cpm)
          @millipercent_of_media_fee = args[:millipercent_of_media_fee] if args.key?(:millipercent_of_media_fee)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @targeting = args[:targeting] if args.key?(:targeting)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Defines an identifier for a segment of inventory that can be targeted by
      # curators or media planners in the deals or auction packages UI. Curation of
      # inventory is done by curators on external platforms. -- Next ID: 9 --
      class DataSegment
        include Google::Apis::Core::Hashable
      
        # Represents an amount of money with its currency type.
        # Corresponds to the JSON property `cpmFee`
        # @return [Google::Apis::CurationpartnersV1::Money]
        attr_accessor :cpm_fee
      
        # Output only. Time the data segment was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. The fee will be charged as a percentage of the impression cost,
        # represented in millipercent. For example, 1% is represented as 1000.
        # Corresponds to the JSON property `millipercentOfMediaFee`
        # @return [Fixnum]
        attr_accessor :millipercent_of_media_fee
      
        # Immutable. Identifier. The unique identifier for the data segment. Account ID
        # corresponds to the account ID that created the segment. Format: `curators/`
        # curatorAccountId`/dataSegments/`curatorDataSegmentId``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The state of the data segment.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. Time the data segment was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Optional. Immutable. The ID of the User List wrapped by this Data Segment.
        # Curators with a linked Data Partner account can create a data segment that
        # wraps a user list owned by the linked Data Partner account. User lists can be
        # uploaded and managed using the [Data Manager API](https://developers.google.
        # com/data-manager/api/data-partners/audiences). Linking a user list to a data
        # segment lets you define a segment of inventory that is based on an audience
        # you create.
        # Corresponds to the JSON property `userListId`
        # @return [String]
        attr_accessor :user_list_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cpm_fee = args[:cpm_fee] if args.key?(:cpm_fee)
          @create_time = args[:create_time] if args.key?(:create_time)
          @millipercent_of_media_fee = args[:millipercent_of_media_fee] if args.key?(:millipercent_of_media_fee)
          @name = args[:name] if args.key?(:name)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
          @user_list_id = args[:user_list_id] if args.key?(:user_list_id)
        end
      end
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values. * A month
      # and day, with a zero year (for example, an anniversary). * A year on its own,
      # with a zero month and a zero day. * A year and month, with a zero day (for
      # example, a credit card expiration date). Related types: * google.type.
      # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
      class Date
        include Google::Apis::Core::Hashable
      
        # Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        # specify a year by itself or a year and month where the day isn't significant.
        # Corresponds to the JSON property `day`
        # @return [Fixnum]
        attr_accessor :day
      
        # Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        # and day.
        # Corresponds to the JSON property `month`
        # @return [Fixnum]
        attr_accessor :month
      
        # Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        # year.
        # Corresponds to the JSON property `year`
        # @return [Fixnum]
        attr_accessor :year
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @year = args[:year] if args.key?(:year)
        end
      end
      
      # A date range for a report.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # A date range between two fixed dates (inclusive of end date).
        # Corresponds to the JSON property `fixed`
        # @return [Google::Apis::CurationpartnersV1::FixedDateRange]
        attr_accessor :fixed
      
        # A relative date range.
        # Corresponds to the JSON property `relative`
        # @return [String]
        attr_accessor :relative
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @fixed = args[:fixed] if args.key?(:fixed)
          @relative = args[:relative] if args.key?(:relative)
        end
      end
      
      # Request message for DeactivateCuratedPackage.
      class DeactivateCuratedPackageRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Request message for deactivating a data segment
      class DeactivateDataSegmentRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A list of double values.
      class DoubleList
        include Google::Apis::Core::Hashable
      
        # The values
        # Corresponds to the JSON property `values`
        # @return [Array<Float>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); `
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # The response message for the fetch report result rows endpoint.
      class FetchReportResultRowsResponse
        include Google::Apis::Core::Hashable
      
        # The computed fixed date ranges this report includes. Only returned with the
        # first page of results (when page_token is not included in the request).
        # Corresponds to the JSON property `dateRanges`
        # @return [Array<Google::Apis::CurationpartnersV1::FixedDateRange>]
        attr_accessor :date_ranges
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Up to `page_size` rows of report data.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::CurationpartnersV1::Row>]
        attr_accessor :rows
      
        # The time at which the report was scheduled to run. For non-scheduled reports,
        # this is the time at which the report was requested to be run.
        # Corresponds to the JSON property `runTime`
        # @return [String]
        attr_accessor :run_time
      
        # The total number of rows available from this report. Useful for pagination.
        # Only returned with the first page of results (when page_token is not included
        # in the request).
        # Corresponds to the JSON property `totalRowCount`
        # @return [Fixnum]
        attr_accessor :total_row_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_ranges = args[:date_ranges] if args.key?(:date_ranges)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @rows = args[:rows] if args.key?(:rows)
          @run_time = args[:run_time] if args.key?(:run_time)
          @total_row_count = args[:total_row_count] if args.key?(:total_row_count)
        end
      end
      
      # A dimension or a metric in a report.
      class Field
        include Google::Apis::Core::Hashable
      
        # The dimension this field represents.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # The metric this field represents.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
        end
      end
      
      # A filter on a specific field.
      class FieldFilter
        include Google::Apis::Core::Hashable
      
        # A dimension or a metric in a report.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::CurationpartnersV1::Field]
        attr_accessor :field
      
        # Required. The operation of this filter.
        # Corresponds to the JSON property `operation`
        # @return [String]
        attr_accessor :operation
      
        # Required. Values to filter to.
        # Corresponds to the JSON property `values`
        # @return [Array<Google::Apis::CurationpartnersV1::ReportValue>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @field = args[:field] if args.key?(:field)
          @operation = args[:operation] if args.key?(:operation)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # A filter over one or more fields.
      class Filter
        include Google::Apis::Core::Hashable
      
        # A list of filters.
        # Corresponds to the JSON property `andFilter`
        # @return [Google::Apis::CurationpartnersV1::FilterList]
        attr_accessor :and_filter
      
        # A filter on a specific field.
        # Corresponds to the JSON property `fieldFilter`
        # @return [Google::Apis::CurationpartnersV1::FieldFilter]
        attr_accessor :field_filter
      
        # A filter over one or more fields.
        # Corresponds to the JSON property `notFilter`
        # @return [Google::Apis::CurationpartnersV1::Filter]
        attr_accessor :not_filter
      
        # A list of filters.
        # Corresponds to the JSON property `orFilter`
        # @return [Google::Apis::CurationpartnersV1::FilterList]
        attr_accessor :or_filter
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @and_filter = args[:and_filter] if args.key?(:and_filter)
          @field_filter = args[:field_filter] if args.key?(:field_filter)
          @not_filter = args[:not_filter] if args.key?(:not_filter)
          @or_filter = args[:or_filter] if args.key?(:or_filter)
        end
      end
      
      # A list of filters.
      class FilterList
        include Google::Apis::Core::Hashable
      
        # Required. A list of filters.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::CurationpartnersV1::Filter>]
        attr_accessor :filters
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
        end
      end
      
      # A date range between two fixed dates (inclusive of end date).
      class FixedDateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::CurationpartnersV1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values. * A month
        # and day, with a zero year (for example, an anniversary). * A year on its own,
        # with a zero month and a zero day. * A year and month, with a zero day (for
        # example, a credit card expiration date). Related types: * google.type.
        # TimeOfDay * google.type.DateTime * google.protobuf.Timestamp
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::CurationpartnersV1::Date]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_date = args[:end_date] if args.key?(:end_date)
          @start_date = args[:start_date] if args.key?(:start_date)
        end
      end
      
      # A list of integer values.
      class IntList
        include Google::Apis::Core::Hashable
      
        # The values
        # Corresponds to the JSON property `values`
        # @return [Array<Fixnum>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Response message for ListCuratedPackages.
      class ListCuratedPackagesResponse
        include Google::Apis::Core::Hashable
      
        # The list of curated packages.
        # Corresponds to the JSON property `curatedPackages`
        # @return [Array<Google::Apis::CurationpartnersV1::CuratedPackage>]
        attr_accessor :curated_packages
      
        # A token to retrieve the next page of results. Pass this value in the
        # ListCuratedPackagesRequest.pageToken field in the subsequent call to `
        # ListCuratedPackages` method to retrieve the next page of results. If empty,
        # then there are no more results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @curated_packages = args[:curated_packages] if args.key?(:curated_packages)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for listing data segments.
      class ListDataSegmentsResponse
        include Google::Apis::Core::Hashable
      
        # The list of data segments.
        # Corresponds to the JSON property `dataSegments`
        # @return [Array<Google::Apis::CurationpartnersV1::DataSegment>]
        attr_accessor :data_segments
      
        # Continuation token for fetching the next page of results. Pass this value in
        # the ListDataSegmentsRequest.pageToken field in the subsequent call to the `
        # ListDataSegments` method to retrieve the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data_segments = args[:data_segments] if args.key?(:data_segments)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # A response containing media planner account information.
      class ListMediaPlannersResponse
        include Google::Apis::Core::Hashable
      
        # List of media planners.
        # Corresponds to the JSON property `mediaPlanners`
        # @return [Array<Google::Apis::CurationpartnersV1::MediaPlanner>]
        attr_accessor :media_planners
      
        # A token which can be passed to a subsequent call to the ListMediaPlanners
        # method to retrieve the next page of results in ListMediaPlannersRequest.
        # page_token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @media_planners = args[:media_planners] if args.key?(:media_planners)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response object for `ListReportsResponse` containing matching `Report` objects.
      class ListReportsResponse
        include Google::Apis::Core::Hashable
      
        # A token, which can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The `Report` objects from the specified network.
        # Corresponds to the JSON property `reports`
        # @return [Array<Google::Apis::CurationpartnersV1::Report>]
        attr_accessor :reports
      
        # Total number of `Report` objects. If a filter was included in the request,
        # this reflects the total number after the filtering is applied. `total_size`
        # won't be calculated in the response unless it has been included in a response
        # field mask. The response field mask can be provided to the method by using the
        # URL parameter `$fields` or `fields`, or by using the HTTP/gRPC header `X-Goog-
        # FieldMask`. For more information, see https://developers.google.com/ad-manager/
        # api/beta/field-masks
        # Corresponds to the JSON property `totalSize`
        # @return [Fixnum]
        attr_accessor :total_size
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @reports = args[:reports] if args.key?(:reports)
          @total_size = args[:total_size] if args.key?(:total_size)
        end
      end
      
      # Represents a media planner account.
      class MediaPlanner
        include Google::Apis::Core::Hashable
      
        # Output only. Account ID of the media planner.
        # Corresponds to the JSON property `accountId`
        # @return [String]
        attr_accessor :account_id
      
        # Output only. The ancestor names of the media planner. Format: `mediaPlanners/`
        # mediaPlannerAccountId``. Can be used to filter the response of the
        # mediaPlanners.list method.
        # Corresponds to the JSON property `ancestorNames`
        # @return [Array<String>]
        attr_accessor :ancestor_names
      
        # Output only. The display name of the media planner. Can be used to filter the
        # response of the mediaPlanners.list method.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Identifier. The unique resource name of the media planner. Format: `
        # mediaPlanners/`mediaPlannerAccountId``. Can be used to filter the response of
        # the mediaPlanners.list method.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account_id = args[:account_id] if args.key?(:account_id)
          @ancestor_names = args[:ancestor_names] if args.key?(:ancestor_names)
          @display_name = args[:display_name] if args.key?(:display_name)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Contains all metric values requested for a single date range and set of column
      # dimension values (returned in the columns field of the response). The order of
      # the metrics in each field corresponds to the order of the metrics specified in
      # the request.
      class MetricValueGroup
        include Google::Apis::Core::Hashable
      
        # Data for the PRIMARY MetricValueType.
        # Corresponds to the JSON property `primaryValues`
        # @return [Array<Google::Apis::CurationpartnersV1::ReportValue>]
        attr_accessor :primary_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @primary_values = args[:primary_values] if args.key?(:primary_values)
        end
      end
      
      # Represents an amount of money with its currency type.
      class Money
        include Google::Apis::Core::Hashable
      
        # The three-letter currency code defined in ISO 4217.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Number of nano (10^-9) units of the amount. The value must be between -999,999,
        # 999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        # positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        # negative. If `units` is negative, `nanos` must be negative or zero. For
        # example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # Corresponds to the JSON property `nanos`
        # @return [Fixnum]
        attr_accessor :nanos
      
        # The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        # 1 unit is one US dollar.
        # Corresponds to the JSON property `units`
        # @return [Fixnum]
        attr_accessor :units
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @nanos = args[:nanos] if args.key?(:nanos)
          @units = args[:units] if args.key?(:units)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::CurationpartnersV1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal, successful response of the operation. If the original method
        # returns no data on success, such as `Delete`, the response is `google.protobuf.
        # Empty`. If the original method is standard `Get`/`Create`/`Update`, the
        # response should be the resource. For other methods, the response should have
        # the type `XxxResponse`, where `Xxx` is the original method name. For example,
        # if the original method name is `TakeSnapshot()`, the inferred response type is
        # `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # Represents targeting about where the ads can appear, for example, certain
      # sites or mobile applications. Different placement targeting types will be
      # logically OR'ed.
      class PackagePlacementTargeting
        include Google::Apis::Core::Hashable
      
        # Optional. The list of targeted mobile app categories.
        # Corresponds to the JSON property `includedMobileAppCategoryTargeting`
        # @return [Array<Fixnum>]
        attr_accessor :included_mobile_app_category_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `mobileAppTargeting`
        # @return [Google::Apis::CurationpartnersV1::StringTargetingDimension]
        attr_accessor :mobile_app_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `uriTargeting`
        # @return [Google::Apis::CurationpartnersV1::StringTargetingDimension]
        attr_accessor :uri_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_mobile_app_category_targeting = args[:included_mobile_app_category_targeting] if args.key?(:included_mobile_app_category_targeting)
          @mobile_app_targeting = args[:mobile_app_targeting] if args.key?(:mobile_app_targeting)
          @uri_targeting = args[:uri_targeting] if args.key?(:uri_targeting)
        end
      end
      
      # Represents targeting about publisher provided signals. Different publisher
      # provided signals types will be logically OR'ed.
      class PackagePublisherProvidedSignalsTargeting
        include Google::Apis::Core::Hashable
      
        # Defines targeting criteria for handling the IAB audience and content Taxonomy
        # ID space.
        # Corresponds to the JSON property `audienceTargeting`
        # @return [Google::Apis::CurationpartnersV1::TaxonomyTargeting]
        attr_accessor :audience_targeting
      
        # Defines targeting criteria for handling the IAB audience and content Taxonomy
        # ID space.
        # Corresponds to the JSON property `contentTargeting`
        # @return [Google::Apis::CurationpartnersV1::TaxonomyTargeting]
        attr_accessor :content_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `videoAndAudioSignalsTargeting`
        # @return [Google::Apis::CurationpartnersV1::StringTargetingDimension]
        attr_accessor :video_and_audio_signals_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audience_targeting = args[:audience_targeting] if args.key?(:audience_targeting)
          @content_targeting = args[:content_targeting] if args.key?(:content_targeting)
          @video_and_audio_signals_targeting = args[:video_and_audio_signals_targeting] if args.key?(:video_and_audio_signals_targeting)
        end
      end
      
      # Targeting criteria for curated and auction packages.
      class PackageTargeting
        include Google::Apis::Core::Hashable
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `geoTargeting`
        # @return [Google::Apis::CurationpartnersV1::CriteriaTargeting]
        attr_accessor :geo_targeting
      
        # Optional. The targeted accelerated mobile page type. If unset, inventory will
        # be targeted regardless of AMP status.
        # Corresponds to the JSON property `includedAcceleratedMobilePageType`
        # @return [String]
        attr_accessor :included_accelerated_mobile_page_type
      
        # Optional. The list of ad sizes to target. If unset, inventory will be targeted
        # regardless of ad size. Curated packages supports `PIXEL` and `INTERSTITIAL` ad
        # sizes.
        # Corresponds to the JSON property `includedAdSizes`
        # @return [Array<Google::Apis::CurationpartnersV1::AdSize>]
        attr_accessor :included_ad_sizes
      
        # Optional. The included list of targeted authorized seller statuses. If empty,
        # inventory will be targeted regardless of seller status.
        # Corresponds to the JSON property `includedAuthorizedSellerStatuses`
        # @return [Array<String>]
        attr_accessor :included_authorized_seller_statuses
      
        # Optional. The creative format to target. If unset, all creative markup types
        # are targeted.
        # Corresponds to the JSON property `includedCreativeFormat`
        # @return [String]
        attr_accessor :included_creative_format
      
        # Optional. The active data segments to be targeted. If unset, inventory will be
        # targeted regardless of data segments. Format: `curators/`account_id`/
        # dataSegments/`data_segment_id``
        # Corresponds to the JSON property `includedDataSegments`
        # @return [Array<String>]
        attr_accessor :included_data_segments
      
        # Optional. The list of included device types to target. If empty, all device
        # types are targeted.
        # Corresponds to the JSON property `includedDeviceTypes`
        # @return [Array<String>]
        attr_accessor :included_device_types
      
        # Optional. The environment to target. If unspecified, all environments are
        # targeted.
        # Corresponds to the JSON property `includedEnvironment`
        # @return [String]
        attr_accessor :included_environment
      
        # Optional. The targeted native inventory types. If empty, inventory will be
        # targeted regardless of native inventory type.
        # Corresponds to the JSON property `includedNativeInventoryTypes`
        # @return [Array<String>]
        attr_accessor :included_native_inventory_types
      
        # Optional. The list of targeted open measurement types. If empty, inventory
        # will be targeted regardless of Open Measurement support.
        # Corresponds to the JSON property `includedOpenMeasurementTypes`
        # @return [Array<String>]
        attr_accessor :included_open_measurement_types
      
        # Optional. The list of targeted restricted categories. If empty, inventory will
        # be targeted regardless of restricted categories.
        # Corresponds to the JSON property `includedRestrictedCategories`
        # @return [Array<String>]
        attr_accessor :included_restricted_categories
      
        # Optional. The targeted rewarded type. If unset, inventory will be targeted
        # regardless of rewarded type.
        # Corresponds to the JSON property `includedRewardedType`
        # @return [String]
        attr_accessor :included_rewarded_type
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `languageTargeting`
        # @return [Google::Apis::CurationpartnersV1::StringTargetingDimension]
        attr_accessor :language_targeting
      
        # Optional. The targeted minimum predicted click through rate, ranging in values
        # [10, 10000] (0.01% - 10%). A value of 50 means that the configuration will
        # only match adslots for which we predict at least 0.05% click through rate. An
        # unset value indicates inventory will be targeted regardless of predicted click
        # through rate.
        # Corresponds to the JSON property `minimumPredictedClickThroughRatePercentageMillis`
        # @return [Fixnum]
        attr_accessor :minimum_predicted_click_through_rate_percentage_millis
      
        # Optional. The targeted minimum predicted viewability percentage. This value
        # must be a multiple of 10 between 10 and 90 (inclusive). For example, 10 is
        # valid, but 0, 15, and 100 are not. A value of 10 means that the configuration
        # will only match adslots for which we predict at least 10% viewability. An
        # unset value indicates inventory will be targeted regardless of predicted
        # viewability.
        # Corresponds to the JSON property `minimumPredictedViewabilityPercentage`
        # @return [Fixnum]
        attr_accessor :minimum_predicted_viewability_percentage
      
        # Represents targeting about where the ads can appear, for example, certain
        # sites or mobile applications. Different placement targeting types will be
        # logically OR'ed.
        # Corresponds to the JSON property `placementTargeting`
        # @return [Google::Apis::CurationpartnersV1::PackagePlacementTargeting]
        attr_accessor :placement_targeting
      
        # Represents targeting about publisher provided signals. Different publisher
        # provided signals types will be logically OR'ed.
        # Corresponds to the JSON property `publisherProvidedSignalsTargeting`
        # @return [Google::Apis::CurationpartnersV1::PackagePublisherProvidedSignalsTargeting]
        attr_accessor :publisher_provided_signals_targeting
      
        # Generic targeting with string values.
        # Corresponds to the JSON property `publisherTargeting`
        # @return [Google::Apis::CurationpartnersV1::StringTargetingDimension]
        attr_accessor :publisher_targeting
      
        # Generic targeting used for targeting dimensions that contains a list of
        # included and excluded numeric IDs. This cannot be filtered using list filter
        # syntax.
        # Corresponds to the JSON property `verticalTargeting`
        # @return [Google::Apis::CurationpartnersV1::CriteriaTargeting]
        attr_accessor :vertical_targeting
      
        # Video specific targeting criteria.
        # Corresponds to the JSON property `videoTargeting`
        # @return [Google::Apis::CurationpartnersV1::PackageVideoTargeting]
        attr_accessor :video_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @geo_targeting = args[:geo_targeting] if args.key?(:geo_targeting)
          @included_accelerated_mobile_page_type = args[:included_accelerated_mobile_page_type] if args.key?(:included_accelerated_mobile_page_type)
          @included_ad_sizes = args[:included_ad_sizes] if args.key?(:included_ad_sizes)
          @included_authorized_seller_statuses = args[:included_authorized_seller_statuses] if args.key?(:included_authorized_seller_statuses)
          @included_creative_format = args[:included_creative_format] if args.key?(:included_creative_format)
          @included_data_segments = args[:included_data_segments] if args.key?(:included_data_segments)
          @included_device_types = args[:included_device_types] if args.key?(:included_device_types)
          @included_environment = args[:included_environment] if args.key?(:included_environment)
          @included_native_inventory_types = args[:included_native_inventory_types] if args.key?(:included_native_inventory_types)
          @included_open_measurement_types = args[:included_open_measurement_types] if args.key?(:included_open_measurement_types)
          @included_restricted_categories = args[:included_restricted_categories] if args.key?(:included_restricted_categories)
          @included_rewarded_type = args[:included_rewarded_type] if args.key?(:included_rewarded_type)
          @language_targeting = args[:language_targeting] if args.key?(:language_targeting)
          @minimum_predicted_click_through_rate_percentage_millis = args[:minimum_predicted_click_through_rate_percentage_millis] if args.key?(:minimum_predicted_click_through_rate_percentage_millis)
          @minimum_predicted_viewability_percentage = args[:minimum_predicted_viewability_percentage] if args.key?(:minimum_predicted_viewability_percentage)
          @placement_targeting = args[:placement_targeting] if args.key?(:placement_targeting)
          @publisher_provided_signals_targeting = args[:publisher_provided_signals_targeting] if args.key?(:publisher_provided_signals_targeting)
          @publisher_targeting = args[:publisher_targeting] if args.key?(:publisher_targeting)
          @vertical_targeting = args[:vertical_targeting] if args.key?(:vertical_targeting)
          @video_targeting = args[:video_targeting] if args.key?(:video_targeting)
        end
      end
      
      # Video specific targeting criteria.
      class PackageVideoTargeting
        include Google::Apis::Core::Hashable
      
        # Optional. The targeted video delivery method. If unset, inventory will be
        # targeted regardless of video delivery method.
        # Corresponds to the JSON property `includedContentDeliveryMethod`
        # @return [String]
        attr_accessor :included_content_delivery_method
      
        # Optional. The targeted maximum video ad duration. If unset, inventory will be
        # targeted regardless of maximum video ad duration.
        # Corresponds to the JSON property `includedMaximumAdDurationTargeting`
        # @return [String]
        attr_accessor :included_maximum_ad_duration_targeting
      
        # Optional. The list of targeted video mime types using the IANA published MIME
        # type strings (https://www.iana.org/assignments/media-types/media-types.xhtml).
        # If empty, inventory will be targeted regardless of video mime type.
        # Corresponds to the JSON property `includedMimeTypes`
        # @return [Array<String>]
        attr_accessor :included_mime_types
      
        # Optional. The list of targeted video playback methods. If empty, inventory
        # will be targeted regardless of video playback method.
        # Corresponds to the JSON property `includedPlaybackMethods`
        # @return [Array<String>]
        attr_accessor :included_playback_methods
      
        # Represents the size of the video player that can be targeted. Both width and
        # height are required to be set to non-zero values.
        # Corresponds to the JSON property `includedPlayerSizeTargeting`
        # @return [Google::Apis::CurationpartnersV1::VideoPlayerSizeTargeting]
        attr_accessor :included_player_size_targeting
      
        # Optional. The targeted video ad position types. If empty, inventory will be
        # targeted regardless of video ad position type.
        # Corresponds to the JSON property `includedPositionTypes`
        # @return [Array<String>]
        attr_accessor :included_position_types
      
        # Optional. The targeted minimum predicted completion rate percentage. This
        # value must be a multiple of 10 between 10 and 90 (inclusive). For example, 10
        # is valid, but 0, 15, and 100 are not. A value of 10 means that the
        # configuration will only match adslots for which we predict at least 10%
        # completion rate. An unset value indicates inventory will be targeted
        # regardless of predicted completion rate.
        # Corresponds to the JSON property `minimumPredictedCompletionRatePercentage`
        # @return [Fixnum]
        attr_accessor :minimum_predicted_completion_rate_percentage
      
        # Defines targeting criteria based on the video placement type, often
        # corresponding to the IAB OpenRTB 'plcmt' field.
        # Corresponds to the JSON property `plcmtTargeting`
        # @return [Google::Apis::CurationpartnersV1::VideoPlcmtTargeting]
        attr_accessor :plcmt_targeting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @included_content_delivery_method = args[:included_content_delivery_method] if args.key?(:included_content_delivery_method)
          @included_maximum_ad_duration_targeting = args[:included_maximum_ad_duration_targeting] if args.key?(:included_maximum_ad_duration_targeting)
          @included_mime_types = args[:included_mime_types] if args.key?(:included_mime_types)
          @included_playback_methods = args[:included_playback_methods] if args.key?(:included_playback_methods)
          @included_player_size_targeting = args[:included_player_size_targeting] if args.key?(:included_player_size_targeting)
          @included_position_types = args[:included_position_types] if args.key?(:included_position_types)
          @minimum_predicted_completion_rate_percentage = args[:minimum_predicted_completion_rate_percentage] if args.key?(:minimum_predicted_completion_rate_percentage)
          @plcmt_targeting = args[:plcmt_targeting] if args.key?(:plcmt_targeting)
        end
      end
      
      # The `Report` resource.
      class Report
        include Google::Apis::Core::Hashable
      
        # Output only. The instant this report was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Optional. Display name for the report.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Output only. The locale of this report. Locale is set from the user's locale
        # at the time of the request. Locale can't be modified.
        # Corresponds to the JSON property `locale`
        # @return [String]
        attr_accessor :locale
      
        # Identifier. The resource name of the report. Report resource name have the
        # form: `curators/`account_id`/reports/`report_id``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The definition of how a report should be run.
        # Corresponds to the JSON property `reportDefinition`
        # @return [Google::Apis::CurationpartnersV1::ReportDefinition]
        attr_accessor :report_definition
      
        # Output only. Report ID.
        # Corresponds to the JSON property `reportId`
        # @return [Fixnum]
        attr_accessor :report_id
      
        # Output only. The instant this report was last modified.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @display_name = args[:display_name] if args.key?(:display_name)
          @locale = args[:locale] if args.key?(:locale)
          @name = args[:name] if args.key?(:name)
          @report_definition = args[:report_definition] if args.key?(:report_definition)
          @report_id = args[:report_id] if args.key?(:report_id)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The definition of how a report should be run.
      class ReportDefinition
        include Google::Apis::Core::Hashable
      
        # Optional. The ISO 4217 currency code for this report. Defaults to account
        # currency code if not specified.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # A date range for a report.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::CurationpartnersV1::DateRange]
        attr_accessor :date_range
      
        # Required. The list of dimensions to report on. If empty, the report will have
        # no dimensions, and any metrics will be totals.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Optional. The filters for this report.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::CurationpartnersV1::Filter>]
        attr_accessor :filters
      
        # Required. The list of metrics to report on. If empty, the report will have no
        # metrics.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Optional. Default sorts to apply to this report.
        # Corresponds to the JSON property `sorts`
        # @return [Array<Google::Apis::CurationpartnersV1::Sort>]
        attr_accessor :sorts
      
        # Optional. If time_zone_source is PROVIDED, this is the time zone to use for
        # this report. Leave empty for any other time zone source. Time zone in IANA
        # format. For example, "America/New_York".
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        # Optional. Where to get the time zone for this report. Defaults to using the
        # Pacific time zone (PT). If source is PROVIDED, the time_zone field in the
        # report definition must also set a time zone.
        # Corresponds to the JSON property `timeZoneSource`
        # @return [String]
        attr_accessor :time_zone_source
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @filters = args[:filters] if args.key?(:filters)
          @metrics = args[:metrics] if args.key?(:metrics)
          @sorts = args[:sorts] if args.key?(:sorts)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
          @time_zone_source = args[:time_zone_source] if args.key?(:time_zone_source)
        end
      end
      
      # Represents a single value in a report.
      class ReportValue
        include Google::Apis::Core::Hashable
      
        # For boolean values.
        # Corresponds to the JSON property `boolValue`
        # @return [Boolean]
        attr_accessor :bool_value
        alias_method :bool_value?, :bool_value
      
        # For bytes values.
        # Corresponds to the JSON property `bytesValue`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :bytes_value
      
        # A list of double values.
        # Corresponds to the JSON property `doubleListValue`
        # @return [Google::Apis::CurationpartnersV1::DoubleList]
        attr_accessor :double_list_value
      
        # For double values.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # A list of integer values.
        # Corresponds to the JSON property `intListValue`
        # @return [Google::Apis::CurationpartnersV1::IntList]
        attr_accessor :int_list_value
      
        # For integer values.
        # Corresponds to the JSON property `intValue`
        # @return [Fixnum]
        attr_accessor :int_value
      
        # A list of string values.
        # Corresponds to the JSON property `stringListValue`
        # @return [Google::Apis::CurationpartnersV1::StringList]
        attr_accessor :string_list_value
      
        # For string values.
        # Corresponds to the JSON property `stringValue`
        # @return [String]
        attr_accessor :string_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bool_value = args[:bool_value] if args.key?(:bool_value)
          @bytes_value = args[:bytes_value] if args.key?(:bytes_value)
          @double_list_value = args[:double_list_value] if args.key?(:double_list_value)
          @double_value = args[:double_value] if args.key?(:double_value)
          @int_list_value = args[:int_list_value] if args.key?(:int_list_value)
          @int_value = args[:int_value] if args.key?(:int_value)
          @string_list_value = args[:string_list_value] if args.key?(:string_list_value)
          @string_value = args[:string_value] if args.key?(:string_value)
        end
      end
      
      # A row of report data.
      class Row
        include Google::Apis::Core::Hashable
      
        # The order of the dimension values is the same as the order of the dimensions
        # specified in the request.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Array<Google::Apis::CurationpartnersV1::ReportValue>]
        attr_accessor :dimension_values
      
        # The length of the metric_value_groups field will be equal to the length of
        # the date_ranges field in the fetch response. The metric_value_groups field is
        # ordered such that each index corresponds to the date_range at the same index.
        # For example, given date_ranges [x, y], metric_value_groups will have a length
        # of two. The first entry in metric_value_groups represents the metrics for date
        # x and the second entry in metric_value_groups represents the metrics for date
        # y.
        # Corresponds to the JSON property `metricValueGroups`
        # @return [Array<Google::Apis::CurationpartnersV1::MetricValueGroup>]
        attr_accessor :metric_value_groups
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric_value_groups = args[:metric_value_groups] if args.key?(:metric_value_groups)
        end
      end
      
      # `RunReport` operation metadata.
      class RunReportMetadata
        include Google::Apis::Core::Hashable
      
        # An estimate of how close this report is to being completed. Will always be 100
        # for failed and completed reports.
        # Corresponds to the JSON property `percentComplete`
        # @return [Fixnum]
        attr_accessor :percent_complete
      
        # The result's parent report.
        # Corresponds to the JSON property `report`
        # @return [String]
        attr_accessor :report
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @percent_complete = args[:percent_complete] if args.key?(:percent_complete)
          @report = args[:report] if args.key?(:report)
        end
      end
      
      # Request message for a running a report.
      class RunReportRequest
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # Response message for a completed `RunReport` operation.
      class RunReportResponse
        include Google::Apis::Core::Hashable
      
        # The unique name of the generated result. Use with `FetchReportResultRows` to
        # retrieve data.
        # Corresponds to the JSON property `reportResult`
        # @return [String]
        attr_accessor :report_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_result = args[:report_result] if args.key?(:report_result)
        end
      end
      
      # Represents a sorting in a report.
      class Sort
        include Google::Apis::Core::Hashable
      
        # Optional. The sort order. If true the sort will be descending.
        # Corresponds to the JSON property `descending`
        # @return [Boolean]
        attr_accessor :descending
        alias_method :descending?, :descending
      
        # A dimension or a metric in a report.
        # Corresponds to the JSON property `field`
        # @return [Google::Apis::CurationpartnersV1::Field]
        attr_accessor :field
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @descending = args[:descending] if args.key?(:descending)
          @field = args[:field] if args.key?(:field)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A list of string values.
      class StringList
        include Google::Apis::Core::Hashable
      
        # The values
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Generic targeting with string values.
      class StringTargetingDimension
        include Google::Apis::Core::Hashable
      
        # Required. How the items in this list should be targeted.
        # Corresponds to the JSON property `selectionType`
        # @return [String]
        attr_accessor :selection_type
      
        # Required. The values specified.
        # Corresponds to the JSON property `values`
        # @return [Array<String>]
        attr_accessor :values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selection_type = args[:selection_type] if args.key?(:selection_type)
          @values = args[:values] if args.key?(:values)
        end
      end
      
      # Defines targeting criteria for handling the IAB audience and content Taxonomy
      # ID space.
      class TaxonomyTargeting
        include Google::Apis::Core::Hashable
      
        # Optional. The list of excluded content taxonomy IDs.
        # Corresponds to the JSON property `excludedTaxonomyIds`
        # @return [Array<String>]
        attr_accessor :excluded_taxonomy_ids
      
        # Optional. The list of targeted content taxonomy IDs.
        # Corresponds to the JSON property `targetedTaxonomyIds`
        # @return [Array<String>]
        attr_accessor :targeted_taxonomy_ids
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @excluded_taxonomy_ids = args[:excluded_taxonomy_ids] if args.key?(:excluded_taxonomy_ids)
          @targeted_taxonomy_ids = args[:targeted_taxonomy_ids] if args.key?(:targeted_taxonomy_ids)
        end
      end
      
      # Represents the size of the video player that can be targeted. Both width and
      # height are required to be set to non-zero values.
      class VideoPlayerSizeTargeting
        include Google::Apis::Core::Hashable
      
        # Required. The minimum height of the video player in pixels.
        # Corresponds to the JSON property `minimumHeight`
        # @return [Fixnum]
        attr_accessor :minimum_height
      
        # Required. The minimum width of the video player in pixels.
        # Corresponds to the JSON property `minimumWidth`
        # @return [Fixnum]
        attr_accessor :minimum_width
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @minimum_height = args[:minimum_height] if args.key?(:minimum_height)
          @minimum_width = args[:minimum_width] if args.key?(:minimum_width)
        end
      end
      
      # Defines targeting criteria based on the video placement type, often
      # corresponding to the IAB OpenRTB 'plcmt' field.
      class VideoPlcmtTargeting
        include Google::Apis::Core::Hashable
      
        # Required. The selection type for the list of video plcmts.
        # Corresponds to the JSON property `selectionType`
        # @return [String]
        attr_accessor :selection_type
      
        # Required. The list of targeted video plcmts types. If empty, inventory will be
        # targeted regardless of video plcmt type.
        # Corresponds to the JSON property `videoPlcmtTypes`
        # @return [Array<String>]
        attr_accessor :video_plcmt_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @selection_type = args[:selection_type] if args.key?(:selection_type)
          @video_plcmt_types = args[:video_plcmt_types] if args.key?(:video_plcmt_types)
        end
      end
    end
  end
end
