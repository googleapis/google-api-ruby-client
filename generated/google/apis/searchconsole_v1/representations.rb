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
    module SearchconsoleV1
      
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
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MobileFriendlyIssue
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ResourceIssue
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
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :data, :base64 => true, as: 'data'
          property :mime_type, as: 'mimeType'
        end
      end
      
      class MobileFriendlyIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :rule, as: 'rule'
        end
      end
      
      class ResourceIssue
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :blocked_resource, as: 'blockedResource', class: Google::Apis::SearchconsoleV1::BlockedResource, decorator: Google::Apis::SearchconsoleV1::BlockedResource::Representation
      
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
          collection :dimension_filter_groups, as: 'dimensionFilterGroups', class: Google::Apis::SearchconsoleV1::ApiDimensionFilterGroup, decorator: Google::Apis::SearchconsoleV1::ApiDimensionFilterGroup::Representation
      
          collection :dimensions, as: 'dimensions'
          property :end_date, as: 'endDate'
          property :row_limit, as: 'rowLimit'
          property :search_type, as: 'searchType'
          property :start_date, as: 'startDate'
          property :start_row, as: 'startRow'
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
