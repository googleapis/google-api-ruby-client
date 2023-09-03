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
    module AdmobV1beta
      # AdMob API
      #
      # The AdMob API allows publishers to programmatically get information about
      #  their AdMob account.
      #
      # @example
      #    require 'google/apis/admob_v1beta'
      #
      #    Admob = Google::Apis::AdmobV1beta # Alias the module
      #    service = Admob::AdMobService.new
      #
      # @see https://developers.google.com/admob/api/
      class AdMobService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://admob.googleapis.com/', '',
                client_name: 'google-apis-admob_v1beta',
                client_version: Google::Apis::AdmobV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Gets information about the specified AdMob publisher account.
        # @param [String] name
        #   Resource name of the publisher account to retrieve. Example: accounts/pub-
        #   9876543210987654
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::PublisherAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::PublisherAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AdmobV1beta::PublisherAccount::Representation
          command.response_class = Google::Apis::AdmobV1beta::PublisherAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the AdMob publisher account that was most recently signed in to from the
        # AdMob UI. For more information, see https://support.google.com/admob/answer/
        # 10243672.
        # @param [Fixnum] page_size
        #   Maximum number of accounts to return.
        # @param [String] page_token
        #   The value returned by the last `ListPublisherAccountsResponse`; indicates that
        #   this is a continuation of a prior `ListPublisherAccounts` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::ListPublisherAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::ListPublisherAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/accounts', options)
          command.response_representation = Google::Apis::AdmobV1beta::ListPublisherAccountsResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::ListPublisherAccountsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the ad sources.
        # @param [String] parent
        #   Required. The parent which owns this collection of ad sources. Format:
        #   accounts/`publisher_id`
        # @param [Fixnum] page_size
        #   The maximum number of ad sources to return. If unspecified or 0, at most 10,
        #   000 ad sources will be returned. The maximum value is 20,000; values above 10,
        #   000 will be coerced to 20,000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAdSources` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::ListAdSourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::ListAdSourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_ad_sources(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/adSources', options)
          command.response_representation = Google::Apis::AdmobV1beta::ListAdSourcesResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::ListAdSourcesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the adapters of the ad source.
        # @param [String] parent
        #   Required. The parent which owns this collection of adapters. Format: accounts/`
        #   publisher_id`/adSources/`ad_source_id`
        # @param [Fixnum] page_size
        #   The maximum number of adapters to return. If unspecified or 0, at most 10,000
        #   adapters will be returned. The maximum value is 20,000; values above 20,000
        #   will be coerced to 20,000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAdapters` call. Provide this to
        #   retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::ListAdaptersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::ListAdaptersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_ad_source_adapters(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/adapters', options)
          command.response_representation = Google::Apis::AdmobV1beta::ListAdaptersResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::ListAdaptersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch create the ad unit mappings under the specific AdMob account. The
        # maximum allowed batch size is 100.
        # @param [String] parent
        #   Required. The AdMob account which owns this collection of ad unit mappings.
        #   Format: accounts/`publisher_id` See https://support.google.com/admob/answer/
        #   2784578 for instructions on how to find your AdMob publisher ID.
        # @param [Google::Apis::AdmobV1beta::BatchCreateAdUnitMappingsRequest] batch_create_ad_unit_mappings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::BatchCreateAdUnitMappingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::BatchCreateAdUnitMappingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_create_ad_unit_mappings(parent, batch_create_ad_unit_mappings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/adUnitMappings:batchCreate', options)
          command.request_representation = Google::Apis::AdmobV1beta::BatchCreateAdUnitMappingsRequest::Representation
          command.request_object = batch_create_ad_unit_mappings_request_object
          command.response_representation = Google::Apis::AdmobV1beta::BatchCreateAdUnitMappingsResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::BatchCreateAdUnitMappingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an ad unit under the specified AdMob account.
        # @param [String] parent
        #   Required. Resource name of the account to create the specified ad unit for.
        #   Example: accounts/pub-9876543210987654
        # @param [Google::Apis::AdmobV1beta::AdUnit] ad_unit_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::AdUnit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::AdUnit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_ad_unit(parent, ad_unit_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/adUnits', options)
          command.request_representation = Google::Apis::AdmobV1beta::AdUnit::Representation
          command.request_object = ad_unit_object
          command.response_representation = Google::Apis::AdmobV1beta::AdUnit::Representation
          command.response_class = Google::Apis::AdmobV1beta::AdUnit
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the ad units under the specified AdMob account.
        # @param [String] parent
        #   Required. Resource name of the account to list ad units for. Example: accounts/
        #   pub-9876543210987654
        # @param [Fixnum] page_size
        #   The maximum number of ad units to return. If unspecified or 0, at most 10,000
        #   ad units will be returned. The maximum value is 20,000; values above 20,000
        #   will be coerced to 20,000.
        # @param [String] page_token
        #   The value returned by the last `ListAdUnitsResponse`; indicates that this is a
        #   continuation of a prior `ListAdUnits` call, and that the system should return
        #   the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::ListAdUnitsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::ListAdUnitsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_ad_units(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/adUnits', options)
          command.response_representation = Google::Apis::AdmobV1beta::ListAdUnitsResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::ListAdUnitsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an ad unit mapping under the specific AdMob account and ad unit.
        # @param [String] parent
        #   Required. The parent which owns the ad unit mapping. Format: accounts/`
        #   publisher_id`/adUnits/`ad_unit_id`
        # @param [Google::Apis::AdmobV1beta::AdUnitMapping] ad_unit_mapping_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::AdUnitMapping] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::AdUnitMapping]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_ad_unit_ad_unit_mapping(parent, ad_unit_mapping_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/adUnitMappings', options)
          command.request_representation = Google::Apis::AdmobV1beta::AdUnitMapping::Representation
          command.request_object = ad_unit_mapping_object
          command.response_representation = Google::Apis::AdmobV1beta::AdUnitMapping::Representation
          command.response_class = Google::Apis::AdmobV1beta::AdUnitMapping
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List ad unit mappings under the specified AdMob account and ad unit.
        # @param [String] parent
        #   Required. The parent which owns this collection of ad unit mappings. Format:
        #   accounts/`publisher_id`/adUnits/`ad_unit_id`
        # @param [String] filter
        #   The filter string that uses [EBNF grammar syntax](https://google.aip.dev/
        #   assets/misc/ebnf-filtering.txt). Possible field to filter by is: - "
        #   DISPLAY_NAME" Possible filter function is: - `IN`: Used to filter fields that
        #   represent a singleton including "DISPLAY_NAME". The filter functions can be
        #   added together using `AND`. `OR` functionality is not supported. Example:
        #   filter: IN(DISPLAY_NAME, "Test Ad Unit Mapping 1", "Test Ad Unit Mapping 2")
        # @param [Fixnum] page_size
        #   The maximum number of ad unit mappings to return. If unspecified or 0, at most
        #   10,000 ad unit mappings will be returned. The maximum value is 20,000; values
        #   above 20,000 will be coerced to 20,000.
        # @param [String] page_token
        #   A page token, received from a previous `ListAdUnitMappings` call. Provide this
        #   to retrieve the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::ListAdUnitMappingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::ListAdUnitMappingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_ad_unit_ad_unit_mappings(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/adUnitMappings', options)
          command.response_representation = Google::Apis::AdmobV1beta::ListAdUnitMappingsResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::ListAdUnitMappingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an app under the specified AdMob account.
        # @param [String] parent
        #   Required. Resource name of the account for which the app is being created.
        #   Example: accounts/pub-9876543210987654
        # @param [Google::Apis::AdmobV1beta::App] app_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::App] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::App]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_app(parent, app_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/apps', options)
          command.request_representation = Google::Apis::AdmobV1beta::App::Representation
          command.request_object = app_object
          command.response_representation = Google::Apis::AdmobV1beta::App::Representation
          command.response_class = Google::Apis::AdmobV1beta::App
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the apps under the specified AdMob account.
        # @param [String] parent
        #   Required. Resource name of the account to list apps for. Example: accounts/pub-
        #   9876543210987654
        # @param [Fixnum] page_size
        #   The maximum number of apps to return. If unspecified or 0, at most 10,000 apps
        #   will be returned. The maximum value is 20,000; values above 20,000 will be
        #   coerced to 20,000.
        # @param [String] page_token
        #   The value returned by the last `ListAppsResponse`; indicates that this is a
        #   continuation of a prior `ListApps` call, and that the system should return the
        #   next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::ListAppsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::ListAppsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_apps(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/apps', options)
          command.response_representation = Google::Apis::AdmobV1beta::ListAppsResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::ListAppsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates Campaign Report based on provided specifications.
        # @param [String] parent
        #   Resource name of the account to generate the report for. Example: accounts/pub-
        #   9876543210987654
        # @param [Google::Apis::AdmobV1beta::GenerateCampaignReportRequest] generate_campaign_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::GenerateCampaignReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::GenerateCampaignReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_campaign_report(parent, generate_campaign_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/campaignReport:generate', options)
          command.request_representation = Google::Apis::AdmobV1beta::GenerateCampaignReportRequest::Representation
          command.request_object = generate_campaign_report_request_object
          command.response_representation = Google::Apis::AdmobV1beta::GenerateCampaignReportResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::GenerateCampaignReportResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a mediation group under the specific AdMob account.
        # @param [String] parent
        #   Required. The parent which owns the mediation group. Format: accounts/`
        #   publisher_id`
        # @param [Google::Apis::AdmobV1beta::MediationGroup] mediation_group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::MediationGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::MediationGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_mediation_group(parent, mediation_group_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/mediationGroups', options)
          command.request_representation = Google::Apis::AdmobV1beta::MediationGroup::Representation
          command.request_object = mediation_group_object
          command.response_representation = Google::Apis::AdmobV1beta::MediationGroup::Representation
          command.response_class = Google::Apis::AdmobV1beta::MediationGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List mediation groups under the specified AdMob account.
        # @param [String] parent
        #   Required. Resource name of the account to list mediation groups for. Example:
        #   accounts/pub-9876543210987654
        # @param [String] filter
        #   The filter string that uses [EBNF grammar syntax](https://google.aip.dev/
        #   assets/misc/ebnf-filtering.txt). Possible fields to filter by are: - "
        #   AD_SOURCE_IDS" - "AD_UNIT_IDS" - "APP_IDS" - "DISPLAY_NAME" - "FORMAT" - "
        #   MEDIATION_GROUP_ID" - "PLATFORM" - "STATE" - "TARGETED_REGION_CODES" Possible
        #   filter functions are: - `IN`: Used to filter fields that represent a singleton
        #   including "MEDIATION_GROUP_ID", "DISPLAY_NAME", "STATE", "PLATFORM", and "
        #   FORMAT". - `CONTAINS_ANY`: Used to filter fields that represent a collection
        #   including "AD_SOURCE_IDS", "AD_UNIT_IDS", "APP_IDS", and "
        #   TARGETED_REGION_CODES". The filter functions can be added together using `AND`.
        #   `OR` functionality is not supported. Example: filter: IN(DISPLAY_NAME, "Test
        #   Group 1", "Test Group 2") AND IN(PLATFORM, "ANDROID") AND CONTAINS_ANY(
        #   AD_SOURCE_IDS, "5450213213286189855")
        # @param [Fixnum] page_size
        #   The maximum number of mediation groups to return. If unspecified or 0, at most
        #   10,000 mediation groups will be returned. The maximum value is 20,000; values
        #   above 20,000 will be coerced to 20,000.
        # @param [String] page_token
        #   The value returned by the last `ListMediationGroupsResponse`; indicates that
        #   this is a continuation of a prior `ListMediationGroups` call, and that the
        #   system should return the next page of data.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::ListMediationGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::ListMediationGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_mediation_groups(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/mediationGroups', options)
          command.response_representation = Google::Apis::AdmobV1beta::ListMediationGroupsResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::ListMediationGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the specified mediation group under the specified AdMob account.
        # @param [String] name
        #   Resource name for this mediation group. Format is: accounts/`publisher_id`/
        #   mediationGroups/`mediation_group_id` Example: accounts/pub-9876543210987654/
        #   mediationGroups/0123456789
        # @param [Google::Apis::AdmobV1beta::MediationGroup] mediation_group_object
        # @param [String] update_mask
        #   List of mediation group fields to be updated. Updates to repeated fields such
        #   as items in a list will fully replace the existing value(s) with the new value(
        #   s). Updates to individual values in a map can be done by indexing by the key.
        #   The following field masks are supported for mediation group updates: - "
        #   mediation_group_lines[\"`mediation_group_line_id`\"]" clang-format off - "
        #   mediation_group_lines[\"`mediation_group_line_id`\"].ad_unit_mappings[\"`
        #   ad_unit_id`\"]" clang-format on - "mediation_group_lines[\"`
        #   mediation_group_line_id`\"].cpm_micros" - "mediation_group_lines[\"`
        #   mediation_group_line_id`\"].cpm_mode" - "mediation_group_lines[\"`
        #   mediation_group_line_id`\"].state" - "mediation_group_lines[\"`
        #   mediation_group_line_id`\"].display_name" - "targeting.ad_unit_ids" To update
        #   a mediation group with a new mediation group line, use a distinct negative
        #   number for the "mediation_group_line_id". For Example: update_mask ` paths: "
        #   mediation_group_lines[\"123456789012345\"].cpm_micros" `
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::MediationGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::MediationGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_mediation_group(name, mediation_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AdmobV1beta::MediationGroup::Representation
          command.request_object = mediation_group_object
          command.response_representation = Google::Apis::AdmobV1beta::MediationGroup::Representation
          command.response_class = Google::Apis::AdmobV1beta::MediationGroup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an A/B testing experiment for a specified AdMob account and a mediation
        # group.
        # @param [String] parent
        #   Required. The parent which owns the mediation group. Format: accounts/`
        #   publisher_id`/mediationGroups/`mediation_group_id`
        # @param [Google::Apis::AdmobV1beta::MediationAbExperiment] mediation_ab_experiment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::MediationAbExperiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::MediationAbExperiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_mediation_group_mediation_ab_experiment(parent, mediation_ab_experiment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/mediationAbExperiments', options)
          command.request_representation = Google::Apis::AdmobV1beta::MediationAbExperiment::Representation
          command.request_object = mediation_ab_experiment_object
          command.response_representation = Google::Apis::AdmobV1beta::MediationAbExperiment::Representation
          command.response_class = Google::Apis::AdmobV1beta::MediationAbExperiment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stop the mediation A/B experiment and choose a variant.
        # @param [String] name
        #   Name of the mediation group, the experiment for which to choose a variant for.
        #   Example: accounts/pub-9876543210987654/mediationGroups/0123456789/
        #   mediationAbExperiments
        # @param [Google::Apis::AdmobV1beta::StopMediationAbExperimentRequest] stop_mediation_ab_experiment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::MediationAbExperiment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::MediationAbExperiment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_mediation_ab_experiment(name, stop_mediation_ab_experiment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:stop', options)
          command.request_representation = Google::Apis::AdmobV1beta::StopMediationAbExperimentRequest::Representation
          command.request_object = stop_mediation_ab_experiment_request_object
          command.response_representation = Google::Apis::AdmobV1beta::MediationAbExperiment::Representation
          command.response_class = Google::Apis::AdmobV1beta::MediationAbExperiment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an AdMob mediation report based on the provided report specification.
        # Returns result of a server-side streaming RPC. The result is returned in a
        # sequence of responses.
        # @param [String] parent
        #   Resource name of the account to generate the report for. Example: accounts/pub-
        #   9876543210987654
        # @param [Google::Apis::AdmobV1beta::GenerateMediationReportRequest] generate_mediation_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::GenerateMediationReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::GenerateMediationReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_mediation_report(parent, generate_mediation_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/mediationReport:generate', options)
          command.request_representation = Google::Apis::AdmobV1beta::GenerateMediationReportRequest::Representation
          command.request_object = generate_mediation_report_request_object
          command.response_representation = Google::Apis::AdmobV1beta::GenerateMediationReportResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::GenerateMediationReportResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates an AdMob Network report based on the provided report specification.
        # Returns result of a server-side streaming RPC. The result is returned in a
        # sequence of responses.
        # @param [String] parent
        #   Resource name of the account to generate the report for. Example: accounts/pub-
        #   9876543210987654
        # @param [Google::Apis::AdmobV1beta::GenerateNetworkReportRequest] generate_network_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdmobV1beta::GenerateNetworkReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdmobV1beta::GenerateNetworkReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_network_report(parent, generate_network_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/networkReport:generate', options)
          command.request_representation = Google::Apis::AdmobV1beta::GenerateNetworkReportRequest::Representation
          command.request_object = generate_network_report_request_object
          command.response_representation = Google::Apis::AdmobV1beta::GenerateNetworkReportResponse::Representation
          command.response_class = Google::Apis::AdmobV1beta::GenerateNetworkReportResponse
          command.params['parent'] = parent unless parent.nil?
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
