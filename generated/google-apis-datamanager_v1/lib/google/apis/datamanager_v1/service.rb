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
    module DatamanagerV1
      # Data Manager API
      #
      # A unified ingestion API for data partners, agencies and advertisers to connect
      #  first-party data across Google advertising products.
      #
      # @example
      #    require 'google/apis/datamanager_v1'
      #
      #    Datamanager = Google::Apis::DatamanagerV1 # Alias the module
      #    service = Datamanager::DataManagerService.new
      #
      # @see https://developers.google.com/data-manager
      class DataManagerService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://datamanager.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-datamanager_v1',
                client_version: Google::Apis::DatamanagerV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Retrieves marketing data insights for a given user list. This feature is only
        # available to data partners. Authorization Headers: This method supports the
        # following optional headers to define how the API authorizes access for the
        # request: * `login-account`: (Optional) The resource name of the account where
        # the Google Account of the credentials is a user. If not set, defaults to the
        # account of the request. Format: `accountTypes/`loginAccountType`/accounts/`
        # loginAccountId`` * `linked-account`: (Optional) The resource name of the
        # account with an established product link to the `login-account`. Format: `
        # accountTypes/`linkedAccountType`/accounts/`linkedAccountId``
        # @param [String] parent
        #   Required. The parent account that owns the user list. Format: `accountTypes/`
        #   account_type`/accounts/`account``
        # @param [Google::Apis::DatamanagerV1::RetrieveInsightsRequest] retrieve_insights_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::RetrieveInsightsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::RetrieveInsightsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_insights(parent, retrieve_insights_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/insights:retrieve', options)
          command.request_representation = Google::Apis::DatamanagerV1::RetrieveInsightsRequest::Representation
          command.request_object = retrieve_insights_request_object
          command.response_representation = Google::Apis::DatamanagerV1::RetrieveInsightsResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::RetrieveInsightsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a partner link for the given account. Authorization Headers: This
        # method supports the following optional headers to define how the API
        # authorizes access for the request: * `login-account`: (Optional) The resource
        # name of the account where the Google Account of the credentials is a user. If
        # not set, defaults to the account of the request. Format: `accountTypes/`
        # loginAccountType`/accounts/`loginAccountId`` * `linked-account`: (Optional)
        # The resource name of the account with an established product link to the `
        # login-account`. Format: `accountTypes/`linkedAccountType`/accounts/`
        # linkedAccountId``
        # @param [String] parent
        #   Required. The parent, which owns this collection of partner links. Format:
        #   accountTypes/`account_type`/accounts/`account`
        # @param [Google::Apis::DatamanagerV1::PartnerLink] partner_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::PartnerLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::PartnerLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_type_account_partner_link(parent, partner_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/partnerLinks', options)
          command.request_representation = Google::Apis::DatamanagerV1::PartnerLink::Representation
          command.request_object = partner_link_object
          command.response_representation = Google::Apis::DatamanagerV1::PartnerLink::Representation
          command.response_class = Google::Apis::DatamanagerV1::PartnerLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a partner link for the given account. Authorization Headers: This
        # method supports the following optional headers to define how the API
        # authorizes access for the request: * `login-account`: (Optional) The resource
        # name of the account where the Google Account of the credentials is a user. If
        # not set, defaults to the account of the request. Format: `accountTypes/`
        # loginAccountType`/accounts/`loginAccountId`` * `linked-account`: (Optional)
        # The resource name of the account with an established product link to the `
        # login-account`. Format: `accountTypes/`linkedAccountType`/accounts/`
        # linkedAccountId``
        # @param [String] name
        #   Required. The resource name of the partner link to delete. Format:
        #   accountTypes/`account_type`/accounts/`account`/partnerLinks/`partner_link`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_type_account_partner_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamanagerV1::Empty::Representation
          command.response_class = Google::Apis::DatamanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches for all partner links to and from a given account. Authorization
        # Headers: This method supports the following optional headers to define how the
        # API authorizes access for the request: * `login-account`: (Optional) The
        # resource name of the account where the Google Account of the credentials is a
        # user. If not set, defaults to the account of the request. Format: `
        # accountTypes/`loginAccountType`/accounts/`loginAccountId`` * `linked-account`:
        # (Optional) The resource name of the account with an established product link
        # to the `login-account`. Format: `accountTypes/`linkedAccountType`/accounts/`
        # linkedAccountId``
        # @param [String] parent
        #   Required. Account to search for partner links. If no `filter` is specified,
        #   all partner links where this account is either the `owning_account` or `
        #   partner_account` are returned. Format: `accountTypes/`account_type`/accounts/`
        #   account``
        # @param [String] filter
        #   Optional. A [filter string](//google.aip.dev/160). All fields need to be on
        #   the left hand side of each condition (for example: `partner_link_id =
        #   123456789`). Supported operations: - `AND` - `=` - `!=` Supported fields: - `
        #   partner_link_id` - `owning_account.account_type` - `owning_account.account_id`
        #   - `partner_account.account_type` - `partner_account.account_id` Example: `
        #   owning_account.account_type = "GOOGLE_ADS" AND partner_account.account_id =
        #   987654321`
        # @param [Fixnum] page_size
        #   The maximum number of partner links to return. The service may return fewer
        #   than this value. If unspecified, at most 10 partner links will be returned.
        #   The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   A page token, received from a previous `SearchPartnerLinks` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `SearchPartnerLinks` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::DatamanagerV1::SearchPartnerLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::SearchPartnerLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_account_type_account_partner_links(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/partnerLinks:search', options)
          command.response_representation = Google::Apis::DatamanagerV1::SearchPartnerLinksResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::SearchPartnerLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user list direct license. This feature is only available to data
        # partners.
        # @param [String] parent
        #   Required. The account that owns the user list being licensed. Should be in the
        #   format accountTypes/`ACCOUNT_TYPE`/accounts/`ACCOUNT_ID`
        # @param [Google::Apis::DatamanagerV1::UserListDirectLicense] user_list_direct_license_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserListDirectLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserListDirectLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_type_account_user_list_direct_license(parent, user_list_direct_license_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/userListDirectLicenses', options)
          command.request_representation = Google::Apis::DatamanagerV1::UserListDirectLicense::Representation
          command.request_object = user_list_direct_license_object
          command.response_representation = Google::Apis::DatamanagerV1::UserListDirectLicense::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserListDirectLicense
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a user list direct license. This feature is only available to data
        # partners.
        # @param [String] name
        #   Required. The resource name of the user list direct license.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserListDirectLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserListDirectLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_type_account_user_list_direct_license(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamanagerV1::UserListDirectLicense::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserListDirectLicense
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all user list direct licenses owned by the parent account. This feature
        # is only available to data partners.
        # @param [String] parent
        #   Required. The account whose licenses are being queried. Should be in the
        #   format accountTypes/`ACCOUNT_TYPE`/accounts/`ACCOUNT_ID`
        # @param [String] filter
        #   Optional. Filters to apply to the list request. All fields need to be on the
        #   left hand side of each condition (for example: user_list_id = 123). **
        #   Supported Operations:** - `AND` - `=` - `!=` - `>` - `>=` - `<` - `<=` **
        #   Unsupported Fields:** - `name` (use get method instead) - `historical_pricings`
        #   and all its subfields - `pricing.start_time` - `pricing.end_time`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of licenses to return per page. The service may
        #   return fewer than this value. If unspecified, at most 50 licenses will be
        #   returned. The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUserListDirectLicense`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListUserListDirectLicense` must match the call that
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
        # @yieldparam result [Google::Apis::DatamanagerV1::ListUserListDirectLicensesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::ListUserListDirectLicensesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_type_account_user_list_direct_licenses(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/userListDirectLicenses', options)
          command.response_representation = Google::Apis::DatamanagerV1::ListUserListDirectLicensesResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::ListUserListDirectLicensesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user list direct license. This feature is only available to data
        # partners.
        # @param [String] name
        #   Identifier. The resource name of the user list direct license.
        # @param [Google::Apis::DatamanagerV1::UserListDirectLicense] user_list_direct_license_object
        # @param [String] update_mask
        #   Optional. The list of fields to update. The special character `*` is not
        #   supported and an `INVALID_UPDATE_MASK` error will be thrown if used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserListDirectLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserListDirectLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_type_account_user_list_direct_license(name, user_list_direct_license_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatamanagerV1::UserListDirectLicense::Representation
          command.request_object = user_list_direct_license_object
          command.response_representation = Google::Apis::DatamanagerV1::UserListDirectLicense::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserListDirectLicense
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user list global license. This feature is only available to data
        # partners.
        # @param [String] parent
        #   Required. The account that owns the user list being licensed. Should be in the
        #   format accountTypes/`ACCOUNT_TYPE`/accounts/`ACCOUNT_ID`
        # @param [Google::Apis::DatamanagerV1::UserListGlobalLicense] user_list_global_license_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserListGlobalLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserListGlobalLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_type_account_user_list_global_license(parent, user_list_global_license_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/userListGlobalLicenses', options)
          command.request_representation = Google::Apis::DatamanagerV1::UserListGlobalLicense::Representation
          command.request_object = user_list_global_license_object
          command.response_representation = Google::Apis::DatamanagerV1::UserListGlobalLicense::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserListGlobalLicense
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a user list global license. This feature is only available to data
        # partners.
        # @param [String] name
        #   Required. The resource name of the user list global license.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserListGlobalLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserListGlobalLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_type_account_user_list_global_license(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamanagerV1::UserListGlobalLicense::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserListGlobalLicense
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all user list global licenses owned by the parent account. This feature
        # is only available to data partners.
        # @param [String] parent
        #   Required. The account whose licenses are being queried. Should be in the
        #   format accountTypes/`ACCOUNT_TYPE`/accounts/`ACCOUNT_ID`
        # @param [String] filter
        #   Optional. Filters to apply to the list request. All fields need to be on the
        #   left hand side of each condition (for example: user_list_id = 123). **
        #   Supported Operations:** - `AND` - `=` - `!=` - `>` - `>=` - `<` - `<=` **
        #   Unsupported Fields:** - `name` (use get method instead) - `historical_pricings`
        #   and all its subfields - `pricing.start_time` - `pricing.end_time`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of licenses to return. The service may return
        #   fewer than this value. If unspecified, at most 50 licenses will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUserListGlobalLicense`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListUserListDirectLicense` must match the call that
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
        # @yieldparam result [Google::Apis::DatamanagerV1::ListUserListGlobalLicensesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::ListUserListGlobalLicensesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_type_account_user_list_global_licenses(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/userListGlobalLicenses', options)
          command.response_representation = Google::Apis::DatamanagerV1::ListUserListGlobalLicensesResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::ListUserListGlobalLicensesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user list global license. This feature is only available to data
        # partners.
        # @param [String] name
        #   Identifier. The resource name of the user list global license.
        # @param [Google::Apis::DatamanagerV1::UserListGlobalLicense] user_list_global_license_object
        # @param [String] update_mask
        #   Optional. The list of fields to update. The special character `*` is not
        #   supported and an `INVALID_UPDATE_MASK` error will be thrown if used.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserListGlobalLicense] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserListGlobalLicense]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_type_account_user_list_global_license(name, user_list_global_license_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatamanagerV1::UserListGlobalLicense::Representation
          command.request_object = user_list_global_license_object
          command.response_representation = Google::Apis::DatamanagerV1::UserListGlobalLicense::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserListGlobalLicense
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all customer info for a user list global license. This feature is only
        # available to data partners.
        # @param [String] parent
        #   Required. The global license whose customer info are being queried. Should be
        #   in the format `accountTypes/`ACCOUNT_TYPE`/accounts/`ACCOUNT_ID`/
        #   userListGlobalLicenses/`USER_LIST_GLOBAL_LICENSE_ID``. To list all global
        #   license customer info under an account, replace the user list global license
        #   id with a '-' (for example, `accountTypes/DATA_PARTNER/accounts/123/
        #   userListGlobalLicenses/-`)
        # @param [String] filter
        #   Optional. Filters to apply to the list request. All fields need to be on the
        #   left hand side of each condition (for example: user_list_id = 123). **
        #   Supported Operations:** - `AND` - `=` - `!=` - `>` - `>=` - `<` - `<=` **
        #   Unsupported Fields:** - `name` (use get method instead) - `historical_pricings`
        #   and all its subfields - `pricing.start_time` - `pricing.end_time`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of licenses to return. The service may return
        #   fewer than this value. If unspecified, at most 50 licenses will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUserListDirectLicense`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListUserListDirectLicense` must match the call that
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
        # @yieldparam result [Google::Apis::DatamanagerV1::ListUserListGlobalLicenseCustomerInfosResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::ListUserListGlobalLicenseCustomerInfosResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_type_account_user_list_global_license_user_list_global_license_customer_infos(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/userListGlobalLicenseCustomerInfos', options)
          command.response_representation = Google::Apis::DatamanagerV1::ListUserListGlobalLicenseCustomerInfosResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::ListUserListGlobalLicenseCustomerInfosResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a UserList. Authorization Headers: This method supports the following
        # optional headers to define how the API authorizes access for the request: * `
        # login-account`: (Optional) The resource name of the account where the Google
        # Account of the credentials is a user. If not set, defaults to the account of
        # the request. Format: `accountTypes/`loginAccountType`/accounts/`loginAccountId`
        # ` * `linked-account`: (Optional) The resource name of the account with an
        # established product link to the `login-account`. Format: `accountTypes/`
        # linkedAccountType`/accounts/`linkedAccountId``
        # @param [String] parent
        #   Required. The parent account where this user list will be created. Format:
        #   accountTypes/`account_type`/accounts/`account`
        # @param [Google::Apis::DatamanagerV1::UserList] user_list_object
        # @param [Boolean] validate_only
        #   Optional. If true, the request is validated but not executed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_type_account_user_list(parent, user_list_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/userLists', options)
          command.request_representation = Google::Apis::DatamanagerV1::UserList::Representation
          command.request_object = user_list_object
          command.response_representation = Google::Apis::DatamanagerV1::UserList::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserList
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a UserList. Authorization Headers: This method supports the following
        # optional headers to define how the API authorizes access for the request: * `
        # login-account`: (Optional) The resource name of the account where the Google
        # Account of the credentials is a user. If not set, defaults to the account of
        # the request. Format: `accountTypes/`loginAccountType`/accounts/`loginAccountId`
        # ` * `linked-account`: (Optional) The resource name of the account with an
        # established product link to the `login-account`. Format: `accountTypes/`
        # linkedAccountType`/accounts/`linkedAccountId``
        # @param [String] name
        #   Required. The name of the user list to delete. Format: accountTypes/`
        #   account_type`/accounts/`account`/userLists/`user_list`
        # @param [Boolean] validate_only
        #   Optional. If true, the request is validated but not executed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_type_account_user_list(name, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamanagerV1::Empty::Representation
          command.response_class = Google::Apis::DatamanagerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a UserList. Authorization Headers: This method supports the following
        # optional headers to define how the API authorizes access for the request: * `
        # login-account`: (Optional) The resource name of the account where the Google
        # Account of the credentials is a user. If not set, defaults to the account of
        # the request. Format: `accountTypes/`loginAccountType`/accounts/`loginAccountId`
        # ` * `linked-account`: (Optional) The resource name of the account with an
        # established product link to the `login-account`. Format: `accountTypes/`
        # linkedAccountType`/accounts/`linkedAccountId``
        # @param [String] name
        #   Required. The resource name of the UserList to retrieve. Format: accountTypes/`
        #   account_type`/accounts/`account`/userLists/`user_list`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_type_account_user_list(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::DatamanagerV1::UserList::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserList
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists UserLists. Authorization Headers: This method supports the following
        # optional headers to define how the API authorizes access for the request: * `
        # login-account`: (Optional) The resource name of the account where the Google
        # Account of the credentials is a user. If not set, defaults to the account of
        # the request. Format: `accountTypes/`loginAccountType`/accounts/`loginAccountId`
        # ` * `linked-account`: (Optional) The resource name of the account with an
        # established product link to the `login-account`. Format: `accountTypes/`
        # linkedAccountType`/accounts/`linkedAccountId``
        # @param [String] parent
        #   Required. The parent account which owns this collection of user lists. Format:
        #   accountTypes/`account_type`/accounts/`account`
        # @param [String] filter
        #   Optional. A [filter string](//google.aip.dev/160). All fields need to be on
        #   the left hand side of each condition (for example: `display_name = "list 1"`).
        #   Supported operations: - `AND` - `=` - `!=` - `>` - `>=` - `<` - `<=` - `:` (
        #   has) Supported fields: - `id` - `display_name` - `description` - `
        #   membership_status` - `integration_code` - `access_reason` - `
        #   ingested_user_list_info.upload_key_types`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of user lists to return. The service may return
        #   fewer than this value. If unspecified, at most 50 user lists will be returned.
        #   The maximum value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListUserLists` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListUserLists` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::ListUserListsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::ListUserListsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_type_account_user_lists(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/userLists', options)
          command.response_representation = Google::Apis::DatamanagerV1::ListUserListsResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::ListUserListsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a UserList. Authorization Headers: This method supports the following
        # optional headers to define how the API authorizes access for the request: * `
        # login-account`: (Optional) The resource name of the account where the Google
        # Account of the credentials is a user. If not set, defaults to the account of
        # the request. Format: `accountTypes/`loginAccountType`/accounts/`loginAccountId`
        # ` * `linked-account`: (Optional) The resource name of the account with an
        # established product link to the `login-account`. Format: `accountTypes/`
        # linkedAccountType`/accounts/`linkedAccountId``
        # @param [String] name
        #   Identifier. The resource name of the user list. Format: accountTypes/`
        #   account_type`/accounts/`account`/userLists/`user_list`
        # @param [Google::Apis::DatamanagerV1::UserList] user_list_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [Boolean] validate_only
        #   Optional. If true, the request is validated but not executed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_type_account_user_list(name, user_list_object = nil, update_mask: nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::DatamanagerV1::UserList::Representation
          command.request_object = user_list_object
          command.response_representation = Google::Apis::DatamanagerV1::UserList::Representation
          command.response_class = Google::Apis::DatamanagerV1::UserList
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a list of AudienceMember resources to the provided Destination.
        # @param [Google::Apis::DatamanagerV1::IngestAudienceMembersRequest] ingest_audience_members_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::IngestAudienceMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::IngestAudienceMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_audience_members(ingest_audience_members_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/audienceMembers:ingest', options)
          command.request_representation = Google::Apis::DatamanagerV1::IngestAudienceMembersRequest::Representation
          command.request_object = ingest_audience_members_request_object
          command.response_representation = Google::Apis::DatamanagerV1::IngestAudienceMembersResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::IngestAudienceMembersResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes a list of AudienceMember resources from the provided Destination.
        # @param [Google::Apis::DatamanagerV1::RemoveAudienceMembersRequest] remove_audience_members_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_audience_members(remove_audience_members_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/audienceMembers:remove', options)
          command.request_representation = Google::Apis::DatamanagerV1::RemoveAudienceMembersRequest::Representation
          command.request_object = remove_audience_members_request_object
          command.response_representation = Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::RemoveAudienceMembersResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Uploads a list of Event resources from the provided Destination.
        # @param [Google::Apis::DatamanagerV1::IngestEventsRequest] ingest_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::IngestEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::IngestEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def ingest_events(ingest_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/events:ingest', options)
          command.request_representation = Google::Apis::DatamanagerV1::IngestEventsRequest::Representation
          command.request_object = ingest_events_request_object
          command.response_representation = Google::Apis::DatamanagerV1::IngestEventsResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::IngestEventsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the status of a request given request id.
        # @param [String] request_id
        #   Required. Required. The request ID of the Data Manager API request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def retrieve_request_status(request_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/requestStatus:retrieve', options)
          command.response_representation = Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse::Representation
          command.response_class = Google::Apis::DatamanagerV1::RetrieveRequestStatusResponse
          command.query['requestId'] = request_id unless request_id.nil?
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
