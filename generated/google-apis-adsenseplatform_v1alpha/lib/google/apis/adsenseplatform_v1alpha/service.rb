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

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module AdsenseplatformV1alpha
      # AdSense Platform API
      #
      # 
      #
      # @example
      #    require 'google/apis/adsenseplatform_v1alpha'
      #
      #    Adsenseplatform = Google::Apis::AdsenseplatformV1alpha # Alias the module
      #    service = Adsenseplatform::AdSensePlatformService.new
      #
      # @see https://developers.google.com/adsense/platforms/
      class AdSensePlatformService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://adsenseplatform.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-adsenseplatform_v1alpha',
                client_version: Google::Apis::AdsenseplatformV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets a platform.
        # @param [String] name
        #   Required. The name of the platform to retrieve. Format: accounts/`account`/
        #   platforms/`platform`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::Platform] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::Platform]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_platform(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::Platform::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::Platform
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists platforms for a specified account.
        # @param [String] parent
        #   Required. The account which owns the platforms. Format: accounts/`account`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of platforms to include in the response, used for
        #   paging. If unspecified, at most 10000 platforms will be returned. The maximum
        #   value is 10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListPlatforms` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListPlatforms` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::ListPlatformsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::ListPlatformsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_platforms(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/platforms', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::ListPlatformsResponse::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::ListPlatformsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Closes a sub-account.
        # @param [String] name
        #   Required. Account to close. Format: platforms/`platform`/accounts/`account_id`
        # @param [Google::Apis::AdsenseplatformV1alpha::CloseAccountRequest] close_account_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::CloseAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::CloseAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def close_account(name, close_account_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:close', options)
          command.request_representation = Google::Apis::AdsenseplatformV1alpha::CloseAccountRequest::Representation
          command.request_object = close_account_request_object
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::CloseAccountResponse::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::CloseAccountResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a sub-account.
        # @param [String] parent
        #   Required. Platform to create an account for. Format: platforms/`platform`
        # @param [Google::Apis::AdsenseplatformV1alpha::Account] account_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_platform_account(parent, account_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accounts', options)
          command.request_representation = Google::Apis::AdsenseplatformV1alpha::Account::Representation
          command.request_object = account_object
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::Account::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::Account
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about the selected sub-account.
        # @param [String] name
        #   Required. Account to get information about. Format: platforms/`platform`/
        #   accounts/`account_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_platform_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::Account::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists a partial view of sub-accounts for a specific parent account.
        # @param [String] parent
        #   Required. Platform who parents the accounts. Format: platforms/`platform`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of accounts to include in the response, used for
        #   paging. If unspecified, at most 10000 accounts will be returned. The maximum
        #   value is 10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListAccounts` call. Provide
        #   this to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platform_accounts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/accounts', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::ListAccountsResponse::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::ListAccountsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up information about a sub-account for a specified creation_request_id.
        # If no account exists for the given creation_request_id, returns 404.
        # @param [String] parent
        #   Required. Platform who parents the account. Format: platforms/`platform`
        # @param [String] creation_request_id
        #   Optional. The creation_request_id provided when calling createAccount.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::LookupAccountResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::LookupAccountResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_platform_account(parent, creation_request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/accounts:lookup', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::LookupAccountResponse::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::LookupAccountResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['creationRequestId'] = creation_request_id unless creation_request_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an account event.
        # @param [String] parent
        #   Required. Account to log events about. Format: platforms/`platform`/accounts/`
        #   account`
        # @param [Google::Apis::AdsenseplatformV1alpha::Event] event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::Event] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::Event]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_platform_account_event(parent, event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/events', options)
          command.request_representation = Google::Apis::AdsenseplatformV1alpha::Event::Representation
          command.request_object = event_object
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::Event::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::Event
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a site for a specified account.
        # @param [String] parent
        #   Required. Account to create site. Format: platforms/`platform`/accounts/`
        #   account_id`
        # @param [Google::Apis::AdsenseplatformV1alpha::Site] site_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_platform_account_site(parent, site_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sites', options)
          command.request_representation = Google::Apis::AdsenseplatformV1alpha::Site::Representation
          command.request_object = site_object
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::Site::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::Site
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a site from a specified account.
        # @param [String] name
        #   Required. The name of the site to delete. Format: platforms/`platform`/
        #   accounts/`account`/sites/`site`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_platform_account_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::Empty::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a site from a specified sub-account.
        # @param [String] name
        #   Required. The name of the site to retrieve. Format: platforms/`platform`/
        #   accounts/`account`/sites/`site`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_platform_account_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::Site::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::Site
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists sites for a specific account.
        # @param [String] parent
        #   Required. The account which owns the sites. Format: platforms/`platform`/
        #   accounts/`account`
        # @param [Fixnum] page_size
        #   The maximum number of sites to include in the response, used for paging. If
        #   unspecified, at most 10000 sites will be returned. The maximum value is 10000;
        #   values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListSites` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListSites` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::ListSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::ListSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_platform_account_sites(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sites', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::ListSitesResponse::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::ListSitesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests the review of a site. The site should be in REQUIRES_REVIEW or
        # NEEDS_ATTENTION state. Note: Make sure you place an [ad tag](https://
        # developers.google.com/adsense/platforms/direct/ad-tags) on your site before
        # requesting a review.
        # @param [String] name
        #   Required. The name of the site to submit for review. Format: platforms/`
        #   platform`/accounts/`account`/sites/`site`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseplatformV1alpha::RequestSiteReviewResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseplatformV1alpha::RequestSiteReviewResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def request_platform_account_site_review(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:requestReview', options)
          command.response_representation = Google::Apis::AdsenseplatformV1alpha::RequestSiteReviewResponse::Representation
          command.response_class = Google::Apis::AdsenseplatformV1alpha::RequestSiteReviewResponse
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
