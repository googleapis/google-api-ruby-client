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
      
      # AMP inspection result of the live page or the current information from Google'
      # s index, depending on whether you requested a live inspection or not.
      class AmpInspectionResult
        include Google::Apis::Core::Hashable
      
        # Index status of the AMP URL.
        # Corresponds to the JSON property `ampIndexStatusVerdict`
        # @return [String]
        attr_accessor :amp_index_status_verdict
      
        # URL of the AMP that was inspected. If the submitted URL is a desktop page that
        # refers to an AMP version, the AMP version will be inspected.
        # Corresponds to the JSON property `ampUrl`
        # @return [String]
        attr_accessor :amp_url
      
        # Whether or not the page blocks indexing through a noindex rule.
        # Corresponds to the JSON property `indexingState`
        # @return [String]
        attr_accessor :indexing_state
      
        # A list of zero or more AMP issues found for the inspected URL.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::SearchconsoleV1::AmpIssue>]
        attr_accessor :issues
      
        # Last time this AMP version was crawled by Google. Absent if the URL was never
        # crawled successfully.
        # Corresponds to the JSON property `lastCrawlTime`
        # @return [String]
        attr_accessor :last_crawl_time
      
        # Whether or not Google could fetch the AMP.
        # Corresponds to the JSON property `pageFetchState`
        # @return [String]
        attr_accessor :page_fetch_state
      
        # Whether or not the page is blocked to Google by a robots.txt rule.
        # Corresponds to the JSON property `robotsTxtState`
        # @return [String]
        attr_accessor :robots_txt_state
      
        # The status of the most severe error on the page. If a page has both warnings
        # and errors, the page status is error. Error status means the page cannot be
        # shown in Search results.
        # Corresponds to the JSON property `verdict`
        # @return [String]
        attr_accessor :verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amp_index_status_verdict = args[:amp_index_status_verdict] if args.key?(:amp_index_status_verdict)
          @amp_url = args[:amp_url] if args.key?(:amp_url)
          @indexing_state = args[:indexing_state] if args.key?(:indexing_state)
          @issues = args[:issues] if args.key?(:issues)
          @last_crawl_time = args[:last_crawl_time] if args.key?(:last_crawl_time)
          @page_fetch_state = args[:page_fetch_state] if args.key?(:page_fetch_state)
          @robots_txt_state = args[:robots_txt_state] if args.key?(:robots_txt_state)
          @verdict = args[:verdict] if args.key?(:verdict)
        end
      end
      
      # AMP issue.
      class AmpIssue
        include Google::Apis::Core::Hashable
      
        # Brief description of this issue.
        # Corresponds to the JSON property `issueMessage`
        # @return [String]
        attr_accessor :issue_message
      
        # Severity of this issue: WARNING or ERROR.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_message = args[:issue_message] if args.key?(:issue_message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # 
      class ApiDataRow
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `clicks`
        # @return [Float]
        attr_accessor :clicks
      
        # 
        # Corresponds to the JSON property `ctr`
        # @return [Float]
        attr_accessor :ctr
      
        # 
        # Corresponds to the JSON property `impressions`
        # @return [Float]
        attr_accessor :impressions
      
        # 
        # Corresponds to the JSON property `keys`
        # @return [Array<String>]
        attr_accessor :keys
      
        # 
        # Corresponds to the JSON property `position`
        # @return [Float]
        attr_accessor :position
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @clicks = args[:clicks] if args.key?(:clicks)
          @ctr = args[:ctr] if args.key?(:ctr)
          @impressions = args[:impressions] if args.key?(:impressions)
          @keys = args[:keys] if args.key?(:keys)
          @position = args[:position] if args.key?(:position)
        end
      end
      
      # A filter test to be applied to each row in the data set, where a match can
      # return the row. Filters are string comparisons, and values and dimension names
      # are not case-sensitive. Individual filters are either AND'ed or OR'ed within
      # their parent filter group, according to the group's group type. You do not
      # need to group by a specified dimension to filter against it.
      class ApiDimensionFilter
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `dimension`
        # @return [String]
        attr_accessor :dimension
      
        # 
        # Corresponds to the JSON property `expression`
        # @return [String]
        attr_accessor :expression
      
        # 
        # Corresponds to the JSON property `operator`
        # @return [String]
        attr_accessor :operator
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dimension = args[:dimension] if args.key?(:dimension)
          @expression = args[:expression] if args.key?(:expression)
          @operator = args[:operator] if args.key?(:operator)
        end
      end
      
      # A set of dimension value filters to test against each row. Only rows that pass
      # all filter groups will be returned. All results within a filter group are
      # either AND'ed or OR'ed together, depending on the group type selected. All
      # filter groups are AND'ed together.
      class ApiDimensionFilterGroup
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `filters`
        # @return [Array<Google::Apis::SearchconsoleV1::ApiDimensionFilter>]
        attr_accessor :filters
      
        # 
        # Corresponds to the JSON property `groupType`
        # @return [String]
        attr_accessor :group_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @filters = args[:filters] if args.key?(:filters)
          @group_type = args[:group_type] if args.key?(:group_type)
        end
      end
      
      # Blocked resource.
      class BlockedResource
        include Google::Apis::Core::Hashable
      
        # URL of the blocked resource.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Rich Results items grouped by type.
      class DetectedItems
        include Google::Apis::Core::Hashable
      
        # List of Rich Results items.
        # Corresponds to the JSON property `items`
        # @return [Array<Google::Apis::SearchconsoleV1::Item>]
        attr_accessor :items
      
        # Rich Results type
        # Corresponds to the JSON property `richResultType`
        # @return [String]
        attr_accessor :rich_result_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @items = args[:items] if args.key?(:items)
          @rich_result_type = args[:rich_result_type] if args.key?(:rich_result_type)
        end
      end
      
      # Describe image data.
      class Image
        include Google::Apis::Core::Hashable
      
        # Image data in format determined by the mime type. Currently, the format will
        # always be "image/png", but this might change in the future.
        # Corresponds to the JSON property `data`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :data
      
        # The mime-type of the image data.
        # Corresponds to the JSON property `mimeType`
        # @return [String]
        attr_accessor :mime_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @data = args[:data] if args.key?(:data)
          @mime_type = args[:mime_type] if args.key?(:mime_type)
        end
      end
      
      # Results of index status inspection for either the live page or the version in
      # Google's index, depending on whether you requested a live inspection or not.
      # For more information, see the [Index coverage report documentation](https://
      # support.google.com/webmasters/answer/7440203).
      class IndexStatusInspectionResult
        include Google::Apis::Core::Hashable
      
        # Could Google find and index the page. More details about page indexing appear
        # in 'indexing_state'.
        # Corresponds to the JSON property `coverageState`
        # @return [String]
        attr_accessor :coverage_state
      
        # Primary crawler that was used by Google to crawl your site.
        # Corresponds to the JSON property `crawledAs`
        # @return [String]
        attr_accessor :crawled_as
      
        # The URL of the page that Google selected as canonical. If the page was not
        # indexed, this field is absent.
        # Corresponds to the JSON property `googleCanonical`
        # @return [String]
        attr_accessor :google_canonical
      
        # Whether or not the page blocks indexing through a noindex rule.
        # Corresponds to the JSON property `indexingState`
        # @return [String]
        attr_accessor :indexing_state
      
        # Last time this URL was crawled by Google using the [primary crawler](https://
        # support.google.com/webmasters/answer/7440203#primary_crawler). Absent if the
        # URL was never crawled successfully.
        # Corresponds to the JSON property `lastCrawlTime`
        # @return [String]
        attr_accessor :last_crawl_time
      
        # Whether or not Google could retrieve the page from your server. Equivalent to [
        # "page fetch"](https://support.google.com/webmasters/answer/9012289#
        # index_coverage) in the URL inspection report.
        # Corresponds to the JSON property `pageFetchState`
        # @return [String]
        attr_accessor :page_fetch_state
      
        # URLs that link to the inspected URL, directly and indirectly.
        # Corresponds to the JSON property `referringUrls`
        # @return [Array<String>]
        attr_accessor :referring_urls
      
        # Whether or not the page is blocked to Google by a robots.txt rule.
        # Corresponds to the JSON property `robotsTxtState`
        # @return [String]
        attr_accessor :robots_txt_state
      
        # Any sitemaps that this URL was listed in, as known by Google. Not guaranteed
        # to be an exhaustive list, especially if Google did not discover this URL
        # through a sitemap. Absent if no sitemaps were found.
        # Corresponds to the JSON property `sitemap`
        # @return [Array<String>]
        attr_accessor :sitemap
      
        # The URL that your page or site [declares as canonical](https://developers.
        # google.com/search/docs/advanced/crawling/consolidate-duplicate-urls?#define-
        # canonical). If you did not declare a canonical URL, this field is absent.
        # Corresponds to the JSON property `userCanonical`
        # @return [String]
        attr_accessor :user_canonical
      
        # High level verdict about whether the URL *is* indexed (indexed status), or *
        # can be* indexed (live inspection).
        # Corresponds to the JSON property `verdict`
        # @return [String]
        attr_accessor :verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @coverage_state = args[:coverage_state] if args.key?(:coverage_state)
          @crawled_as = args[:crawled_as] if args.key?(:crawled_as)
          @google_canonical = args[:google_canonical] if args.key?(:google_canonical)
          @indexing_state = args[:indexing_state] if args.key?(:indexing_state)
          @last_crawl_time = args[:last_crawl_time] if args.key?(:last_crawl_time)
          @page_fetch_state = args[:page_fetch_state] if args.key?(:page_fetch_state)
          @referring_urls = args[:referring_urls] if args.key?(:referring_urls)
          @robots_txt_state = args[:robots_txt_state] if args.key?(:robots_txt_state)
          @sitemap = args[:sitemap] if args.key?(:sitemap)
          @user_canonical = args[:user_canonical] if args.key?(:user_canonical)
          @verdict = args[:verdict] if args.key?(:verdict)
        end
      end
      
      # Index inspection request.
      class InspectUrlIndexRequest
        include Google::Apis::Core::Hashable
      
        # Required. URL to inspect. Must be under the property specified in "site_url".
        # Corresponds to the JSON property `inspectionUrl`
        # @return [String]
        attr_accessor :inspection_url
      
        # Optional. An [IETF BCP-47](https://en.wikipedia.org/wiki/IETF_language_tag)
        # language code representing the requested language for translated issue
        # messages, e.g. "en-US", "or "de-CH". Default value is "en-US".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # Required. The URL of the property as defined in Search Console. **Examples:** `
        # http://www.example.com/` for a URL-prefix property, or `sc-domain:example.com`
        # for a Domain property.
        # Corresponds to the JSON property `siteUrl`
        # @return [String]
        attr_accessor :site_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspection_url = args[:inspection_url] if args.key?(:inspection_url)
          @language_code = args[:language_code] if args.key?(:language_code)
          @site_url = args[:site_url] if args.key?(:site_url)
        end
      end
      
      # Index-Status inspection response.
      class InspectUrlIndexResponse
        include Google::Apis::Core::Hashable
      
        # URL inspection result, including all inspection results.
        # Corresponds to the JSON property `inspectionResult`
        # @return [Google::Apis::SearchconsoleV1::UrlInspectionResult]
        attr_accessor :inspection_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inspection_result = args[:inspection_result] if args.key?(:inspection_result)
        end
      end
      
      # A specific rich result found on the page.
      class Item
        include Google::Apis::Core::Hashable
      
        # A list of zero or more rich result issues found for this instance.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::SearchconsoleV1::RichResultsIssue>]
        attr_accessor :issues
      
        # The user-provided name of this item.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issues = args[:issues] if args.key?(:issues)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Mobile-friendly issue.
      class MobileFriendlyIssue
        include Google::Apis::Core::Hashable
      
        # Rule violated.
        # Corresponds to the JSON property `rule`
        # @return [String]
        attr_accessor :rule
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @rule = args[:rule] if args.key?(:rule)
        end
      end
      
      # Mobile-usability inspection results.
      class MobileUsabilityInspectionResult
        include Google::Apis::Core::Hashable
      
        # A list of zero or more mobile-usability issues detected for this URL.
        # Corresponds to the JSON property `issues`
        # @return [Array<Google::Apis::SearchconsoleV1::MobileUsabilityIssue>]
        attr_accessor :issues
      
        # High-level mobile-usability inspection result for this URL.
        # Corresponds to the JSON property `verdict`
        # @return [String]
        attr_accessor :verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issues = args[:issues] if args.key?(:issues)
          @verdict = args[:verdict] if args.key?(:verdict)
        end
      end
      
      # Mobile-usability issue.
      class MobileUsabilityIssue
        include Google::Apis::Core::Hashable
      
        # Mobile-usability issue type.
        # Corresponds to the JSON property `issueType`
        # @return [String]
        attr_accessor :issue_type
      
        # Additional information regarding the issue.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Not returned; reserved for future use.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_type = args[:issue_type] if args.key?(:issue_type)
          @message = args[:message] if args.key?(:message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Information about a resource with issue.
      class ResourceIssue
        include Google::Apis::Core::Hashable
      
        # Blocked resource.
        # Corresponds to the JSON property `blockedResource`
        # @return [Google::Apis::SearchconsoleV1::BlockedResource]
        attr_accessor :blocked_resource
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @blocked_resource = args[:blocked_resource] if args.key?(:blocked_resource)
        end
      end
      
      # Rich-Results inspection result, including any rich results found at this URL.
      class RichResultsInspectionResult
        include Google::Apis::Core::Hashable
      
        # A list of zero or more rich results detected on this page. Rich results that
        # cannot even be parsed due to syntactic issues will not be listed here.
        # Corresponds to the JSON property `detectedItems`
        # @return [Array<Google::Apis::SearchconsoleV1::DetectedItems>]
        attr_accessor :detected_items
      
        # High-level rich results inspection result for this URL.
        # Corresponds to the JSON property `verdict`
        # @return [String]
        attr_accessor :verdict
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detected_items = args[:detected_items] if args.key?(:detected_items)
          @verdict = args[:verdict] if args.key?(:verdict)
        end
      end
      
      # Severity and status of a single issue affecting a single rich result instance
      # on a page.
      class RichResultsIssue
        include Google::Apis::Core::Hashable
      
        # Rich Results issue type.
        # Corresponds to the JSON property `issueMessage`
        # @return [String]
        attr_accessor :issue_message
      
        # Severity of this issue: WARNING, or ERROR. Items with an issue of status ERROR
        # cannot appear with rich result features in Google Search results.
        # Corresponds to the JSON property `severity`
        # @return [String]
        attr_accessor :severity
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @issue_message = args[:issue_message] if args.key?(:issue_message)
          @severity = args[:severity] if args.key?(:severity)
        end
      end
      
      # Mobile-friendly test request.
      class RunMobileFriendlyTestRequest
        include Google::Apis::Core::Hashable
      
        # Whether or not screenshot is requested. Default is false.
        # Corresponds to the JSON property `requestScreenshot`
        # @return [Boolean]
        attr_accessor :request_screenshot
        alias_method :request_screenshot?, :request_screenshot
      
        # URL for inspection.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @request_screenshot = args[:request_screenshot] if args.key?(:request_screenshot)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # Mobile-friendly test response, including mobile-friendly issues and resource
      # issues.
      class RunMobileFriendlyTestResponse
        include Google::Apis::Core::Hashable
      
        # Test verdict, whether the page is mobile friendly or not.
        # Corresponds to the JSON property `mobileFriendliness`
        # @return [String]
        attr_accessor :mobile_friendliness
      
        # List of mobile-usability issues.
        # Corresponds to the JSON property `mobileFriendlyIssues`
        # @return [Array<Google::Apis::SearchconsoleV1::MobileFriendlyIssue>]
        attr_accessor :mobile_friendly_issues
      
        # Information about embedded resources issues.
        # Corresponds to the JSON property `resourceIssues`
        # @return [Array<Google::Apis::SearchconsoleV1::ResourceIssue>]
        attr_accessor :resource_issues
      
        # Describe image data.
        # Corresponds to the JSON property `screenshot`
        # @return [Google::Apis::SearchconsoleV1::Image]
        attr_accessor :screenshot
      
        # Final state of the test, including error details if necessary.
        # Corresponds to the JSON property `testStatus`
        # @return [Google::Apis::SearchconsoleV1::TestStatus]
        attr_accessor :test_status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mobile_friendliness = args[:mobile_friendliness] if args.key?(:mobile_friendliness)
          @mobile_friendly_issues = args[:mobile_friendly_issues] if args.key?(:mobile_friendly_issues)
          @resource_issues = args[:resource_issues] if args.key?(:resource_issues)
          @screenshot = args[:screenshot] if args.key?(:screenshot)
          @test_status = args[:test_status] if args.key?(:test_status)
        end
      end
      
      # 
      class SearchAnalyticsQueryRequest
        include Google::Apis::Core::Hashable
      
        # [Optional; Default is \"auto\"] How data is aggregated. If aggregated by
        # property, all data for the same property is aggregated; if aggregated by page,
        # all data is aggregated by canonical URI. If you filter or group by page,
        # choose AUTO; otherwise you can aggregate either by property or by page,
        # depending on how you want your data calculated; see the help documentation to
        # learn how data is calculated differently by site versus by page. **Note:** If
        # you group or filter by page, you cannot aggregate by property. If you specify
        # any value other than AUTO, the aggregation type in the result will match the
        # requested type, or if you request an invalid type, you will get an error. The
        # API will never change your aggregation type if the requested type is invalid.
        # Corresponds to the JSON property `aggregationType`
        # @return [String]
        attr_accessor :aggregation_type
      
        # The data state to be fetched, can be full or all, the latter including full
        # and partial data.
        # Corresponds to the JSON property `dataState`
        # @return [String]
        attr_accessor :data_state
      
        # [Optional] Zero or more filters to apply to the dimension grouping values; for
        # example, 'query contains \"buy\"' to see only data where the query string
        # contains the substring \"buy\" (not case-sensitive). You can filter by a
        # dimension without grouping by it.
        # Corresponds to the JSON property `dimensionFilterGroups`
        # @return [Array<Google::Apis::SearchconsoleV1::ApiDimensionFilterGroup>]
        attr_accessor :dimension_filter_groups
      
        # [Optional] Zero or more dimensions to group results by. Dimensions are the
        # group-by values in the Search Analytics page. Dimensions are combined to
        # create a unique row key for each row. Results are grouped in the order that
        # you supply these dimensions.
        # Corresponds to the JSON property `dimensions`
        # @return [Array<String>]
        attr_accessor :dimensions
      
        # [Required] End date of the requested date range, in YYYY-MM-DD format, in PST (
        # UTC - 8:00). Must be greater than or equal to the start date. This value is
        # included in the range.
        # Corresponds to the JSON property `endDate`
        # @return [String]
        attr_accessor :end_date
      
        # [Optional; Default is 1000] The maximum number of rows to return. Must be a
        # number from 1 to 25,000 (inclusive).
        # Corresponds to the JSON property `rowLimit`
        # @return [Fixnum]
        attr_accessor :row_limit
      
        # [Optional; Default is \"web\"] The search type to filter for.
        # Corresponds to the JSON property `searchType`
        # @return [String]
        attr_accessor :search_type
      
        # [Required] Start date of the requested date range, in YYYY-MM-DD format, in
        # PST time (UTC - 8:00). Must be less than or equal to the end date. This value
        # is included in the range.
        # Corresponds to the JSON property `startDate`
        # @return [String]
        attr_accessor :start_date
      
        # [Optional; Default is 0] Zero-based index of the first row in the response.
        # Must be a non-negative number.
        # Corresponds to the JSON property `startRow`
        # @return [Fixnum]
        attr_accessor :start_row
      
        # Optional. [Optional; Default is \"web\"] Type of report: search type, or
        # either Discover or Gnews.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aggregation_type = args[:aggregation_type] if args.key?(:aggregation_type)
          @data_state = args[:data_state] if args.key?(:data_state)
          @dimension_filter_groups = args[:dimension_filter_groups] if args.key?(:dimension_filter_groups)
          @dimensions = args[:dimensions] if args.key?(:dimensions)
          @end_date = args[:end_date] if args.key?(:end_date)
          @row_limit = args[:row_limit] if args.key?(:row_limit)
          @search_type = args[:search_type] if args.key?(:search_type)
          @start_date = args[:start_date] if args.key?(:start_date)
          @start_row = args[:start_row] if args.key?(:start_row)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A list of rows, one per result, grouped by key. Metrics in each row are
      # aggregated for all data grouped by that key either by page or property, as
      # specified by the aggregation type parameter.
      class SearchAnalyticsQueryResponse
        include Google::Apis::Core::Hashable
      
        # How the results were aggregated.
        # Corresponds to the JSON property `responseAggregationType`
        # @return [String]
        attr_accessor :response_aggregation_type
      
        # A list of rows grouped by the key values in the order given in the query.
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::SearchconsoleV1::ApiDataRow>]
        attr_accessor :rows
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @response_aggregation_type = args[:response_aggregation_type] if args.key?(:response_aggregation_type)
          @rows = args[:rows] if args.key?(:rows)
        end
      end
      
      # List of sitemaps.
      class SitemapsListResponse
        include Google::Apis::Core::Hashable
      
        # Contains detailed information about a specific URL submitted as a [sitemap](
        # https://support.google.com/webmasters/answer/156184).
        # Corresponds to the JSON property `sitemap`
        # @return [Array<Google::Apis::SearchconsoleV1::WmxSitemap>]
        attr_accessor :sitemap
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @sitemap = args[:sitemap] if args.key?(:sitemap)
        end
      end
      
      # List of sites with access level information.
      class SitesListResponse
        include Google::Apis::Core::Hashable
      
        # Contains permission level information about a Search Console site. For more
        # information, see [Permissions in Search Console](https://support.google.com/
        # webmasters/answer/2451999).
        # Corresponds to the JSON property `siteEntry`
        # @return [Array<Google::Apis::SearchconsoleV1::WmxSite>]
        attr_accessor :site_entry
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @site_entry = args[:site_entry] if args.key?(:site_entry)
        end
      end
      
      # Final state of the test, including error details if necessary.
      class TestStatus
        include Google::Apis::Core::Hashable
      
        # Error details if applicable.
        # Corresponds to the JSON property `details`
        # @return [String]
        attr_accessor :details
      
        # Status of the test.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @details = args[:details] if args.key?(:details)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # URL inspection result, including all inspection results.
      class UrlInspectionResult
        include Google::Apis::Core::Hashable
      
        # AMP inspection result of the live page or the current information from Google'
        # s index, depending on whether you requested a live inspection or not.
        # Corresponds to the JSON property `ampResult`
        # @return [Google::Apis::SearchconsoleV1::AmpInspectionResult]
        attr_accessor :amp_result
      
        # Results of index status inspection for either the live page or the version in
        # Google's index, depending on whether you requested a live inspection or not.
        # For more information, see the [Index coverage report documentation](https://
        # support.google.com/webmasters/answer/7440203).
        # Corresponds to the JSON property `indexStatusResult`
        # @return [Google::Apis::SearchconsoleV1::IndexStatusInspectionResult]
        attr_accessor :index_status_result
      
        # Link to Search Console URL inspection.
        # Corresponds to the JSON property `inspectionResultLink`
        # @return [String]
        attr_accessor :inspection_result_link
      
        # Mobile-usability inspection results.
        # Corresponds to the JSON property `mobileUsabilityResult`
        # @return [Google::Apis::SearchconsoleV1::MobileUsabilityInspectionResult]
        attr_accessor :mobile_usability_result
      
        # Rich-Results inspection result, including any rich results found at this URL.
        # Corresponds to the JSON property `richResultsResult`
        # @return [Google::Apis::SearchconsoleV1::RichResultsInspectionResult]
        attr_accessor :rich_results_result
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @amp_result = args[:amp_result] if args.key?(:amp_result)
          @index_status_result = args[:index_status_result] if args.key?(:index_status_result)
          @inspection_result_link = args[:inspection_result_link] if args.key?(:inspection_result_link)
          @mobile_usability_result = args[:mobile_usability_result] if args.key?(:mobile_usability_result)
          @rich_results_result = args[:rich_results_result] if args.key?(:rich_results_result)
        end
      end
      
      # Contains permission level information about a Search Console site. For more
      # information, see [Permissions in Search Console](https://support.google.com/
      # webmasters/answer/2451999).
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
          @permission_level = args[:permission_level] if args.key?(:permission_level)
          @site_url = args[:site_url] if args.key?(:site_url)
        end
      end
      
      # Contains detailed information about a specific URL submitted as a [sitemap](
      # https://support.google.com/webmasters/answer/156184).
      class WmxSitemap
        include Google::Apis::Core::Hashable
      
        # The various content types in the sitemap.
        # Corresponds to the JSON property `contents`
        # @return [Array<Google::Apis::SearchconsoleV1::WmxSitemapContent>]
        attr_accessor :contents
      
        # Number of errors in the sitemap. These are issues with the sitemap itself that
        # need to be fixed before it can be processed correctly.
        # Corresponds to the JSON property `errors`
        # @return [Fixnum]
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
        # @return [String]
        attr_accessor :last_downloaded
      
        # Date & time in which this sitemap was submitted. Date format is in RFC 3339
        # format (yyyy-mm-dd).
        # Corresponds to the JSON property `lastSubmitted`
        # @return [String]
        attr_accessor :last_submitted
      
        # The url of the sitemap.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The type of the sitemap. For example: `rssFeed`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # Number of warnings for the sitemap. These are generally non-critical issues
        # with URLs in the sitemaps.
        # Corresponds to the JSON property `warnings`
        # @return [Fixnum]
        attr_accessor :warnings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @contents = args[:contents] if args.key?(:contents)
          @errors = args[:errors] if args.key?(:errors)
          @is_pending = args[:is_pending] if args.key?(:is_pending)
          @is_sitemaps_index = args[:is_sitemaps_index] if args.key?(:is_sitemaps_index)
          @last_downloaded = args[:last_downloaded] if args.key?(:last_downloaded)
          @last_submitted = args[:last_submitted] if args.key?(:last_submitted)
          @path = args[:path] if args.key?(:path)
          @type = args[:type] if args.key?(:type)
          @warnings = args[:warnings] if args.key?(:warnings)
        end
      end
      
      # Information about the various content types in the sitemap.
      class WmxSitemapContent
        include Google::Apis::Core::Hashable
      
        # *Deprecated; do not use.*
        # Corresponds to the JSON property `indexed`
        # @return [Fixnum]
        attr_accessor :indexed
      
        # The number of URLs in the sitemap (of the content type).
        # Corresponds to the JSON property `submitted`
        # @return [Fixnum]
        attr_accessor :submitted
      
        # The specific type of content in this sitemap. For example: `web`.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @indexed = args[:indexed] if args.key?(:indexed)
          @submitted = args[:submitted] if args.key?(:submitted)
          @type = args[:type] if args.key?(:type)
        end
      end
    end
  end
end
