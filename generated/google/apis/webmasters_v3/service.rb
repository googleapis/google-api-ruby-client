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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module WebmastersV3
      # Search Console API
      #
      # View Google Search Console data for your verified sites.
      #
      # @example
      #    require 'google/apis/webmasters_v3'
      #
      #    Webmasters = Google::Apis::WebmastersV3 # Alias the module
      #    service = Webmasters::WebmastersService.new
      #
      # @see https://developers.google.com/webmaster-tools/
      class WebmastersService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'webmasters/v3/')
          @batch_path = 'batch/webmasters/v3'
        end
        
        # Query your data with filters and parameters that you define. Returns zero or
        # more rows grouped by the row keys that you define. You must define a date
        # range of one or more days.
        # When date is one of the group by values, any days without data are omitted
        # from the result list. If you need to know which days have data, issue a broad
        # date range query grouped by date for any metric, and see which day rows are
        # returned.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [Google::Apis::WebmastersV3::SearchAnalyticsQueryRequest] search_analytics_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::SearchAnalyticsQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::SearchAnalyticsQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_search_analytics(site_url, search_analytics_query_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'sites/{siteUrl}/searchAnalytics/query', options)
          command.request_representation = Google::Apis::WebmastersV3::SearchAnalyticsQueryRequest::Representation
          command.request_object = search_analytics_query_request_object
          command.response_representation = Google::Apis::WebmastersV3::SearchAnalyticsQueryResponse::Representation
          command.response_class = Google::Apis::WebmastersV3::SearchAnalyticsQueryResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sitemap from this site.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] feedpath
        #   The URL of the actual sitemap. For example: http://www.example.com/sitemap.xml
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_sitemap(site_url, feedpath, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'sites/{siteUrl}/sitemaps/{feedpath}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about a specific sitemap.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] feedpath
        #   The URL of the actual sitemap. For example: http://www.example.com/sitemap.xml
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::WmxSitemap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::WmxSitemap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sitemap(site_url, feedpath, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'sites/{siteUrl}/sitemaps/{feedpath}', options)
          command.response_representation = Google::Apis::WebmastersV3::WmxSitemap::Representation
          command.response_class = Google::Apis::WebmastersV3::WmxSitemap
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the sitemaps-entries submitted for this site, or included in the sitemap
        # index file (if sitemapIndex is specified in the request).
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] sitemap_index
        #   A URL of a site's sitemap index. For example: http://www.example.com/
        #   sitemapindex.xml
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::ListSitemapsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::ListSitemapsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sitemaps(site_url, sitemap_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'sites/{siteUrl}/sitemaps', options)
          command.response_representation = Google::Apis::WebmastersV3::ListSitemapsResponse::Representation
          command.response_class = Google::Apis::WebmastersV3::ListSitemapsResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['sitemapIndex'] = sitemap_index unless sitemap_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submits a sitemap for a site.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] feedpath
        #   The URL of the sitemap to add. For example: http://www.example.com/sitemap.xml
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def submit_sitemap(site_url, feedpath, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'sites/{siteUrl}/sitemaps/{feedpath}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a site to the set of the user's sites in Search Console.
        # @param [String] site_url
        #   The URL of the site to add.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_site(site_url, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'sites/{siteUrl}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a site from the set of the user's Search Console sites.
        # @param [String] site_url
        #   The URI of the property as defined in Search Console. Examples: http://www.
        #   example.com/ or android-app://com.example/ Note: for property-sets, use the
        #   URI that starts with sc-set: which is used in Search Console URLs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_site(site_url, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'sites/{siteUrl}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about specific site.
        # @param [String] site_url
        #   The URI of the property as defined in Search Console. Examples: http://www.
        #   example.com/ or android-app://com.example/ Note: for property-sets, use the
        #   URI that starts with sc-set: which is used in Search Console URLs.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::WmxSite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::WmxSite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_site(site_url, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'sites/{siteUrl}', options)
          command.response_representation = Google::Apis::WebmastersV3::WmxSite::Representation
          command.response_class = Google::Apis::WebmastersV3::WmxSite
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user's Search Console sites.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::ListSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::ListSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sites(fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'sites', options)
          command.response_representation = Google::Apis::WebmastersV3::ListSitesResponse::Representation
          command.response_class = Google::Apis::WebmastersV3::ListSitesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a time series of the number of URL crawl errors per error category
        # and platform.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] category
        #   The crawl error category. For example: serverError. If not specified, returns
        #   results for all categories.
        # @param [Boolean] latest_counts_only
        #   If true, returns only the latest crawl error counts.
        # @param [String] platform
        #   The user agent type (platform) that made the request. For example: web. If not
        #   specified, returns results for all platforms.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::QueryUrlCrawlErrorsCountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::QueryUrlCrawlErrorsCountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_errors_count(site_url, category: nil, latest_counts_only: nil, platform: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'sites/{siteUrl}/urlCrawlErrorsCounts/query', options)
          command.response_representation = Google::Apis::WebmastersV3::QueryUrlCrawlErrorsCountsResponse::Representation
          command.response_class = Google::Apis::WebmastersV3::QueryUrlCrawlErrorsCountsResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['category'] = category unless category.nil?
          command.query['latestCountsOnly'] = latest_counts_only unless latest_counts_only.nil?
          command.query['platform'] = platform unless platform.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves details about crawl errors for a site's sample URL.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] url
        #   The relative path (without the site) of the sample URL. It must be one of the
        #   URLs returned by list(). For example, for the URL https://www.example.com/
        #   pagename on the site https://www.example.com/, the url value is pagename
        # @param [String] category
        #   The crawl error category. For example: authPermissions
        # @param [String] platform
        #   The user agent type (platform) that made the request. For example: web
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::UrlCrawlErrorsSample] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::UrlCrawlErrorsSample]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_errors_sample(site_url, url, category, platform, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'sites/{siteUrl}/urlCrawlErrorsSamples/{url}', options)
          command.response_representation = Google::Apis::WebmastersV3::UrlCrawlErrorsSample::Representation
          command.response_class = Google::Apis::WebmastersV3::UrlCrawlErrorsSample
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['url'] = url unless url.nil?
          command.query['category'] = category unless category.nil?
          command.query['platform'] = platform unless platform.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a site's sample URLs for the specified crawl error category and platform.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] category
        #   The crawl error category. For example: authPermissions
        # @param [String] platform
        #   The user agent type (platform) that made the request. For example: web
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::WebmastersV3::ListUrlCrawlErrorsSamplesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::WebmastersV3::ListUrlCrawlErrorsSamplesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_errors_samples(site_url, category, platform, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'sites/{siteUrl}/urlCrawlErrorsSamples', options)
          command.response_representation = Google::Apis::WebmastersV3::ListUrlCrawlErrorsSamplesResponse::Representation
          command.response_class = Google::Apis::WebmastersV3::ListUrlCrawlErrorsSamplesResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['category'] = category unless category.nil?
          command.query['platform'] = platform unless platform.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks the provided site's sample URL as fixed, and removes it from the samples
        # list.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: http://www.example.com/
        # @param [String] url
        #   The relative path (without the site) of the sample URL. It must be one of the
        #   URLs returned by list(). For example, for the URL https://www.example.com/
        #   pagename on the site https://www.example.com/, the url value is pagename
        # @param [String] category
        #   The crawl error category. For example: authPermissions
        # @param [String] platform
        #   The user agent type (platform) that made the request. For example: web
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_as_fixed(site_url, url, category, platform, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'sites/{siteUrl}/urlCrawlErrorsSamples/{url}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['url'] = url unless url.nil?
          command.query['category'] = category unless category.nil?
          command.query['platform'] = platform unless platform.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
