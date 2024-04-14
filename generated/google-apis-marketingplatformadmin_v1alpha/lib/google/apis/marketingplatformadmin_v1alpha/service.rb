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
    module MarketingplatformadminV1alpha
      # Google Marketing Platform Admin API
      #
      # The Google Marketing Platform Admin API allows for programmatic access to the
      #  Google Marketing Platform configuration data. You can use the Google Marketing
      #  Platform Admin API to manage links between your Google Marketing Platform
      #  organization and Google Analytics accounts, set the service level of your GA4
      #  properties.
      #
      # @example
      #    require 'google/apis/marketingplatformadmin_v1alpha'
      #
      #    Marketingplatformadmin = Google::Apis::MarketingplatformadminV1alpha # Alias the module
      #    service = Marketingplatformadmin::GoogleMarketingPlatformAdminAPIService.new
      #
      # @see https://developers.google.com/analytics/devguides/config/gmp/v1
      class GoogleMarketingPlatformAdminAPIService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://marketingplatformadmin.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-marketingplatformadmin_v1alpha',
                client_version: Google::Apis::MarketingplatformadminV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lookup for a single organization.
        # @param [String] name
        #   Required. The name of the Organization to retrieve. Format: organizations/`
        #   org_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::Organization] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::Organization]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::Organization::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::Organization
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates the link between the Analytics account and the Google Marketing
        # Platform organization. User needs to be an org user, and admin on the
        # Analytics account to create the link. If the account is already linked to an
        # organization, user needs to unlink the account from the current organization,
        # then try link again.
        # @param [String] parent
        #   Required. The parent resource where this Analytics account link will be
        #   created. Format: organizations/`org_id`
        # @param [Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink] analytics_account_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_analytics_account_link(parent, analytics_account_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/analyticsAccountLinks', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink::Representation
          command.request_object = analytics_account_link_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::AnalyticsAccountLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the AnalyticsAccountLink, which detaches the Analytics account from
        # the Google Marketing Platform organization. User needs to be an org user, and
        # admin on the Analytics account in order to delete the link.
        # @param [String] name
        #   Required. The name of the Analytics account link to delete. Format:
        #   organizations/`org_id`/analyticsAccountLinks/`analytics_account_link_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_analytics_account_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::Empty::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Google Analytics accounts link to the specified Google Marketing
        # Platform organization.
        # @param [String] parent
        #   Required. The parent organization, which owns this collection of Analytics
        #   account links. Format: organizations/`org_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of Analytics account links to return in one call.
        #   The service may return fewer than this value. If unspecified, at most 50
        #   Analytics account links will be returned. The maximum value is 1000; values
        #   above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListAnalyticsAccountLinks
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListAnalyticsAccountLinks` must match the call that
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
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::ListAnalyticsAccountLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::ListAnalyticsAccountLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_analytics_account_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/analyticsAccountLinks', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::ListAnalyticsAccountLinksResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::ListAnalyticsAccountLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the service level for an Analytics property.
        # @param [String] analytics_account_link
        #   Required. The parent AnalyticsAccountLink scope where this property is in.
        #   Format: organizations/`org_id`/analyticsAccountLinks/`
        #   analytics_account_link_id`
        # @param [Google::Apis::MarketingplatformadminV1alpha::SetPropertyServiceLevelRequest] set_property_service_level_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::SetPropertyServiceLevelResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::SetPropertyServiceLevelResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_analytics_account_link_property_service_level(analytics_account_link, set_property_service_level_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+analyticsAccountLink}:setPropertyServiceLevel', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::SetPropertyServiceLevelRequest::Representation
          command.request_object = set_property_service_level_request_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::SetPropertyServiceLevelResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::SetPropertyServiceLevelResponse
          command.params['analyticsAccountLink'] = analytics_account_link unless analytics_account_link.nil?
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
