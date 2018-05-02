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
    module YoutubeAnalyticsV1
      # YouTube Analytics API
      #
      # Retrieves your YouTube Analytics data.
      #
      # @example
      #    require 'google/apis/youtube_analytics_v1'
      #
      #    YoutubeAnalytics = Google::Apis::YoutubeAnalyticsV1 # Alias the module
      #    service = YoutubeAnalytics::YouTubeAnalyticsService.new
      #
      # @see http://developers.google.com/youtube/analytics/
      class YouTubeAnalyticsService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'youtube/analytics/v1/')
          @batch_path = 'batch/youtubeAnalytics/v1'
        end
        
        # Removes an item from a group.
        # @param [String] id
        #   The id parameter specifies the YouTube group item ID for the group that is
        #   being deleted.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def delete_group_item(id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'groupItems', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a group item.
        # @param [Google::Apis::YoutubeAnalyticsV1::GroupItem] group_item_object
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        # @yieldparam result [Google::Apis::YoutubeAnalyticsV1::GroupItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeAnalyticsV1::GroupItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_group_item(group_item_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'groupItems', options)
          command.request_representation = Google::Apis::YoutubeAnalyticsV1::GroupItem::Representation
          command.request_object = group_item_object
          command.response_representation = Google::Apis::YoutubeAnalyticsV1::GroupItem::Representation
          command.response_class = Google::Apis::YoutubeAnalyticsV1::GroupItem
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a collection of group items that match the API request parameters.
        # @param [String] group_id
        #   The id parameter specifies the unique ID of the group for which you want to
        #   retrieve group items.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        # @yieldparam result [Google::Apis::YoutubeAnalyticsV1::ListGroupItemResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeAnalyticsV1::ListGroupItemResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_group_items(group_id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'groupItems', options)
          command.response_representation = Google::Apis::YoutubeAnalyticsV1::ListGroupItemResponse::Representation
          command.response_class = Google::Apis::YoutubeAnalyticsV1::ListGroupItemResponse
          command.query['groupId'] = group_id unless group_id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a group.
        # @param [String] id
        #   The id parameter specifies the YouTube group ID for the group that is being
        #   deleted.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def delete_group(id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'groups', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a group.
        # @param [Google::Apis::YoutubeAnalyticsV1::Group] group_object
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        # @yieldparam result [Google::Apis::YoutubeAnalyticsV1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeAnalyticsV1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_group(group_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'groups', options)
          command.request_representation = Google::Apis::YoutubeAnalyticsV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::YoutubeAnalyticsV1::Group::Representation
          command.response_class = Google::Apis::YoutubeAnalyticsV1::Group
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a collection of groups that match the API request parameters. For
        # example, you can retrieve all groups that the authenticated user owns, or you
        # can retrieve one or more groups by their unique IDs.
        # @param [String] id
        #   The id parameter specifies a comma-separated list of the YouTube group ID(s)
        #   for the resource(s) that are being retrieved. In a group resource, the id
        #   property specifies the group's YouTube group ID.
        # @param [Boolean] mine
        #   Set this parameter's value to true to instruct the API to only return groups
        #   owned by the authenticated user.
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] page_token
        #   The pageToken parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken property identifies
        #   the next page that can be retrieved.
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
        # @yieldparam result [Google::Apis::YoutubeAnalyticsV1::ListGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeAnalyticsV1::ListGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_groups(id: nil, mine: nil, on_behalf_of_content_owner: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'groups', options)
          command.response_representation = Google::Apis::YoutubeAnalyticsV1::ListGroupsResponse::Representation
          command.response_class = Google::Apis::YoutubeAnalyticsV1::ListGroupsResponse
          command.query['id'] = id unless id.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Modifies a group. For example, you could change a group's title.
        # @param [Google::Apis::YoutubeAnalyticsV1::Group] group_object
        # @param [String] on_behalf_of_content_owner
        #   Note: This parameter is intended exclusively for YouTube content partners.
        #   The onBehalfOfContentOwner parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        # @yieldparam result [Google::Apis::YoutubeAnalyticsV1::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeAnalyticsV1::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_group(group_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:put, 'groups', options)
          command.request_representation = Google::Apis::YoutubeAnalyticsV1::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::YoutubeAnalyticsV1::Group::Representation
          command.response_class = Google::Apis::YoutubeAnalyticsV1::Group
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve your YouTube Analytics reports.
        # @param [String] ids
        #   Identifies the YouTube channel or content owner for which you are retrieving
        #   YouTube Analytics data.
        #   - To request data for a YouTube user, set the ids parameter value to channel==
        #   CHANNEL_ID, where CHANNEL_ID specifies the unique YouTube channel ID.
        #   - To request data for a YouTube CMS content owner, set the ids parameter value
        #   to contentOwner==OWNER_NAME, where OWNER_NAME is the CMS name of the content
        #   owner.
        # @param [String] start_date
        #   The start date for fetching YouTube Analytics data. The value should be in
        #   YYYY-MM-DD format.
        # @param [String] end_date
        #   The end date for fetching YouTube Analytics data. The value should be in YYYY-
        #   MM-DD format.
        # @param [String] metrics
        #   A comma-separated list of YouTube Analytics metrics, such as views or likes,
        #   dislikes. See the Available Reports document for a list of the reports that
        #   you can retrieve and the metrics available in each report, and see the Metrics
        #   document for definitions of those metrics.
        # @param [String] currency
        #   The currency to which financial metrics should be converted. The default is US
        #   Dollar (USD). If the result contains no financial metrics, this flag will be
        #   ignored. Responds with an error if the specified currency is not recognized.
        # @param [String] dimensions
        #   A comma-separated list of YouTube Analytics dimensions, such as views or
        #   ageGroup,gender. See the Available Reports document for a list of the reports
        #   that you can retrieve and the dimensions used for those reports. Also see the
        #   Dimensions document for definitions of those dimensions.
        # @param [String] filters
        #   A list of filters that should be applied when retrieving YouTube Analytics
        #   data. The Available Reports document identifies the dimensions that can be
        #   used to filter each report, and the Dimensions document defines those
        #   dimensions. If a request uses multiple filters, join them together with a
        #   semicolon (;), and the returned result table will satisfy both filters. For
        #   example, a filters parameter value of video==dMH0bHeiRNg;country==IT restricts
        #   the result set to include data for the given video in Italy.
        # @param [Boolean] include_historical_channel_data
        #   If set to true historical data (i.e. channel data from before the linking of
        #   the channel to the content owner) will be retrieved.
        # @param [Fixnum] max_results
        #   The maximum number of rows to include in the response.
        # @param [String] sort
        #   A comma-separated list of dimensions or metrics that determine the sort order
        #   for YouTube Analytics data. By default the sort order is ascending. The '-'
        #   prefix causes descending sort order.
        # @param [Fixnum] start_index
        #   An index of the first entity to retrieve. Use this parameter as a pagination
        #   mechanism along with the max-results parameter (one-based, inclusive).
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
        # @yieldparam result [Google::Apis::YoutubeAnalyticsV1::ResultTable] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeAnalyticsV1::ResultTable]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_report(ids, start_date, end_date, metrics, currency: nil, dimensions: nil, filters: nil, include_historical_channel_data: nil, max_results: nil, sort: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'reports', options)
          command.response_representation = Google::Apis::YoutubeAnalyticsV1::ResultTable::Representation
          command.response_class = Google::Apis::YoutubeAnalyticsV1::ResultTable
          command.query['currency'] = currency unless currency.nil?
          command.query['dimensions'] = dimensions unless dimensions.nil?
          command.query['end-date'] = end_date unless end_date.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['ids'] = ids unless ids.nil?
          command.query['include-historical-channel-data'] = include_historical_channel_data unless include_historical_channel_data.nil?
          command.query['max-results'] = max_results unless max_results.nil?
          command.query['metrics'] = metrics unless metrics.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['start-date'] = start_date unless start_date.nil?
          command.query['start-index'] = start_index unless start_index.nil?
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
