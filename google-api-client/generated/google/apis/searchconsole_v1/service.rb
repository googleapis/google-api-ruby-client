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
    module SearchconsoleV1
      # Google Search Console API
      #
      # The Search Console API provides access to both Search Console data (verified
      #  users only) and to public information on an URL basis (anyone)
      #
      # @example
      #    require 'google/apis/searchconsole_v1'
      #
      #    Searchconsole = Google::Apis::SearchconsoleV1 # Alias the module
      #    service = Searchconsole::SearchConsoleService.new
      #
      # @see https://developers.google.com/webmaster-tools/search-console-api/
      class SearchConsoleService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://searchconsole.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Query your data with filters and parameters that you define. Returns zero or
        # more rows grouped by the row keys that you define. You must define a date
        # range of one or more days. When date is one of the group by values, any days
        # without data are omitted from the result list. If you need to know which days
        # have data, issue a broad date range query grouped by date for any metric, and
        # see which day rows are returned.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: `http://www.example.com/`.
        # @param [Google::Apis::SearchconsoleV1::SearchAnalyticsQueryRequest] search_analytics_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SearchconsoleV1::SearchAnalyticsQueryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SearchconsoleV1::SearchAnalyticsQueryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_searchanalytic(site_url, search_analytics_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'webmasters/v3/sites/{siteUrl}/searchAnalytics/query', options)
          command.request_representation = Google::Apis::SearchconsoleV1::SearchAnalyticsQueryRequest::Representation
          command.request_object = search_analytics_query_request_object
          command.response_representation = Google::Apis::SearchconsoleV1::SearchAnalyticsQueryResponse::Representation
          command.response_class = Google::Apis::SearchconsoleV1::SearchAnalyticsQueryResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a sitemap from this site.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: `http://www.example.com/`.
        # @param [String] feedpath
        #   The URL of the actual sitemap. For example: `http://www.example.com/sitemap.
        #   xml`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_sitemap(site_url, feedpath, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about a specific sitemap.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: `http://www.example.com/`.
        # @param [String] feedpath
        #   The URL of the actual sitemap. For example: `http://www.example.com/sitemap.
        #   xml`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SearchconsoleV1::WmxSitemap] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SearchconsoleV1::WmxSitemap]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_sitemap(site_url, feedpath, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}', options)
          command.response_representation = Google::Apis::SearchconsoleV1::WmxSitemap::Representation
          command.response_class = Google::Apis::SearchconsoleV1::WmxSitemap
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the [sitemaps-entries](/webmaster-tools/v3/sitemaps) submitted for this
        # site, or included in the sitemap index file (if `sitemapIndex` is specified in
        # the request).
        # @param [String] site_url
        #   The site's URL, including protocol. For example: `http://www.example.com/`.
        # @param [String] sitemap_index
        #   A URL of a site's sitemap index. For example: `http://www.example.com/
        #   sitemapindex.xml`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SearchconsoleV1::SitemapsListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SearchconsoleV1::SitemapsListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sitemaps(site_url, sitemap_index: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'webmasters/v3/sites/{siteUrl}/sitemaps', options)
          command.response_representation = Google::Apis::SearchconsoleV1::SitemapsListResponse::Representation
          command.response_class = Google::Apis::SearchconsoleV1::SitemapsListResponse
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['sitemapIndex'] = sitemap_index unless sitemap_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Submits a sitemap for a site.
        # @param [String] site_url
        #   The site's URL, including protocol. For example: `http://www.example.com/`.
        # @param [String] feedpath
        #   The URL of the actual sitemap. For example: `http://www.example.com/sitemap.
        #   xml`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def submit_sitemap(site_url, feedpath, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'webmasters/v3/sites/{siteUrl}/sitemaps/{feedpath}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.params['feedpath'] = feedpath unless feedpath.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a site to the set of the user's sites in Search Console.
        # @param [String] site_url
        #   The URL of the site to add.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def add_site(site_url, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'webmasters/v3/sites/{siteUrl}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a site from the set of the user's Search Console sites.
        # @param [String] site_url
        #   The URI of the property as defined in Search Console. **Examples:** `http://
        #   www.example.com/` or `sc-domain:example.com`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
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
        def delete_site(site_url, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'webmasters/v3/sites/{siteUrl}', options)
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves information about specific site.
        # @param [String] site_url
        #   The URI of the property as defined in Search Console. **Examples:** `http://
        #   www.example.com/` or `sc-domain:example.com`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SearchconsoleV1::WmxSite] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SearchconsoleV1::WmxSite]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_site(site_url, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'webmasters/v3/sites/{siteUrl}', options)
          command.response_representation = Google::Apis::SearchconsoleV1::WmxSite::Representation
          command.response_class = Google::Apis::SearchconsoleV1::WmxSite
          command.params['siteUrl'] = site_url unless site_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user's Search Console sites.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SearchconsoleV1::SitesListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SearchconsoleV1::SitesListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sites(fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'webmasters/v3/sites', options)
          command.response_representation = Google::Apis::SearchconsoleV1::SitesListResponse::Representation
          command.response_class = Google::Apis::SearchconsoleV1::SitesListResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Runs Mobile-Friendly Test for a given URL.
        # @param [Google::Apis::SearchconsoleV1::RunMobileFriendlyTestRequest] run_mobile_friendly_test_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SearchconsoleV1::RunMobileFriendlyTestResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SearchconsoleV1::RunMobileFriendlyTestResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_mobile_friendly_test(run_mobile_friendly_test_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/urlTestingTools/mobileFriendlyTest:run', options)
          command.request_representation = Google::Apis::SearchconsoleV1::RunMobileFriendlyTestRequest::Representation
          command.request_object = run_mobile_friendly_test_request_object
          command.response_representation = Google::Apis::SearchconsoleV1::RunMobileFriendlyTestResponse::Representation
          command.response_class = Google::Apis::SearchconsoleV1::RunMobileFriendlyTestResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
        end
      end
    end
  end
end
