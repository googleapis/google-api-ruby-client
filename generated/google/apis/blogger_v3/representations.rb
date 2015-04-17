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
    module BloggerV3
      class BlogRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BlogListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BlogPerUserInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BlogUserInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CommentListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PageRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PageListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PageviewsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PostRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PostListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PostPerUserInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PostUserInfoRepresentation < Google::Apis::Core::JsonRepresentation; end
      class PostUserInfosListRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UserRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class BlogRepresentation < Google::Apis::Core::JsonRepresentation
        property :custom_meta_data, as: 'customMetaData'
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :locale, as: 'locale', class: Google::Apis::BloggerV3::Blog::Locale do
          property :country, as: 'country'
          property :language, as: 'language'
          property :variant, as: 'variant'
        end
        
        property :name, as: 'name'
        property :pages, as: 'pages', class: Google::Apis::BloggerV3::Blog::Pages do
          property :self_link, as: 'selfLink'
          property :total_items, as: 'totalItems'
        end
        
        property :posts, as: 'posts', class: Google::Apis::BloggerV3::Blog::Posts do
          collection :items, as: 'items', class: Google::Apis::BloggerV3::Post, decorator: Google::Apis::BloggerV3::PostRepresentation
          
          
          property :self_link, as: 'selfLink'
          property :total_items, as: 'totalItems'
        end
        
        property :published, as: 'published', type: DateTime
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        property :updated, as: 'updated', type: DateTime
        property :url, as: 'url'
      end

      # @private
      class BlogListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :blog_user_infos, as: 'blogUserInfos', class: Google::Apis::BloggerV3::BlogUserInfo, decorator: Google::Apis::BloggerV3::BlogUserInfoRepresentation
        
        
        collection :items, as: 'items', class: Google::Apis::BloggerV3::Blog, decorator: Google::Apis::BloggerV3::BlogRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class BlogPerUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :blog_id, as: 'blogId'
        property :has_admin_access, as: 'hasAdminAccess'
        property :kind, as: 'kind'
        property :photos_album_key, as: 'photosAlbumKey'
        property :role, as: 'role'
        property :user_id, as: 'userId'
      end

      # @private
      class BlogUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :blog, as: 'blog', class: Google::Apis::BloggerV3::Blog, decorator: Google::Apis::BloggerV3::BlogRepresentation
        
        property :blog_user_info, as: 'blog_user_info', class: Google::Apis::BloggerV3::BlogPerUserInfo, decorator: Google::Apis::BloggerV3::BlogPerUserInfoRepresentation
        
        property :kind, as: 'kind'
      end

      # @private
      class CommentRepresentation < Google::Apis::Core::JsonRepresentation
        property :author, as: 'author', class: Google::Apis::BloggerV3::Comment::Author do
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::BloggerV3::Comment::Author::Image do
            property :url, as: 'url'
          end
          
          property :url, as: 'url'
        end
        
        property :blog, as: 'blog', class: Google::Apis::BloggerV3::Comment::Blog do
          property :id, as: 'id'
        end
        
        property :content, as: 'content'
        property :id, as: 'id'
        property :in_reply_to, as: 'inReplyTo', class: Google::Apis::BloggerV3::Comment::InReplyTo do
          property :id, as: 'id'
        end
        
        property :kind, as: 'kind'
        property :post, as: 'post', class: Google::Apis::BloggerV3::Comment::Post do
          property :id, as: 'id'
        end
        
        property :published, as: 'published', type: DateTime
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        property :updated, as: 'updated', type: DateTime
      end

      # @private
      class CommentListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BloggerV3::Comment, decorator: Google::Apis::BloggerV3::CommentRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :prev_page_token, as: 'prevPageToken'
      end

      # @private
      class PageRepresentation < Google::Apis::Core::JsonRepresentation
        property :author, as: 'author', class: Google::Apis::BloggerV3::Page::Author do
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::BloggerV3::Page::Author::Image do
            property :url, as: 'url'
          end
          
          property :url, as: 'url'
        end
        
        property :blog, as: 'blog', class: Google::Apis::BloggerV3::Page::Blog do
          property :id, as: 'id'
        end
        
        property :content, as: 'content'
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :published, as: 'published', type: DateTime
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
        property :url, as: 'url'
      end

      # @private
      class PageListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BloggerV3::Page, decorator: Google::Apis::BloggerV3::PageRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class PageviewsRepresentation < Google::Apis::Core::JsonRepresentation
        property :blog_id, as: 'blogId'
        collection :counts, as: 'counts', class: Google::Apis::BloggerV3::Pageviews::Count do
          property :count, as: 'count'
          property :time_range, as: 'timeRange'
        end
        
        
        property :kind, as: 'kind'
      end

      # @private
      class PostRepresentation < Google::Apis::Core::JsonRepresentation
        property :author, as: 'author', class: Google::Apis::BloggerV3::Post::Author do
          property :display_name, as: 'displayName'
          property :id, as: 'id'
          property :image, as: 'image', class: Google::Apis::BloggerV3::Post::Author::Image do
            property :url, as: 'url'
          end
          
          property :url, as: 'url'
        end
        
        property :blog, as: 'blog', class: Google::Apis::BloggerV3::Post::Blog do
          property :id, as: 'id'
        end
        
        property :content, as: 'content'
        property :custom_meta_data, as: 'customMetaData'
        property :etag, as: 'etag'
        property :id, as: 'id'
        collection :images, as: 'images', class: Google::Apis::BloggerV3::Post::Image do
          property :url, as: 'url'
        end
        
        
        property :kind, as: 'kind'
        collection :labels, as: 'labels'
        
        property :location, as: 'location', class: Google::Apis::BloggerV3::Post::Location do
          property :lat, as: 'lat'
          property :lng, as: 'lng'
          property :name, as: 'name'
          property :span, as: 'span'
        end
        
        property :published, as: 'published', type: DateTime
        property :reader_comments, as: 'readerComments'
        property :replies, as: 'replies', class: Google::Apis::BloggerV3::Post::Replies do
          collection :items, as: 'items', class: Google::Apis::BloggerV3::Comment, decorator: Google::Apis::BloggerV3::CommentRepresentation
          
          
          property :self_link, as: 'selfLink'
          property :total_items, as: 'totalItems'
        end
        
        property :self_link, as: 'selfLink'
        property :status, as: 'status'
        property :title, as: 'title'
        property :title_link, as: 'titleLink'
        property :updated, as: 'updated', type: DateTime
        property :url, as: 'url'
      end

      # @private
      class PostListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BloggerV3::Post, decorator: Google::Apis::BloggerV3::PostRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class PostPerUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :blog_id, as: 'blogId'
        property :has_edit_access, as: 'hasEditAccess'
        property :kind, as: 'kind'
        property :post_id, as: 'postId'
        property :user_id, as: 'userId'
      end

      # @private
      class PostUserInfoRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :post, as: 'post', class: Google::Apis::BloggerV3::Post, decorator: Google::Apis::BloggerV3::PostRepresentation
        
        property :post_user_info, as: 'post_user_info', class: Google::Apis::BloggerV3::PostPerUserInfo, decorator: Google::Apis::BloggerV3::PostPerUserInfoRepresentation
      end

      # @private
      class PostUserInfosListRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BloggerV3::PostUserInfo, decorator: Google::Apis::BloggerV3::PostUserInfoRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class UserRepresentation < Google::Apis::Core::JsonRepresentation
        property :about, as: 'about'
        property :blogs, as: 'blogs', class: Google::Apis::BloggerV3::User::Blogs do
          property :self_link, as: 'selfLink'
        end
        
        property :created, as: 'created', type: DateTime
        property :display_name, as: 'displayName'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :locale, as: 'locale', class: Google::Apis::BloggerV3::User::Locale do
          property :country, as: 'country'
          property :language, as: 'language'
          property :variant, as: 'variant'
        end
        
        property :self_link, as: 'selfLink'
        property :url, as: 'url'
      end
    end
  end
end
