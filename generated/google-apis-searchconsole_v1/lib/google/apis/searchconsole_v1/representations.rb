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
    module SearchconsoleV1
      
      class AmpInspectionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AmpIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiDataRow
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiDimensionFilter
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ApiDimensionFilterGroup
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class BlockedResource
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DetectedItems
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IndexStatusInspectionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InspectUrlIndexRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class InspectUrlIndexResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Item
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileFriendlyIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileUsabilityInspectionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileUsabilityIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RichResultsInspectionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RichResultsIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunMobileFriendlyTestRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class RunMobileFriendlyTestResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnalyticsQueryRequest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SearchAnalyticsQueryResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SitemapsListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SitesListResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TestStatus
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class UrlInspectionResult
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WmxSite
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WmxSitemap
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class WmxSitemapContent
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AmpInspectionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amp_index_status_verdict, as: 'ampIndexStatusVerdict'
          property :amp_url, as: 'ampUrl'
          property :indexing_state, as: 'indexingState'
          collection :issues, as: 'issues', class: Google::Apis::SearchconsoleV1::AmpIssue, decorator: Google::Apis::SearchconsoleV1::AmpIssue::Representation
      
          property :last_crawl_time, as: 'lastCrawlTime'
          property :page_fetch_state, as: 'pageFetchState'
          property :robots_txt_state, as: 'robotsTxtState'
          property :verdict, as: 'verdict'
        end
      end
      
      class AmpIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_message, as: 'issueMessage'
          property :severity, as: 'severity'
        end
      end
      
      class ApiDataRow
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :clicks, as: 'clicks'
          property :ctr, as: 'ctr'
          property :impressions, as: 'impressions'
          collection :keys, as: 'keys'
          property :position, as: 'position'
        end
      end
      
      class ApiDimensionFilter
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dimension, as: 'dimension'
          property :expression, as: 'expression'
          property :operator, as: 'operator'
        end
      end
      
      class ApiDimensionFilterGroup
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :filters, as: 'filters', class: Google::Apis::SearchconsoleV1::ApiDimensionFilter, decorator: Google::Apis::SearchconsoleV1::ApiDimensionFilter::Representation
      
          property :group_type, as: 'groupType'
        end
      end
      
      class BlockedResource
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :url, as: 'url'
        end
      end
      
      class DetectedItems
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :items, as: 'items', class: Google::Apis::SearchconsoleV1::Item, decorator: Google::Apis::SearchconsoleV1::Item::Representation
      
          property :rich_result_type, as: 'richResultType'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class IndexStatusInspectionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :coverage_state, as: 'coverageState'
          property :crawled_as, as: 'crawledAs'
          property :google_canonical, as: 'googleCanonical'
          property :indexing_state, as: 'indexingState'
          property :last_crawl_time, as: 'lastCrawlTime'
          property :page_fetch_state, as: 'pageFetchState'
          collection :referring_urls, as: 'referringUrls'
          property :robots_txt_state, as: 'robotsTxtState'
          collection :sitemap, as: 'sitemap'
          property :user_canonical, as: 'userCanonical'
          property :verdict, as: 'verdict'
        end
      end
      
      class InspectUrlIndexRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspection_url, as: 'inspectionUrl'
          property :language_code, as: 'languageCode'
          property :site_url, as: 'siteUrl'
        end
      end
      
      class InspectUrlIndexResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :inspection_result, as: 'inspectionResult', class: Google::Apis::SearchconsoleV1::UrlInspectionResult, decorator: Google::Apis::SearchconsoleV1::UrlInspectionResult::Representation
      
        end
      end
      
      class Item
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issues, as: 'issues', class: Google::Apis::SearchconsoleV1::RichResultsIssue, decorator: Google::Apis::SearchconsoleV1::RichResultsIssue::Representation
      
          property :name, as: 'name'
        end
      end
      
      class MobileFriendlyIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rule, as: 'rule'
        end
      end
      
      class MobileUsabilityInspectionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :issues, as: 'issues', class: Google::Apis::SearchconsoleV1::MobileUsabilityIssue, decorator: Google::Apis::SearchconsoleV1::MobileUsabilityIssue::Representation
      
          property :verdict, as: 'verdict'
        end
      end
      
      class MobileUsabilityIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_type, as: 'issueType'
          property :message, as: 'message'
          property :severity, as: 'severity'
        end
      end
      
      class ResourceIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocked_resource, as: 'blockedResource', class: Google::Apis::SearchconsoleV1::BlockedResource, decorator: Google::Apis::SearchconsoleV1::BlockedResource::Representation
      
        end
      end
      
      class RichResultsInspectionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :detected_items, as: 'detectedItems', class: Google::Apis::SearchconsoleV1::DetectedItems, decorator: Google::Apis::SearchconsoleV1::DetectedItems::Representation
      
          property :verdict, as: 'verdict'
        end
      end
      
      class RichResultsIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :issue_message, as: 'issueMessage'
          property :severity, as: 'severity'
        end
      end
      
      class RunMobileFriendlyTestRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :request_screenshot, as: 'requestScreenshot'
          property :url, as: 'url'
        end
      end
      
      class RunMobileFriendlyTestResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :mobile_friendliness, as: 'mobileFriendliness'
          collection :mobile_friendly_issues, as: 'mobileFriendlyIssues', class: Google::Apis::SearchconsoleV1::MobileFriendlyIssue, decorator: Google::Apis::SearchconsoleV1::MobileFriendlyIssue::Representation
      
          collection :resource_issues, as: 'resourceIssues', class: Google::Apis::SearchconsoleV1::ResourceIssue, decorator: Google::Apis::SearchconsoleV1::ResourceIssue::Representation
      
          property :screenshot, as: 'screenshot', class: Google::Apis::SearchconsoleV1::Image, decorator: Google::Apis::SearchconsoleV1::Image::Representation
      
          property :test_status, as: 'testStatus', class: Google::Apis::SearchconsoleV1::TestStatus, decorator: Google::Apis::SearchconsoleV1::TestStatus::Representation
      
        end
      end
      
      class SearchAnalyticsQueryRequest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aggregation_type, as: 'aggregationType'
          property :data_state, as: 'dataState'
          collection :dimension_filter_groups, as: 'dimensionFilterGroups', class: Google::Apis::SearchconsoleV1::ApiDimensionFilterGroup, decorator: Google::Apis::SearchconsoleV1::ApiDimensionFilterGroup::Representation
      
          collection :dimensions, as: 'dimensions'
          property :end_date, as: 'endDate'
          property :row_limit, as: 'rowLimit'
          property :search_type, as: 'searchType'
          property :start_date, as: 'startDate'
          property :start_row, as: 'startRow'
          property :type, as: 'type'
        end
      end
      
      class SearchAnalyticsQueryResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :response_aggregation_type, as: 'responseAggregationType'
          collection :rows, as: 'rows', class: Google::Apis::SearchconsoleV1::ApiDataRow, decorator: Google::Apis::SearchconsoleV1::ApiDataRow::Representation
      
        end
      end
      
      class SitemapsListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :sitemap, as: 'sitemap', class: Google::Apis::SearchconsoleV1::WmxSitemap, decorator: Google::Apis::SearchconsoleV1::WmxSitemap::Representation
      
        end
      end
      
      class SitesListResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :site_entry, as: 'siteEntry', class: Google::Apis::SearchconsoleV1::WmxSite, decorator: Google::Apis::SearchconsoleV1::WmxSite::Representation
      
        end
      end
      
      class TestStatus
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :details, as: 'details'
          property :status, as: 'status'
        end
      end
      
      class UrlInspectionResult
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :amp_result, as: 'ampResult', class: Google::Apis::SearchconsoleV1::AmpInspectionResult, decorator: Google::Apis::SearchconsoleV1::AmpInspectionResult::Representation
      
          property :index_status_result, as: 'indexStatusResult', class: Google::Apis::SearchconsoleV1::IndexStatusInspectionResult, decorator: Google::Apis::SearchconsoleV1::IndexStatusInspectionResult::Representation
      
          property :inspection_result_link, as: 'inspectionResultLink'
          property :mobile_usability_result, as: 'mobileUsabilityResult', class: Google::Apis::SearchconsoleV1::MobileUsabilityInspectionResult, decorator: Google::Apis::SearchconsoleV1::MobileUsabilityInspectionResult::Representation
      
          property :rich_results_result, as: 'richResultsResult', class: Google::Apis::SearchconsoleV1::RichResultsInspectionResult, decorator: Google::Apis::SearchconsoleV1::RichResultsInspectionResult::Representation
      
        end
      end
      
      class WmxSite
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :permission_level, as: 'permissionLevel'
          property :site_url, as: 'siteUrl'
        end
      end
      
      class WmxSitemap
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :contents, as: 'contents', class: Google::Apis::SearchconsoleV1::WmxSitemapContent, decorator: Google::Apis::SearchconsoleV1::WmxSitemapContent::Representation
      
          property :errors, :numeric_string => true, as: 'errors'
          property :is_pending, as: 'isPending'
          property :is_sitemaps_index, as: 'isSitemapsIndex'
          property :last_downloaded, as: 'lastDownloaded'
          property :last_submitted, as: 'lastSubmitted'
          property :path, as: 'path'
          property :type, as: 'type'
          property :warnings, :numeric_string => true, as: 'warnings'
        end
      end
      
      class WmxSitemapContent
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :indexed, :numeric_string => true, as: 'indexed'
          property :submitted, :numeric_string => true, as: 'submitted'
          property :type, as: 'type'
        end
      end
    end
  end
end
