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
    module AdsenseV2
      # AdSense Management API
      #
      # The AdSense Management API allows publishers to access their inventory and run
      #  earnings and performance reports.
      #
      # @example
      #    require 'google/apis/adsense_v2'
      #
      #    Adsense = Google::Apis::AdsenseV2 # Alias the module
      #    service = Adsense::AdsenseService.new
      #
      # @see https://developers.google.com/adsense/management/
      class AdsenseService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://adsense.googleapis.com/', '',
                client_name: 'google-apis-adsense_v2',
                client_version: Google::Apis::AdsenseV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets information about the selected AdSense account.
        # @param [String] name
        #   Required. Account to get information about. Format: accounts/`account`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::AdsenseV2::Account::Representation
          command.response_class = Google::Apis::AdsenseV2::Account
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the ad blocking recovery tag of an account.
        # @param [String] name
        #   Required. The name of the account to get the tag for. Format: accounts/`
        #   account`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::AdBlockingRecoveryTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::AdBlockingRecoveryTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_ad_blocking_recovery_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/adBlockingRecoveryTag', options)
          command.response_representation = Google::Apis::AdsenseV2::AdBlockingRecoveryTag::Representation
          command.response_class = Google::Apis::AdsenseV2::AdBlockingRecoveryTag
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all accounts available to this user.
        # @param [Fixnum] page_size
        #   The maximum number of accounts to include in the response, used for paging. If
        #   unspecified, at most 10000 accounts will be returned. The maximum value is
        #   10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAccounts` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAccounts` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/accounts', options)
          command.response_representation = Google::Apis::AdsenseV2::ListAccountsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListAccountsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all accounts directly managed by the given AdSense account.
        # @param [String] parent
        #   Required. The parent account, which owns the child accounts. Format: accounts/`
        #   account`
        # @param [Fixnum] page_size
        #   The maximum number of accounts to include in the response, used for paging. If
        #   unspecified, at most 10000 accounts will be returned. The maximum value is
        #   10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAccounts` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAccounts` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListChildAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListChildAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_child_accounts(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}:listChildAccounts', options)
          command.response_representation = Google::Apis::AdsenseV2::ListChildAccountsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListChildAccountsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the ad client from the given resource name.
        # @param [String] name
        #   Required. The name of the ad client to retrieve. Format: accounts/`account`/
        #   adclients/`adclient`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::AdClient] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::AdClient]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_adclient(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::AdsenseV2::AdClient::Representation
          command.response_class = Google::Apis::AdsenseV2::AdClient
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the AdSense code for a given ad client. This returns what was previously
        # known as the 'auto ad code'. This is only supported for ad clients with a
        # product_code of AFC. For more information, see [About the AdSense code](https:/
        # /support.google.com/adsense/answer/9274634).
        # @param [String] name
        #   Required. Name of the ad client for which to get the adcode. Format: accounts/`
        #   account`/adclients/`adclient`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::AdClientAdCode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::AdClientAdCode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_adclient_adcode(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/adcode', options)
          command.response_representation = Google::Apis::AdsenseV2::AdClientAdCode::Representation
          command.response_class = Google::Apis::AdsenseV2::AdClientAdCode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the ad clients available in an account.
        # @param [String] parent
        #   Required. The account which owns the collection of ad clients. Format:
        #   accounts/`account`
        # @param [Fixnum] page_size
        #   The maximum number of ad clients to include in the response, used for paging.
        #   If unspecified, at most 10000 ad clients will be returned. The maximum value
        #   is 10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAdClients` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAdClients` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListAdClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListAdClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adclients(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/adclients', options)
          command.response_representation = Google::Apis::AdsenseV2::ListAdClientsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListAdClientsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an ad unit. This method can only be used by projects enabled for the [
        # AdSense for Platforms](https://developers.google.com/adsense/platforms/)
        # product. Note that ad units can only be created for ad clients with an "AFC"
        # product code. For more info see the [AdClient resource](/adsense/management/
        # reference/rest/v2/accounts.adclients). For now, this method can only be used
        # to create `DISPLAY` ad units. See: https://support.google.com/adsense/answer/
        # 9183566
        # @param [String] parent
        #   Required. Ad client to create an ad unit under. Format: accounts/`account`/
        #   adclients/`adclient`
        # @param [Google::Apis::AdsenseV2::AdUnit] ad_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::AdUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::AdUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_adclient_adunit(parent, ad_unit_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/adunits', options)
          command.request_representation = Google::Apis::AdsenseV2::AdUnit::Representation
          command.request_object = ad_unit_object
          command.response_representation = Google::Apis::AdsenseV2::AdUnit::Representation
          command.response_class = Google::Apis::AdsenseV2::AdUnit
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an ad unit from a specified account and ad client.
        # @param [String] name
        #   Required. AdUnit to get information about. Format: accounts/`account`/
        #   adclients/`adclient`/adunits/`adunit`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::AdUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::AdUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_adclient_adunit(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::AdsenseV2::AdUnit::Representation
          command.response_class = Google::Apis::AdsenseV2::AdUnit
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the ad unit code for a given ad unit. For more information, see [About
        # the AdSense code](https://support.google.com/adsense/answer/9274634) and [
        # Where to place the ad code in your HTML](https://support.google.com/adsense/
        # answer/9190028).
        # @param [String] name
        #   Required. Name of the adunit for which to get the adcode. Format: accounts/`
        #   account`/adclients/`adclient`/adunits/`adunit`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::AdUnitAdCode] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::AdUnitAdCode]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_adclient_adunit_adcode(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/adcode', options)
          command.response_representation = Google::Apis::AdsenseV2::AdUnitAdCode::Representation
          command.response_class = Google::Apis::AdsenseV2::AdUnitAdCode
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all ad units under a specified account and ad client.
        # @param [String] parent
        #   Required. The ad client which owns the collection of ad units. Format:
        #   accounts/`account`/adclients/`adclient`
        # @param [Fixnum] page_size
        #   The maximum number of ad units to include in the response, used for paging. If
        #   unspecified, at most 10000 ad units will be returned. The maximum value is
        #   10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAdUnits` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAdUnits` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListAdUnitsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListAdUnitsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adclient_adunits(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/adunits', options)
          command.response_representation = Google::Apis::AdsenseV2::ListAdUnitsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListAdUnitsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the custom channels available for an ad unit.
        # @param [String] parent
        #   Required. The ad unit which owns the collection of custom channels. Format:
        #   accounts/`account`/adclients/`adclient`/adunits/`adunit`
        # @param [Fixnum] page_size
        #   The maximum number of custom channels to include in the response, used for
        #   paging. If unspecified, at most 10000 custom channels will be returned. The
        #   maximum value is 10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListLinkedCustomChannels` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListLinkedCustomChannels` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListLinkedCustomChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListLinkedCustomChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adclient_adunit_linked_custom_channels(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}:listLinkedCustomChannels', options)
          command.response_representation = Google::Apis::AdsenseV2::ListLinkedCustomChannelsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListLinkedCustomChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an ad unit. This method can only be used by projects enabled for the [
        # AdSense for Platforms](https://developers.google.com/adsense/platforms/)
        # product. For now, this method can only be used to update `DISPLAY` ad units.
        # See: https://support.google.com/adsense/answer/9183566
        # @param [String] name
        #   Output only. Resource name of the ad unit. Format: accounts/`account`/
        #   adclients/`adclient`/adunits/`adunit`
        # @param [Google::Apis::AdsenseV2::AdUnit] ad_unit_object
        # @param [String] update_mask
        #   The list of fields to update. If empty, a full update is performed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::AdUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::AdUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_adclient_adunit(name, ad_unit_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::AdsenseV2::AdUnit::Representation
          command.request_object = ad_unit_object
          command.response_representation = Google::Apis::AdsenseV2::AdUnit::Representation
          command.response_class = Google::Apis::AdsenseV2::AdUnit
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a custom channel. This method can only be used by projects enabled for
        # the [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
        # product.
        # @param [String] parent
        #   Required. The ad client to create a custom channel under. Format: accounts/`
        #   account`/adclients/`adclient`
        # @param [Google::Apis::AdsenseV2::CustomChannel] custom_channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::CustomChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::CustomChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_adclient_customchannel(parent, custom_channel_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/customchannels', options)
          command.request_representation = Google::Apis::AdsenseV2::CustomChannel::Representation
          command.request_object = custom_channel_object
          command.response_representation = Google::Apis::AdsenseV2::CustomChannel::Representation
          command.response_class = Google::Apis::AdsenseV2::CustomChannel
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a custom channel. This method can only be used by projects enabled for
        # the [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
        # product.
        # @param [String] name
        #   Required. Name of the custom channel to delete. Format: accounts/`account`/
        #   adclients/`adclient`/customchannels/`customchannel`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_adclient_customchannel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::AdsenseV2::Empty::Representation
          command.response_class = Google::Apis::AdsenseV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about the selected custom channel.
        # @param [String] name
        #   Required. Name of the custom channel. Format: accounts/`account`/adclients/`
        #   adclient`/customchannels/`customchannel`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::CustomChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::CustomChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_adclient_customchannel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::AdsenseV2::CustomChannel::Representation
          command.response_class = Google::Apis::AdsenseV2::CustomChannel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the custom channels available in an ad client.
        # @param [String] parent
        #   Required. The ad client which owns the collection of custom channels. Format:
        #   accounts/`account`/adclients/`adclient`
        # @param [Fixnum] page_size
        #   The maximum number of custom channels to include in the response, used for
        #   paging. If unspecified, at most 10000 custom channels will be returned. The
        #   maximum value is 10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListCustomChannels` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListCustomChannels` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListCustomChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListCustomChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adclient_customchannels(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/customchannels', options)
          command.response_representation = Google::Apis::AdsenseV2::ListCustomChannelsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListCustomChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the ad units available for a custom channel.
        # @param [String] parent
        #   Required. The custom channel which owns the collection of ad units. Format:
        #   accounts/`account`/adclients/`adclient`/customchannels/`customchannel`
        # @param [Fixnum] page_size
        #   The maximum number of ad units to include in the response, used for paging. If
        #   unspecified, at most 10000 ad units will be returned. The maximum value is
        #   10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListLinkedAdUnits` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListLinkedAdUnits` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListLinkedAdUnitsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListLinkedAdUnitsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adclient_customchannel_linked_ad_units(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}:listLinkedAdUnits', options)
          command.response_representation = Google::Apis::AdsenseV2::ListLinkedAdUnitsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListLinkedAdUnitsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a custom channel. This method can only be used by projects enabled for
        # the [AdSense for Platforms](https://developers.google.com/adsense/platforms/)
        # product.
        # @param [String] name
        #   Output only. Resource name of the custom channel. Format: accounts/`account`/
        #   adclients/`adclient`/customchannels/`customchannel`
        # @param [Google::Apis::AdsenseV2::CustomChannel] custom_channel_object
        # @param [String] update_mask
        #   The list of fields to update. If empty, a full update is performed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::CustomChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::CustomChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_adclient_customchannel(name, custom_channel_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::AdsenseV2::CustomChannel::Representation
          command.request_object = custom_channel_object
          command.response_representation = Google::Apis::AdsenseV2::CustomChannel::Representation
          command.response_class = Google::Apis::AdsenseV2::CustomChannel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about the selected url channel.
        # @param [String] name
        #   Required. The name of the url channel to retrieve. Format: accounts/`account`/
        #   adclients/`adclient`/urlchannels/`urlchannel`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::UrlChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::UrlChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_adclient_urlchannel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::AdsenseV2::UrlChannel::Representation
          command.response_class = Google::Apis::AdsenseV2::UrlChannel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists active url channels.
        # @param [String] parent
        #   Required. The ad client which owns the collection of url channels. Format:
        #   accounts/`account`/adclients/`adclient`
        # @param [Fixnum] page_size
        #   The maximum number of url channels to include in the response, used for paging.
        #   If unspecified, at most 10000 url channels will be returned. The maximum
        #   value is 10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListUrlChannels` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListUrlChannels` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListUrlChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListUrlChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_adclient_urlchannels(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/urlchannels', options)
          command.response_representation = Google::Apis::AdsenseV2::ListUrlChannelsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListUrlChannelsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the alerts available in an account.
        # @param [String] parent
        #   Required. The account which owns the collection of alerts. Format: accounts/`
        #   account`
        # @param [String] language_code
        #   The language to use for translating alert messages. If unspecified, this
        #   defaults to the user's display language. If the given language is not
        #   supported, alerts will be returned in English. The language is specified as an
        #   [IETF BCP-47 language code](https://en.wikipedia.org/wiki/IETF_language_tag).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListAlertsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListAlertsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_alerts(parent, language_code: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/alerts', options)
          command.response_representation = Google::Apis::AdsenseV2::ListAlertsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListAlertsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the payments available for an account.
        # @param [String] parent
        #   Required. The account which owns the collection of payments. Format: accounts/`
        #   account`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListPaymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListPaymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_payments(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/payments', options)
          command.response_representation = Google::Apis::AdsenseV2::ListPaymentsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListPaymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an ad hoc report.
        # @param [String] account
        #   Required. The account which owns the collection of reports. Format: accounts/`
        #   account`
        # @param [String] currency_code
        #   The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use
        #   when reporting on monetary metrics. Defaults to the account's currency if not
        #   set.
        # @param [String] date_range
        #   Date range of the report, if unset the range will be considered CUSTOM.
        # @param [Array<String>, String] dimensions
        #   Dimensions to base the report on.
        # @param [Fixnum] end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Array<String>, String] filters
        #   A list of [filters](/adsense/management/reporting/filtering) to apply to the
        #   report. All provided filters must match in order for the data to be included
        #   in the report.
        # @param [String] language_code
        #   The language to use for translating report output. If unspecified, this
        #   defaults to English ("en"). If the given language is not supported, report
        #   output will be returned in English. The language is specified as an [IETF BCP-
        #   47 language code](https://en.wikipedia.org/wiki/IETF_language_tag).
        # @param [Fixnum] limit
        #   The maximum number of rows of report data to return. Reports producing more
        #   rows than the requested limit will be truncated. If unset, this defaults to
        #   100,000 rows for `Reports.GenerateReport` and 1,000,000 rows for `Reports.
        #   GenerateCsvReport`, which are also the maximum values permitted here. Report
        #   truncation can be identified (for `Reports.GenerateReport` only) by comparing
        #   the number of rows returned to the value returned in `total_matched_rows`.
        # @param [Array<String>, String] metrics
        #   Required. Reporting metrics.
        # @param [Array<String>, String] order_by
        #   The name of a dimension or metric to sort the resulting report on, can be
        #   prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is
        #   specified, the column is sorted ascending.
        # @param [String] reporting_time_zone
        #   Timezone in which to generate the report. If unspecified, this defaults to the
        #   account timezone. For more information, see [changing the time zone of your
        #   reports](https://support.google.com/adsense/answer/9830725).
        # @param [Fixnum] start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ReportResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ReportResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_report(account, currency_code: nil, date_range: nil, dimensions: nil, end_date_day: nil, end_date_month: nil, end_date_year: nil, filters: nil, language_code: nil, limit: nil, metrics: nil, order_by: nil, reporting_time_zone: nil, start_date_day: nil, start_date_month: nil, start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+account}/reports:generate', options)
          command.response_representation = Google::Apis::AdsenseV2::ReportResult::Representation
          command.response_class = Google::Apis::AdsenseV2::ReportResult
          command.params['account'] = account unless account.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['dateRange'] = date_range unless date_range.nil?
          command.query['dimensions'] = dimensions unless dimensions.nil?
          command.query['endDate.day'] = end_date_day unless end_date_day.nil?
          command.query['endDate.month'] = end_date_month unless end_date_month.nil?
          command.query['endDate.year'] = end_date_year unless end_date_year.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['metrics'] = metrics unless metrics.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['reportingTimeZone'] = reporting_time_zone unless reporting_time_zone.nil?
          command.query['startDate.day'] = start_date_day unless start_date_day.nil?
          command.query['startDate.month'] = start_date_month unless start_date_month.nil?
          command.query['startDate.year'] = start_date_year unless start_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a csv formatted ad hoc report.
        # @param [String] account
        #   Required. The account which owns the collection of reports. Format: accounts/`
        #   account`
        # @param [String] currency_code
        #   The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use
        #   when reporting on monetary metrics. Defaults to the account's currency if not
        #   set.
        # @param [String] date_range
        #   Date range of the report, if unset the range will be considered CUSTOM.
        # @param [Array<String>, String] dimensions
        #   Dimensions to base the report on.
        # @param [Fixnum] end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Array<String>, String] filters
        #   A list of [filters](/adsense/management/reporting/filtering) to apply to the
        #   report. All provided filters must match in order for the data to be included
        #   in the report.
        # @param [String] language_code
        #   The language to use for translating report output. If unspecified, this
        #   defaults to English ("en"). If the given language is not supported, report
        #   output will be returned in English. The language is specified as an [IETF BCP-
        #   47 language code](https://en.wikipedia.org/wiki/IETF_language_tag).
        # @param [Fixnum] limit
        #   The maximum number of rows of report data to return. Reports producing more
        #   rows than the requested limit will be truncated. If unset, this defaults to
        #   100,000 rows for `Reports.GenerateReport` and 1,000,000 rows for `Reports.
        #   GenerateCsvReport`, which are also the maximum values permitted here. Report
        #   truncation can be identified (for `Reports.GenerateReport` only) by comparing
        #   the number of rows returned to the value returned in `total_matched_rows`.
        # @param [Array<String>, String] metrics
        #   Required. Reporting metrics.
        # @param [Array<String>, String] order_by
        #   The name of a dimension or metric to sort the resulting report on, can be
        #   prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is
        #   specified, the column is sorted ascending.
        # @param [String] reporting_time_zone
        #   Timezone in which to generate the report. If unspecified, this defaults to the
        #   account timezone. For more information, see [changing the time zone of your
        #   reports](https://support.google.com/adsense/answer/9830725).
        # @param [Fixnum] start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_report_csv(account, currency_code: nil, date_range: nil, dimensions: nil, end_date_day: nil, end_date_month: nil, end_date_year: nil, filters: nil, language_code: nil, limit: nil, metrics: nil, order_by: nil, reporting_time_zone: nil, start_date_day: nil, start_date_month: nil, start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+account}/reports:generateCsv', options)
          command.response_representation = Google::Apis::AdsenseV2::HttpBody::Representation
          command.response_class = Google::Apis::AdsenseV2::HttpBody
          command.params['account'] = account unless account.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['dateRange'] = date_range unless date_range.nil?
          command.query['dimensions'] = dimensions unless dimensions.nil?
          command.query['endDate.day'] = end_date_day unless end_date_day.nil?
          command.query['endDate.month'] = end_date_month unless end_date_month.nil?
          command.query['endDate.year'] = end_date_year unless end_date_year.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['limit'] = limit unless limit.nil?
          command.query['metrics'] = metrics unless metrics.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['reportingTimeZone'] = reporting_time_zone unless reporting_time_zone.nil?
          command.query['startDate.day'] = start_date_day unless start_date_day.nil?
          command.query['startDate.month'] = start_date_month unless start_date_month.nil?
          command.query['startDate.year'] = start_date_year unless start_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the saved report from the given resource name.
        # @param [String] name
        #   Required. The name of the saved report to retrieve. Format: accounts/`account`/
        #   reports/`report`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::SavedReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::SavedReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_report_saved(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/saved', options)
          command.response_representation = Google::Apis::AdsenseV2::SavedReport::Representation
          command.response_class = Google::Apis::AdsenseV2::SavedReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a saved report.
        # @param [String] name
        #   Required. Name of the saved report. Format: accounts/`account`/reports/`report`
        # @param [String] currency_code
        #   The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use
        #   when reporting on monetary metrics. Defaults to the account's currency if not
        #   set.
        # @param [String] date_range
        #   Date range of the report, if unset the range will be considered CUSTOM.
        # @param [Fixnum] end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] language_code
        #   The language to use for translating report output. If unspecified, this
        #   defaults to English ("en"). If the given language is not supported, report
        #   output will be returned in English. The language is specified as an [IETF BCP-
        #   47 language code](https://en.wikipedia.org/wiki/IETF_language_tag).
        # @param [String] reporting_time_zone
        #   Timezone in which to generate the report. If unspecified, this defaults to the
        #   account timezone. For more information, see [changing the time zone of your
        #   reports](https://support.google.com/adsense/answer/9830725).
        # @param [Fixnum] start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ReportResult] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ReportResult]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_report_saved(name, currency_code: nil, date_range: nil, end_date_day: nil, end_date_month: nil, end_date_year: nil, language_code: nil, reporting_time_zone: nil, start_date_day: nil, start_date_month: nil, start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/saved:generate', options)
          command.response_representation = Google::Apis::AdsenseV2::ReportResult::Representation
          command.response_class = Google::Apis::AdsenseV2::ReportResult
          command.params['name'] = name unless name.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['dateRange'] = date_range unless date_range.nil?
          command.query['endDate.day'] = end_date_day unless end_date_day.nil?
          command.query['endDate.month'] = end_date_month unless end_date_month.nil?
          command.query['endDate.year'] = end_date_year unless end_date_year.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['reportingTimeZone'] = reporting_time_zone unless reporting_time_zone.nil?
          command.query['startDate.day'] = start_date_day unless start_date_day.nil?
          command.query['startDate.month'] = start_date_month unless start_date_month.nil?
          command.query['startDate.year'] = start_date_year unless start_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a csv formatted saved report.
        # @param [String] name
        #   Required. Name of the saved report. Format: accounts/`account`/reports/`report`
        # @param [String] currency_code
        #   The [ISO-4217 currency code](https://en.wikipedia.org/wiki/ISO_4217) to use
        #   when reporting on monetary metrics. Defaults to the account's currency if not
        #   set.
        # @param [String] date_range
        #   Date range of the report, if unset the range will be considered CUSTOM.
        # @param [Fixnum] end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] language_code
        #   The language to use for translating report output. If unspecified, this
        #   defaults to English ("en"). If the given language is not supported, report
        #   output will be returned in English. The language is specified as an [IETF BCP-
        #   47 language code](https://en.wikipedia.org/wiki/IETF_language_tag).
        # @param [String] reporting_time_zone
        #   Timezone in which to generate the report. If unspecified, this defaults to the
        #   account timezone. For more information, see [changing the time zone of your
        #   reports](https://support.google.com/adsense/answer/9830725).
        # @param [Fixnum] start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::HttpBody] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::HttpBody]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_report_saved_csv(name, currency_code: nil, date_range: nil, end_date_day: nil, end_date_month: nil, end_date_year: nil, language_code: nil, reporting_time_zone: nil, start_date_day: nil, start_date_month: nil, start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/saved:generateCsv', options)
          command.response_representation = Google::Apis::AdsenseV2::HttpBody::Representation
          command.response_class = Google::Apis::AdsenseV2::HttpBody
          command.params['name'] = name unless name.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['dateRange'] = date_range unless date_range.nil?
          command.query['endDate.day'] = end_date_day unless end_date_day.nil?
          command.query['endDate.month'] = end_date_month unless end_date_month.nil?
          command.query['endDate.year'] = end_date_year unless end_date_year.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['reportingTimeZone'] = reporting_time_zone unless reporting_time_zone.nil?
          command.query['startDate.day'] = start_date_day unless start_date_day.nil?
          command.query['startDate.month'] = start_date_month unless start_date_month.nil?
          command.query['startDate.year'] = start_date_year unless start_date_year.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists saved reports.
        # @param [String] parent
        #   Required. The account which owns the collection of reports. Format: accounts/`
        #   account`
        # @param [Fixnum] page_size
        #   The maximum number of reports to include in the response, used for paging. If
        #   unspecified, at most 10000 reports will be returned. The maximum value is
        #   10000; values above 10000 will be coerced to 10000.
        # @param [String] page_token
        #   A page token, received from a previous `ListPayments` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListPayments` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::ListSavedReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListSavedReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_report_saveds(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/reports/saved', options)
          command.response_representation = Google::Apis::AdsenseV2::ListSavedReportsResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListSavedReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about the selected site.
        # @param [String] name
        #   Required. Name of the site. Format: accounts/`account`/sites/`site`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdsenseV2::Site] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::Site]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_site(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::AdsenseV2::Site::Representation
          command.response_class = Google::Apis::AdsenseV2::Site
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the sites available in an account.
        # @param [String] parent
        #   Required. The account which owns the collection of sites. Format: accounts/`
        #   account`
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
        # @yieldparam result [Google::Apis::AdsenseV2::ListSitesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdsenseV2::ListSitesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_sites(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/sites', options)
          command.response_representation = Google::Apis::AdsenseV2::ListSitesResponse::Representation
          command.response_class = Google::Apis::AdsenseV2::ListSitesResponse
          command.params['parent'] = parent unless parent.nil?
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
