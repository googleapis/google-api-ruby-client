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
    module UrlshortenerV1
      
      # 
      class AnalyticsSnapshot
        include Google::Apis::Core::Hashable
      
        # Top browsers, e.g. "Chrome"; sorted by (descending) click counts. Only present
        # if this data is available.
        # Corresponds to the JSON property `browsers`
        # @return [Array<Google::Apis::UrlshortenerV1::StringCount>]
        attr_accessor :browsers
      
        # Top countries (expressed as country codes), e.g. "US" or "DE"; sorted by (
        # descending) click counts. Only present if this data is available.
        # Corresponds to the JSON property `countries`
        # @return [Array<Google::Apis::UrlshortenerV1::StringCount>]
        attr_accessor :countries
      
        # Number of clicks on all goo.gl short URLs pointing to this long URL.
        # Corresponds to the JSON property `longUrlClicks`
        # @return [Fixnum]
        attr_accessor :long_url_clicks
      
        # Top platforms or OSes, e.g. "Windows"; sorted by (descending) click counts.
        # Only present if this data is available.
        # Corresponds to the JSON property `platforms`
        # @return [Array<Google::Apis::UrlshortenerV1::StringCount>]
        attr_accessor :platforms
      
        # Top referring hosts, e.g. "www.google.com"; sorted by (descending) click
        # counts. Only present if this data is available.
        # Corresponds to the JSON property `referrers`
        # @return [Array<Google::Apis::UrlshortenerV1::StringCount>]
        attr_accessor :referrers
      
        # Number of clicks on this short URL.
        # Corresponds to the JSON property `shortUrlClicks`
        # @return [Fixnum]
        attr_accessor :short_url_clicks
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @browsers = args[:browsers] if args.key?(:browsers)
          @countries = args[:countries] if args.key?(:countries)
          @long_url_clicks = args[:long_url_clicks] if args.key?(:long_url_clicks)
          @platforms = args[:platforms] if args.key?(:platforms)
          @referrers = args[:referrers] if args.key?(:referrers)
          @short_url_clicks = args[:short_url_clicks] if args.key?(:short_url_clicks)
        end
      end
      
      # 
      class AnalyticsSummary
        include Google::Apis::Core::Hashable
      
        # Click analytics over all time.
        # Corresponds to the JSON property `allTime`
        # @return [Google::Apis::UrlshortenerV1::AnalyticsSnapshot]
        attr_accessor :all_time
      
        # Click analytics over the last day.
        # Corresponds to the JSON property `day`
        # @return [Google::Apis::UrlshortenerV1::AnalyticsSnapshot]
        attr_accessor :day
      
        # Click analytics over the last month.
        # Corresponds to the JSON property `month`
        # @return [Google::Apis::UrlshortenerV1::AnalyticsSnapshot]
        attr_accessor :month
      
        # Click analytics over the last two hours.
        # Corresponds to the JSON property `twoHours`
        # @return [Google::Apis::UrlshortenerV1::AnalyticsSnapshot]
        attr_accessor :two_hours
      
        # Click analytics over the last week.
        # Corresponds to the JSON property `week`
        # @return [Google::Apis::UrlshortenerV1::AnalyticsSnapshot]
        attr_accessor :week
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @all_time = args[:all_time] if args.key?(:all_time)
          @day = args[:day] if args.key?(:day)
          @month = args[:month] if args.key?(:month)
          @two_hours = args[:two_hours] if args.key?(:two_hours)
          @week = args[:week] if args.key?(:week)
        end
      end
      
      # 
      class StringCount
        include Google::Apis::Core::Hashable
      
        # Number of clicks for this top entry, e.g. for this particular country or
        # browser.
        # Corresponds to the JSON property `count`
        # @return [Fixnum]
        attr_accessor :count
      
        # Label assigned to this top entry, e.g. "US" or "Chrome".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] if args.key?(:count)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # 
      class Url
        include Google::Apis::Core::Hashable
      
        # A summary of the click analytics for the short and long URL. Might not be
        # present if not requested or currently unavailable.
        # Corresponds to the JSON property `analytics`
        # @return [Google::Apis::UrlshortenerV1::AnalyticsSummary]
        attr_accessor :analytics
      
        # Time the short URL was created; ISO 8601 representation using the yyyy-MM-dd'T'
        # HH:mm:ss.SSSZZ format, e.g. "2010-10-14T19:01:24.944+00:00".
        # Corresponds to the JSON property `created`
        # @return [String]
        attr_accessor :created
      
        # Short URL, e.g. "http://goo.gl/l6MS".
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The fixed string "urlshortener#url".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # Long URL, e.g. "http://www.google.com/". Might not be present if the status is
        # "REMOVED".
        # Corresponds to the JSON property `longUrl`
        # @return [String]
        attr_accessor :long_url
      
        # Status of the target URL. Possible values: "OK", "MALWARE", "PHISHING", or "
        # REMOVED". A URL might be marked "REMOVED" if it was flagged as spam, for
        # example.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analytics = args[:analytics] if args.key?(:analytics)
          @created = args[:created] if args.key?(:created)
          @id = args[:id] if args.key?(:id)
          @kind = args[:kind] if args.key?(:kind)
          @long_url = args[:long_url] if args.key?(:long_url)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class UrlHistory
        include Google::Apis::Core::Hashable
      
        # A list of URL resources.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::UrlshortenerV1::Url>]
        attr_accessor :items
      
        # Number of items returned with each full "page" of results. Note that the last
        # page could have fewer items than the "itemsPerPage" value.
        # Corresponds to the JSON property `itemsPerPage`
        # @return [Fixnum]
        attr_accessor :items_per_page
      
        # The fixed string "urlshortener#urlHistory".
        # Corresponds to the JSON property `kind`
        # @return [String]
        attr_accessor :kind
      
        # A token to provide to get the next page of results.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Total number of short URLs associated with this user (may be approximate).
        # Corresponds to the JSON property `totalItems`
        # @return [Fixnum]
        attr_accessor :total_items
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @items_per_page = args[:items_per_page] if args.key?(:items_per_page)
          @kind = args[:kind] if args.key?(:kind)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @total_items = args[:total_items] if args.key?(:total_items)
        end
      end
    end
  end
end
