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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AdmobV1
      
      # Represents a whole or partial calendar date, such as a birthday. The time of
      # day and time zone are either specified elsewhere or are insignificant. The
      # date is relative to the Gregorian Calendar. This can represent one of the
      # following: * A full date, with non-zero year, month, and day values * A month
      # and day value, with a zero year, such as an anniversary * A year on its own,
      # with zero month and day values * A year and month value, with a zero day, such
      # as a credit card expiration date Related types are google.type.TimeOfDay and `
      # google.protobuf.Timestamp`.
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
      
      # Specification of a single date range. Both dates are inclusive.
      class DateRange
        include Google::Apis::Core::Hashable
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `endDate`
        # @return [Google::Apis::AdmobV1::Date]
        attr_accessor :end_date
      
        # Represents a whole or partial calendar date, such as a birthday. The time of
        # day and time zone are either specified elsewhere or are insignificant. The
        # date is relative to the Gregorian Calendar. This can represent one of the
        # following: * A full date, with non-zero year, month, and day values * A month
        # and day value, with a zero year, such as an anniversary * A year on its own,
        # with zero month and day values * A year and month value, with a zero day, such
        # as a credit card expiration date Related types are google.type.TimeOfDay and `
        # google.protobuf.Timestamp`.
        # Corresponds to the JSON property `startDate`
        # @return [Google::Apis::AdmobV1::Date]
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
      
      # Request to generate an AdMob Mediation report.
      class GenerateMediationReportRequest
        include Google::Apis::Core::Hashable
      
        # The specification for generating an AdMob Mediation report. For example, the
        # specification to get observed ECPM sliced by ad source and app for the 'US'
        # and 'CN' countries can look like the following example: ` "date_range": ` "
        # start_date": `"year": 2018, "month": 9, "day": 1`, "end_date": `"year": 2018, "
        # month": 9, "day": 30` `, "dimensions": ["AD_SOURCE", "APP", "COUNTRY"], "
        # metrics": ["OBSERVED_ECPM"], "dimension_filters": [ ` "dimension": "COUNTRY", "
        # matches_any": `"values": [`"value": "US", "value": "CN"`]` ` ], "
        # sort_conditions": [ `"dimension":"APP", order: "ASCENDING"` ], "
        # localization_settings": ` "currency_code": "USD", "language_code": "en-US" ` `
        # For a better understanding, you can treat the preceding specification like the
        # following pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM
        # MEDIATION_REPORT WHERE DATE >= '2018-09-01' AND DATE <= '2018-09-30' AND
        # COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;
        # Corresponds to the JSON property `reportSpec`
        # @return [Google::Apis::AdmobV1::MediationReportSpec]
        attr_accessor :report_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_spec = args[:report_spec] if args.key?(:report_spec)
        end
      end
      
      # The streaming response for the AdMob Mediation report where the first response
      # contains the report header, then a stream of row responses, and finally a
      # footer as the last response message. For example: [` "header": ` "date_range":
      # ` "start_date": `"year": 2018, "month": 9, "day": 1`, "end_date": `"year":
      # 2018, "month": 9, "day": 1` `, "localization_settings": ` "currency_code": "
      # USD", "language_code": "en-US" ` ` `, ` "row": ` "dimension_values": ` "DATE":
      # `"value": "20180918"`, "APP": ` "value": "ca-app-pub-8123415297019784~
      # 1001342552", "display_label": "My app name!" ` `, "metric_values": ` "
      # ESTIMATED_EARNINGS": `"decimal_value": "1324746"` ` ` `, ` "footer": `"
      # matching_row_count": 1` `]
      class GenerateMediationReportResponse
        include Google::Apis::Core::Hashable
      
        # Groups data available after report generation, for example, warnings and row
        # counts. Always sent as the last message in the stream response.
        # Corresponds to the JSON property `footer`
        # @return [Google::Apis::AdmobV1::ReportFooter]
        attr_accessor :footer
      
        # Groups data helps to treat the generated report. Always sent as a first
        # message in the stream response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::AdmobV1::ReportHeader]
        attr_accessor :header
      
        # A row of the returning report.
        # Corresponds to the JSON property `row`
        # @return [Google::Apis::AdmobV1::ReportRow]
        attr_accessor :row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @footer = args[:footer] if args.key?(:footer)
          @header = args[:header] if args.key?(:header)
          @row = args[:row] if args.key?(:row)
        end
      end
      
      # Request to generate an AdMob Network report.
      class GenerateNetworkReportRequest
        include Google::Apis::Core::Hashable
      
        # The specification for generating an AdMob Network report. For example, the
        # specification to get clicks and estimated earnings for only the 'US' and 'CN'
        # countries can look like the following example: ` 'date_range': ` 'start_date':
        # `'year': 2018, 'month': 9, 'day': 1`, 'end_date': `'year': 2018, 'month': 9, '
        # day': 30` `, 'dimensions': ['DATE', 'APP', 'COUNTRY'], 'metrics': ['CLICKS', '
        # ESTIMATED_EARNINGS'], 'dimension_filters': [ ` 'dimension': 'COUNTRY', '
        # matches_any': `'values': [`'value': 'US', 'value': 'CN'`]` ` ], '
        # sort_conditions': [ `'dimension':'APP', order: 'ASCENDING'`, `'metric':'CLICKS'
        # , order: 'DESCENDING'` ], 'localization_settings': ` 'currency_code': 'USD', '
        # language_code': 'en-US' ` ` For a better understanding, you can treat the
        # preceding specification like the following pseudo SQL: SELECT DATE, APP,
        # COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE >= '2018-09-
        # 01' AND DATE <= '2018-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY DATE, APP,
        # COUNTRY ORDER BY APP ASC, CLICKS DESC;
        # Corresponds to the JSON property `reportSpec`
        # @return [Google::Apis::AdmobV1::NetworkReportSpec]
        attr_accessor :report_spec
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @report_spec = args[:report_spec] if args.key?(:report_spec)
        end
      end
      
      # The streaming response for the AdMob Network report where the first response
      # contains the report header, then a stream of row responses, and finally a
      # footer as the last response message. For example: [` "header": ` "dateRange": `
      # "startDate": `"year": 2018, "month": 9, "day": 1`, "endDate": `"year": 2018, "
      # month": 9, "day": 1` `, "localizationSettings": ` "currencyCode": "USD", "
      # languageCode": "en-US" ` ` `, ` "row": ` "dimensionValues": ` "DATE": `"value":
      # "20180918"`, "APP": ` "value": "ca-app-pub-8123415297019784~1001342552",
      # displayLabel: "My app name!" ` `, "metricValues": ` "ESTIMATED_EARNINGS": `"
      # microsValue": 6500000` ` ` `, ` "footer": `"matchingRowCount": 1` `]
      class GenerateNetworkReportResponse
        include Google::Apis::Core::Hashable
      
        # Groups data available after report generation, for example, warnings and row
        # counts. Always sent as the last message in the stream response.
        # Corresponds to the JSON property `footer`
        # @return [Google::Apis::AdmobV1::ReportFooter]
        attr_accessor :footer
      
        # Groups data helps to treat the generated report. Always sent as a first
        # message in the stream response.
        # Corresponds to the JSON property `header`
        # @return [Google::Apis::AdmobV1::ReportHeader]
        attr_accessor :header
      
        # A row of the returning report.
        # Corresponds to the JSON property `row`
        # @return [Google::Apis::AdmobV1::ReportRow]
        attr_accessor :row
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @footer = args[:footer] if args.key?(:footer)
          @header = args[:header] if args.key?(:header)
          @row = args[:row] if args.key?(:row)
        end
      end
      
      # Response for the publisher account list request.
      class ListPublisherAccountsResponse
        include Google::Apis::Core::Hashable
      
        # Publisher that the client credentials can access.
        # Corresponds to the JSON property `account`
        # @return [Array<Google::Apis::AdmobV1::PublisherAccount>]
        attr_accessor :account
      
        # If not empty, indicates that there might be more accounts for the request; you
        # must pass this value in a new `ListPublisherAccountsRequest`.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @account = args[:account] if args.key?(:account)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Localization settings for reports, such as currency and language. It affects
      # how metrics are calculated.
      class LocalizationSettings
        include Google::Apis::Core::Hashable
      
        # Currency code of the earning related metrics, which is the 3-letter code
        # defined in ISO 4217. The daily average rate is used for the currency
        # conversion. Defaults to the account currency code if unspecified.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Language used for any localized text, such as some dimension value display
        # labels. The language tag defined in the IETF BCP47. Defaults to 'en-US' if
        # unspecified.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @language_code = args[:language_code] if args.key?(:language_code)
        end
      end
      
      # The specification for generating an AdMob Mediation report. For example, the
      # specification to get observed ECPM sliced by ad source and app for the 'US'
      # and 'CN' countries can look like the following example: ` "date_range": ` "
      # start_date": `"year": 2018, "month": 9, "day": 1`, "end_date": `"year": 2018, "
      # month": 9, "day": 30` `, "dimensions": ["AD_SOURCE", "APP", "COUNTRY"], "
      # metrics": ["OBSERVED_ECPM"], "dimension_filters": [ ` "dimension": "COUNTRY", "
      # matches_any": `"values": [`"value": "US", "value": "CN"`]` ` ], "
      # sort_conditions": [ `"dimension":"APP", order: "ASCENDING"` ], "
      # localization_settings": ` "currency_code": "USD", "language_code": "en-US" ` `
      # For a better understanding, you can treat the preceding specification like the
      # following pseudo SQL: SELECT AD_SOURCE, APP, COUNTRY, OBSERVED_ECPM FROM
      # MEDIATION_REPORT WHERE DATE >= '2018-09-01' AND DATE <= '2018-09-30' AND
      # COUNTRY IN ('US', 'CN') GROUP BY AD_SOURCE, APP, COUNTRY ORDER BY APP ASC;
      class MediationReportSpec
        include Google::Apis::Core::Hashable
      
        # Specification of a single date range. Both dates are inclusive.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AdmobV1::DateRange]
        attr_accessor :date_range
      
        # Describes which report rows to match based on their dimension values.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::AdmobV1::MediationReportSpecDimensionFilter>]
        attr_accessor :dimension_filters
      
        # List of dimensions of the report. The value combination of these dimensions
        # determines the row of the report. If no dimensions are specified, the report
        # returns a single row of requested metrics for the entire account.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Localization settings for reports, such as currency and language. It affects
        # how metrics are calculated.
        # Corresponds to the JSON property `localizationSettings`
        # @return [Google::Apis::AdmobV1::LocalizationSettings]
        attr_accessor :localization_settings
      
        # Maximum number of report data rows to return. If the value is not set, the API
        # returns as many rows as possible, up to 100000. Acceptable values are 1-100000,
        # inclusive. Values larger than 100000 return an error.
        # Corresponds to the JSON property `maxReportRows`
        # @return [Fixnum]
        attr_accessor :max_report_rows
      
        # List of metrics of the report. A report must specify at least one metric.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Describes the sorting of report rows. The order of the condition in the list
        # defines its precedence; the earlier the condition, the higher its precedence.
        # If no sort conditions are specified, the row ordering is undefined.
        # Corresponds to the JSON property `sortConditions`
        # @return [Array<Google::Apis::AdmobV1::MediationReportSpecSortCondition>]
        attr_accessor :sort_conditions
      
        # A report time zone. Accepts an IANA TZ name values, such as "America/
        # Los_Angeles." If no time zone is defined, the account default takes effect.
        # Check default value by the get account action. **Warning:** The "America/
        # Los_Angeles" is the only supported value at the moment.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimension_filters = args[:dimension_filters] if args.key?(:dimension_filters)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @localization_settings = args[:localization_settings] if args.key?(:localization_settings)
          @max_report_rows = args[:max_report_rows] if args.key?(:max_report_rows)
          @metrics = args[:metrics] if args.key?(:metrics)
          @sort_conditions = args[:sort_conditions] if args.key?(:sort_conditions)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Describes which report rows to match based on their dimension values.
      class MediationReportSpecDimensionFilter
        include Google::Apis::Core::Hashable
      
        # Applies the filter criterion to the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # List of string values.
        # Corresponds to the JSON property `matchesAny`
        # @return [Google::Apis::AdmobV1::StringList]
        attr_accessor :matches_any
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @matches_any = args[:matches_any] if args.key?(:matches_any)
        end
      end
      
      # Sorting direction to be applied on a dimension or a metric.
      class MediationReportSpecSortCondition
        include Google::Apis::Core::Hashable
      
        # Sort by the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Sort by the specified metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Sorting order of the dimension or metric.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # The specification for generating an AdMob Network report. For example, the
      # specification to get clicks and estimated earnings for only the 'US' and 'CN'
      # countries can look like the following example: ` 'date_range': ` 'start_date':
      # `'year': 2018, 'month': 9, 'day': 1`, 'end_date': `'year': 2018, 'month': 9, '
      # day': 30` `, 'dimensions': ['DATE', 'APP', 'COUNTRY'], 'metrics': ['CLICKS', '
      # ESTIMATED_EARNINGS'], 'dimension_filters': [ ` 'dimension': 'COUNTRY', '
      # matches_any': `'values': [`'value': 'US', 'value': 'CN'`]` ` ], '
      # sort_conditions': [ `'dimension':'APP', order: 'ASCENDING'`, `'metric':'CLICKS'
      # , order: 'DESCENDING'` ], 'localization_settings': ` 'currency_code': 'USD', '
      # language_code': 'en-US' ` ` For a better understanding, you can treat the
      # preceding specification like the following pseudo SQL: SELECT DATE, APP,
      # COUNTRY, CLICKS, ESTIMATED_EARNINGS FROM NETWORK_REPORT WHERE DATE >= '2018-09-
      # 01' AND DATE <= '2018-09-30' AND COUNTRY IN ('US', 'CN') GROUP BY DATE, APP,
      # COUNTRY ORDER BY APP ASC, CLICKS DESC;
      class NetworkReportSpec
        include Google::Apis::Core::Hashable
      
        # Specification of a single date range. Both dates are inclusive.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AdmobV1::DateRange]
        attr_accessor :date_range
      
        # Describes which report rows to match based on their dimension values.
        # Corresponds to the JSON property `dimensionFilters`
        # @return [Array<Google::Apis::AdmobV1::NetworkReportSpecDimensionFilter>]
        attr_accessor :dimension_filters
      
        # List of dimensions of the report. The value combination of these dimensions
        # determines the row of the report. If no dimensions are specified, the report
        # returns a single row of requested metrics for the entire account.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # Localization settings for reports, such as currency and language. It affects
        # how metrics are calculated.
        # Corresponds to the JSON property `localizationSettings`
        # @return [Google::Apis::AdmobV1::LocalizationSettings]
        attr_accessor :localization_settings
      
        # Maximum number of report data rows to return. If the value is not set, the API
        # returns as many rows as possible, up to 100000. Acceptable values are 1-100000,
        # inclusive. Values larger than 100000 return an error.
        # Corresponds to the JSON property `maxReportRows`
        # @return [Fixnum]
        attr_accessor :max_report_rows
      
        # List of metrics of the report. A report must specify at least one metric.
        # Corresponds to the JSON property `metrics`
        # @return [Array<String>]
        attr_accessor :metrics
      
        # Describes the sorting of report rows. The order of the condition in the list
        # defines its precedence; the earlier the condition, the higher its precedence.
        # If no sort conditions are specified, the row ordering is undefined.
        # Corresponds to the JSON property `sortConditions`
        # @return [Array<Google::Apis::AdmobV1::NetworkReportSpecSortCondition>]
        attr_accessor :sort_conditions
      
        # A report time zone. Accepts an IANA TZ name values, such as "America/
        # Los_Angeles." If no time zone is defined, the account default takes effect.
        # Check default value by the get account action. **Warning:** The "America/
        # Los_Angeles" is the only supported value at the moment.
        # Corresponds to the JSON property `timeZone`
        # @return [String]
        attr_accessor :time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @dimension_filters = args[:dimension_filters] if args.key?(:dimension_filters)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @localization_settings = args[:localization_settings] if args.key?(:localization_settings)
          @max_report_rows = args[:max_report_rows] if args.key?(:max_report_rows)
          @metrics = args[:metrics] if args.key?(:metrics)
          @sort_conditions = args[:sort_conditions] if args.key?(:sort_conditions)
          @time_zone = args[:time_zone] if args.key?(:time_zone)
        end
      end
      
      # Describes which report rows to match based on their dimension values.
      class NetworkReportSpecDimensionFilter
        include Google::Apis::Core::Hashable
      
        # Applies the filter criterion to the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # List of string values.
        # Corresponds to the JSON property `matchesAny`
        # @return [Google::Apis::AdmobV1::StringList]
        attr_accessor :matches_any
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @matches_any = args[:matches_any] if args.key?(:matches_any)
        end
      end
      
      # Sorting direction to be applied on a dimension or a metric.
      class NetworkReportSpecSortCondition
        include Google::Apis::Core::Hashable
      
        # Sort by the specified dimension.
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # Sort by the specified metric.
        # Corresponds to the JSON property `metric`
        # @return [String]
        attr_accessor :metric
      
        # Sorting order of the dimension or metric.
        # Corresponds to the JSON property `order`
        # @return [String]
        attr_accessor :order
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @metric = args[:metric] if args.key?(:metric)
          @order = args[:order] if args.key?(:order)
        end
      end
      
      # A publisher account contains information relevant to the use of this API, such
      # as the time zone used for the reports.
      class PublisherAccount
        include Google::Apis::Core::Hashable
      
        # Currency code of the earning-related metrics, which is the 3-letter code
        # defined in ISO 4217. The daily average rate is used for the currency
        # conversion.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Resource name of this account. Format is accounts/`publisher_id`.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The unique ID by which this publisher account can be identified in the API
        # requests (for example, pub-1234567890).
        # Corresponds to the JSON property `publisherId`
        # @return [String]
        attr_accessor :publisher_id
      
        # The time zone that is used in reports that are generated for this account. The
        # value is a time-zone ID as specified by the CLDR project, for example, "
        # America/Los_Angeles".
        # Corresponds to the JSON property `reportingTimeZone`
        # @return [String]
        attr_accessor :reporting_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @currency_code = args[:currency_code] if args.key?(:currency_code)
          @name = args[:name] if args.key?(:name)
          @publisher_id = args[:publisher_id] if args.key?(:publisher_id)
          @reporting_time_zone = args[:reporting_time_zone] if args.key?(:reporting_time_zone)
        end
      end
      
      # Groups data available after report generation, for example, warnings and row
      # counts. Always sent as the last message in the stream response.
      class ReportFooter
        include Google::Apis::Core::Hashable
      
        # Total number of rows that matched the request. Warning: This count does NOT
        # always match the number of rows in the response. Do not make that assumption
        # when processing the response.
        # Corresponds to the JSON property `matchingRowCount`
        # @return [Fixnum]
        attr_accessor :matching_row_count
      
        # Warnings associated with generation of the report.
        # Corresponds to the JSON property `warnings`
        # @return [Array<Google::Apis::AdmobV1::ReportWarning>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @matching_row_count = args[:matching_row_count] if args.key?(:matching_row_count)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Groups data helps to treat the generated report. Always sent as a first
      # message in the stream response.
      class ReportHeader
        include Google::Apis::Core::Hashable
      
        # Specification of a single date range. Both dates are inclusive.
        # Corresponds to the JSON property `dateRange`
        # @return [Google::Apis::AdmobV1::DateRange]
        attr_accessor :date_range
      
        # Localization settings for reports, such as currency and language. It affects
        # how metrics are calculated.
        # Corresponds to the JSON property `localizationSettings`
        # @return [Google::Apis::AdmobV1::LocalizationSettings]
        attr_accessor :localization_settings
      
        # The report time zone. The value is a time-zone ID as specified by the CLDR
        # project, for example, "America/Los_Angeles".
        # Corresponds to the JSON property `reportingTimeZone`
        # @return [String]
        attr_accessor :reporting_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @date_range = args[:date_range] if args.key?(:date_range)
          @localization_settings = args[:localization_settings] if args.key?(:localization_settings)
          @reporting_time_zone = args[:reporting_time_zone] if args.key?(:reporting_time_zone)
        end
      end
      
      # A row of the returning report.
      class ReportRow
        include Google::Apis::Core::Hashable
      
        # Map of dimension values in a row, with keys as enum name of the dimensions.
        # Corresponds to the JSON property `dimensionValues`
        # @return [Hash<String,Google::Apis::AdmobV1::ReportRowDimensionValue>]
        attr_accessor :dimension_values
      
        # Map of metric values in a row, with keys as enum name of the metrics. If a
        # metric being requested has no value returned, the map will not include it.
        # Corresponds to the JSON property `metricValues`
        # @return [Hash<String,Google::Apis::AdmobV1::ReportRowMetricValue>]
        attr_accessor :metric_values
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension_values = args[:dimension_values] if args.key?(:dimension_values)
          @metric_values = args[:metric_values] if args.key?(:metric_values)
        end
      end
      
      # Representation of a dimension value.
      class ReportRowDimensionValue
        include Google::Apis::Core::Hashable
      
        # The localized string representation of the value. If unspecified, the display
        # label should be derived from the value.
        # Corresponds to the JSON property `displayLabel`
        # @return [String]
        attr_accessor :display_label
      
        # Dimension value in the format specified in the report's spec Dimension enum.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_label = args[:display_label] if args.key?(:display_label)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Representation of a metric value.
      class ReportRowMetricValue
        include Google::Apis::Core::Hashable
      
        # Double precision (approximate) decimal values. Rates are from 0 to 1.
        # Corresponds to the JSON property `doubleValue`
        # @return [Float]
        attr_accessor :double_value
      
        # Metric integer value.
        # Corresponds to the JSON property `integerValue`
        # @return [Fixnum]
        attr_accessor :integer_value
      
        # Amount in micros. One million is equivalent to one unit. Currency value is in
        # the unit (USD, EUR or other) specified by the request. For example, $6.50
        # whould be represented as 6500000 micros.
        # Corresponds to the JSON property `microsValue`
        # @return [Fixnum]
        attr_accessor :micros_value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @double_value = args[:double_value] if args.key?(:double_value)
          @integer_value = args[:integer_value] if args.key?(:integer_value)
          @micros_value = args[:micros_value] if args.key?(:micros_value)
        end
      end
      
      # Warnings associated with generation of the report.
      class ReportWarning
        include Google::Apis::Core::Hashable
      
        # Describes the details of the warning message, in English.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # Type of the warning.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # List of string values.
      class StringList
        include Google::Apis::Core::Hashable
      
        # The string values.
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
    end
  end
end
