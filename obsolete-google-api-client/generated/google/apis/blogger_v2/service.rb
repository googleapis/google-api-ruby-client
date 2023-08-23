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
    module BloggerV2
      # Blogger API v3
      #
      # The Blogger API provides access to posts, comments and pages of a Blogger blog.
      #
      # @example
      #    require 'google/apis/blogger_v2'
      #
      #    Blogger = Google::Apis::BloggerV2 # Alias the module
      #    service = Blogger::BloggerService.new
      #
      # @see https://developers.google.com/blogger/docs/3.0/getting_started
      class BloggerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://blogger.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets a blog by id.
        # @param [String] blog_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::Blog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::Blog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_blog(blog_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/blogs/{blogId}', options)
          command.response_representation = Google::Apis::BloggerV2::Blog::Representation
          command.response_class = Google::Apis::BloggerV2::Blog
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists blogs by user id, possibly filtered.
        # @param [String] user_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::BlogList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::BlogList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_blogs(user_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/users/{userId}/blogs', options)
          command.response_representation = Google::Apis::BloggerV2::BlogList::Representation
          command.response_class = Google::Apis::BloggerV2::BlogList
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a comment by blog id, post id and comment id.
        # @param [String] blog_id
        # @param [String] post_id
        # @param [String] comment_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_comment(blog_id, post_id, comment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/blogs/{blogId}/posts/{postId}/comments/{commentId}', options)
          command.response_representation = Google::Apis::BloggerV2::Comment::Representation
          command.response_class = Google::Apis::BloggerV2::Comment
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists comments.
        # @param [String] blog_id
        # @param [String] post_id
        # @param [Boolean] fetch_bodies
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [String] start_date
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::CommentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::CommentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comments(blog_id, post_id, fetch_bodies: nil, max_results: nil, page_token: nil, start_date: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/blogs/{blogId}/posts/{postId}/comments', options)
          command.response_representation = Google::Apis::BloggerV2::CommentList::Representation
          command.response_class = Google::Apis::BloggerV2::CommentList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a page by blog id and page id.
        # @param [String] blog_id
        # @param [String] page_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_page(blog_id, page_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/blogs/{blogId}/pages/{pageId}', options)
          command.response_representation = Google::Apis::BloggerV2::Page::Representation
          command.response_class = Google::Apis::BloggerV2::Page
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists pages.
        # @param [String] blog_id
        # @param [Boolean] fetch_bodies
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::PageList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::PageList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_pages(blog_id, fetch_bodies: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/blogs/{blogId}/pages', options)
          command.response_representation = Google::Apis::BloggerV2::PageList::Representation
          command.response_class = Google::Apis::BloggerV2::PageList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a post by blog id and post id
        # @param [String] blog_id
        # @param [String] post_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_post(blog_id, post_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/blogs/{blogId}/posts/{postId}', options)
          command.response_representation = Google::Apis::BloggerV2::Post::Representation
          command.response_class = Google::Apis::BloggerV2::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists posts.
        # @param [String] blog_id
        # @param [Boolean] fetch_bodies
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [String] start_date
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::PostList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::PostList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_posts(blog_id, fetch_bodies: nil, max_results: nil, page_token: nil, start_date: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/blogs/{blogId}/posts', options)
          command.response_representation = Google::Apis::BloggerV2::PostList::Representation
          command.response_class = Google::Apis::BloggerV2::PostList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a user by user id.
        # @param [String] user_id
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(user_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/users/{userId}', options)
          command.response_representation = Google::Apis::BloggerV2::User::Representation
          command.response_class = Google::Apis::BloggerV2::User
          command.params['userId'] = user_id unless user_id.nil?
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
