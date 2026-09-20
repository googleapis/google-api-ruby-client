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
      #  organization and Google Analytics accounts, and to set the service level of
      #  your GA4 properties.
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
        
        # Returns a list of clients managed by the sales partner organization. User
        # needs to be an OrgAdmin/BillingAdmin on the sales partner organization in
        # order to view the end clients.
        # @param [String] organization
        #   Required. The name of the sales partner organization. Format: organizations/`
        #   org_id`
        # @param [Google::Apis::MarketingplatformadminV1alpha::FindSalesPartnerManagedClientsRequest] find_sales_partner_managed_clients_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::FindSalesPartnerManagedClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::FindSalesPartnerManagedClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def find_organization_sales_partner_managed_clients(organization, find_sales_partner_managed_clients_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+organization}:findSalesPartnerManagedClients', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::FindSalesPartnerManagedClientsRequest::Representation
          command.request_object = find_sales_partner_managed_clients_request_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::FindSalesPartnerManagedClientsResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::FindSalesPartnerManagedClientsResponse
          command.params['organization'] = organization unless organization.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a single organization.
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
        
        # Returns a list of organizations that the user has access to.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of organizations to return in one call. The
        #   service may return fewer than this value. If unspecified, at most 50
        #   organizations will be returned. The maximum value is 1000; values above 1000
        #   will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListOrganizations call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListOrganizations` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::ListOrganizationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::ListOrganizationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organizations(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/organizations', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::ListOrganizationsResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::ListOrganizationsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the usage and billing data for properties within the organization for the
        # specified month. Per direct client org, user needs to be OrgAdmin/BillingAdmin
        # on the organization in order to view the billing and usage data. Per sales
        # partner client org, user needs to be OrgAdmin/BillingAdmin on the sales
        # partner org in order to view the billing and usage data, or OrgAdmin/
        # BillingAdmin on the sales partner client org in order to view the usage data
        # only.
        # @param [String] organization
        #   Required. Specifies the organization whose property usage will be listed.
        #   Format: organizations/`org_id`
        # @param [Google::Apis::MarketingplatformadminV1alpha::ReportPropertyUsageRequest] report_property_usage_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::ReportPropertyUsageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::ReportPropertyUsageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_organization_property_usage(organization, report_property_usage_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+organization}:reportPropertyUsage', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::ReportPropertyUsageRequest::Representation
          command.request_object = report_property_usage_request_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::ReportPropertyUsageResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::ReportPropertyUsageResponse
          command.params['organization'] = organization unless organization.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an admin access binding in the specified GMP organization.
        # @param [String] parent
        #   Required. The parent organization, which owns this Admin Access Binding.
        #   Format: organizations/`org_id`
        # @param [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding] admin_access_binding_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_admin_access_binding(parent, admin_access_binding_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/adminAccessBindings', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding::Representation
          command.request_object = admin_access_binding_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a single admin access binding.
        # @param [String] name
        #   Required. The name of the AdminAccessBinding to retrieve. Format:
        #   organizations/`org_id`/adminAccessBindings/`admin_access_binding_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_admin_access_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of admin access bindings in the specified GMP organization.
        # @param [String] parent
        #   Required. The parent organization, which owns this collection of Admin Access
        #   Bindings. Format: organizations/`org_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of Admin Access Bindings to return in one call.
        #   The service may return fewer than this value. If unspecified, at most 50 Admin
        #   Access Bindings will be returned. The maximum value is 1000; values above 1000
        #   will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListAdminAccessBindings call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListAdminAccessBindings` must match the call that
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
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::ListAdminAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::ListAdminAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_admin_access_bindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/adminAccessBindings', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::ListAdminAccessBindingsResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::ListAdminAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an admin access binding in the specified GMP organization.
        # @param [String] name
        #   Identifier. The resource name of this AdminAccessBinding. Format:
        #   organizations/`org_id`/adminAccessBindings/`admin_access_binding_id` Example: "
        #   organizations/123abc/adminAccessBindings/456def"
        # @param [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding] admin_access_binding_object
        # @param [String] update_mask
        #   Required. The list of fields to update. Field names must be in snake case (for
        #   example, "field_to_update"). Omitted fields will not be updated. To replace
        #   the entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_admin_access_binding(name, admin_access_binding_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding::Representation
          command.request_object = admin_access_binding_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::AdminAccessBinding
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        
        # Creates a user group in the specified GMP organization.
        # @param [String] parent
        #   Required. The parent resource where this UserGroup will be created. Format:
        #   organizations/`org_id`
        # @param [Google::Apis::MarketingplatformadminV1alpha::UserGroup] user_group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::UserGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::UserGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_user_group(parent, user_group_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/userGroups', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroup::Representation
          command.request_object = user_group_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroup::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::UserGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user group in the specified GMP organization.
        # @param [String] name
        #   Required. The name of the user group to delete. Format: organizations/`org_id`/
        #   userGroups/`user_group_id`
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
        def delete_organization_user_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::Empty::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a single user group.
        # @param [String] name
        #   Required. The name of the UserGroup to retrieve. Format: organizations/`org_id`
        #   /userGroups/`user_group_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::UserGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::UserGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_user_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroup::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::UserGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of user groups in the specified GMP organization.
        # @param [String] parent
        #   Required. The parent org where this UserGroup will be listed. Format:
        #   organizations/`org_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of user groups to return in one call. The service
        #   may return fewer than this value. If unspecified, at most 50 user groups will
        #   be returned. The maximum value is 1000; values above 1000 will be coerced to
        #   1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListUserGroups call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListUserGroups` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::ListUserGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::ListUserGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_user_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/userGroups', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::ListUserGroupsResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::ListUserGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user group in the specified GMP organization.
        # @param [String] name
        #   Identifier. Resource name of this UserGroup. Format: organizations/`org_id`/
        #   userGroups/`user_group_id` Example: "organizations/123abc/userGroups/456def"
        # @param [Google::Apis::MarketingplatformadminV1alpha::UserGroup] user_group_object
        # @param [String] update_mask
        #   Required. The list of fields to update. Field names must be in snake case (for
        #   example, "field_to_update"). Omitted fields will not be updated. To replace
        #   the entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::UserGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::UserGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_user_group(name, user_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroup::Representation
          command.request_object = user_group_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroup::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::UserGroup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a member to the specified GMP user group.
        # @param [String] parent
        #   Required. The parent resource where this UserGroupMember will be created.
        #   Format: organizations/`org_id`/userGroups/`user_group_id`
        # @param [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember] user_group_member_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_user_group_member(parent, user_group_member_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/members', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember::Representation
          command.request_object = user_group_member_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a member in the specified GMP user group.
        # @param [String] name
        #   Required. The name of the user group member to delete. Format: organizations/`
        #   org_id`/userGroups/`user_group_id`/members/`member_id`
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
        def delete_organization_user_group_member(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::Empty::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a single user group member.
        # @param [String] name
        #   Required. The name of the user group member to retrieve. Format: organizations/
        #   `org_id`/userGroups/`user_group_id`/members/`member_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_user_group_member(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of members in the specified user group.
        # @param [String] parent
        #   Required. The parent user group where this UserGroupMember will be listed.
        #   Format: organizations/`org_id`/userGroups/`user_group_id`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of user group members to return in one call. The
        #   service may return fewer than this value. If unspecified, at most 50 user
        #   group members will be returned. The maximum value is 1000; values above 1000
        #   will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous ListUserGroupMembers call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListUserGroupMembers` must match the call that
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
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::ListUserGroupMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::ListUserGroupMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_user_group_members(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/members', options)
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::ListUserGroupMembersResponse::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::ListUserGroupMembersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a member in the specified GMP user group.
        # @param [String] name
        #   Identifier. The resource name of this UserGroupMember. Format: organizations/`
        #   org_id`/userGroups/`user_group_id`/members/`member_id` Example: "organizations/
        #   123abc/userGroups/456def/members/789ghi"
        # @param [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember] user_group_member_object
        # @param [String] update_mask
        #   Required. The list of fields to update. Field names must be in snake case (for
        #   example, "field_to_update"). Omitted fields will not be updated. To replace
        #   the entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MarketingplatformadminV1alpha::UserGroupMember]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_user_group_member(name, user_group_member_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember::Representation
          command.request_object = user_group_member_object
          command.response_representation = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember::Representation
          command.response_class = Google::Apis::MarketingplatformadminV1alpha::UserGroupMember
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
