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
      
      class AnalyticsSnapshot
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsSummary
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class StringCount
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Url
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlHistory
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnalyticsSnapshot
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :browsers, as: 'browsers', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCount::Representation
      
          collection :countries, as: 'countries', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCount::Representation
      
          property :long_url_clicks, :numeric_string => true, as: 'longUrlClicks'
          collection :platforms, as: 'platforms', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCount::Representation
      
          collection :referrers, as: 'referrers', class: Google::Apis::UrlshortenerV1::StringCount, decorator: Google::Apis::UrlshortenerV1::StringCount::Representation
      
          property :short_url_clicks, :numeric_string => true, as: 'shortUrlClicks'
        end
      end
      
      class AnalyticsSummary
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :all_time, as: 'allTime', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshot::Representation
      
          property :day, as: 'day', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshot::Representation
      
          property :month, as: 'month', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshot::Representation
      
          property :two_hours, as: 'twoHours', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshot::Representation
      
          property :week, as: 'week', class: Google::Apis::UrlshortenerV1::AnalyticsSnapshot, decorator: Google::Apis::UrlshortenerV1::AnalyticsSnapshot::Representation
      
        end
      end
      
      class StringCount
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :count, :numeric_string => true, as: 'count'
          property :id, as: 'id'
        end
      end
      
      class Url
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analytics, as: 'analytics', class: Google::Apis::UrlshortenerV1::AnalyticsSummary, decorator: Google::Apis::UrlshortenerV1::AnalyticsSummary::Representation
      
          property :created, as: 'created'
          property :id, as: 'id'
          property :kind, as: 'kind'
          property :long_url, as: 'longUrl'
          property :status, as: 'status'
        end
      end
      
      class UrlHistory
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::UrlshortenerV1::Url, decorator: Google::Apis::UrlshortenerV1::Url::Representation
      
          property :items_per_page, as: 'itemsPerPage'
          property :kind, as: 'kind'
          property :next_page_token, as: 'nextPageToken'
          property :total_items, as: 'totalItems'
        end
      end
    end
  end
end
