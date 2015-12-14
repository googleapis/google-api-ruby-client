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
    module DoubleclicksearchV2
      
      # A message containing availability data relevant to DoubleClick Search.
      class Availability
        include Google::Apis::Core::Hashable
      
        # DS advertiser ID.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # DS agency ID.
        # Corresponds to the JSON property `agencyId`
        # @return [String]
        attr_accessor :agency_id
      
        # The time by which all conversions have been uploaded, in epoch millis UTC.
        # Corresponds to the JSON property `availabilityTimestamp`
        # @return [String]
        attr_accessor :availability_timestamp
      
        # The numeric segmentation identifier (for example, DoubleClick Search
        # Floodlight activity ID).
        # Corresponds to the JSON property `segmentationId`
        # @return [String]
        attr_accessor :segmentation_id
      
        # The friendly segmentation identifier (for example, DoubleClick Search
        # Floodlight activity name).
        # Corresponds to the JSON property `segmentationName`
        # @return [String]
        attr_accessor :segmentation_name
      
        # The segmentation type that this availability is for (its default value is
        # FLOODLIGHT).
        # Corresponds to the JSON property `segmentationType`
        # @return [String]
        attr_accessor :segmentation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @agency_id = args[:agency_id] unless args[:agency_id].nil?
          @availability_timestamp = args[:availability_timestamp] unless args[:availability_timestamp].nil?
          @segmentation_id = args[:segmentation_id] unless args[:segmentation_id].nil?
          @segmentation_name = args[:segmentation_name] unless args[:segmentation_name].nil?
          @segmentation_type = args[:segmentation_type] unless args[:segmentation_type].nil?
        end
      end
      
      # A conversion containing data relevant to DoubleClick Search.
      class Conversion
        include Google::Apis::Core::Hashable
      
        # DS ad group ID.
        # Corresponds to the JSON property `adGroupId`
        # @return [String]
        attr_accessor :ad_group_id
      
        # DS ad ID.
        # Corresponds to the JSON property `adId`
        # @return [String]
        attr_accessor :ad_id
      
        # DS advertiser ID.
        # Corresponds to the JSON property `advertiserId`
        # @return [String]
        attr_accessor :advertiser_id
      
        # DS agency ID.
        # Corresponds to the JSON property `agencyId`
        # @return [String]
        attr_accessor :agency_id
      
        # This field is ignored.
        # Corresponds to the JSON property `attributionModel`
        # @return [String]
        attr_accessor :attribution_model
      
        # DS campaign ID.
        # Corresponds to the JSON property `campaignId`
        # @return [String]
        attr_accessor :campaign_id
      
        # Sales channel for the product. Acceptable values are:
        # - "local": a physical store
        # - "online": an online store
        # Corresponds to the JSON property `channel`
        # @return [String]
        attr_accessor :channel
      
        # DS click ID for the conversion.
        # Corresponds to the JSON property `clickId`
        # @return [String]
        attr_accessor :click_id
      
        # For offline conversions, this is an ID that advertisers are required to
        # provide. Advertisers can specify any ID that is meaningful to them. For online
        # conversions, DS copies the dsConversionId or floodlightOrderId into this
        # property depending on the advertiser's Floodlight instructions.
        # Corresponds to the JSON property `conversionId`
        # @return [String]
        attr_accessor :conversion_id
      
        # The time at which the conversion was last modified, in epoch millis UTC.
        # Corresponds to the JSON property `conversionModifiedTimestamp`
        # @return [String]
        attr_accessor :conversion_modified_timestamp
      
        # The time at which the conversion took place, in epoch millis UTC.
        # Corresponds to the JSON property `conversionTimestamp`
        # @return [String]
        attr_accessor :conversion_timestamp
      
        # This field is ignored.
        # Corresponds to the JSON property `countMillis`
        # @return [String]
        attr_accessor :count_millis
      
        # DS criterion (keyword) ID.
        # Corresponds to the JSON property `criterionId`
        # @return [String]
        attr_accessor :criterion_id
      
        # The currency code for the conversion's revenue. Should be in ISO 4217
        # alphabetic (3-char) format.
        # Corresponds to the JSON property `currencyCode`
        # @return [String]
        attr_accessor :currency_code
      
        # Custom dimensions for the conversion, which can be used to filter data in a
        # report.
        # Corresponds to the JSON property `customDimension`
        # @return [Array<Google::Apis::DoubleclicksearchV2::CustomDimension>]
        attr_accessor :custom_dimension
      
        # Custom metrics for the conversion.
        # Corresponds to the JSON property `customMetric`
        # @return [Array<Google::Apis::DoubleclicksearchV2::CustomMetric>]
        attr_accessor :custom_metric
      
        # The type of device on which the conversion occurred.
        # Corresponds to the JSON property `deviceType`
        # @return [String]
        attr_accessor :device_type
      
        # ID that DoubleClick Search generates for each conversion.
        # Corresponds to the JSON property `dsConversionId`
        # @return [String]
        attr_accessor :ds_conversion_id
      
        # DS engine account ID.
        # Corresponds to the JSON property `engineAccountId`
        # @return [String]
        attr_accessor :engine_account_id
      
        # The Floodlight order ID provided by the advertiser for the conversion.
        # Corresponds to the JSON property `floodlightOrderId`
        # @return [String]
        attr_accessor :floodlight_order_id
      
        # ID that DS generates and uses to uniquely identify the inventory account that
        # contains the product.
        # Corresponds to the JSON property `inventoryAccountId`
        # @return [String]
        attr_accessor :inventory_account_id
      
        # The country registered for the Merchant Center feed that contains the product.
        # Use an ISO 3166 code to specify a country.
        # Corresponds to the JSON property `productCountry`
        # @return [String]
        attr_accessor :product_country
      
        # DS product group ID.
        # Corresponds to the JSON property `productGroupId`
        # @return [String]
        attr_accessor :product_group_id
      
        # The product ID (SKU).
        # Corresponds to the JSON property `productId`
        # @return [String]
        attr_accessor :product_id
      
        # The language registered for the Merchant Center feed that contains the product.
        # Use an ISO 639 code to specify a language.
        # Corresponds to the JSON property `productLanguage`
        # @return [String]
        attr_accessor :product_language
      
        # The quantity of this conversion, in millis.
        # Corresponds to the JSON property `quantityMillis`
        # @return [String]
        attr_accessor :quantity_millis
      
        # The revenue amount of this TRANSACTION conversion, in micros.
        # Corresponds to the JSON property `revenueMicros`
        # @return [String]
        attr_accessor :revenue_micros
      
        # The numeric segmentation identifier (for example, DoubleClick Search
        # Floodlight activity ID).
        # Corresponds to the JSON property `segmentationId`
        # @return [String]
        attr_accessor :segmentation_id
      
        # The friendly segmentation identifier (for example, DoubleClick Search
        # Floodlight activity name).
        # Corresponds to the JSON property `segmentationName`
        # @return [String]
        attr_accessor :segmentation_name
      
        # The segmentation type of this conversion (for example, FLOODLIGHT).
        # Corresponds to the JSON property `segmentationType`
        # @return [String]
        attr_accessor :segmentation_type
      
        # The state of the conversion, that is, either ACTIVE or REMOVED. Note: state
        # DELETED is deprecated.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # The ID of the local store for which the product was advertised. Applicable
        # only when the channel is "local".
        # Corresponds to the JSON property `storeId`
        # @return [String]
        attr_accessor :store_id
      
        # The type of the conversion, that is, either ACTION or TRANSACTION. An ACTION
        # conversion is an action by the user that has no monetarily quantifiable value,
        # while a TRANSACTION conversion is an action that does have a monetarily
        # quantifiable value. Examples are email list signups (ACTION) versus ecommerce
        # purchases (TRANSACTION).
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_group_id = args[:ad_group_id] unless args[:ad_group_id].nil?
          @ad_id = args[:ad_id] unless args[:ad_id].nil?
          @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
          @agency_id = args[:agency_id] unless args[:agency_id].nil?
          @attribution_model = args[:attribution_model] unless args[:attribution_model].nil?
          @campaign_id = args[:campaign_id] unless args[:campaign_id].nil?
          @channel = args[:channel] unless args[:channel].nil?
          @click_id = args[:click_id] unless args[:click_id].nil?
          @conversion_id = args[:conversion_id] unless args[:conversion_id].nil?
          @conversion_modified_timestamp = args[:conversion_modified_timestamp] unless args[:conversion_modified_timestamp].nil?
          @conversion_timestamp = args[:conversion_timestamp] unless args[:conversion_timestamp].nil?
          @count_millis = args[:count_millis] unless args[:count_millis].nil?
          @criterion_id = args[:criterion_id] unless args[:criterion_id].nil?
          @currency_code = args[:currency_code] unless args[:currency_code].nil?
          @custom_dimension = args[:custom_dimension] unless args[:custom_dimension].nil?
          @custom_metric = args[:custom_metric] unless args[:custom_metric].nil?
          @device_type = args[:device_type] unless args[:device_type].nil?
          @ds_conversion_id = args[:ds_conversion_id] unless args[:ds_conversion_id].nil?
          @engine_account_id = args[:engine_account_id] unless args[:engine_account_id].nil?
          @floodlight_order_id = args[:floodlight_order_id] unless args[:floodlight_order_id].nil?
          @inventory_account_id = args[:inventory_account_id] unless args[:inventory_account_id].nil?
          @product_country = args[:product_country] unless args[:product_country].nil?
          @product_group_id = args[:product_group_id] unless args[:product_group_id].nil?
          @product_id = args[:product_id] unless args[:product_id].nil?
          @product_language = args[:product_language] unless args[:product_language].nil?
          @quantity_millis = args[:quantity_millis] unless args[:quantity_millis].nil?
          @revenue_micros = args[:revenue_micros] unless args[:revenue_micros].nil?
          @segmentation_id = args[:segmentation_id] unless args[:segmentation_id].nil?
          @segmentation_name = args[:segmentation_name] unless args[:segmentation_name].nil?
          @segmentation_type = args[:segmentation_type] unless args[:segmentation_type].nil?
          @state = args[:state] unless args[:state].nil?
          @store_id = args[:store_id] unless args[:store_id].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A list of conversions.
      class ConversionList
        include Google::Apis::Core::Hashable
      
        # The conversions being requested.
        # Corresponds to the JSON property `conversion`
        # @return [Array<Google::Apis::DoubleclicksearchV2::Conversion>]
        attr_accessor :conversion
      
        # Identifies this as a ConversionList resource. Value: the fixed string
        # doubleclicksearch#conversionList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @conversion = args[:conversion] unless args[:conversion].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # A message containing the custome dimension.
      class CustomDimension
        include Google::Apis::Core::Hashable
      
        # Custom dimension name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Custom dimension value.
        # Corresponds to the JSON property `value`
        # @return [String]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # A message containing the custome metric.
      class CustomMetric
        include Google::Apis::Core::Hashable
      
        # Custom metric name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Custom metric numeric value.
        # Corresponds to the JSON property `value`
        # @return [Float]
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] unless args[:name].nil?
          @value = args[:value] unless args[:value].nil?
        end
      end
      
      # A DoubleClick Search report. This object contains the report request, some
      # report metadata such as currency code, and the generated report rows or report
      # files.
      class Report
        include Google::Apis::Core::Hashable
      
        # Asynchronous report only. Contains a list of generated report files once the
        # report has succesfully completed.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::DoubleclicksearchV2::Report::File>]
        attr_accessor :files
      
        # Asynchronous report only. Id of the report.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Asynchronous report only. True if and only if the report has completed
        # successfully and the report files are ready to be downloaded.
        # Corresponds to the JSON property `isReportReady`
        # @return [Boolean]
        attr_accessor :is_report_ready
        alias_method :is_report_ready?, :is_report_ready
      
        # Identifies this as a Report resource. Value: the fixed string
        # doubleclicksearch#report.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A request object used to create a DoubleClick Search report.
        # Corresponds to the JSON property `request`
        # @return [Google::Apis::DoubleclicksearchV2::ReportRequest]
        attr_accessor :request
      
        # The number of report rows generated by the report, not including headers.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Synchronous report only. Generated report rows.
        # Corresponds to the JSON property `rows`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :rows
      
        # The currency code of all monetary values produced in the report, including
        # values that are set by users (e.g., keyword bid settings) and metrics (e.g.,
        # cost and revenue). The currency code of a report is determined by the
        # statisticsCurrency field of the report request.
        # Corresponds to the JSON property `statisticsCurrencyCode`
        # @return [String]
        attr_accessor :statistics_currency_code
      
        # If all statistics of the report are sourced from the same time zone, this
        # would be it. Otherwise the field is unset.
        # Corresponds to the JSON property `statisticsTimeZone`
        # @return [String]
        attr_accessor :statistics_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] unless args[:files].nil?
          @id = args[:id] unless args[:id].nil?
          @is_report_ready = args[:is_report_ready] unless args[:is_report_ready].nil?
          @kind = args[:kind] unless args[:kind].nil?
          @request = args[:request] unless args[:request].nil?
          @row_count = args[:row_count] unless args[:row_count].nil?
          @rows = args[:rows] unless args[:rows].nil?
          @statistics_currency_code = args[:statistics_currency_code] unless args[:statistics_currency_code].nil?
          @statistics_time_zone = args[:statistics_time_zone] unless args[:statistics_time_zone].nil?
        end
        
        # 
        class File
          include Google::Apis::Core::Hashable
        
          # The size of this report file in bytes.
          # Corresponds to the JSON property `byteCount`
          # @return [String]
          attr_accessor :byte_count
        
          # Use this url to download the report file.
          # Corresponds to the JSON property `url`
          # @return [String]
          attr_accessor :url
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @byte_count = args[:byte_count] unless args[:byte_count].nil?
            @url = args[:url] unless args[:url].nil?
          end
        end
      end
      
      # A request object used to create a DoubleClick Search report.
      class ReportApiColumnSpec
        include Google::Apis::Core::Hashable
      
        # Name of a DoubleClick Search column to include in the report.
        # Corresponds to the JSON property `columnName`
        # @return [String]
        attr_accessor :column_name
      
        # Segments a report by a custom dimension. The report must be scoped to an
        # advertiser or lower, and the custom dimension must already be set up in
        # DoubleClick Search. The custom dimension name, which appears in DoubleClick
        # Search, is case sensitive.
        # If used in a conversion report, returns the value of the specified custom
        # dimension for the given conversion, if set. This column does not segment the
        # conversion report.
        # Corresponds to the JSON property `customDimensionName`
        # @return [String]
        attr_accessor :custom_dimension_name
      
        # Name of a custom metric to include in the report. The report must be scoped to
        # an advertiser or lower, and the custom metric must already be set up in
        # DoubleClick Search. The custom metric name, which appears in DoubleClick
        # Search, is case sensitive.
        # Corresponds to the JSON property `customMetricName`
        # @return [String]
        attr_accessor :custom_metric_name
      
        # Inclusive day in YYYY-MM-DD format. When provided, this overrides the overall
        # time range of the report for this column only. Must be provided together with
        # startDate.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # Synchronous report only. Set to true to group by this column. Defaults to
        # false.
        # Corresponds to the JSON property `groupByColumn`
        # @return [Boolean]
        attr_accessor :group_by_column
        alias_method :group_by_column?, :group_by_column
      
        # Text used to identify this column in the report output; defaults to columnName
        # or savedColumnName when not specified. This can be used to prevent collisions
        # between DoubleClick Search columns and saved columns with the same name.
        # Corresponds to the JSON property `headerText`
        # @return [String]
        attr_accessor :header_text
      
        # The platform that is used to provide data for the custom dimension. Acceptable
        # values are "floodlight".
        # Corresponds to the JSON property `platformSource`
        # @return [String]
        attr_accessor :platform_source
      
        # Returns metrics only for a specific type of product activity. Accepted values
        # are:
        # - "sold": returns metrics only for products that were sold
        # - "advertised": returns metrics only for products that were advertised in a
        # Shopping campaign, and that might or might not have been sold
        # Corresponds to the JSON property `productReportPerspective`
        # @return [String]
        attr_accessor :product_report_perspective
      
        # Name of a saved column to include in the report. The report must be scoped at
        # advertiser or lower, and this saved column must already be created in the
        # DoubleClick Search UI.
        # Corresponds to the JSON property `savedColumnName`
        # @return [String]
        attr_accessor :saved_column_name
      
        # Inclusive date in YYYY-MM-DD format. When provided, this overrides the overall
        # time range of the report for this column only. Must be provided together with
        # endDate.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_name = args[:column_name] unless args[:column_name].nil?
          @custom_dimension_name = args[:custom_dimension_name] unless args[:custom_dimension_name].nil?
          @custom_metric_name = args[:custom_metric_name] unless args[:custom_metric_name].nil?
          @end_date = args[:end_date] unless args[:end_date].nil?
          @group_by_column = args[:group_by_column] unless args[:group_by_column].nil?
          @header_text = args[:header_text] unless args[:header_text].nil?
          @platform_source = args[:platform_source] unless args[:platform_source].nil?
          @product_report_perspective = args[:product_report_perspective] unless args[:product_report_perspective].nil?
          @saved_column_name = args[:saved_column_name] unless args[:saved_column_name].nil?
          @start_date = args[:start_date] unless args[:start_date].nil?
        end
      end
      
      # A request object used to create a DoubleClick Search report.
      class ReportRequest
        include Google::Apis::Core::Hashable
      
        # The columns to include in the report. This includes both DoubleClick Search
        # columns and saved columns. For DoubleClick Search columns, only the columnName
        # parameter is required. For saved columns only the savedColumnName parameter is
        # required. Both columnName and savedColumnName cannot be set in the same stanza.
        # Corresponds to the JSON property `columns`
        # @return [Array<Google::Apis::DoubleclicksearchV2::ReportApiColumnSpec>]
        attr_accessor :columns
      
        # Format that the report should be returned in. Currently csv or tsv is
        # supported.
        # Corresponds to the JSON property `downloadFormat`
        # @return [String]
        attr_accessor :download_format
      
        # A list of filters to be applied to the report.
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::DoubleclicksearchV2::ReportRequest::Filter>]
        attr_accessor :filters
      
        # Determines if removed entities should be included in the report. Defaults to
        # false. Deprecated, please use includeRemovedEntities instead.
        # Corresponds to the JSON property `includeDeletedEntities`
        # @return [Boolean]
        attr_accessor :include_deleted_entities
        alias_method :include_deleted_entities?, :include_deleted_entities
      
        # Determines if removed entities should be included in the report. Defaults to
        # false.
        # Corresponds to the JSON property `includeRemovedEntities`
        # @return [Boolean]
        attr_accessor :include_removed_entities
        alias_method :include_removed_entities?, :include_removed_entities
      
        # Asynchronous report only. The maximum number of rows per report file. A large
        # report is split into many files based on this field. Acceptable values are
        # 1000000 to 100000000, inclusive.
        # Corresponds to the JSON property `maxRowsPerFile`
        # @return [Fixnum]
        attr_accessor :max_rows_per_file
      
        # Synchronous report only. A list of columns and directions defining sorting to
        # be performed on the report rows.
        # Corresponds to the JSON property `orderBy`
        # @return [Array<Google::Apis::DoubleclicksearchV2::ReportRequest::OrderBy>]
        attr_accessor :order_by
      
        # The reportScope is a set of IDs that are used to determine which subset of
        # entities will be returned in the report. The full lineage of IDs from the
        # lowest scoped level desired up through agency is required.
        # Corresponds to the JSON property `reportScope`
        # @return [Google::Apis::DoubleclicksearchV2::ReportRequest::ReportScope]
        attr_accessor :report_scope
      
        # Determines the type of rows that are returned in the report. For example, if
        # you specify reportType: keyword, each row in the report will contain data
        # about a keyword. See the Types of Reports reference for the columns that are
        # available for each type.
        # Corresponds to the JSON property `reportType`
        # @return [String]
        attr_accessor :report_type
      
        # Synchronous report only. The maxinum number of rows to return; additional rows
        # are dropped. Acceptable values are 0 to 10000, inclusive. Defaults to 10000.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Synchronous report only. Zero-based index of the first row to return.
        # Acceptable values are 0 to 50000, inclusive. Defaults to 0.
        # Corresponds to the JSON property `startRow`
        # @return [Fixnum]
        attr_accessor :start_row
      
        # Specifies the currency in which monetary will be returned. Possible values are:
        # usd, agency (valid if the report is scoped to agency or lower), advertiser (
        # valid if the report is scoped to * advertiser or lower), or account (valid if
        # the report is scoped to engine account or lower).
        # Corresponds to the JSON property `statisticsCurrency`
        # @return [String]
        attr_accessor :statistics_currency
      
        # If metrics are requested in a report, this argument will be used to restrict
        # the metrics to a specific time range.
        # Corresponds to the JSON property `timeRange`
        # @return [Google::Apis::DoubleclicksearchV2::ReportRequest::TimeRange]
        attr_accessor :time_range
      
        # If true, the report would only be created if all the requested stat data are
        # sourced from a single timezone. Defaults to false.
        # Corresponds to the JSON property `verifySingleTimeZone`
        # @return [Boolean]
        attr_accessor :verify_single_time_zone
        alias_method :verify_single_time_zone?, :verify_single_time_zone
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @columns = args[:columns] unless args[:columns].nil?
          @download_format = args[:download_format] unless args[:download_format].nil?
          @filters = args[:filters] unless args[:filters].nil?
          @include_deleted_entities = args[:include_deleted_entities] unless args[:include_deleted_entities].nil?
          @include_removed_entities = args[:include_removed_entities] unless args[:include_removed_entities].nil?
          @max_rows_per_file = args[:max_rows_per_file] unless args[:max_rows_per_file].nil?
          @order_by = args[:order_by] unless args[:order_by].nil?
          @report_scope = args[:report_scope] unless args[:report_scope].nil?
          @report_type = args[:report_type] unless args[:report_type].nil?
          @row_count = args[:row_count] unless args[:row_count].nil?
          @start_row = args[:start_row] unless args[:start_row].nil?
          @statistics_currency = args[:statistics_currency] unless args[:statistics_currency].nil?
          @time_range = args[:time_range] unless args[:time_range].nil?
          @verify_single_time_zone = args[:verify_single_time_zone] unless args[:verify_single_time_zone].nil?
        end
        
        # 
        class Filter
          include Google::Apis::Core::Hashable
        
          # A request object used to create a DoubleClick Search report.
          # Corresponds to the JSON property `column`
          # @return [Google::Apis::DoubleclicksearchV2::ReportApiColumnSpec]
          attr_accessor :column
        
          # Operator to use in the filter. See the filter reference for a list of
          # available operators.
          # Corresponds to the JSON property `operator`
          # @return [String]
          attr_accessor :operator
        
          # A list of values to filter the column value against.
          # Corresponds to the JSON property `values`
          # @return [Array<Object>]
          attr_accessor :values
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @column = args[:column] unless args[:column].nil?
            @operator = args[:operator] unless args[:operator].nil?
            @values = args[:values] unless args[:values].nil?
          end
        end
        
        # 
        class OrderBy
          include Google::Apis::Core::Hashable
        
          # A request object used to create a DoubleClick Search report.
          # Corresponds to the JSON property `column`
          # @return [Google::Apis::DoubleclicksearchV2::ReportApiColumnSpec]
          attr_accessor :column
        
          # The sort direction, which is either ascending or descending.
          # Corresponds to the JSON property `sortOrder`
          # @return [String]
          attr_accessor :sort_order
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @column = args[:column] unless args[:column].nil?
            @sort_order = args[:sort_order] unless args[:sort_order].nil?
          end
        end
        
        # The reportScope is a set of IDs that are used to determine which subset of
        # entities will be returned in the report. The full lineage of IDs from the
        # lowest scoped level desired up through agency is required.
        class ReportScope
          include Google::Apis::Core::Hashable
        
          # DS ad group ID.
          # Corresponds to the JSON property `adGroupId`
          # @return [String]
          attr_accessor :ad_group_id
        
          # DS ad ID.
          # Corresponds to the JSON property `adId`
          # @return [String]
          attr_accessor :ad_id
        
          # DS advertiser ID.
          # Corresponds to the JSON property `advertiserId`
          # @return [String]
          attr_accessor :advertiser_id
        
          # DS agency ID.
          # Corresponds to the JSON property `agencyId`
          # @return [String]
          attr_accessor :agency_id
        
          # DS campaign ID.
          # Corresponds to the JSON property `campaignId`
          # @return [String]
          attr_accessor :campaign_id
        
          # DS engine account ID.
          # Corresponds to the JSON property `engineAccountId`
          # @return [String]
          attr_accessor :engine_account_id
        
          # DS keyword ID.
          # Corresponds to the JSON property `keywordId`
          # @return [String]
          attr_accessor :keyword_id
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ad_group_id = args[:ad_group_id] unless args[:ad_group_id].nil?
            @ad_id = args[:ad_id] unless args[:ad_id].nil?
            @advertiser_id = args[:advertiser_id] unless args[:advertiser_id].nil?
            @agency_id = args[:agency_id] unless args[:agency_id].nil?
            @campaign_id = args[:campaign_id] unless args[:campaign_id].nil?
            @engine_account_id = args[:engine_account_id] unless args[:engine_account_id].nil?
            @keyword_id = args[:keyword_id] unless args[:keyword_id].nil?
          end
        end
        
        # If metrics are requested in a report, this argument will be used to restrict
        # the metrics to a specific time range.
        class TimeRange
          include Google::Apis::Core::Hashable
        
          # Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z. See
          # additional references on how changed attribute reports work.
          # Corresponds to the JSON property `changedAttributesSinceTimestamp`
          # @return [DateTime]
          attr_accessor :changed_attributes_since_timestamp
        
          # Inclusive UTC timestamp in RFC format, e.g., 2013-07-16T10:16:23.555Z. See
          # additional references on how changed metrics reports work.
          # Corresponds to the JSON property `changedMetricsSinceTimestamp`
          # @return [DateTime]
          attr_accessor :changed_metrics_since_timestamp
        
          # Inclusive date in YYYY-MM-DD format.
          # Corresponds to the JSON property `endDate`
          # @return [String]
          attr_accessor :end_date
        
          # Inclusive date in YYYY-MM-DD format.
          # Corresponds to the JSON property `startDate`
          # @return [String]
          attr_accessor :start_date
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @changed_attributes_since_timestamp = args[:changed_attributes_since_timestamp] unless args[:changed_attributes_since_timestamp].nil?
            @changed_metrics_since_timestamp = args[:changed_metrics_since_timestamp] unless args[:changed_metrics_since_timestamp].nil?
            @end_date = args[:end_date] unless args[:end_date].nil?
            @start_date = args[:start_date] unless args[:start_date].nil?
          end
        end
      end
      
      # A saved column
      class SavedColumn
        include Google::Apis::Core::Hashable
      
        # Identifies this as a SavedColumn resource. Value: the fixed string
        # doubleclicksearch#savedColumn.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The name of the saved column.
        # Corresponds to the JSON property `savedColumnName`
        # @return [String]
        attr_accessor :saved_column_name
      
        # The type of data this saved column will produce.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @kind = args[:kind] unless args[:kind].nil?
          @saved_column_name = args[:saved_column_name] unless args[:saved_column_name].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
      
      # A list of saved columns. Advertisers create saved columns to report on
      # Floodlight activities, Google Analytics goals, or custom KPIs. To request
      # reports with saved columns, you'll need the saved column names that are
      # available from this list.
      class SavedColumnList
        include Google::Apis::Core::Hashable
      
        # The saved columns being requested.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::DoubleclicksearchV2::SavedColumn>]
        attr_accessor :items
      
        # Identifies this as a SavedColumnList resource. Value: the fixed string
        # doubleclicksearch#savedColumnList.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] unless args[:items].nil?
          @kind = args[:kind] unless args[:kind].nil?
        end
      end
      
      # The request to update availability.
      class UpdateAvailabilityRequest
        include Google::Apis::Core::Hashable
      
        # The availabilities being requested.
        # Corresponds to the JSON property `availabilities`
        # @return [Array<Google::Apis::DoubleclicksearchV2::Availability>]
        attr_accessor :availabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availabilities = args[:availabilities] unless args[:availabilities].nil?
        end
      end
      
      # The response to a update availability request.
      class UpdateAvailabilityResponse
        include Google::Apis::Core::Hashable
      
        # The availabilities being returned.
        # Corresponds to the JSON property `availabilities`
        # @return [Array<Google::Apis::DoubleclicksearchV2::Availability>]
        attr_accessor :availabilities
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @availabilities = args[:availabilities] unless args[:availabilities].nil?
        end
      end
    end
  end
end
