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
    module YoutubeV3
      # YouTube Data API v3
      #
      # The YouTube Data API v3 is an API that provides access to YouTube data, such
      #  as videos, playlists, and channels.
      #
      # @example
      #    require 'google/apis/youtube_v3'
      #
      #    Youtube = Google::Apis::YoutubeV3 # Alias the module
      #    service = Youtube::YouTubeService.new
      #
      # @see https://developers.google.com/youtube/
      class YouTubeService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://youtube.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        # @param [Google::Apis::YoutubeV3::AbuseReport] abuse_report_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::AbuseReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::AbuseReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_abuse_report(part, abuse_report_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/abuseReports', options)
          command.request_representation = Google::Apis::YoutubeV3::AbuseReport::Representation
          command.request_object = abuse_report_object
          command.response_representation = Google::Apis::YoutubeV3::AbuseReport::Representation
          command.response_class = Google::Apis::YoutubeV3::AbuseReport
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more activity
        #   resource properties that the API response will include. If the parameter
        #   identifies a property that contains child properties, the child properties
        #   will be included in the response. For example, in an activity resource, the
        #   snippet property contains other properties that identify the type of activity,
        #   a display title for the activity, and so forth. If you set *part=snippet*, the
        #   API response will also contain all of those nested properties.
        # @param [String] channel_id
        # @param [Boolean] home
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [Boolean] mine
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] published_after
        # @param [String] published_before
        # @param [String] region_code
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListActivitiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListActivitiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_activities(part, channel_id: nil, home: nil, max_results: nil, mine: nil, page_token: nil, published_after: nil, published_before: nil, region_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/activities', options)
          command.response_representation = Google::Apis::YoutubeV3::ListActivitiesResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListActivitiesResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['home'] = home unless home.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['publishedAfter'] = published_after unless published_after.nil?
          command.query['publishedBefore'] = published_before unless published_before.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] id
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is be on behalf of
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def delete_caption(id, on_behalf_of: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/captions', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Downloads a caption track.
        # @param [String] id
        #   The ID of the caption track to download, required for One Platform.
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is be on behalf of
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] tfmt
        #   Convert the captions into this format. Supported options are sbv, srt, and vtt.
        # @param [String] tlang
        #   tlang is the language code; machine translate the captions into this language.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
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
        def download_caption(id, on_behalf_of: nil, on_behalf_of_content_owner: nil, tfmt: nil, tlang: nil, fields: nil, quota_user: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command = make_simple_command(:get, 'youtube/v3/captions/{id}', options)
          else
            command = make_download_command(:get, 'youtube/v3/captions/{id}', options)
            command.download_dest = download_dest
          end
          command.params['id'] = id unless id.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['tfmt'] = tfmt unless tfmt.nil?
          command.query['tlang'] = tlang unless tlang.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the caption resource parts that the API
        #   response will include. Set the parameter value to snippet.
        # @param [Google::Apis::YoutubeV3::Caption] caption_object
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is be on behalf of
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [Boolean] sync
        #   Extra parameter to allow automatically syncing the uploaded caption/transcript
        #   with the audio.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Caption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Caption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_caption(part, caption_object = nil, on_behalf_of: nil, on_behalf_of_content_owner: nil, sync: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'youtube/v3/captions', options)
          else
            command = make_upload_command(:post, 'youtube/v3/captions', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::Caption::Representation
          command.request_object = caption_object
          command.response_representation = Google::Apis::YoutubeV3::Caption::Representation
          command.response_class = Google::Apis::YoutubeV3::Caption
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['sync'] = sync unless sync.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more caption
        #   resource parts that the API response will include. The part names that you can
        #   include in the parameter value are id and snippet.
        # @param [String] video_id
        #   Returns the captions for the specified video.
        # @param [Array<String>, String] id
        #   Returns the captions with the given IDs for Stubby or Apiary.
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is on behalf of.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListCaptionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListCaptionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_captions(part, video_id, id: nil, on_behalf_of: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/captions', options)
          command.response_representation = Google::Apis::YoutubeV3::ListCaptionsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListCaptionsResponse
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more caption
        #   resource parts that the API response will include. The part names that you can
        #   include in the parameter value are id and snippet.
        # @param [Google::Apis::YoutubeV3::Caption] caption_object
        # @param [String] on_behalf_of
        #   ID of the Google+ Page for the channel that the request is on behalf of.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [Boolean] sync
        #   Extra parameter to allow automatically syncing the uploaded caption/transcript
        #   with the audio.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Caption] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Caption]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_caption(part, caption_object = nil, on_behalf_of: nil, on_behalf_of_content_owner: nil, sync: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:put, 'youtube/v3/captions', options)
          else
            command = make_upload_command(:put, 'youtube/v3/captions', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::Caption::Representation
          command.request_object = caption_object
          command.response_representation = Google::Apis::YoutubeV3::Caption::Representation
          command.response_class = Google::Apis::YoutubeV3::Caption
          command.query['onBehalfOf'] = on_behalf_of unless on_behalf_of.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['sync'] = sync unless sync.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Google::Apis::YoutubeV3::ChannelBannerResource] channel_banner_resource_object
        # @param [String] channel_id
        #   Unused, channel_id is currently derived from the security context of the
        #   requestor.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelBannerResource] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelBannerResource]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_channel_banner(channel_banner_resource_object = nil, channel_id: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'youtube/v3/channelBanners/insert', options)
          else
            command = make_upload_command(:post, 'youtube/v3/channelBanners/insert', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::ChannelBannerResource::Representation
          command.request_object = channel_banner_resource_object
          command.response_representation = Google::Apis::YoutubeV3::ChannelBannerResource::Representation
          command.response_class = Google::Apis::YoutubeV3::ChannelBannerResource
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] id
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        def delete_channel_section(id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/channelSections', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. The part names that you can include in the
        #   parameter value are snippet and contentDetails.
        # @param [Google::Apis::YoutubeV3::ChannelSection] channel_section_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelSection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelSection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_channel_section(part, channel_section_object = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/channelSections', options)
          command.request_representation = Google::Apis::YoutubeV3::ChannelSection::Representation
          command.request_object = channel_section_object
          command.response_representation = Google::Apis::YoutubeV3::ChannelSection::Representation
          command.response_class = Google::Apis::YoutubeV3::ChannelSection
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   channelSection resource properties that the API response will include. The
        #   part names that you can include in the parameter value are id, snippet, and
        #   contentDetails. If the parameter identifies a property that contains child
        #   properties, the child properties will be included in the response. For example,
        #   in a channelSection resource, the snippet property contains other properties,
        #   such as a display title for the channelSection. If you set *part=snippet*, the
        #   API response will also contain all of those nested properties.
        # @param [String] channel_id
        #   Return the ChannelSections owned by the specified channel ID.
        # @param [String] hl
        #   Return content in specified language
        # @param [Array<String>, String] id
        #   Return the ChannelSections with the given IDs for Stubby or Apiary.
        # @param [Boolean] mine
        #   Return the ChannelSections owned by the authenticated user.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListChannelSectionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListChannelSectionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_channel_sections(part, channel_id: nil, hl: nil, id: nil, mine: nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/channelSections', options)
          command.response_representation = Google::Apis::YoutubeV3::ListChannelSectionsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListChannelSectionsResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. The part names that you can include in the
        #   parameter value are snippet and contentDetails.
        # @param [Google::Apis::YoutubeV3::ChannelSection] channel_section_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ChannelSection] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ChannelSection]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_channel_section(part, channel_section_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/channelSections', options)
          command.request_representation = Google::Apis::YoutubeV3::ChannelSection::Representation
          command.request_object = channel_section_object
          command.response_representation = Google::Apis::YoutubeV3::ChannelSection::Representation
          command.response_class = Google::Apis::YoutubeV3::ChannelSection
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more channel
        #   resource properties that the API response will include. If the parameter
        #   identifies a property that contains child properties, the child properties
        #   will be included in the response. For example, in a channel resource, the
        #   contentDetails property contains other properties, such as the uploads
        #   properties. As such, if you set *part=contentDetails*, the API response will
        #   also contain all of those nested properties.
        # @param [String] category_id
        #   Return the channels within the specified guide category ID.
        # @param [String] for_username
        #   Return the channel associated with a YouTube username.
        # @param [String] hl
        #   Stands for "host language". Specifies the localization language of the
        #   metadata to be filled into snippet.localized. The field is filled with the
        #   default metadata if there is no localization in the specified language. The
        #   parameter value must be a language code included in the list returned by the
        #   i18nLanguages.list method (e.g. en_US, es_MX).
        # @param [Array<String>, String] id
        #   Return the channels with the specified IDs.
        # @param [Boolean] managed_by_me
        #   Return the channels managed by the authenticated user.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [Boolean] mine
        #   Return the ids of channels owned by the authenticated user.
        # @param [Boolean] my_subscribers
        #   Return the channels subscribed to the authenticated user
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_channels(part, category_id: nil, for_username: nil, hl: nil, id: nil, managed_by_me: nil, max_results: nil, mine: nil, my_subscribers: nil, on_behalf_of_content_owner: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/channels', options)
          command.response_representation = Google::Apis::YoutubeV3::ListChannelsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListChannelsResponse
          command.query['categoryId'] = category_id unless category_id.nil?
          command.query['forUsername'] = for_username unless for_username.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['managedByMe'] = managed_by_me unless managed_by_me.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['mySubscribers'] = my_subscribers unless my_subscribers.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. The API currently only allows the parameter
        #   value to be set to either brandingSettings or invideoPromotion. (You cannot
        #   update both of those parts with a single request.) Note that this method
        #   overrides the existing values for all of the mutable properties that are
        #   contained in any parts that the parameter value specifies.
        # @param [Google::Apis::YoutubeV3::Channel] channel_object
        # @param [String] on_behalf_of_content_owner
        #   The *onBehalfOfContentOwner* parameter indicates that the authenticated user
        #   is acting on behalf of the content owner specified in the parameter value.
        #   This parameter is intended for YouTube content partners that own and manage
        #   many different YouTube channels. It allows content owners to authenticate once
        #   and get access to all their video and channel data, without having to provide
        #   authentication credentials for each individual channel. The actual CMS account
        #   that the user authenticates with needs to be linked to the specified YouTube
        #   content owner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_channel(part, channel_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/channels', options)
          command.request_representation = Google::Apis::YoutubeV3::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::YoutubeV3::Channel::Representation
          command.response_class = Google::Apis::YoutubeV3::Channel
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter identifies the properties that the API response will
        #   include. Set the parameter value to snippet. The snippet part has a quota cost
        #   of 2 units.
        # @param [Google::Apis::YoutubeV3::CommentThread] comment_thread_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::CommentThread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::CommentThread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_comment_thread(part, comment_thread_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/commentThreads', options)
          command.request_representation = Google::Apis::YoutubeV3::CommentThread::Representation
          command.request_object = comment_thread_object
          command.response_representation = Google::Apis::YoutubeV3::CommentThread::Representation
          command.response_class = Google::Apis::YoutubeV3::CommentThread
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   commentThread resource properties that the API response will include.
        # @param [String] all_threads_related_to_channel_id
        #   Returns the comment threads of all videos of the channel and the channel
        #   comments as well.
        # @param [String] channel_id
        #   Returns the comment threads for all the channel comments (ie does not include
        #   comments left on videos).
        # @param [Array<String>, String] id
        #   Returns the comment threads with the given IDs for Stubby or Apiary.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] moderation_status
        #   Limits the returned comment threads to those with the specified moderation
        #   status. Not compatible with the 'id' filter. Valid values: published,
        #   heldForReview, likelySpam.
        # @param [String] order
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] search_terms
        #   Limits the returned comment threads to those matching the specified key words.
        #   Not compatible with the 'id' filter.
        # @param [String] text_format
        #   The requested text format for the returned comments.
        # @param [String] video_id
        #   Returns the comment threads of the specified video.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListCommentThreadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListCommentThreadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comment_threads(part, all_threads_related_to_channel_id: nil, channel_id: nil, id: nil, max_results: nil, moderation_status: nil, order: nil, page_token: nil, search_terms: nil, text_format: nil, video_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/commentThreads', options)
          command.response_representation = Google::Apis::YoutubeV3::ListCommentThreadsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListCommentThreadsResponse
          command.query['allThreadsRelatedToChannelId'] = all_threads_related_to_channel_id unless all_threads_related_to_channel_id.nil?
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['moderationStatus'] = moderation_status unless moderation_status.nil?
          command.query['order'] = order unless order.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['searchTerms'] = search_terms unless search_terms.nil?
          command.query['textFormat'] = text_format unless text_format.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of commentThread
        #   resource properties that the API response will include. You must at least
        #   include the snippet part in the parameter value since that part contains all
        #   of the properties that the API request can update.
        # @param [Google::Apis::YoutubeV3::CommentThread] comment_thread_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::CommentThread] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::CommentThread]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_comment_thread(part, comment_thread_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/commentThreads', options)
          command.request_representation = Google::Apis::YoutubeV3::CommentThread::Representation
          command.request_object = comment_thread_object
          command.response_representation = Google::Apis::YoutubeV3::CommentThread::Representation
          command.response_class = Google::Apis::YoutubeV3::CommentThread
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] id
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
        def delete_comment(id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/comments', options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter identifies the properties that the API response will
        #   include. Set the parameter value to snippet. The snippet part has a quota cost
        #   of 2 units.
        # @param [Google::Apis::YoutubeV3::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_comment(part, comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/comments', options)
          command.request_representation = Google::Apis::YoutubeV3::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::YoutubeV3::Comment::Representation
          command.response_class = Google::Apis::YoutubeV3::Comment
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more comment
        #   resource properties that the API response will include.
        # @param [Array<String>, String] id
        #   Returns the comments with the given IDs for One Platform.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] parent_id
        #   Returns replies to the specified comment. Note, currently YouTube features
        #   only one level of replies (ie replies to top level comments). However replies
        #   to replies may be supported in the future.
        # @param [String] text_format
        #   The requested text format for the returned comments.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListCommentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListCommentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comments(part, id: nil, max_results: nil, page_token: nil, parent_id: nil, text_format: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/comments', options)
          command.response_representation = Google::Apis::YoutubeV3::ListCommentsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListCommentsResponse
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parentId'] = parent_id unless parent_id.nil?
          command.query['part'] = part unless part.nil?
          command.query['textFormat'] = text_format unless text_format.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Expresses the caller's opinion that one or more comments should be flagged as
        # spam.
        # @param [Array<String>, String] id
        #   Flags the comments with the given IDs as spam in the caller's opinion.
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
        def mark_comment_as_spam(id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/comments/markAsSpam', options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the moderation status of one or more comments.
        # @param [Array<String>, String] id
        #   Modifies the moderation status of the comments with the given IDs
        # @param [String] moderation_status
        #   Specifies the requested moderation status. Note, comments can be in statuses,
        #   which are not available through this call. For example, this call does not
        #   allow to mark a comment as 'likely spam'. Valid values:
        #   MODERATION_STATUS_PUBLISHED, MODERATION_STATUS_HELD_FOR_REVIEW,
        #   MODERATION_STATUS_REJECTED.
        # @param [Boolean] ban_author
        #   If set to true the author of the comment gets added to the ban list. This
        #   means all future comments of the author will autmomatically be rejected. Only
        #   valid in combination with STATUS_REJECTED.
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
        def set_comment_moderation_status(id, moderation_status, ban_author: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/comments/setModerationStatus', options)
          command.query['banAuthor'] = ban_author unless ban_author.nil?
          command.query['id'] = id unless id.nil?
          command.query['moderationStatus'] = moderation_status unless moderation_status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter identifies the properties that the API response will
        #   include. You must at least include the snippet part in the parameter value
        #   since that part contains all of the properties that the API request can update.
        # @param [Google::Apis::YoutubeV3::Comment] comment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_comment(part, comment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/comments', options)
          command.request_representation = Google::Apis::YoutubeV3::Comment::Representation
          command.request_object = comment_object
          command.response_representation = Google::Apis::YoutubeV3::Comment::Representation
          command.response_class = Google::Apis::YoutubeV3::Comment
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the i18nLanguage resource properties that the
        #   API response will include. Set the parameter value to snippet.
        # @param [String] hl
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListI18nLanguagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListI18nLanguagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_i18n_languages(part, hl: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/i18nLanguages', options)
          command.response_representation = Google::Apis::YoutubeV3::ListI18nLanguagesResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListI18nLanguagesResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the i18nRegion resource properties that the API
        #   response will include. Set the parameter value to snippet.
        # @param [String] hl
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListI18nRegionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListI18nRegionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_i18n_regions(part, hl: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/i18nRegions', options)
          command.response_representation = Google::Apis::YoutubeV3::ListI18nRegionsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListI18nRegionsResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Bind a broadcast to a stream.
        # @param [String] id
        #   Broadcast to bind to the stream
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] stream_id
        #   Stream to bind, if not set unbind the current one.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def bind_live_broadcast(id, part, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, stream_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveBroadcasts/bind', options)
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcast::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['streamId'] = stream_id unless stream_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Slate and recording control of the live broadcast. Support actions: slate on/
        # off, recording start/stop/pause/resume. Design doc: goto/yt-api-liveBroadcast-
        # control
        # @param [String] id
        #   Broadcast to operate.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
        # @param [Boolean] display_slate
        #   Whether display or hide slate.
        # @param [Fixnum] offset_time_ms
        #   The exact time when the actions (e.g. slate on) are executed. It is an offset
        #   from the first frame of the monitor stream. If not set, it means "now" or ASAP.
        #   This field should not be set if the monitor stream is disabled, otherwise an
        #   error will be returned.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] walltime
        #   The wall clock time at which the action should be executed. Only one of
        #   offset_time_ms and walltime may be set at a time.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def control_live_broadcast(id, part, display_slate: nil, offset_time_ms: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, walltime: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveBroadcasts/control', options)
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcast::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['displaySlate'] = display_slate unless display_slate.nil?
          command.query['id'] = id unless id.nil?
          command.query['offsetTimeMs'] = offset_time_ms unless offset_time_ms.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['walltime'] = walltime unless walltime.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete a given broadcast.
        # @param [String] id
        #   Broadcast to delete.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
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
        def delete_live_broadcast(id, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/liveBroadcasts', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new stream for the authenticated user.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. The part properties that you can include in the
        #   parameter value are id, snippet, contentDetails, and status.
        # @param [Google::Apis::YoutubeV3::LiveBroadcast] live_broadcast_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_live_broadcast(part, live_broadcast_object = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveBroadcasts', options)
          command.request_representation = Google::Apis::YoutubeV3::LiveBroadcast::Representation
          command.request_object = live_broadcast_object
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcast::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve the list of broadcasts associated with the given channel.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, status and statistics.
        # @param [String] broadcast_status
        #   Return broadcasts with a certain status, e.g. active broadcasts.
        # @param [String] broadcast_type
        #   Return only broadcasts with the selected type.
        # @param [Array<String>, String] id
        #   Return broadcasts with the given ids from Stubby or Apiary.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [Boolean] mine
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListLiveBroadcastsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListLiveBroadcastsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_live_broadcasts(part, broadcast_status: nil, broadcast_type: nil, id: nil, max_results: nil, mine: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/liveBroadcasts', options)
          command.response_representation = Google::Apis::YoutubeV3::ListLiveBroadcastsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListLiveBroadcastsResponse
          command.query['broadcastStatus'] = broadcast_status unless broadcast_status.nil?
          command.query['broadcastType'] = broadcast_type unless broadcast_type.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Transition a broadcast to a given status.
        # @param [String] broadcast_status
        #   The status to which the broadcast is going to transition.
        # @param [String] id
        #   Broadcast to transition.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   liveBroadcast resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet,
        #   contentDetails, and status.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def transition_live_broadcast(broadcast_status, id, part, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveBroadcasts/transition', options)
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcast::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['broadcastStatus'] = broadcast_status unless broadcast_status.nil?
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing broadcast for the authenticated user.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. The part properties that you can include in the
        #   parameter value are id, snippet, contentDetails, and status. Note that this
        #   method will override the existing values for all of the mutable properties
        #   that are contained in any parts that the parameter value specifies. For
        #   example, a broadcast's privacy status is defined in the status part. As such,
        #   if your request is updating a private or unlisted broadcast, and the request's
        #   part parameter value includes the status part, the broadcast's privacy setting
        #   will be updated to whatever value the request body specifies. If the request
        #   body does not specify a value, the existing privacy setting will be removed
        #   and the broadcast will revert to the default privacy setting.
        # @param [Google::Apis::YoutubeV3::LiveBroadcast] live_broadcast_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveBroadcast] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveBroadcast]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_live_broadcast(part, live_broadcast_object = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/liveBroadcasts', options)
          command.request_representation = Google::Apis::YoutubeV3::LiveBroadcast::Representation
          command.request_object = live_broadcast_object
          command.response_representation = Google::Apis::YoutubeV3::LiveBroadcast::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveBroadcast
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a chat ban.
        # @param [String] id
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
        def delete_live_chat_ban(id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/liveChat/bans', options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response returns. Set the parameter value to snippet.
        # @param [Google::Apis::YoutubeV3::LiveChatBan] live_chat_ban_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveChatBan] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveChatBan]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_live_chat_ban(part, live_chat_ban_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveChat/bans', options)
          command.request_representation = Google::Apis::YoutubeV3::LiveChatBan::Representation
          command.request_object = live_chat_ban_object
          command.response_representation = Google::Apis::YoutubeV3::LiveChatBan::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveChatBan
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a chat message.
        # @param [String] id
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
        def delete_live_chat_message(id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/liveChat/messages', options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes. It identifies the properties that
        #   the write operation will set as well as the properties that the API response
        #   will include. Set the parameter value to snippet.
        # @param [Google::Apis::YoutubeV3::LiveChatMessage] live_chat_message_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveChatMessage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveChatMessage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_live_chat_message(part, live_chat_message_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveChat/messages', options)
          command.request_representation = Google::Apis::YoutubeV3::LiveChatMessage::Representation
          command.request_object = live_chat_message_object
          command.response_representation = Google::Apis::YoutubeV3::LiveChatMessage::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveChatMessage
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [String] live_chat_id
        #   The id of the live chat for which comments should be returned.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the liveChatComment resource parts that the API
        #   response will include. Supported values are id and snippet.
        # @param [String] hl
        #   Specifies the localization language in which the system messages should be
        #   returned.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken property identify
        #   other pages that could be retrieved.
        # @param [Fixnum] profile_image_size
        #   Specifies the size of the profile image that should be returned for each user.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveChatMessageListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveChatMessageListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_live_chat_messages(live_chat_id, part, hl: nil, max_results: nil, page_token: nil, profile_image_size: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/liveChat/messages', options)
          command.response_representation = Google::Apis::YoutubeV3::LiveChatMessageListResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveChatMessageListResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['liveChatId'] = live_chat_id unless live_chat_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['profileImageSize'] = profile_image_size unless profile_image_size.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a chat moderator.
        # @param [String] id
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
        def delete_live_chat_moderator(id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/liveChat/moderators', options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response returns. Set the parameter value to snippet.
        # @param [Google::Apis::YoutubeV3::LiveChatModerator] live_chat_moderator_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveChatModerator] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveChatModerator]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_live_chat_moderator(part, live_chat_moderator_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveChat/moderators', options)
          command.request_representation = Google::Apis::YoutubeV3::LiveChatModerator::Representation
          command.request_object = live_chat_moderator_object
          command.response_representation = Google::Apis::YoutubeV3::LiveChatModerator::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveChatModerator
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [String] live_chat_id
        #   The id of the live chat for which moderators should be returned.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the liveChatModerator resource parts that the
        #   API response will include. Supported values are id and snippet.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveChatModeratorListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveChatModeratorListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_live_chat_moderators(live_chat_id, part, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/liveChat/moderators', options)
          command.response_representation = Google::Apis::YoutubeV3::LiveChatModeratorListResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveChatModeratorListResponse
          command.query['liveChatId'] = live_chat_id unless live_chat_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing stream for the authenticated user.
        # @param [String] id
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
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
        def delete_live_stream(id, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/liveStreams', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new stream for the authenticated user.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. The part properties that you can include in the
        #   parameter value are id, snippet, cdn, and status.
        # @param [Google::Apis::YoutubeV3::LiveStream] live_stream_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_live_stream(part, live_stream_object = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/liveStreams', options)
          command.request_representation = Google::Apis::YoutubeV3::LiveStream::Representation
          command.request_object = live_stream_object
          command.response_representation = Google::Apis::YoutubeV3::LiveStream::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveStream
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve the list of streams associated with the given channel. --
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   liveStream resource properties that the API response will include. The part
        #   names that you can include in the parameter value are id, snippet, cdn, and
        #   status.
        # @param [Array<String>, String] id
        #   Return LiveStreams with the given ids from Stubby or Apiary.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [Boolean] mine
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListLiveStreamsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListLiveStreamsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_live_streams(part, id: nil, max_results: nil, mine: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/liveStreams', options)
          command.response_representation = Google::Apis::YoutubeV3::ListLiveStreamsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListLiveStreamsResponse
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing stream for the authenticated user.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. The part properties that you can include in the
        #   parameter value are id, snippet, cdn, and status. Note that this method will
        #   override the existing values for all of the mutable properties that are
        #   contained in any parts that the parameter value specifies. If the request body
        #   does not specify a value for a mutable property, the existing value for that
        #   property will be removed.
        # @param [Google::Apis::YoutubeV3::LiveStream] live_stream_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::LiveStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::LiveStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_live_stream(part, live_stream_object = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/liveStreams', options)
          command.request_representation = Google::Apis::YoutubeV3::LiveStream::Representation
          command.request_object = live_stream_object
          command.response_representation = Google::Apis::YoutubeV3::LiveStream::Representation
          command.response_class = Google::Apis::YoutubeV3::LiveStream
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of members that match the request criteria for a channel.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the member resource parts that the API response
        #   will include. Set the parameter value to snippet.
        # @param [String] filter_by_member_channel_id
        #   Comma separated list of channel IDs. Only data about members that are part of
        #   this list will be included in the response.
        # @param [String] has_access_to_level
        #   Filter members in the results set to the ones that have access to a level.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] mode
        #   Parameter that specifies which channel members to return.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::MemberListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::MemberListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_members(part, filter_by_member_channel_id: nil, has_access_to_level: nil, max_results: nil, mode: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/members', options)
          command.response_representation = Google::Apis::YoutubeV3::MemberListResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::MemberListResponse
          command.query['filterByMemberChannelId'] = filter_by_member_channel_id unless filter_by_member_channel_id.nil?
          command.query['hasAccessToLevel'] = has_access_to_level unless has_access_to_level.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mode'] = mode unless mode.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of all pricing levels offered by a creator to the fans.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the membershipsLevel resource parts that the
        #   API response will include. Supported values are id and snippet.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::MembershipsLevelListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::MembershipsLevelListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_memberships_levels(part, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/membershipsLevels', options)
          command.response_representation = Google::Apis::YoutubeV3::MembershipsLevelListResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::MembershipsLevelListResponse
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] id
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        def delete_playlist_item(id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/playlistItems', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        # @param [Google::Apis::YoutubeV3::PlaylistItem] playlist_item_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::PlaylistItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::PlaylistItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_playlist_item(part, playlist_item_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/playlistItems', options)
          command.request_representation = Google::Apis::YoutubeV3::PlaylistItem::Representation
          command.request_object = playlist_item_object
          command.response_representation = Google::Apis::YoutubeV3::PlaylistItem::Representation
          command.response_class = Google::Apis::YoutubeV3::PlaylistItem
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   playlistItem resource properties that the API response will include. If the
        #   parameter identifies a property that contains child properties, the child
        #   properties will be included in the response. For example, in a playlistItem
        #   resource, the snippet property contains numerous fields, including the title,
        #   description, position, and resourceId properties. As such, if you set *part=
        #   snippet*, the API response will contain all of those properties.
        # @param [Array<String>, String] id
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] playlist_id
        #   Return the playlist items within the given playlist.
        # @param [String] video_id
        #   Return the playlist items associated with the given video ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListPlaylistItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListPlaylistItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_playlist_items(part, id: nil, max_results: nil, on_behalf_of_content_owner: nil, page_token: nil, playlist_id: nil, video_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/playlistItems', options)
          command.response_representation = Google::Apis::YoutubeV3::ListPlaylistItemsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListPlaylistItemsResponse
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['playlistId'] = playlist_id unless playlist_id.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. Note that this method will override the
        #   existing values for all of the mutable properties that are contained in any
        #   parts that the parameter value specifies. For example, a playlist item can
        #   specify a start time and end time, which identify the times portion of the
        #   video that should play when users watch the video in the playlist. If your
        #   request is updating a playlist item that sets these values, and the request's
        #   part parameter value includes the contentDetails part, the playlist item's
        #   start and end times will be updated to whatever value the request body
        #   specifies. If the request body does not specify values, the existing start and
        #   end times will be removed and replaced with the default settings.
        # @param [Google::Apis::YoutubeV3::PlaylistItem] playlist_item_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::PlaylistItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::PlaylistItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_playlist_item(part, playlist_item_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/playlistItems', options)
          command.request_representation = Google::Apis::YoutubeV3::PlaylistItem::Representation
          command.request_object = playlist_item_object
          command.response_representation = Google::Apis::YoutubeV3::PlaylistItem::Representation
          command.response_class = Google::Apis::YoutubeV3::PlaylistItem
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] id
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        def delete_playlist(id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/playlists', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        # @param [Google::Apis::YoutubeV3::Playlist] playlist_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Playlist] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Playlist]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_playlist(part, playlist_object = nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/playlists', options)
          command.request_representation = Google::Apis::YoutubeV3::Playlist::Representation
          command.request_object = playlist_object
          command.response_representation = Google::Apis::YoutubeV3::Playlist::Representation
          command.response_class = Google::Apis::YoutubeV3::Playlist
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more playlist
        #   resource properties that the API response will include. If the parameter
        #   identifies a property that contains child properties, the child properties
        #   will be included in the response. For example, in a playlist resource, the
        #   snippet property contains properties like author, title, description, tags,
        #   and timeCreated. As such, if you set *part=snippet*, the API response will
        #   contain all of those properties.
        # @param [String] channel_id
        #   Return the playlists owned by the specified channel ID.
        # @param [String] hl
        #   Returen content in specified language
        # @param [Array<String>, String] id
        #   Return the playlists with the given IDs for Stubby or Apiary.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [Boolean] mine
        #   Return the playlists owned by the authenticated user.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListPlaylistResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListPlaylistResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_playlists(part, channel_id: nil, hl: nil, id: nil, max_results: nil, mine: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/playlists', options)
          command.response_representation = Google::Apis::YoutubeV3::ListPlaylistResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListPlaylistResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. Note that this method will override the
        #   existing values for mutable properties that are contained in any parts that
        #   the request body specifies. For example, a playlist's description is contained
        #   in the snippet part, which must be included in the request body. If the
        #   request does not specify a value for the snippet.description property, the
        #   playlist's existing description will be deleted.
        # @param [Google::Apis::YoutubeV3::Playlist] playlist_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Playlist] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Playlist]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_playlist(part, playlist_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/playlists', options)
          command.request_representation = Google::Apis::YoutubeV3::Playlist::Representation
          command.request_object = playlist_object
          command.response_representation = Google::Apis::YoutubeV3::Playlist::Representation
          command.response_class = Google::Apis::YoutubeV3::Playlist
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of search resources
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more search
        #   resource properties that the API response will include. Set the parameter
        #   value to snippet.
        # @param [String] channel_id
        #   Filter on resources belonging to this channelId.
        # @param [String] channel_type
        #   Add a filter on the channel search.
        # @param [String] event_type
        #   Filter on the livestream status of the videos.
        # @param [Boolean] for_content_owner
        #   Search owned by a content owner.
        # @param [Boolean] for_developer
        #   Restrict the search to only retrieve videos uploaded using the project id of
        #   the authenticated user.
        # @param [Boolean] for_mine
        #   Search for the private videos of the authenticated user.
        # @param [String] location
        #   Filter on location of the video
        # @param [String] location_radius
        #   Filter on distance from the location (specified above).
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] order
        #   Sort order of the results.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] published_after
        #   Filter on resources published after this date.
        # @param [String] published_before
        #   Filter on resources published before this date.
        # @param [String] q
        #   Textual search terms to match.
        # @param [String] region_code
        #   Display the content as seen by viewers in this country.
        # @param [String] related_to_video_id
        #   Search related to a resource.
        # @param [String] relevance_language
        #   Return results relevant to this language.
        # @param [String] safe_search
        #   Indicates whether the search results should include restricted content as well
        #   as standard content.
        # @param [String] topic_id
        #   Restrict results to a particular topic.
        # @param [Array<String>, String] type
        #   Restrict results to a particular set of resource types from One Platform.
        # @param [String] video_caption
        #   Filter on the presence of captions on the videos.
        # @param [String] video_category_id
        #   Filter on videos in a specific category.
        # @param [String] video_definition
        #   Filter on the definition of the videos.
        # @param [String] video_dimension
        #   Filter on 3d videos.
        # @param [String] video_duration
        #   Filter on the duration of the videos.
        # @param [String] video_embeddable
        #   Filter on embeddable videos.
        # @param [String] video_license
        #   Filter on the license of the videos.
        # @param [String] video_syndicated
        #   Filter on syndicated videos.
        # @param [String] video_type
        #   Filter on videos of a specific type.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::SearchListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::SearchListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_searches(part, channel_id: nil, channel_type: nil, event_type: nil, for_content_owner: nil, for_developer: nil, for_mine: nil, location: nil, location_radius: nil, max_results: nil, on_behalf_of_content_owner: nil, order: nil, page_token: nil, published_after: nil, published_before: nil, q: nil, region_code: nil, related_to_video_id: nil, relevance_language: nil, safe_search: nil, topic_id: nil, type: nil, video_caption: nil, video_category_id: nil, video_definition: nil, video_dimension: nil, video_duration: nil, video_embeddable: nil, video_license: nil, video_syndicated: nil, video_type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/search', options)
          command.response_representation = Google::Apis::YoutubeV3::SearchListsResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::SearchListsResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['channelType'] = channel_type unless channel_type.nil?
          command.query['eventType'] = event_type unless event_type.nil?
          command.query['forContentOwner'] = for_content_owner unless for_content_owner.nil?
          command.query['forDeveloper'] = for_developer unless for_developer.nil?
          command.query['forMine'] = for_mine unless for_mine.nil?
          command.query['location'] = location unless location.nil?
          command.query['locationRadius'] = location_radius unless location_radius.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['order'] = order unless order.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['publishedAfter'] = published_after unless published_after.nil?
          command.query['publishedBefore'] = published_before unless published_before.nil?
          command.query['q'] = q unless q.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['relatedToVideoId'] = related_to_video_id unless related_to_video_id.nil?
          command.query['relevanceLanguage'] = relevance_language unless relevance_language.nil?
          command.query['safeSearch'] = safe_search unless safe_search.nil?
          command.query['topicId'] = topic_id unless topic_id.nil?
          command.query['type'] = type unless type.nil?
          command.query['videoCaption'] = video_caption unless video_caption.nil?
          command.query['videoCategoryId'] = video_category_id unless video_category_id.nil?
          command.query['videoDefinition'] = video_definition unless video_definition.nil?
          command.query['videoDimension'] = video_dimension unless video_dimension.nil?
          command.query['videoDuration'] = video_duration unless video_duration.nil?
          command.query['videoEmbeddable'] = video_embeddable unless video_embeddable.nil?
          command.query['videoLicense'] = video_license unless video_license.nil?
          command.query['videoSyndicated'] = video_syndicated unless video_syndicated.nil?
          command.query['videoType'] = video_type unless video_type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of sponsors that match the request criteria for a channel.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the sponsor resource parts that the API
        #   response will include. Supported values are id and snippet.
        # @param [String] filter
        #   Parameter that specifies which channel sponsors to return.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::SponsorListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::SponsorListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_sponsors(part, filter: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/sponsors', options)
          command.response_representation = Google::Apis::YoutubeV3::SponsorListResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::SponsorListResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] id
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
        def delete_subscription(id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/subscriptions', options)
          command.query['id'] = id unless id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include.
        # @param [Google::Apis::YoutubeV3::Subscription] subscription_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Subscription] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Subscription]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_subscription(part, subscription_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/subscriptions', options)
          command.request_representation = Google::Apis::YoutubeV3::Subscription::Representation
          command.request_object = subscription_object
          command.response_representation = Google::Apis::YoutubeV3::Subscription::Representation
          command.response_class = Google::Apis::YoutubeV3::Subscription
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more
        #   subscription resource properties that the API response will include. If the
        #   parameter identifies a property that contains child properties, the child
        #   properties will be included in the response. For example, in a subscription
        #   resource, the snippet property contains other properties, such as a display
        #   title for the subscription. If you set *part=snippet*, the API response will
        #   also contain all of those nested properties.
        # @param [String] channel_id
        #   Return the subscriptions of the given channel owner.
        # @param [String] for_channel_id
        #   Return the subscriptions to the subset of these channels that the
        #   authenticated user is subscribed to.
        # @param [Array<String>, String] id
        #   Return the subscriptions with the given IDs for Stubby or Apiary.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [Boolean] mine
        #   Flag for returning the subscriptions of the authenticated user.
        # @param [Boolean] my_recent_subscribers
        # @param [Boolean] my_subscribers
        #   Return the subscribers of the given channel owner.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [String] order
        #   The order of the returned subscriptions
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListSubscriptionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListSubscriptionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_subscriptions(part, channel_id: nil, for_channel_id: nil, id: nil, max_results: nil, mine: nil, my_recent_subscribers: nil, my_subscribers: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, order: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/subscriptions', options)
          command.response_representation = Google::Apis::YoutubeV3::ListSubscriptionResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListSubscriptionResponse
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['forChannelId'] = for_channel_id unless for_channel_id.nil?
          command.query['id'] = id unless id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['mine'] = mine unless mine.nil?
          command.query['myRecentSubscribers'] = my_recent_subscribers unless my_recent_subscribers.nil?
          command.query['mySubscribers'] = my_subscribers unless my_subscribers.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['order'] = order unless order.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the superChatEvent resource parts that the API
        #   response will include. Supported values are id and snippet.
        # @param [String] hl
        #   Return rendered funding amounts in specified language.
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::SuperChatEventListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::SuperChatEventListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_super_chat_events(part, hl: nil, max_results: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/superChatEvents', options)
          command.response_representation = Google::Apis::YoutubeV3::SuperChatEventListResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::SuperChatEventListResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # POST method.
        # @param [Array<String>, String] part
        # @param [Google::Apis::YoutubeV3::TestItem] test_item_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::TestItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::TestItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_test(part, test_item_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/tests', options)
          command.request_representation = Google::Apis::YoutubeV3::TestItem::Representation
          command.request_object = test_item_object
          command.response_representation = Google::Apis::YoutubeV3::TestItem::Representation
          command.response_class = Google::Apis::YoutubeV3::TestItem
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] linking_token
        #   Delete the partner links with the given linking token.
        # @param [String] type
        #   Type of the link to be deleted.
        # @param [Array<String>, String] part
        #   Do not use. Required for compatibility.
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
        def delete_third_party_link(linking_token, type, part: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/thirdPartyLinks', options)
          command.query['linkingToken'] = linking_token unless linking_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the thirdPartyLink resource parts that the API
        #   request and response will include. Supported values are linkingToken, status,
        #   and snippet.
        # @param [Google::Apis::YoutubeV3::ThirdPartyLink] third_party_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ThirdPartyLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ThirdPartyLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_third_party_link(part, third_party_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/thirdPartyLinks', options)
          command.request_representation = Google::Apis::YoutubeV3::ThirdPartyLink::Representation
          command.request_object = third_party_link_object
          command.response_representation = Google::Apis::YoutubeV3::ThirdPartyLink::Representation
          command.response_class = Google::Apis::YoutubeV3::ThirdPartyLink
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the thirdPartyLink resource parts that the API
        #   response will include. Supported values are linkingToken, status, and snippet.
        # @param [String] linking_token
        #   Get a third party link with the given linking token.
        # @param [String] type
        #   Get a third party link of the given type.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ThirdPartyLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ThirdPartyLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_third_party_links(part, linking_token: nil, type: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/thirdPartyLinks', options)
          command.response_representation = Google::Apis::YoutubeV3::ThirdPartyLink::Representation
          command.response_class = Google::Apis::YoutubeV3::ThirdPartyLink
          command.query['linkingToken'] = linking_token unless linking_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the thirdPartyLink resource parts that the API
        #   request and response will include. Supported values are linkingToken, status,
        #   and snippet.
        # @param [Google::Apis::YoutubeV3::ThirdPartyLink] third_party_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ThirdPartyLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ThirdPartyLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_third_party_link(part, third_party_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/thirdPartyLinks', options)
          command.request_representation = Google::Apis::YoutubeV3::ThirdPartyLink::Representation
          command.request_object = third_party_link_object
          command.response_representation = Google::Apis::YoutubeV3::ThirdPartyLink::Representation
          command.response_class = Google::Apis::YoutubeV3::ThirdPartyLink
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # As this is not an insert in a strict sense (it supports uploading/setting of a
        # thumbnail for multiple videos, which doesn't result in creation of a single
        # resource), I use a custom verb here.
        # @param [String] video_id
        #   Returns the Thumbnail with the given video IDs for Stubby or Apiary.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::SetThumbnailResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::SetThumbnailResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_thumbnail(video_id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'youtube/v3/thumbnails/set', options)
          else
            command = make_upload_command(:post, 'youtube/v3/thumbnails/set', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.response_representation = Google::Apis::YoutubeV3::SetThumbnailResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::SetThumbnailResponse
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['videoId'] = video_id unless video_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the videoCategory resource parts that the API
        #   response will include. Supported values are id and snippet.
        # @param [String] hl
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListVideoAbuseReportReasonResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListVideoAbuseReportReasonResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_video_abuse_report_reasons(part, hl: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/videoAbuseReportReasons', options)
          command.response_representation = Google::Apis::YoutubeV3::ListVideoAbuseReportReasonResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListVideoAbuseReportReasonResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies the videoCategory resource properties that the
        #   API response will include. Set the parameter value to snippet.
        # @param [String] hl
        # @param [Array<String>, String] id
        #   Returns the video categories with the given IDs for Stubby or Apiary.
        # @param [String] region_code
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListVideoCategoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListVideoCategoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_video_categories(part, hl: nil, id: nil, region_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/videoCategories', options)
          command.response_representation = Google::Apis::YoutubeV3::ListVideoCategoryResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListVideoCategoryResponse
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['part'] = part unless part.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a resource.
        # @param [String] id
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
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
        def delete_video(id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'youtube/v3/videos', options)
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the ratings that the authorized user gave to a list of specified
        # videos.
        # @param [Array<String>, String] id
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::VideoRatingListResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::VideoRatingListResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_video_rating(id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/videos/getRating', options)
          command.response_representation = Google::Apis::YoutubeV3::VideoRatingListResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::VideoRatingListResponse
          command.query['id'] = id unless id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new resource into this collection.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. Note that not all parts contain properties that
        #   can be set when inserting or updating a video. For example, the statistics
        #   object encapsulates statistics that YouTube calculates for a video and does
        #   not contain values that you can set or modify. If the parameter value
        #   specifies a part that does not contain mutable values, that part will still be
        #   included in the API response.
        # @param [Google::Apis::YoutubeV3::Video] video_object
        # @param [Boolean] auto_levels
        #   Should auto-levels be applied to the upload.
        # @param [Boolean] notify_subscribers
        #   Notify the channel subscribers about the new video. As default, the
        #   notification is enabled.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] on_behalf_of_content_owner_channel
        #   This parameter can only be used in a properly authorized request. *Note:* This
        #   parameter is intended exclusively for YouTube content partners. The *
        #   onBehalfOfContentOwnerChannel* parameter specifies the YouTube channel ID of
        #   the channel to which a video is being added. This parameter is required when a
        #   request specifies a value for the onBehalfOfContentOwner parameter, and it can
        #   only be used in conjunction with that parameter. In addition, the request must
        #   be authorized using a CMS account that is linked to the content owner that the
        #   onBehalfOfContentOwner parameter specifies. Finally, the channel that the
        #   onBehalfOfContentOwnerChannel parameter value specifies must be linked to the
        #   content owner that the onBehalfOfContentOwner parameter specifies. This
        #   parameter is intended for YouTube content partners that own and manage many
        #   different YouTube channels. It allows content owners to authenticate once and
        #   perform actions on behalf of the channel specified in the parameter value,
        #   without having to provide authentication credentials for each separate channel.
        # @param [Boolean] stabilize
        #   Should stabilize be applied to the upload.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Video] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Video]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_video(part, video_object = nil, auto_levels: nil, notify_subscribers: nil, on_behalf_of_content_owner: nil, on_behalf_of_content_owner_channel: nil, stabilize: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'youtube/v3/videos', options)
          else
            command = make_upload_command(:post, 'youtube/v3/videos', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::Video::Representation
          command.request_object = video_object
          command.response_representation = Google::Apis::YoutubeV3::Video::Representation
          command.response_class = Google::Apis::YoutubeV3::Video
          command.query['autoLevels'] = auto_levels unless auto_levels.nil?
          command.query['notifySubscribers'] = notify_subscribers unless notify_subscribers.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['onBehalfOfContentOwnerChannel'] = on_behalf_of_content_owner_channel unless on_behalf_of_content_owner_channel.nil?
          command.query['part'] = part unless part.nil?
          command.query['stabilize'] = stabilize unless stabilize.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of resources, possibly filtered.
        # @param [Array<String>, String] part
        #   The *part* parameter specifies a comma-separated list of one or more video
        #   resource properties that the API response will include. If the parameter
        #   identifies a property that contains child properties, the child properties
        #   will be included in the response. For example, in a video resource, the
        #   snippet property contains the channelId, title, description, tags, and
        #   categoryId properties. As such, if you set *part=snippet*, the API response
        #   will contain all of those properties.
        # @param [String] chart
        #   Return the videos that are in the specified chart.
        # @param [String] hl
        #   Stands for "host language". Specifies the localization language of the
        #   metadata to be filled into snippet.localized. The field is filled with the
        #   default metadata if there is no localization in the specified language. The
        #   parameter value must be a language code included in the list returned by the
        #   i18nLanguages.list method (e.g. en_US, es_MX).
        # @param [Array<String>, String] id
        #   Return videos with the given ids.
        # @param [String] locale
        # @param [Fixnum] max_height
        # @param [Fixnum] max_results
        #   The *maxResults* parameter specifies the maximum number of items that should
        #   be returned in the result set. *Note:* This parameter is supported for use in
        #   conjunction with the myRating and chart parameters, but it is not supported
        #   for use in conjunction with the id parameter.
        # @param [Fixnum] max_width
        #   Return the player with maximum height specified in
        # @param [String] my_rating
        #   Return videos liked/disliked by the authenticated user. Does not support
        #   RateType.RATED_TYPE_NONE.
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] page_token
        #   The *pageToken* parameter identifies a specific page in the result set that
        #   should be returned. In an API response, the nextPageToken and prevPageToken
        #   properties identify other pages that could be retrieved. *Note:* This
        #   parameter is supported for use in conjunction with the myRating and chart
        #   parameters, but it is not supported for use in conjunction with the id
        #   parameter.
        # @param [String] region_code
        #   Use a chart that is specific to the specified region
        # @param [String] video_category_id
        #   Use chart that is specific to the specified video category
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::ListVideosResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::ListVideosResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_videos(part, chart: nil, hl: nil, id: nil, locale: nil, max_height: nil, max_results: nil, max_width: nil, my_rating: nil, on_behalf_of_content_owner: nil, page_token: nil, region_code: nil, video_category_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'youtube/v3/videos', options)
          command.response_representation = Google::Apis::YoutubeV3::ListVideosResponse::Representation
          command.response_class = Google::Apis::YoutubeV3::ListVideosResponse
          command.query['chart'] = chart unless chart.nil?
          command.query['hl'] = hl unless hl.nil?
          command.query['id'] = id unless id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxHeight'] = max_height unless max_height.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['maxWidth'] = max_width unless max_width.nil?
          command.query['myRating'] = my_rating unless my_rating.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['part'] = part unless part.nil?
          command.query['regionCode'] = region_code unless region_code.nil?
          command.query['videoCategoryId'] = video_category_id unless video_category_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a like or dislike rating to a video or removes a rating from a video.
        # @param [String] id
        # @param [String] rating
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
        def rate_video(id, rating, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/videos/rate', options)
          command.query['id'] = id unless id.nil?
          command.query['rating'] = rating unless rating.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Report abuse for a video.
        # @param [Google::Apis::YoutubeV3::VideoAbuseReport] video_abuse_report_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        def report_video_abuse(video_abuse_report_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/videos/reportAbuse', options)
          command.request_representation = Google::Apis::YoutubeV3::VideoAbuseReport::Representation
          command.request_object = video_abuse_report_object
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing resource.
        # @param [Array<String>, String] part
        #   The *part* parameter serves two purposes in this operation. It identifies the
        #   properties that the write operation will set as well as the properties that
        #   the API response will include. Note that this method will override the
        #   existing values for all of the mutable properties that are contained in any
        #   parts that the parameter value specifies. For example, a video's privacy
        #   setting is contained in the status part. As such, if your request is updating
        #   a private video, and the request's part parameter value includes the status
        #   part, the video's privacy setting will be updated to whatever value the
        #   request body specifies. If the request body does not specify a value, the
        #   existing privacy setting will be removed and the video will revert to the
        #   default privacy setting. In addition, not all parts contain properties that
        #   can be set when inserting or updating a video. For example, the statistics
        #   object encapsulates statistics that YouTube calculates for a video and does
        #   not contain values that you can set or modify. If the parameter value
        #   specifies a part that does not contain mutable values, that part will still be
        #   included in the API response.
        # @param [Google::Apis::YoutubeV3::Video] video_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
        #   authorization credentials identify a YouTube CMS user who is acting on behalf
        #   of the content owner specified in the parameter value. This parameter is
        #   intended for YouTube content partners that own and manage many different
        #   YouTube channels. It allows content owners to authenticate once and get access
        #   to all their video and channel data, without having to provide authentication
        #   credentials for each individual channel. The actual CMS account that the user
        #   authenticates with must be linked to the specified YouTube content owner.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::YoutubeV3::Video] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::YoutubeV3::Video]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_video(part, video_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'youtube/v3/videos', options)
          command.request_representation = Google::Apis::YoutubeV3::Video::Representation
          command.request_object = video_object
          command.response_representation = Google::Apis::YoutubeV3::Video::Representation
          command.response_class = Google::Apis::YoutubeV3::Video
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['part'] = part unless part.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows upload of watermark image and setting it for a channel.
        # @param [String] channel_id
        # @param [Google::Apis::YoutubeV3::InvideoBranding] invideo_branding_object
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [IO, String] upload_source
        #   IO stream or filename containing content to upload
        # @param [String] content_type
        #   Content type of the uploaded content.
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
        def set_watermark(channel_id, invideo_branding_object = nil, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, upload_source: nil, content_type: nil, options: nil, &block)
          if upload_source.nil?
            command = make_simple_command(:post, 'youtube/v3/watermarks/set', options)
          else
            command = make_upload_command(:post, 'youtube/v3/watermarks/set', options)
            command.upload_source = upload_source
            command.upload_content_type = content_type
          end
          command.request_representation = Google::Apis::YoutubeV3::InvideoBranding::Representation
          command.request_object = invideo_branding_object
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Allows removal of channel watermark.
        # @param [String] channel_id
        # @param [String] on_behalf_of_content_owner
        #   *Note:* This parameter is intended exclusively for YouTube content partners.
        #   The *onBehalfOfContentOwner* parameter indicates that the request's
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
        def unset_watermark(channel_id, on_behalf_of_content_owner: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'youtube/v3/watermarks/unset', options)
          command.query['channelId'] = channel_id unless channel_id.nil?
          command.query['onBehalfOfContentOwner'] = on_behalf_of_content_owner unless on_behalf_of_content_owner.nil?
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
