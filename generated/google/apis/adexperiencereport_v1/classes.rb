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
    module AdexperiencereportV1
      
      # Summary of the ad experience rating of a site for a specific platform.
      class PlatformSummary
        include Google::Apis::Core::Hashable
      
        # The status of the site reviewed for the Better Ads Standards.
        # Corresponds to the JSON property `betterAdsStatus`
        # @return [String]
        attr_accessor :better_ads_status
      
        # The date on which ad filtering begins.
        # Corresponds to the JSON property `enforcementTime`
        # @return [String]
        attr_accessor :enforcement_time
      
        # The ad filtering status of the site.
        # Corresponds to the JSON property `filterStatus`
        # @return [String]
        attr_accessor :filter_status
      
        # The last time that the site changed status.
        # Corresponds to the JSON property `lastChangeTime`
        # @return [String]
        attr_accessor :last_change_time
      
        # The assigned regions for the site and platform.
        # Corresponds to the JSON property `region`
        # @return [Array<String>]
        attr_accessor :region
      
        # A link that leads to a full ad experience report.
        # Corresponds to the JSON property `reportUrl`
        # @return [String]
        attr_accessor :report_url
      
        # Whether the site is currently under review.
        # Corresponds to the JSON property `underReview`
        # @return [Boolean]
        attr_accessor :under_review
        alias_method :under_review?, :under_review
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @better_ads_status = args[:better_ads_status] if args.key?(:better_ads_status)
          @enforcement_time = args[:enforcement_time] if args.key?(:enforcement_time)
          @filter_status = args[:filter_status] if args.key?(:filter_status)
          @last_change_time = args[:last_change_time] if args.key?(:last_change_time)
          @region = args[:region] if args.key?(:region)
          @report_url = args[:report_url] if args.key?(:report_url)
          @under_review = args[:under_review] if args.key?(:under_review)
        end
      end
      
      # Response message for GetSiteSummary.
      # Do not confuse with same message in google.chrome.abusiveexperiencereport.v1
      class SiteSummaryResponse
        include Google::Apis::Core::Hashable
      
        # Summary of the ad experience rating of a site for a specific platform.
        # Corresponds to the JSON property `desktopSummary`
        # @return [Google::Apis::AdexperiencereportV1::PlatformSummary]
        attr_accessor :desktop_summary
      
        # Summary of the ad experience rating of a site for a specific platform.
        # Corresponds to the JSON property `mobileSummary`
        # @return [Google::Apis::AdexperiencereportV1::PlatformSummary]
        attr_accessor :mobile_summary
      
        # The name of the site reviewed.
        # Corresponds to the JSON property `reviewedSite`
        # @return [String]
        attr_accessor :reviewed_site
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @desktop_summary = args[:desktop_summary] if args.key?(:desktop_summary)
          @mobile_summary = args[:mobile_summary] if args.key?(:mobile_summary)
          @reviewed_site = args[:reviewed_site] if args.key?(:reviewed_site)
        end
      end
      
      # Response message for ListViolatingSites.
      class ViolatingSitesResponse
        include Google::Apis::Core::Hashable
      
        # A list of summaries of violating sites.
        # Corresponds to the JSON property `violatingSites`
        # @return [Array<Google::Apis::AdexperiencereportV1::SiteSummaryResponse>]
        attr_accessor :violating_sites
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @violating_sites = args[:violating_sites] if args.key?(:violating_sites)
        end
      end
    end
  end
end
