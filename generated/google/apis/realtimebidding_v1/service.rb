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
    module RealtimebiddingV1
      # Real-time Bidding API
      #
      # Allows external bidders to manage their RTB integration with Google. This
      #  includes managing bidder endpoints, QPS quotas, configuring what ad inventory
      #  to receive via pretargeting, submitting creatives for verification, and
      #  accessing creative metadata such as approval status.
      #
      # @example
      #    require 'google/apis/realtimebidding_v1'
      #
      #    Realtimebidding = Google::Apis::RealtimebiddingV1 # Alias the module
      #    service = Realtimebidding::RealtimeBiddingService.new
      #
      # @see https://developers.google.com/authorized-buyers/apis/realtimebidding/reference/rest/
      class RealtimeBiddingService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://realtimebidding.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Lists creatives.
        # @param [String] parent
        #   Required. Name of the parent buyer that owns the creatives. The pattern for
        #   this resource is either `buyers/`buyerAccountId`` or `bidders/`bidderAccountId`
        #   `. For `buyers/`buyerAccountId``, the `buyerAccountId` can be one of the
        #   following: 1. The ID of the buyer that is accessing their own creatives. 2.
        #   The ID of the child seat buyer under a bidder account. So for listing
        #   creatives pertaining to the child seat buyer (`456`) under bidder account (`
        #   123`), you would use the pattern: `buyers/456`. 3. The ID of the bidder itself.
        #   So for listing creatives pertaining to bidder (`123`), you would use `buyers/
        #   123`. If you want to access all creatives pertaining to both the bidder and
        #   all of its child seat accounts, you would use `bidders/`bidderAccountId``, e.g.
        #   , for all creatives pertaining to bidder (`123`), use `bidders/123`.
        # @param [String] filter
        #   Query string to filter creatives. If no filter is specified, all active
        #   creatives will be returned. Example: 'accountId=12345 AND (dealsStatus:
        #   DISAPPROVED AND disapprovalReason:UNACCEPTABLE_CONTENT) OR declaredAttributes:
        #   IS_COOKIE_TARGETED'
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer creatives than requested (due
        #   to timeout constraint) even if more are available via another call. If
        #   unspecified, server will pick an appropriate default. Acceptable values are 1
        #   to 1000, inclusive.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of ListCreativesResponse.nextPageToken returned from the
        #   previous call to the 'ListCreatives' method.
        # @param [String] view
        #   Controls the amount of information included in the response. By default only
        #   creativeServingDecision is included. To retrieve the entire creative resource (
        #   including the declared fields and the creative content) specify the view as "
        #   FULL".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::ListCreativesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::ListCreativesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_bidder_creatives(parent, filter: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/creatives', options)
          command.response_representation = Google::Apis::RealtimebiddingV1::ListCreativesResponse::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::ListCreativesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Watches all creatives pertaining to a bidder. It is sufficient to invoke this
        # endpoint once per bidder. A Pub/Sub topic will be created and notifications
        # will be pushed to the topic when any of the bidder's creatives change status.
        # All of the bidder's service accounts will have access to read from the topic.
        # Subsequent invocations of this method will return the existing Pub/Sub
        # configuration.
        # @param [String] parent
        #   Required. To watch all creatives pertaining to the bidder and all its child
        #   seat accounts, the bidder must follow the pattern `bidders/`bidderAccountId``.
        # @param [Google::Apis::RealtimebiddingV1::WatchCreativesRequest] watch_creatives_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::WatchCreativesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::WatchCreativesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_creatives(parent, watch_creatives_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/creatives:watch', options)
          command.request_representation = Google::Apis::RealtimebiddingV1::WatchCreativesRequest::Representation
          command.request_object = watch_creatives_request_object
          command.response_representation = Google::Apis::RealtimebiddingV1::WatchCreativesResponse::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::WatchCreativesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets remarketing tag for a buyer. A remarketing tag is a piece of JavaScript
        # code that can be placed on a web page. When a user visits a page containing a
        # remarketing tag, Google adds the user to a user list.
        # @param [String] name
        #   Required. To fetch remarketing tag for an account, name must follow the
        #   pattern `buyers/`accountId`` where ``accountId`` represents ID of a buyer that
        #   owns the remarketing tag. For a bidder accessing remarketing tag on behalf of
        #   a child seat buyer, ``accountId`` should represent the ID of the child seat
        #   buyer. To fetch remarketing tag for a specific user list, name must follow the
        #   pattern `buyers/`accountId`/userLists/`userListId``. See UserList.name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_remarketing_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getRemarketingTag', options)
          command.response_representation = Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a creative.
        # @param [String] parent
        #   Required. The name of the parent buyer that the new creative belongs to that
        #   must follow the pattern `buyers/`buyerAccountId``, where ``buyerAccountId``
        #   represents the account ID of the buyer who owns a creative. For a bidder
        #   accessing creatives on behalf of a child seat buyer, ``buyerAccountId`` should
        #   represent the account ID of the child seat buyer.
        # @param [Google::Apis::RealtimebiddingV1::Creative] creative_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_buyer_creative(parent, creative_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/creatives', options)
          command.request_representation = Google::Apis::RealtimebiddingV1::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::RealtimebiddingV1::Creative::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::Creative
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a creative.
        # @param [String] name
        #   Required. Name of the creative to retrieve. See creative.name.
        # @param [String] view
        #   Controls the amount of information included in the response. By default only
        #   creativeServingDecision is included. To retrieve the entire creative resource (
        #   including the declared fields and the creative content) specify the view as "
        #   FULL".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_creative(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RealtimebiddingV1::Creative::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::Creative
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists creatives.
        # @param [String] parent
        #   Required. Name of the parent buyer that owns the creatives. The pattern for
        #   this resource is either `buyers/`buyerAccountId`` or `bidders/`bidderAccountId`
        #   `. For `buyers/`buyerAccountId``, the `buyerAccountId` can be one of the
        #   following: 1. The ID of the buyer that is accessing their own creatives. 2.
        #   The ID of the child seat buyer under a bidder account. So for listing
        #   creatives pertaining to the child seat buyer (`456`) under bidder account (`
        #   123`), you would use the pattern: `buyers/456`. 3. The ID of the bidder itself.
        #   So for listing creatives pertaining to bidder (`123`), you would use `buyers/
        #   123`. If you want to access all creatives pertaining to both the bidder and
        #   all of its child seat accounts, you would use `bidders/`bidderAccountId``, e.g.
        #   , for all creatives pertaining to bidder (`123`), use `bidders/123`.
        # @param [String] filter
        #   Query string to filter creatives. If no filter is specified, all active
        #   creatives will be returned. Example: 'accountId=12345 AND (dealsStatus:
        #   DISAPPROVED AND disapprovalReason:UNACCEPTABLE_CONTENT) OR declaredAttributes:
        #   IS_COOKIE_TARGETED'
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer creatives than requested (due
        #   to timeout constraint) even if more are available via another call. If
        #   unspecified, server will pick an appropriate default. Acceptable values are 1
        #   to 1000, inclusive.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of ListCreativesResponse.nextPageToken returned from the
        #   previous call to the 'ListCreatives' method.
        # @param [String] view
        #   Controls the amount of information included in the response. By default only
        #   creativeServingDecision is included. To retrieve the entire creative resource (
        #   including the declared fields and the creative content) specify the view as "
        #   FULL".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::ListCreativesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::ListCreativesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_creatives(parent, filter: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/creatives', options)
          command.response_representation = Google::Apis::RealtimebiddingV1::ListCreativesResponse::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::ListCreativesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a creative.
        # @param [String] name
        #   Name of the creative to update. See creative.name.
        # @param [Google::Apis::RealtimebiddingV1::Creative] creative_object
        # @param [String] update_mask
        #   Field mask to use for partial in-place updates.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::Creative] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::Creative]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_buyer_creative(name, creative_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RealtimebiddingV1::Creative::Representation
          command.request_object = creative_object
          command.response_representation = Google::Apis::RealtimebiddingV1::Creative::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::Creative
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Change the status of a user list to CLOSED. This prevents new users from being
        # added to the user list.
        # @param [String] name
        #   Required. The name of the user list to close. See UserList.name
        # @param [Google::Apis::RealtimebiddingV1::CloseUserListRequest] close_user_list_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_user_list(name, close_user_list_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:close', options)
          command.request_representation = Google::Apis::RealtimebiddingV1::CloseUserListRequest::Representation
          command.request_object = close_user_list_request_object
          command.response_representation = Google::Apis::RealtimebiddingV1::UserList::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::UserList
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new user list.
        # @param [String] parent
        #   Required. The name of the parent buyer of the user list to be retrieved that
        #   must follow the pattern `buyers/`buyerAccountId``, where ``buyerAccountId``
        #   represents the account ID of the buyer who owns user lists. For a bidder
        #   accessing user lists on behalf of a child seat buyer , ``buyerAccountId``
        #   should represent the account ID of the child seat buyer.
        # @param [Google::Apis::RealtimebiddingV1::UserList] user_list_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_buyer_user_list(parent, user_list_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/userLists', options)
          command.request_representation = Google::Apis::RealtimebiddingV1::UserList::Representation
          command.request_object = user_list_object
          command.response_representation = Google::Apis::RealtimebiddingV1::UserList::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::UserList
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a user list by its name.
        # @param [String] name
        #   Required. The name of the user list to be retrieved. See UserList.name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_user_list(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::RealtimebiddingV1::UserList::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::UserList
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets remarketing tag for a buyer. A remarketing tag is a piece of JavaScript
        # code that can be placed on a web page. When a user visits a page containing a
        # remarketing tag, Google adds the user to a user list.
        # @param [String] name
        #   Required. To fetch remarketing tag for an account, name must follow the
        #   pattern `buyers/`accountId`` where ``accountId`` represents ID of a buyer that
        #   owns the remarketing tag. For a bidder accessing remarketing tag on behalf of
        #   a child seat buyer, ``accountId`` should represent the ID of the child seat
        #   buyer. To fetch remarketing tag for a specific user list, name must follow the
        #   pattern `buyers/`accountId`/userLists/`userListId``. See UserList.name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_user_list_remarketing_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:getRemarketingTag', options)
          command.response_representation = Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::GetRemarketingTagResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the user lists visible to the current user.
        # @param [String] parent
        #   Required. The name of the parent buyer for the user lists to be returned that
        #   must follow the pattern `buyers/`buyerAccountId``, where ``buyerAccountId``
        #   represents the account ID of the buyer who owns user lists. For a bidder
        #   accessing user lists on behalf of a child seat buyer , ``buyerAccountId``
        #   should represent the account ID of the child seat buyer.
        # @param [Fixnum] page_size
        #   The number of results to return per page.
        # @param [String] page_token
        #   Continuation page token (as received from a previous response).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::ListUserListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::ListUserListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_user_lists(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/userLists', options)
          command.response_representation = Google::Apis::RealtimebiddingV1::ListUserListsResponse::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::ListUserListsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Change the status of a user list to OPEN. This allows new users to be added to
        # the user list.
        # @param [String] name
        #   Required. The name of the user list to open. See UserList.name
        # @param [Google::Apis::RealtimebiddingV1::OpenUserListRequest] open_user_list_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def open_user_list(name, open_user_list_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:open', options)
          command.request_representation = Google::Apis::RealtimebiddingV1::OpenUserListRequest::Representation
          command.request_object = open_user_list_request_object
          command.response_representation = Google::Apis::RealtimebiddingV1::UserList::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::UserList
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the given user list. Only user lists with URLRestrictions can be
        # updated.
        # @param [String] name
        #   Output only. Name of the user list that must follow the pattern `buyers/`buyer`
        #   /userLists/`user_list``, where ``buyer`` represents the account ID of the
        #   buyer who owns the user list. For a bidder accessing user lists on behalf of a
        #   child seat buyer, ``buyer`` represents the account ID of the child seat buyer.
        #   ``user_list`` is an int64 identifier assigned by Google to uniquely identify a
        #   user list.
        # @param [Google::Apis::RealtimebiddingV1::UserList] user_list_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::RealtimebiddingV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::RealtimebiddingV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_buyer_user_list(name, user_list_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v1/{+name}', options)
          command.request_representation = Google::Apis::RealtimebiddingV1::UserList::Representation
          command.request_object = user_list_object
          command.response_representation = Google::Apis::RealtimebiddingV1::UserList::Representation
          command.response_class = Google::Apis::RealtimebiddingV1::UserList
          command.params['name'] = name unless name.nil?
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
