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
    module BloggerV3
      # Blogger API v3
      #
      # The Blogger API provides access to posts, comments and pages of a Blogger blog.
      #
      # @example
      #    require 'google/apis/blogger_v3'
      #
      #    Blogger = Google::Apis::BloggerV3 # Alias the module
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
        
        # Gets one blog and user info pair by blog id and user id.
        # @param [String] user_id
        # @param [String] blog_id
        # @param [Fixnum] max_posts
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::BlogUserInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::BlogUserInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_blog_user_info(user_id, blog_id, max_posts: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/users/{userId}/blogs/{blogId}', options)
          command.response_representation = Google::Apis::BloggerV3::BlogUserInfo::Representation
          command.response_class = Google::Apis::BloggerV3::BlogUserInfo
          command.params['userId'] = user_id unless user_id.nil?
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['maxPosts'] = max_posts unless max_posts.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a blog by id.
        # @param [String] blog_id
        # @param [Fixnum] max_posts
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Blog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Blog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_blog(blog_id, max_posts: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}', options)
          command.response_representation = Google::Apis::BloggerV3::Blog::Representation
          command.response_class = Google::Apis::BloggerV3::Blog
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['maxPosts'] = max_posts unless max_posts.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a blog by url.
        # @param [String] url
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Blog] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Blog]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_blog_by_url(url, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/byurl', options)
          command.response_representation = Google::Apis::BloggerV3::Blog::Representation
          command.response_class = Google::Apis::BloggerV3::Blog
          command.query['url'] = url unless url.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists blogs by user.
        # @param [String] user_id
        # @param [Boolean] fetch_user_info
        # @param [Array<String>, String] role
        # @param [Array<String>, String] status
        #   Default value of status is LIVE.
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::BlogList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::BlogList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_blogs_by_user(user_id, fetch_user_info: nil, role: nil, status: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/users/{userId}/blogs', options)
          command.response_representation = Google::Apis::BloggerV3::BlogList::Representation
          command.response_class = Google::Apis::BloggerV3::BlogList
          command.params['userId'] = user_id unless user_id.nil?
          command.query['fetchUserInfo'] = fetch_user_info unless fetch_user_info.nil?
          command.query['role'] = role unless role.nil?
          command.query['status'] = status unless status.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks a comment as not spam by blog id, post id and comment id.
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
        # @yieldparam result [Google::Apis::BloggerV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_comment(blog_id, post_id, comment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/approve', options)
          command.response_representation = Google::Apis::BloggerV3::Comment::Representation
          command.response_class = Google::Apis::BloggerV3::Comment
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a comment by blog id, post id and comment id.
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
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_comment(blog_id, post_id, comment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/blogs/{blogId}/posts/{postId}/comments/{commentId}', options)
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a comment by id.
        # @param [String] blog_id
        # @param [String] post_id
        # @param [String] comment_id
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_comment(blog_id, post_id, comment_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/posts/{postId}/comments/{commentId}', options)
          command.response_representation = Google::Apis::BloggerV3::Comment::Representation
          command.response_class = Google::Apis::BloggerV3::Comment
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists comments.
        # @param [String] blog_id
        # @param [String] post_id
        # @param [String] end_date
        # @param [Boolean] fetch_bodies
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [String] start_date
        # @param [String] status
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::CommentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::CommentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comments(blog_id, post_id, end_date: nil, fetch_bodies: nil, max_results: nil, page_token: nil, start_date: nil, status: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/posts/{postId}/comments', options)
          command.response_representation = Google::Apis::BloggerV3::CommentList::Representation
          command.response_class = Google::Apis::BloggerV3::CommentList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['status'] = status unless status.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists comments by blog.
        # @param [String] blog_id
        # @param [String] end_date
        # @param [Boolean] fetch_bodies
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [String] start_date
        # @param [Array<String>, String] status
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::CommentList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::CommentList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_comments_by_blog(blog_id, end_date: nil, fetch_bodies: nil, max_results: nil, page_token: nil, start_date: nil, status: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/comments', options)
          command.response_representation = Google::Apis::BloggerV3::CommentList::Representation
          command.response_class = Google::Apis::BloggerV3::CommentList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['status'] = status unless status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks a comment as spam by blog id, post id and comment id.
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
        # @yieldparam result [Google::Apis::BloggerV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def mark_comment_as_spam(blog_id, post_id, comment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/spam', options)
          command.response_representation = Google::Apis::BloggerV3::Comment::Representation
          command.response_class = Google::Apis::BloggerV3::Comment
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the content of a comment by blog id, post id and comment id.
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
        # @yieldparam result [Google::Apis::BloggerV3::Comment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Comment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_comment_content(blog_id, post_id, comment_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/posts/{postId}/comments/{commentId}/removecontent', options)
          command.response_representation = Google::Apis::BloggerV3::Comment::Representation
          command.response_class = Google::Apis::BloggerV3::Comment
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.params['commentId'] = comment_id unless comment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets page views by blog id.
        # @param [String] blog_id
        # @param [Array<String>, String] range
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Pageviews] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Pageviews]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_page_view(blog_id, range: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/pageviews', options)
          command.response_representation = Google::Apis::BloggerV3::Pageviews::Representation
          command.response_class = Google::Apis::BloggerV3::Pageviews
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['range'] = range unless range.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a page by blog id and page id.
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
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_page(blog_id, page_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/blogs/{blogId}/pages/{pageId}', options)
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a page by blog id and page id.
        # @param [String] blog_id
        # @param [String] page_id
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_page(blog_id, page_id, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/pages/{pageId}', options)
          command.response_representation = Google::Apis::BloggerV3::Page::Representation
          command.response_class = Google::Apis::BloggerV3::Page
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a page.
        # @param [String] blog_id
        # @param [Google::Apis::BloggerV3::Page] page_object
        # @param [Boolean] is_draft
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_page(blog_id, page_object = nil, is_draft: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/pages', options)
          command.request_representation = Google::Apis::BloggerV3::Page::Representation
          command.request_object = page_object
          command.response_representation = Google::Apis::BloggerV3::Page::Representation
          command.response_class = Google::Apis::BloggerV3::Page
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['isDraft'] = is_draft unless is_draft.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists pages.
        # @param [String] blog_id
        # @param [Boolean] fetch_bodies
        # @param [Fixnum] max_results
        # @param [String] page_token
        # @param [Array<String>, String] status
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::PageList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::PageList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_pages(blog_id, fetch_bodies: nil, max_results: nil, page_token: nil, status: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/pages', options)
          command.response_representation = Google::Apis::BloggerV3::PageList::Representation
          command.response_class = Google::Apis::BloggerV3::PageList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['status'] = status unless status.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a page.
        # @param [String] blog_id
        # @param [String] page_id
        # @param [Google::Apis::BloggerV3::Page] page_object
        # @param [Boolean] publish
        # @param [Boolean] revert
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_page(blog_id, page_id, page_object = nil, publish: nil, revert: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/blogs/{blogId}/pages/{pageId}', options)
          command.request_representation = Google::Apis::BloggerV3::Page::Representation
          command.request_object = page_object
          command.response_representation = Google::Apis::BloggerV3::Page::Representation
          command.response_class = Google::Apis::BloggerV3::Page
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['publish'] = publish unless publish.nil?
          command.query['revert'] = revert unless revert.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publishes a page.
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
        # @yieldparam result [Google::Apis::BloggerV3::Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_page(blog_id, page_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/pages/{pageId}/publish', options)
          command.response_representation = Google::Apis::BloggerV3::Page::Representation
          command.response_class = Google::Apis::BloggerV3::Page
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts a published or scheduled page to draft state.
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
        # @yieldparam result [Google::Apis::BloggerV3::Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_page(blog_id, page_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/pages/{pageId}/revert', options)
          command.response_representation = Google::Apis::BloggerV3::Page::Representation
          command.response_class = Google::Apis::BloggerV3::Page
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a page by blog id and page id.
        # @param [String] blog_id
        # @param [String] page_id
        # @param [Google::Apis::BloggerV3::Page] page_object
        # @param [Boolean] publish
        # @param [Boolean] revert
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Page] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Page]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_page(blog_id, page_id, page_object = nil, publish: nil, revert: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v3/blogs/{blogId}/pages/{pageId}', options)
          command.request_representation = Google::Apis::BloggerV3::Page::Representation
          command.request_object = page_object
          command.response_representation = Google::Apis::BloggerV3::Page::Representation
          command.response_class = Google::Apis::BloggerV3::Page
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['pageId'] = page_id unless page_id.nil?
          command.query['publish'] = publish unless publish.nil?
          command.query['revert'] = revert unless revert.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets one post and user info pair, by post_id and user_id.
        # @param [String] user_id
        # @param [String] blog_id
        # @param [String] post_id
        # @param [Fixnum] max_comments
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::PostUserInfo] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::PostUserInfo]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_post_user_info(user_id, blog_id, post_id, max_comments: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/users/{userId}/blogs/{blogId}/posts/{postId}', options)
          command.response_representation = Google::Apis::BloggerV3::PostUserInfo::Representation
          command.response_class = Google::Apis::BloggerV3::PostUserInfo
          command.params['userId'] = user_id unless user_id.nil?
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['maxComments'] = max_comments unless max_comments.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists post and user info pairs.
        # @param [String] user_id
        # @param [String] blog_id
        # @param [String] end_date
        # @param [Boolean] fetch_bodies
        # @param [String] labels
        # @param [Fixnum] max_results
        # @param [String] order_by
        # @param [String] page_token
        # @param [String] start_date
        # @param [Array<String>, String] status
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::PostUserInfosList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::PostUserInfosList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_post_user_info(user_id, blog_id, end_date: nil, fetch_bodies: nil, labels: nil, max_results: nil, order_by: nil, page_token: nil, start_date: nil, status: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/users/{userId}/blogs/{blogId}/posts', options)
          command.response_representation = Google::Apis::BloggerV3::PostUserInfosList::Representation
          command.response_class = Google::Apis::BloggerV3::PostUserInfosList
          command.params['userId'] = user_id unless user_id.nil?
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['labels'] = labels unless labels.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['status'] = status unless status.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a post by blog id and post id.
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
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_post(blog_id, post_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/blogs/{blogId}/posts/{postId}', options)
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a post by blog id and post id
        # @param [String] blog_id
        # @param [String] post_id
        # @param [Boolean] fetch_body
        # @param [Boolean] fetch_images
        # @param [Fixnum] max_comments
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_post(blog_id, post_id, fetch_body: nil, fetch_images: nil, max_comments: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/posts/{postId}', options)
          command.response_representation = Google::Apis::BloggerV3::Post::Representation
          command.response_class = Google::Apis::BloggerV3::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['fetchBody'] = fetch_body unless fetch_body.nil?
          command.query['fetchImages'] = fetch_images unless fetch_images.nil?
          command.query['maxComments'] = max_comments unless max_comments.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a post by path.
        # @param [String] blog_id
        # @param [String] path
        # @param [Fixnum] max_comments
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_post_by_path(blog_id, path, max_comments: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/posts/bypath', options)
          command.response_representation = Google::Apis::BloggerV3::Post::Representation
          command.response_class = Google::Apis::BloggerV3::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['maxComments'] = max_comments unless max_comments.nil?
          command.query['path'] = path unless path.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a post.
        # @param [String] blog_id
        # @param [Google::Apis::BloggerV3::Post] post_object
        # @param [Boolean] fetch_body
        # @param [Boolean] fetch_images
        # @param [Boolean] is_draft
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_post(blog_id, post_object = nil, fetch_body: nil, fetch_images: nil, is_draft: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/posts', options)
          command.request_representation = Google::Apis::BloggerV3::Post::Representation
          command.request_object = post_object
          command.response_representation = Google::Apis::BloggerV3::Post::Representation
          command.response_class = Google::Apis::BloggerV3::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['fetchBody'] = fetch_body unless fetch_body.nil?
          command.query['fetchImages'] = fetch_images unless fetch_images.nil?
          command.query['isDraft'] = is_draft unless is_draft.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists posts.
        # @param [String] blog_id
        # @param [String] end_date
        # @param [Boolean] fetch_bodies
        # @param [Boolean] fetch_images
        # @param [String] labels
        # @param [Fixnum] max_results
        # @param [String] order_by
        # @param [String] page_token
        # @param [String] start_date
        # @param [Array<String>, String] status
        # @param [String] view
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::PostList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::PostList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_posts(blog_id, end_date: nil, fetch_bodies: nil, fetch_images: nil, labels: nil, max_results: nil, order_by: nil, page_token: nil, start_date: nil, status: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/posts', options)
          command.response_representation = Google::Apis::BloggerV3::PostList::Representation
          command.response_class = Google::Apis::BloggerV3::PostList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['fetchImages'] = fetch_images unless fetch_images.nil?
          command.query['labels'] = labels unless labels.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['status'] = status unless status.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patches a post.
        # @param [String] blog_id
        # @param [String] post_id
        # @param [Google::Apis::BloggerV3::Post] post_object
        # @param [Boolean] fetch_body
        # @param [Boolean] fetch_images
        # @param [Fixnum] max_comments
        # @param [Boolean] publish
        # @param [Boolean] revert
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_post(blog_id, post_id, post_object = nil, fetch_body: nil, fetch_images: nil, max_comments: nil, publish: nil, revert: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/blogs/{blogId}/posts/{postId}', options)
          command.request_representation = Google::Apis::BloggerV3::Post::Representation
          command.request_object = post_object
          command.response_representation = Google::Apis::BloggerV3::Post::Representation
          command.response_class = Google::Apis::BloggerV3::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['fetchBody'] = fetch_body unless fetch_body.nil?
          command.query['fetchImages'] = fetch_images unless fetch_images.nil?
          command.query['maxComments'] = max_comments unless max_comments.nil?
          command.query['publish'] = publish unless publish.nil?
          command.query['revert'] = revert unless revert.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Publishes a post.
        # @param [String] blog_id
        # @param [String] post_id
        # @param [String] publish_date
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def publish_post(blog_id, post_id, publish_date: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/posts/{postId}/publish', options)
          command.response_representation = Google::Apis::BloggerV3::Post::Representation
          command.response_class = Google::Apis::BloggerV3::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['publishDate'] = publish_date unless publish_date.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reverts a published or scheduled post to draft state.
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
        # @yieldparam result [Google::Apis::BloggerV3::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def revert_post(blog_id, post_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/blogs/{blogId}/posts/{postId}/revert', options)
          command.response_representation = Google::Apis::BloggerV3::Post::Representation
          command.response_class = Google::Apis::BloggerV3::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for posts matching given query terms in the specified blog.
        # @param [String] blog_id
        # @param [String] q
        # @param [Boolean] fetch_bodies
        # @param [String] order_by
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::PostList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::PostList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_posts(blog_id, q, fetch_bodies: nil, order_by: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/blogs/{blogId}/posts/search', options)
          command.response_representation = Google::Apis::BloggerV3::PostList::Representation
          command.response_class = Google::Apis::BloggerV3::PostList
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.query['fetchBodies'] = fetch_bodies unless fetch_bodies.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['q'] = q unless q.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a post by blog id and post id.
        # @param [String] blog_id
        # @param [String] post_id
        # @param [Google::Apis::BloggerV3::Post] post_object
        # @param [Boolean] fetch_body
        # @param [Boolean] fetch_images
        # @param [Fixnum] max_comments
        # @param [Boolean] publish
        # @param [Boolean] revert
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BloggerV3::Post] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::Post]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_post(blog_id, post_id, post_object = nil, fetch_body: nil, fetch_images: nil, max_comments: nil, publish: nil, revert: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v3/blogs/{blogId}/posts/{postId}', options)
          command.request_representation = Google::Apis::BloggerV3::Post::Representation
          command.request_object = post_object
          command.response_representation = Google::Apis::BloggerV3::Post::Representation
          command.response_class = Google::Apis::BloggerV3::Post
          command.params['blogId'] = blog_id unless blog_id.nil?
          command.params['postId'] = post_id unless post_id.nil?
          command.query['fetchBody'] = fetch_body unless fetch_body.nil?
          command.query['fetchImages'] = fetch_images unless fetch_images.nil?
          command.query['maxComments'] = max_comments unless max_comments.nil?
          command.query['publish'] = publish unless publish.nil?
          command.query['revert'] = revert unless revert.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets one user by user_id.
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
        # @yieldparam result [Google::Apis::BloggerV3::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BloggerV3::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(user_id, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/users/{userId}', options)
          command.response_representation = Google::Apis::BloggerV3::User::Representation
          command.response_class = Google::Apis::BloggerV3::User
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
