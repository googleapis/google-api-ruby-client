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
    module AdexchangesellerV1
      
      # 
      class AdClient
        include Google::Apis::Core::Hashable
      
        # Whether this ad client is opted in to ARC.
        # Corresponds to the JSON property `arcOptIn`
        # @return [Boolean]
        attr_accessor :arc_opt_in
        alias_method :arc_opt_in?, :arc_opt_in
      
        # Unique identifier of this ad client.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adexchangeseller#adClient.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This ad client's product code, which corresponds to the PRODUCT_CODE report
        # dimension.
        # Corresponds to the JSON property `productCode`
        # @return [String]
        attr_accessor :product_code
      
        # Whether this ad client supports being reported on.
        # Corresponds to the JSON property `supportsReporting`
        # @return [Boolean]
        attr_accessor :supports_reporting
        alias_method :supports_reporting?, :supports_reporting
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @arc_opt_in = args[:arc_opt_in] if args.key?(:arc_opt_in)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @product_code = args[:product_code] if args.key?(:product_code)
          @supports_reporting = args[:supports_reporting] if args.key?(:supports_reporting)
        end
      end
      
      # 
      class AdClients
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ad clients returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangesellerV1::AdClient>]
        attr_accessor :items
      
        # Kind of list this is, in this case adexchangeseller#adClients.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through ad clients. To retrieve the next page
        # of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class AdUnit
        include Google::Apis::Core::Hashable
      
        # Identity code of this ad unit, not necessarily unique across ad clients.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Unique identifier of this ad unit. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adexchangeseller#adUnit.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this ad unit.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Status of this ad unit. Possible values are:
        # NEW: Indicates that the ad unit was created within the last seven days and
        # does not yet have any activity associated with it.
        # ACTIVE: Indicates that there has been activity on this ad unit in the last
        # seven days.
        # INACTIVE: Indicates that there has been no activity on this ad unit in the
        # last seven days.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class AdUnits
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The ad units returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangesellerV1::AdUnit>]
        attr_accessor :items
      
        # Kind of list this is, in this case adexchangeseller#adUnits.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through ad units. To retrieve the next page of
        # results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class CustomChannel
        include Google::Apis::Core::Hashable
      
        # Code of this custom channel, not necessarily unique across ad clients.
        # Corresponds to the JSON property `code`
        # @return [String]
        attr_accessor :code
      
        # Unique identifier of this custom channel. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adexchangeseller#customChannel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Name of this custom channel.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The targeting information of this custom channel, if activated.
        # Corresponds to the JSON property `targetingInfo`
        # @return [Google::Apis::AdexchangesellerV1::CustomChannel::TargetingInfo]
        attr_accessor :targeting_info
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
          @targeting_info = args[:targeting_info] if args.key?(:targeting_info)
        end
        
        # The targeting information of this custom channel, if activated.
        class TargetingInfo
          include Google::Apis::Core::Hashable
        
          # The name used to describe this channel externally.
          # Corresponds to the JSON property `adsAppearOn`
          # @return [String]
          attr_accessor :ads_appear_on
        
          # The external description of the channel.
          # Corresponds to the JSON property `description`
          # @return [String]
          attr_accessor :description
        
          # The locations in which ads appear. (Only valid for content and mobile content
          # ads). Acceptable values for content ads are: TOP_LEFT, TOP_CENTER, TOP_RIGHT,
          # MIDDLE_LEFT, MIDDLE_CENTER, MIDDLE_RIGHT, BOTTOM_LEFT, BOTTOM_CENTER,
          # BOTTOM_RIGHT, MULTIPLE_LOCATIONS. Acceptable values for mobile content ads are:
          # TOP, MIDDLE, BOTTOM, MULTIPLE_LOCATIONS.
          # Corresponds to the JSON property `location`
          # @return [String]
          attr_accessor :location
        
          # The language of the sites ads will be displayed on.
          # Corresponds to the JSON property `siteLanguage`
          # @return [String]
          attr_accessor :site_language
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @ads_appear_on = args[:ads_appear_on] if args.key?(:ads_appear_on)
            @description = args[:description] if args.key?(:description)
            @location = args[:location] if args.key?(:location)
            @site_language = args[:site_language] if args.key?(:site_language)
          end
        end
      end
      
      # 
      class CustomChannels
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The custom channels returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangesellerV1::CustomChannel>]
        attr_accessor :items
      
        # Kind of list this is, in this case adexchangeseller#customChannels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through custom channels. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class Report
        include Google::Apis::Core::Hashable
      
        # The averages of the report. This is the same length as any other row in the
        # report; cells corresponding to dimension columns are empty.
        # Corresponds to the JSON property `averages`
        # @return [Array<String>]
        attr_accessor :averages
      
        # The header information of the columns requested in the report. This is a list
        # of headers; one for each dimension in the request, followed by one for each
        # metric in the request.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::AdexchangesellerV1::Report::Header>]
        attr_accessor :headers
      
        # Kind this is, in this case adexchangeseller#report.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # The output rows of the report. Each row is a list of cells; one for each
        # dimension in the request, followed by one for each metric in the request. The
        # dimension cells contain strings, and the metric cells contain numbers.
        # Corresponds to the JSON property `rows`
        # @return [Array<Array<String>>]
        attr_accessor :rows
      
        # The total number of rows matched by the report request. Fewer rows may be
        # returned in the response due to being limited by the row count requested or
        # the report row limit.
        # Corresponds to the JSON property `totalMatchedRows`
        # @return [Fixnum]
        attr_accessor :total_matched_rows
      
        # The totals of the report. This is the same length as any other row in the
        # report; cells corresponding to dimension columns are empty.
        # Corresponds to the JSON property `totals`
        # @return [Array<String>]
        attr_accessor :totals
      
        # Any warnings associated with generation of the report.
        # Corresponds to the JSON property `warnings`
        # @return [Array<String>]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @averages = args[:averages] if args.key?(:averages)
          @headers = args[:headers] if args.key?(:headers)
          @kind = args[:kind] if args.key?(:kind)
          @rows = args[:rows] if args.key?(:rows)
          @total_matched_rows = args[:total_matched_rows] if args.key?(:total_matched_rows)
          @totals = args[:totals] if args.key?(:totals)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
        
        # 
        class Header
          include Google::Apis::Core::Hashable
        
          # The currency of this column. Only present if the header type is
          # METRIC_CURRENCY.
          # Corresponds to the JSON property `currency`
          # @return [String]
          attr_accessor :currency
        
          # The name of the header.
          # Corresponds to the JSON property `name`
          # @return [String]
          attr_accessor :name
        
          # The type of the header; one of DIMENSION, METRIC_TALLY, METRIC_RATIO, or
          # METRIC_CURRENCY.
          # Corresponds to the JSON property `type`
          # @return [String]
          attr_accessor :type
        
          def initialize(**args)
             update!(**args)
          end
        
          # Update properties of this object
          def update!(**args)
            @currency = args[:currency] if args.key?(:currency)
            @name = args[:name] if args.key?(:name)
            @type = args[:type] if args.key?(:type)
          end
        end
      end
      
      # 
      class SavedReport
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this saved report.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adexchangeseller#savedReport.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # This saved report's name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # 
      class SavedReports
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The saved reports returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangesellerV1::SavedReport>]
        attr_accessor :items
      
        # Kind of list this is, in this case adexchangeseller#savedReports.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through saved reports. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class UrlChannel
        include Google::Apis::Core::Hashable
      
        # Unique identifier of this URL channel. This should be considered an opaque
        # identifier; it is not safe to rely on it being in any particular format.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # Kind of resource this is, in this case adexchangeseller#urlChannel.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # URL Pattern of this URL channel. Does not include "http://" or "https://".
        # Example: www.example.com/home
        # Corresponds to the JSON property `urlPattern`
        # @return [String]
        attr_accessor :url_pattern
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @url_pattern = args[:url_pattern] if args.key?(:url_pattern)
        end
      end
      
      # 
      class UrlChannels
        include Google::Apis::Core::Hashable
      
        # ETag of this response for caching purposes.
        # Corresponds to the JSON property `etag`
        # @return [String]
        attr_accessor :etag
      
        # The URL channels returned in this list response.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::AdexchangesellerV1::UrlChannel>]
        attr_accessor :items
      
        # Kind of list this is, in this case adexchangeseller#urlChannels.
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Continuation token used to page through URL channels. To retrieve the next
        # page of results, set the next request's "pageToken" value to this.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @etag = args[:etag] if args.key?(:etag)
          @items = args[:items] if args.key?(:items)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
    end
  end
end
