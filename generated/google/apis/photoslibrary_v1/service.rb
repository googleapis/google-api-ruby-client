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
    module PhotoslibraryV1
      # Photos Library API
      #
      # Manage photos, videos, and albums in Google Photos
      #
      # @example
      #    require 'google/apis/photoslibrary_v1'
      #
      #    Photoslibrary = Google::Apis::PhotoslibraryV1 # Alias the module
      #    service = Photoslibrary::PhotosLibraryService.new
      #
      # @see https://developers.google.com/photos/
      class PhotosLibraryService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://photoslibrary.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Adds an enrichment to a specified position in a defined album.
        # @param [String] album_id
        #   Identifier of the album where the enrichment will be added.
        # @param [Google::Apis::PhotoslibraryV1::AddEnrichmentToAlbumRequest] add_enrichment_to_album_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::AddEnrichmentToAlbumResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::AddEnrichmentToAlbumResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_enrichment_to_album(album_id, add_enrichment_to_album_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/albums/{+albumId}:addEnrichment', options)
          command.request_representation = Google::Apis::PhotoslibraryV1::AddEnrichmentToAlbumRequest::Representation
          command.request_object = add_enrichment_to_album_request_object
          command.response_representation = Google::Apis::PhotoslibraryV1::AddEnrichmentToAlbumResponse::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::AddEnrichmentToAlbumResponse
          command.params['albumId'] = album_id unless album_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an album in a user's Google Photos library.
        # @param [Google::Apis::PhotoslibraryV1::CreateAlbumRequest] create_album_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::Album] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::Album]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_album(create_album_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/albums', options)
          command.request_representation = Google::Apis::PhotoslibraryV1::CreateAlbumRequest::Representation
          command.request_object = create_album_request_object
          command.response_representation = Google::Apis::PhotoslibraryV1::Album::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::Album
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the album specified by the given album id.
        # @param [String] album_id
        #   Identifier of the album to be requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::Album] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::Album]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_album(album_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/albums/{+albumId}', options)
          command.response_representation = Google::Apis::PhotoslibraryV1::Album::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::Album
          command.params['albumId'] = album_id unless album_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all albums shown to a user in the 'Albums' tab of the Google
        # Photos app.
        # @param [Fixnum] page_size
        #   Maximum number of albums to return in the response. The default number of
        #   albums to return at a time is 20. The maximum page size is 50.
        # @param [String] page_token
        #   A continuation token to get the next page of the results. Adding this to
        #   the request will return the rows after the pageToken. The pageToken should
        #   be the value returned in the nextPageToken parameter in the response to the
        #   listAlbums request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::ListAlbumsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::ListAlbumsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_albums(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/albums', options)
          command.response_representation = Google::Apis::PhotoslibraryV1::ListAlbumsResponse::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::ListAlbumsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks an album as 'shared' and accessible to other users. This action can
        # only be performed on albums which were created by the developer via the
        # API.
        # @param [String] album_id
        #   Identifier of the album to be shared. This album id must belong to an album
        #   created by the developer.
        #   .
        # @param [Google::Apis::PhotoslibraryV1::ShareAlbumRequest] share_album_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::ShareAlbumResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::ShareAlbumResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def share_album(album_id, share_album_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/albums/{+albumId}:share', options)
          command.request_representation = Google::Apis::PhotoslibraryV1::ShareAlbumRequest::Representation
          command.request_object = share_album_request_object
          command.response_representation = Google::Apis::PhotoslibraryV1::ShareAlbumResponse::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::ShareAlbumResponse
          command.params['albumId'] = album_id unless album_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates one or more media items in a user's Google Photos library.
        # If an album id is specified, the media item(s) are also added to the album.
        # By default the media item(s) will be added to the end of the library or
        # album.
        # If an album id and position are both defined, then the media items will
        # be added to the album at the specified position.
        # If multiple media items are given, they will be inserted at the specified
        # position.
        # @param [Google::Apis::PhotoslibraryV1::BatchCreateMediaItemsRequest] batch_create_media_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::BatchCreateMediaItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::BatchCreateMediaItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_create_media_items(batch_create_media_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/mediaItems:batchCreate', options)
          command.request_representation = Google::Apis::PhotoslibraryV1::BatchCreateMediaItemsRequest::Representation
          command.request_object = batch_create_media_items_request_object
          command.response_representation = Google::Apis::PhotoslibraryV1::BatchCreateMediaItemsResponse::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::BatchCreateMediaItemsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the media item specified based on a given media item id.
        # @param [String] media_item_id
        #   Identifier of media item to be requested.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::MediaItem] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::MediaItem]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_media_item(media_item_id, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/mediaItems/{+mediaItemId}', options)
          command.response_representation = Google::Apis::PhotoslibraryV1::MediaItem::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::MediaItem
          command.params['mediaItemId'] = media_item_id unless media_item_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for media items in a user's Google Photos library.
        # If no filters are set, then all media items in the user's library will be
        # returned.
        # If an album is set, all media items in the specified album will be
        # returned.
        # If filters are specified, anything that matches the filters from the user's
        # library will be listed.
        # If an album and filters are set, then this will result in an error.
        # @param [Google::Apis::PhotoslibraryV1::SearchMediaItemsRequest] search_media_items_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::SearchMediaItemsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::SearchMediaItemsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_media_items(search_media_items_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/mediaItems:search', options)
          command.request_representation = Google::Apis::PhotoslibraryV1::SearchMediaItemsRequest::Representation
          command.request_object = search_media_items_request_object
          command.response_representation = Google::Apis::PhotoslibraryV1::SearchMediaItemsResponse::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::SearchMediaItemsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Joins a shared album on behalf of the Google Photos user.
        # @param [Google::Apis::PhotoslibraryV1::JoinSharedAlbumRequest] join_shared_album_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::JoinSharedAlbumResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::JoinSharedAlbumResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def join_shared_album(join_shared_album_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/sharedAlbums:join', options)
          command.request_representation = Google::Apis::PhotoslibraryV1::JoinSharedAlbumRequest::Representation
          command.request_object = join_shared_album_request_object
          command.response_representation = Google::Apis::PhotoslibraryV1::JoinSharedAlbumResponse::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::JoinSharedAlbumResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all shared albums shown to a user in the 'Sharing' tab of the
        # Google Photos app.
        # @param [Fixnum] page_size
        #   Maximum number of albums to return in the response. The default number of
        #   albums to return at a time is 20. The maximum page size is 50.
        # @param [String] page_token
        #   A continuation token to get the next page of the results. Adding this to
        #   the request will return the rows after the pageToken. The pageToken should
        #   be the value returned in the nextPageToken parameter in the response to the
        #   listSharedAlbums request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PhotoslibraryV1::ListSharedAlbumsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PhotoslibraryV1::ListSharedAlbumsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_shared_albums(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v1/sharedAlbums', options)
          command.response_representation = Google::Apis::PhotoslibraryV1::ListSharedAlbumsResponse::Representation
          command.response_class = Google::Apis::PhotoslibraryV1::ListSharedAlbumsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
