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
    module WebmastersV3
      
      # List of sitemaps.
      class ListSitemapsResponse
        include Google::Apis::Core::Hashable
      
        # Information about a sitemap entry.
        # Corresponds to the JSON property `sitemap`
        # @return [Array<Google::Apis::WebmastersV3::WmxSitemap>]
        attr_accessor :sitemap
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sitemap = args[:sitemap] unless args[:sitemap].nil?
        end
      end
      
      # List of sites with access level information.
      class ListSitesResponse
        include Google::Apis::Core::Hashable
      
        # Access level information for a Webmaster Tools site.
        # Corresponds to the JSON property `siteEntry`
        # @return [Array<Google::Apis::WebmastersV3::WmxSite>]
        attr_accessor :site_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_entry = args[:site_entry] unless args[:site_entry].nil?
        end
      end
      
      # An entry in a URL crawl errors time series.
      class UrlCrawlErrorCount
        include Google::Apis::Core::Hashable
      
        # The error count at the given timestamp.
        # Corresponds to the JSON property `count`
        # @return [String]
        attr_accessor :count
      
        # The time (well, date) when errors were detected, in RFC 3339 format.
        # Corresponds to the JSON property `timestamp`
        # @return [DateTime]
        attr_accessor :timestamp
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count = args[:count] unless args[:count].nil?
          @timestamp = args[:timestamp] unless args[:timestamp].nil?
        end
      end
      
      # Number of errors per day for a specific error type (defined by platform and
      # category).
      class UrlCrawlErrorCountsPerType
        include Google::Apis::Core::Hashable
      
        # The crawl error type.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # The error count entries time series.
        # Corresponds to the JSON property `entries`
        # @return [Array<Google::Apis::WebmastersV3::UrlCrawlErrorCount>]
        attr_accessor :entries
      
        # Corresponding to the user agent that made the request.
        # Corresponds to the JSON property `platform`
        # @return [String]
        attr_accessor :platform
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @category = args[:category] unless args[:category].nil?
          @entries = args[:entries] unless args[:entries].nil?
          @platform = args[:platform] unless args[:platform].nil?
        end
      end
      
      # A time series of the number of URL crawl errors per error category and
      # platform.
      class QueryUrlCrawlErrorsCountsResponse
        include Google::Apis::Core::Hashable
      
        # The time series of the number of URL crawl errors for per error category and
        # platform.
        # Corresponds to the JSON property `countPerTypes`
        # @return [Array<Google::Apis::WebmastersV3::UrlCrawlErrorCountsPerType>]
        attr_accessor :count_per_types
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @count_per_types = args[:count_per_types] unless args[:count_per_types].nil?
        end
      end
      
      # 
      class UrlCrawlErrorsSample
        include Google::Apis::Core::Hashable
      
        # The time the error was first detected, in RFC 3339 format.
        # Corresponds to the JSON property `first_detected`
        # @return [DateTime]
        attr_accessor :first_detected
      
        # The time when the URL was last crawled, in RFC 3339 format.
        # Corresponds to the JSON property `last_crawled`
        # @return [DateTime]
        attr_accessor :last_crawled
      
        # The URL of an error, relative to the site.
        # Corresponds to the JSON property `pageUrl`
        # @return [String]
        attr_accessor :page_url
      
        # The HTTP response code, if any.
        # Corresponds to the JSON property `responseCode`
        # @return [Fixnum]
        attr_accessor :response_code
      
        # Additional details about the URL, set only when calling get().
        # Corresponds to the JSON property `urlDetails`
        # @return [Google::Apis::WebmastersV3::UrlSampleDetails]
        attr_accessor :url_details
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @first_detected = args[:first_detected] unless args[:first_detected].nil?
          @last_crawled = args[:last_crawled] unless args[:last_crawled].nil?
          @page_url = args[:page_url] unless args[:page_url].nil?
          @response_code = args[:response_code] unless args[:response_code].nil?
          @url_details = args[:url_details] unless args[:url_details].nil?
        end
      end
      
      # List of crawl error samples.
      class ListUrlCrawlErrorsSamplesResponse
        include Google::Apis::Core::Hashable
      
        # Information about the sample URL and its crawl error.
        # Corresponds to the JSON property `urlCrawlErrorSample`
        # @return [Array<Google::Apis::WebmastersV3::UrlCrawlErrorsSample>]
        attr_accessor :url_crawl_error_sample
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url_crawl_error_sample = args[:url_crawl_error_sample] unless args[:url_crawl_error_sample].nil?
        end
      end
      
      # Additional details about the URL, set only when calling get().
      class UrlSampleDetails
        include Google::Apis::Core::Hashable
      
        # List of sitemaps pointing at this URL.
        # Corresponds to the JSON property `containingSitemaps`
        # @return [Array<String>]
        attr_accessor :containing_sitemaps
      
        # A sample set of URLs linking to this URL.
        # Corresponds to the JSON property `linkedFromUrls`
        # @return [Array<String>]
        attr_accessor :linked_from_urls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @containing_sitemaps = args[:containing_sitemaps] unless args[:containing_sitemaps].nil?
          @linked_from_urls = args[:linked_from_urls] unless args[:linked_from_urls].nil?
        end
      end
      
      # Access level information for a Webmaster Tools site.
      class WmxSite
        include Google::Apis::Core::Hashable
      
        # The user's permission level for the site.
        # Corresponds to the JSON property `permissionLevel`
        # @return [String]
        attr_accessor :permission_level
      
        # The URL of the site.
        # Corresponds to the JSON property `siteUrl`
        # @return [String]
        attr_accessor :site_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @permission_level = args[:permission_level] unless args[:permission_level].nil?
          @site_url = args[:site_url] unless args[:site_url].nil?
        end
      end
      
      # 
      class WmxSitemap
        include Google::Apis::Core::Hashable
      
        # The various content types in the sitemap.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::WebmastersV3::WmxSitemapContent>]
        attr_accessor :contents
      
        # Number of errors in the sitemap - issues with the sitemap itself, that needs
        # to be fixed before it can be processed correctly.
        # Corresponds to the JSON property `errors`
        # @return [String]
        attr_accessor :errors
      
        # If true, the sitemap has not been processed.
        # Corresponds to the JSON property `isPending`
        # @return [Boolean]
        attr_accessor :is_pending
        alias_method :is_pending?, :is_pending
      
        # If true, the sitemap is a collection of sitemaps.
        # Corresponds to the JSON property `isSitemapsIndex`
        # @return [Boolean]
        attr_accessor :is_sitemaps_index
        alias_method :is_sitemaps_index?, :is_sitemaps_index
      
        # Date & time in which this sitemap was last downloaded. Date format is in RFC
        # 3339 format (yyyy-mm-dd).
        # Corresponds to the JSON property `lastDownloaded`
        # @return [DateTime]
        attr_accessor :last_downloaded
      
        # Date & time in which this sitemap was submitted. Date format is in RFC 3339
        # format (yyyy-mm-dd).
        # Corresponds to the JSON property `lastSubmitted`
        # @return [DateTime]
        attr_accessor :last_submitted
      
        # The url of the sitemap.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The type of the sitemap (for example "sitemap").
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Number of warnings for the sitemap - issues with URLs in the sitemaps.
        # Corresponds to the JSON property `warnings`
        # @return [String]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] unless args[:contents].nil?
          @errors = args[:errors] unless args[:errors].nil?
          @is_pending = args[:is_pending] unless args[:is_pending].nil?
          @is_sitemaps_index = args[:is_sitemaps_index] unless args[:is_sitemaps_index].nil?
          @last_downloaded = args[:last_downloaded] unless args[:last_downloaded].nil?
          @last_submitted = args[:last_submitted] unless args[:last_submitted].nil?
          @path = args[:path] unless args[:path].nil?
          @type = args[:type] unless args[:type].nil?
          @warnings = args[:warnings] unless args[:warnings].nil?
        end
      end
      
      # Information about the various content types in the sitemap.
      class WmxSitemapContent
        include Google::Apis::Core::Hashable
      
        # The number of URLs from the sitemap that were indexed (of the content type).
        # Corresponds to the JSON property `indexed`
        # @return [String]
        attr_accessor :indexed
      
        # The number of URLs in the sitemap (of the content type).
        # Corresponds to the JSON property `submitted`
        # @return [String]
        attr_accessor :submitted
      
        # The specific type of content in this sitemap (for example "web", "images").
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @indexed = args[:indexed] unless args[:indexed].nil?
          @submitted = args[:submitted] unless args[:submitted].nil?
          @type = args[:type] unless args[:type].nil?
        end
      end
    end
  end
end
