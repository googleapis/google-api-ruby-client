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
      
      class SitemapsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class SitesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlCrawlErrorCountRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlCrawlErrorCountsPerTypeRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlCrawlErrorsCountsQueryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlCrawlErrorsSampleRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlCrawlErrorsSamplesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class UrlSampleDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WmxSiteRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WmxSitemapRepresentation < Google::Apis::Core::JsonRepresentation
        
      end
      
      class WmxSitemapContentRepresentation < Google::Apis::Core::JsonRepresentation
        
      end

      # @private
      class SitemapsListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :sitemap, as: 'sitemap', class: Google::Apis::WebmastersV3::WmxSitemap, decorator: Google::Apis::WebmastersV3::WmxSitemapRepresentation
      end

      # @private
      class SitesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :site_entry, as: 'siteEntry', class: Google::Apis::WebmastersV3::WmxSite, decorator: Google::Apis::WebmastersV3::WmxSiteRepresentation
      end

      # @private
      class UrlCrawlErrorCountRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :count, as: 'count'
        property :timestamp, as: 'timestamp', type: DateTime
      end

      # @private
      class UrlCrawlErrorCountsPerTypeRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :category, as: 'category'
        collection :entries, as: 'entries', class: Google::Apis::WebmastersV3::UrlCrawlErrorCount, decorator: Google::Apis::WebmastersV3::UrlCrawlErrorCountRepresentation
        
        
        property :platform, as: 'platform'
      end

      # @private
      class UrlCrawlErrorsCountsQueryResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :count_per_types, as: 'countPerTypes', class: Google::Apis::WebmastersV3::UrlCrawlErrorCountsPerType, decorator: Google::Apis::WebmastersV3::UrlCrawlErrorCountsPerTypeRepresentation
      end

      # @private
      class UrlCrawlErrorsSampleRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :first_detected, as: 'first_detected', type: DateTime
        property :last_crawled, as: 'last_crawled', type: DateTime
        property :page_url, as: 'pageUrl'
        property :response_code, as: 'responseCode'
        property :url_details, as: 'urlDetails', class: Google::Apis::WebmastersV3::UrlSampleDetails, decorator: Google::Apis::WebmastersV3::UrlSampleDetailsRepresentation
      end

      # @private
      class UrlCrawlErrorsSamplesListResponseRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :url_crawl_error_sample, as: 'urlCrawlErrorSample', class: Google::Apis::WebmastersV3::UrlCrawlErrorsSample, decorator: Google::Apis::WebmastersV3::UrlCrawlErrorsSampleRepresentation
      end

      # @private
      class UrlSampleDetailsRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :containing_sitemaps, as: 'containingSitemaps'
        
        collection :linked_from_urls, as: 'linkedFromUrls'
      end

      # @private
      class WmxSiteRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :permission_level, as: 'permissionLevel'
        property :site_url, as: 'siteUrl'
      end

      # @private
      class WmxSitemapRepresentation < Google::Apis::Core::JsonRepresentation
        
        collection :contents, as: 'contents', class: Google::Apis::WebmastersV3::WmxSitemapContent, decorator: Google::Apis::WebmastersV3::WmxSitemapContentRepresentation
        
        
        property :errors, as: 'errors'
        property :is_pending, as: 'isPending'
        property :is_sitemaps_index, as: 'isSitemapsIndex'
        property :last_downloaded, as: 'lastDownloaded', type: DateTime
        property :last_submitted, as: 'lastSubmitted', type: DateTime
        property :path, as: 'path'
        property :type, as: 'type'
        property :warnings, as: 'warnings'
      end

      # @private
      class WmxSitemapContentRepresentation < Google::Apis::Core::JsonRepresentation
        
        property :indexed, as: 'indexed'
        property :submitted, as: 'submitted'
        property :type, as: 'type'
      end
    end
  end
end
