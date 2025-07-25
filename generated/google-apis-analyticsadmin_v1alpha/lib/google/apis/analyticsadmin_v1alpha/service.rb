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
    module AnalyticsadminV1alpha
      # Google Analytics Admin API
      #
      # Manage properties in Google Analytics. Warning: Creating multiple Customer
      #  Applications, Accounts, or Projects to simulate or act as a single Customer
      #  Application, Account, or Project (respectively) or to circumvent Service-
      #  specific usage limits or quotas is a direct violation of Google Cloud Platform
      #  Terms of Service as well as Google APIs Terms of Service. These actions can
      #  result in immediate termination of your GCP project(s) without any warning.
      #
      # @example
      #    require 'google/apis/analyticsadmin_v1alpha'
      #
      #    Analyticsadmin = Google::Apis::AnalyticsadminV1alpha # Alias the module
      #    service = Analyticsadmin::GoogleAnalyticsAdminService.new
      #
      # @see http://code.google.com/apis/analytics/docs/mgmt/home.html
      class GoogleAnalyticsAdminService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://analyticsadmin.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-analyticsadmin_v1alpha',
                client_version: Google::Apis::AnalyticsadminV1alpha::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns summaries of all accounts accessible by the caller.
        # @param [Fixnum] page_size
        #   The maximum number of AccountSummary resources to return. The service may
        #   return fewer than this value, even if there are additional pages. If
        #   unspecified, at most 50 resources will be returned. The maximum value is 200; (
        #   higher values will be coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListAccountSummaries` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccountSummaries` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_summaries(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/accountSummaries', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountSummariesResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks target Account as soft-deleted (ie: "trashed") and returns it. This API
        # does not have a method to restore soft-deleted accounts. However, they can be
        # restored using the Trash Can UI. If the accounts are not restored before the
        # expiration time, the account and all child resources (eg: Properties,
        # GoogleAdsLinks, Streams, AccessBindings) will be permanently purged. https://
        # support.google.com/analytics/answer/6154772 Returns an error if the target is
        # not found.
        # @param [String] name
        #   Required. The name of the Account to soft-delete. Format: accounts/`account`
        #   Example: "accounts/100"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single Account.
        # @param [String] name
        #   Required. The name of the account to lookup. Format: accounts/`account`
        #   Example: "accounts/100"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get data sharing settings on an account. Data sharing settings are singletons.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: accounts/`account`/
        #   dataSharingSettings Example: `accounts/1000/dataSharingSettings`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_data_sharing_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataSharingSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all accounts accessible by the caller. Note that these accounts might
        # not currently have GA properties. Soft-deleted (ie: "trashed") accounts are
        # excluded by default. Returns an empty list if no relevant accounts are found.
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListAccounts` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAccounts` must match the call that provided the page token.
        # @param [Boolean] show_deleted
        #   Whether to include soft-deleted (ie: "trashed") Accounts in the results.
        #   Accounts can be inspected to determine whether they are deleted or not.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/accounts', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccountsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an account.
        # @param [String] name
        #   Output only. Resource name of this account. Format: accounts/`account` Example:
        #   "accounts/100"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount] google_analytics_admin_v1alpha_account_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   for example, "field_to_update"). Omitted fields will not be updated. To
        #   replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account(name, google_analytics_admin_v1alpha_account_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
          command.request_object = google_analytics_admin_v1alpha_account_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccount
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests a ticket for creating an account.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest] google_analytics_admin_v1alpha_provision_account_ticket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_account_account_ticket(google_analytics_admin_v1alpha_provision_account_ticket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/accounts:provisionAccountTicket', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_provision_account_ticket_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionAccountTicketResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a customized report of data access records. The report provides
        # records of each time a user reads Google Analytics reporting data. Access
        # records are retained for up to 2 years. Data Access Reports can be requested
        # for a property. Reports may be requested for any property, but dimensions that
        # aren't related to quota can only be requested on Google Analytics 360
        # properties. This method is only available to Administrators. These data access
        # records include GA UI Reporting, GA UI Explorations, GA Data API, and other
        # products like Firebase & Admob that can retrieve data from Google Analytics
        # through a linkage. These records don't include property configuration changes
        # like adding a stream or changing a property's time zone. For configuration
        # change history, see [searchChangeHistoryEvents](https://developers.google.com/
        # analytics/devguides/config/admin/v1/rest/v1alpha/accounts/
        # searchChangeHistoryEvents). To give your feedback on this API, complete the [
        # Google Analytics Access Reports feedback](https://docs.google.com/forms/d/e/
        # 1FAIpQLSdmEBUrMzAEdiEKk5TV5dEHvDUZDRlgWYdQdAeSdtR4hVjEhw/viewform) form.
        # @param [String] entity
        #   The Data Access Report supports requesting at the property level or account
        #   level. If requested at the account level, Data Access Reports include all
        #   access for all properties under that account. To request at the property level,
        #   entity should be for example 'properties/123' if "123" is your Google
        #   Analytics property ID. To request at the account level, entity should be for
        #   example 'accounts/1234' if "1234" is your Google Analytics Account ID.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportRequest] google_analytics_admin_v1alpha_run_access_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_account_access_report(entity, google_analytics_admin_v1alpha_run_access_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+entity}:runAccessReport', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_run_access_report_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse
          command.params['entity'] = entity unless entity.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches through all changes to an account or its children given the specified
        # set of filters. Only returns the subset of changes supported by the API. The
        # UI may return additional changes.
        # @param [String] account
        #   Required. The account resource for which to return change history resources.
        #   Format: accounts/`account` Example: `accounts/100`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest] google_analytics_admin_v1alpha_search_change_history_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_account_change_history_events(account, google_analytics_admin_v1alpha_search_change_history_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+account}:searchChangeHistoryEvents', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_search_change_history_events_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchChangeHistoryEventsResponse
          command.params['account'] = account unless account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates information about multiple access bindings to an account or property.
        # This method is transactional. If any AccessBinding cannot be created, none of
        # the AccessBindings will be created.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent
        #   field in the CreateAccessBindingRequest messages must either be empty or match
        #   this field. Formats: - accounts/`account` - properties/`property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest] google_analytics_admin_v1alpha_batch_create_access_bindings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_access_binding_create(parent, google_analytics_admin_v1alpha_batch_create_access_bindings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings:batchCreate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_create_access_bindings_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent of
        #   all provided values for the 'names' field in DeleteAccessBindingRequest
        #   messages must match this field. Formats: - accounts/`account` - properties/`
        #   property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest] google_analytics_admin_v1alpha_batch_delete_access_bindings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_access_binding_delete(parent, google_analytics_admin_v1alpha_batch_delete_access_bindings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings:batchDelete', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_delete_access_bindings_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about multiple access bindings to an account or property.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent of
        #   all provided values for the 'names' field must match this field. Formats: -
        #   accounts/`account` - properties/`property`
        # @param [Array<String>, String] names
        #   Required. The names of the access bindings to retrieve. A maximum of 1000
        #   access bindings can be retrieved in a batch. Formats: - accounts/`account`/
        #   accessBindings/`accessBinding` - properties/`property`/accessBindings/`
        #   accessBinding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_access_binding_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/accessBindings:batchGet', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information about multiple access bindings to an account or property.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent of
        #   all provided AccessBinding in UpdateAccessBindingRequest messages must match
        #   this field. Formats: - accounts/`account` - properties/`property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest] google_analytics_admin_v1alpha_batch_update_access_bindings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_account_access_binding_update(parent, google_analytics_admin_v1alpha_batch_update_access_bindings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings:batchUpdate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_update_access_bindings_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an access binding on an account or property.
        # @param [String] parent
        #   Required. Formats: - accounts/`account` - properties/`property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] google_analytics_admin_v1alpha_access_binding_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_access_binding(parent, google_analytics_admin_v1alpha_access_binding_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.request_object = google_analytics_admin_v1alpha_access_binding_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an access binding on an account or property.
        # @param [String] name
        #   Required. Formats: - accounts/`account`/accessBindings/`accessBinding` -
        #   properties/`property`/accessBindings/`accessBinding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_access_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about an access binding.
        # @param [String] name
        #   Required. The name of the access binding to retrieve. Formats: - accounts/`
        #   account`/accessBindings/`accessBinding` - properties/`property`/accessBindings/
        #   `accessBinding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_access_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all access bindings on an account or property.
        # @param [String] parent
        #   Required. Formats: - accounts/`account` - properties/`property`
        # @param [Fixnum] page_size
        #   The maximum number of access bindings to return. The service may return fewer
        #   than this value. If unspecified, at most 200 access bindings will be returned.
        #   The maximum value is 500; values above 500 will be coerced to 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListAccessBindings` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccessBindings` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_access_bindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/accessBindings', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an access binding on an account or property.
        # @param [String] name
        #   Output only. Resource name of this binding. Format: accounts/`account`/
        #   accessBindings/`access_binding` or properties/`property`/accessBindings/`
        #   access_binding` Example: "accounts/100/accessBindings/200"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] google_analytics_admin_v1alpha_access_binding_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_access_binding(name, google_analytics_admin_v1alpha_access_binding_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.request_object = google_analytics_admin_v1alpha_access_binding_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acknowledges the terms of user data collection for the specified property.
        # This acknowledgement must be completed (either in the Google Analytics UI or
        # through this API) before MeasurementProtocolSecret resources may be created.
        # @param [String] property
        #   Required. The property for which to acknowledge user data collection.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest] google_analytics_admin_v1alpha_acknowledge_user_data_collection_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_property_user_data_collection(property, google_analytics_admin_v1alpha_acknowledge_user_data_collection_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+property}:acknowledgeUserDataCollection', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_acknowledge_user_data_collection_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAcknowledgeUserDataCollectionResponse
          command.params['property'] = property unless property.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Google Analytics property with the specified location and attributes.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] google_analytics_admin_v1alpha_property_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property(google_analytics_admin_v1alpha_property_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/properties', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.request_object = google_analytics_admin_v1alpha_property_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a roll-up property and all roll-up property source links.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest] google_analytics_admin_v1alpha_create_rollup_property_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_rollup_property(google_analytics_admin_v1alpha_create_rollup_property_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/properties:createRollupProperty', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateRollupPropertyRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_create_rollup_property_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCreateRollupPropertyResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks target Property as soft-deleted (ie: "trashed") and returns it. This API
        # does not have a method to restore soft-deleted properties. However, they can
        # be restored using the Trash Can UI. If the properties are not restored before
        # the expiration time, the Property and all child resources (eg: GoogleAdsLinks,
        # Streams, AccessBindings) will be permanently purged. https://support.google.
        # com/analytics/answer/6154772 Returns an error if the target is not found.
        # @param [String] name
        #   Required. The name of the Property to soft-delete. Format: properties/`
        #   property_id` Example: "properties/1000"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single GA Property.
        # @param [String] name
        #   Required. The name of the property to lookup. Format: properties/`property_id`
        #   Example: "properties/1000"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a AttributionSettings singleton.
        # @param [String] name
        #   Required. The name of the attribution settings to retrieve. Format: properties/
        #   `property`/attributionSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_attribution_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the singleton data retention settings for this property.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: properties/`property`/
        #   dataRetentionSettings Example: "properties/1000/dataRetentionSettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_retention_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for Google Signals settings for a property.
        # @param [String] name
        #   Required. The name of the google signals settings to retrieve. Format:
        #   properties/`property`/googleSignalsSettings
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_google_signals_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the singleton data retention settings for this property.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: properties/`property`/
        #   reportingIdentitySettings Example: "properties/1000/reportingIdentitySettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingIdentitySettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingIdentitySettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_reporting_identity_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingIdentitySettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingIdentitySettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child Properties under the specified parent Account. Properties will
        # be excluded if the caller does not have access. Soft-deleted (ie: "trashed")
        # properties are excluded by default. Returns an empty list if no relevant
        # properties are found.
        # @param [String] filter
        #   Required. An expression for filtering the results of the request. Fields
        #   eligible for filtering are: `parent:`(The resource name of the parent account/
        #   property) or `ancestor:`(The resource name of the parent account) or `
        #   firebase_project:`(The id or number of the linked firebase project). Some
        #   examples of filters: ``` | Filter | Description | |----------------------------
        #   -|-------------------------------------------| | parent:accounts/123 | The
        #   account with account id: 123. | | parent:properties/123 | The property with
        #   property id: 123. | | ancestor:accounts/123 | The account with account id: 123.
        #   | | firebase_project:project-id | The firebase project with id: project-id. |
        #   | firebase_project:123 | The firebase project with number: 123. | ```
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListProperties` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListProperties` must match the call that provided the page token.
        # @param [Boolean] show_deleted
        #   Whether to include soft-deleted (ie: "trashed") Properties in the results.
        #   Properties can be inspected to determine whether they are deleted or not.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_properties(filter: nil, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/properties', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListPropertiesResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['showDeleted'] = show_deleted unless show_deleted.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a property.
        # @param [String] name
        #   Output only. Resource name of this property. Format: properties/`property_id`
        #   Example: "properties/1000"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] google_analytics_admin_v1alpha_property_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property(name, google_analytics_admin_v1alpha_property_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.request_object = google_analytics_admin_v1alpha_property_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProperty
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a subproperty and a subproperty event filter that applies to the
        # created subproperty.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest] google_analytics_admin_v1alpha_provision_subproperty_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_property_subproperty(google_analytics_admin_v1alpha_provision_subproperty_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/properties:provisionSubproperty', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionSubpropertyRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_provision_subproperty_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaProvisionSubpropertyResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a customized report of data access records. The report provides
        # records of each time a user reads Google Analytics reporting data. Access
        # records are retained for up to 2 years. Data Access Reports can be requested
        # for a property. Reports may be requested for any property, but dimensions that
        # aren't related to quota can only be requested on Google Analytics 360
        # properties. This method is only available to Administrators. These data access
        # records include GA UI Reporting, GA UI Explorations, GA Data API, and other
        # products like Firebase & Admob that can retrieve data from Google Analytics
        # through a linkage. These records don't include property configuration changes
        # like adding a stream or changing a property's time zone. For configuration
        # change history, see [searchChangeHistoryEvents](https://developers.google.com/
        # analytics/devguides/config/admin/v1/rest/v1alpha/accounts/
        # searchChangeHistoryEvents). To give your feedback on this API, complete the [
        # Google Analytics Access Reports feedback](https://docs.google.com/forms/d/e/
        # 1FAIpQLSdmEBUrMzAEdiEKk5TV5dEHvDUZDRlgWYdQdAeSdtR4hVjEhw/viewform) form.
        # @param [String] entity
        #   The Data Access Report supports requesting at the property level or account
        #   level. If requested at the account level, Data Access Reports include all
        #   access for all properties under that account. To request at the property level,
        #   entity should be for example 'properties/123' if "123" is your Google
        #   Analytics property ID. To request at the account level, entity should be for
        #   example 'accounts/1234' if "1234" is your Google Analytics Account ID.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportRequest] google_analytics_admin_v1alpha_run_access_report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_property_access_report(entity, google_analytics_admin_v1alpha_run_access_report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+entity}:runAccessReport', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_run_access_report_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRunAccessReportResponse
          command.params['entity'] = entity unless entity.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates attribution settings on a property.
        # @param [String] name
        #   Output only. Resource name of this attribution settings resource. Format:
        #   properties/`property_id`/attributionSettings Example: "properties/1000/
        #   attributionSettings"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings] google_analytics_admin_v1alpha_attribution_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_attribution_settings(name, google_analytics_admin_v1alpha_attribution_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_attribution_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAttributionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the singleton data retention settings for this property.
        # @param [String] name
        #   Output only. Resource name for this DataRetentionSetting resource. Format:
        #   properties/`property`/dataRetentionSettings
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings] google_analytics_admin_v1alpha_data_retention_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_data_retention_settings(name, google_analytics_admin_v1alpha_data_retention_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_data_retention_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRetentionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates Google Signals settings for a property.
        # @param [String] name
        #   Output only. Resource name of this setting. Format: properties/`property_id`/
        #   googleSignalsSettings Example: "properties/1000/googleSignalsSettings"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings] google_analytics_admin_v1alpha_google_signals_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_google_signals_settings(name, google_analytics_admin_v1alpha_google_signals_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_google_signals_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleSignalsSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates information about multiple access bindings to an account or property.
        # This method is transactional. If any AccessBinding cannot be created, none of
        # the AccessBindings will be created.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent
        #   field in the CreateAccessBindingRequest messages must either be empty or match
        #   this field. Formats: - accounts/`account` - properties/`property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest] google_analytics_admin_v1alpha_batch_create_access_bindings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_access_binding_create(parent, google_analytics_admin_v1alpha_batch_create_access_bindings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings:batchCreate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_create_access_bindings_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchCreateAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes information about multiple users' links to an account or property.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent of
        #   all provided values for the 'names' field in DeleteAccessBindingRequest
        #   messages must match this field. Formats: - accounts/`account` - properties/`
        #   property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest] google_analytics_admin_v1alpha_batch_delete_access_bindings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_access_binding_delete(parent, google_analytics_admin_v1alpha_batch_delete_access_bindings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings:batchDelete', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchDeleteAccessBindingsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_delete_access_bindings_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about multiple access bindings to an account or property.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent of
        #   all provided values for the 'names' field must match this field. Formats: -
        #   accounts/`account` - properties/`property`
        # @param [Array<String>, String] names
        #   Required. The names of the access bindings to retrieve. A maximum of 1000
        #   access bindings can be retrieved in a batch. Formats: - accounts/`account`/
        #   accessBindings/`accessBinding` - properties/`property`/accessBindings/`
        #   accessBinding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_access_binding_get(parent, names: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/accessBindings:batchGet', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchGetAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['names'] = names unless names.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates information about multiple access bindings to an account or property.
        # @param [String] parent
        #   Required. The account or property that owns the access bindings. The parent of
        #   all provided AccessBinding in UpdateAccessBindingRequest messages must match
        #   this field. Formats: - accounts/`account` - properties/`property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest] google_analytics_admin_v1alpha_batch_update_access_bindings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_property_access_binding_update(parent, google_analytics_admin_v1alpha_batch_update_access_bindings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings:batchUpdate', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_batch_update_access_bindings_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBatchUpdateAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an access binding on an account or property.
        # @param [String] parent
        #   Required. Formats: - accounts/`account` - properties/`property`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] google_analytics_admin_v1alpha_access_binding_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_access_binding(parent, google_analytics_admin_v1alpha_access_binding_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/accessBindings', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.request_object = google_analytics_admin_v1alpha_access_binding_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an access binding on an account or property.
        # @param [String] name
        #   Required. Formats: - accounts/`account`/accessBindings/`accessBinding` -
        #   properties/`property`/accessBindings/`accessBinding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_access_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about an access binding.
        # @param [String] name
        #   Required. The name of the access binding to retrieve. Formats: - accounts/`
        #   account`/accessBindings/`accessBinding` - properties/`property`/accessBindings/
        #   `accessBinding`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_access_binding(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all access bindings on an account or property.
        # @param [String] parent
        #   Required. Formats: - accounts/`account` - properties/`property`
        # @param [Fixnum] page_size
        #   The maximum number of access bindings to return. The service may return fewer
        #   than this value. If unspecified, at most 200 access bindings will be returned.
        #   The maximum value is 500; values above 500 will be coerced to 500.
        # @param [String] page_token
        #   A page token, received from a previous `ListAccessBindings` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListAccessBindings` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_access_bindings(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/accessBindings', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAccessBindingsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an access binding on an account or property.
        # @param [String] name
        #   Output only. Resource name of this binding. Format: accounts/`account`/
        #   accessBindings/`access_binding` or properties/`property`/accessBindings/`
        #   access_binding` Example: "accounts/100/accessBindings/200"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] google_analytics_admin_v1alpha_access_binding_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_access_binding(name, google_analytics_admin_v1alpha_access_binding_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.request_object = google_analytics_admin_v1alpha_access_binding_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAccessBinding
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an AdSenseLink.
        # @param [String] parent
        #   Required. The property for which to create an AdSense Link. Format: properties/
        #   `propertyId` Example: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink] google_analytics_admin_v1alpha_ad_sense_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_ad_sense_link(parent, google_analytics_admin_v1alpha_ad_sense_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/adSenseLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink::Representation
          command.request_object = google_analytics_admin_v1alpha_ad_sense_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an AdSenseLink.
        # @param [String] name
        #   Required. Unique identifier for the AdSense Link to be deleted. Format:
        #   properties/`propertyId`/adSenseLinks/`linkId` Example: properties/1234/
        #   adSenseLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_ad_sense_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a single AdSenseLink.
        # @param [String] name
        #   Required. Unique identifier for the AdSense Link requested. Format: properties/
        #   `propertyId`/adSenseLinks/`linkId` Example: properties/1234/adSenseLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_ad_sense_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAdSenseLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists AdSenseLinks on a property.
        # @param [String] parent
        #   Required. Resource name of the parent property. Format: properties/`propertyId`
        #   Example: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token received from a previous `ListAdSenseLinks` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAdSenseLinks` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_ad_sense_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/adSenseLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAdSenseLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives an Audience on a property.
        # @param [String] name
        #   Required. Example format: properties/1234/audiences/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveAudienceRequest] google_analytics_admin_v1alpha_archive_audience_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_property_audience(name, google_analytics_admin_v1alpha_archive_audience_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:archive', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveAudienceRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_archive_audience_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an Audience.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience] google_analytics_admin_v1alpha_audience_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_audience(parent, google_analytics_admin_v1alpha_audience_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/audiences', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience::Representation
          command.request_object = google_analytics_admin_v1alpha_audience_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single Audience. Audiences created before 2020 may not be
        # supported. Default audiences will not show filter definitions.
        # @param [String] name
        #   Required. The name of the Audience to get. Example format: properties/1234/
        #   audiences/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_audience(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Audiences on a property. Audiences created before 2020 may not be
        # supported. Default audiences will not show filter definitions.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListAudiences` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListAudiences` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAudiencesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAudiencesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_audiences(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/audiences', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAudiencesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListAudiencesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Audience on a property.
        # @param [String] name
        #   Output only. The resource name for this Audience resource. Format: properties/`
        #   propertyId`/audiences/`audienceId`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience] google_analytics_admin_v1alpha_audience_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_audience(name, google_analytics_admin_v1alpha_audience_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience::Representation
          command.request_object = google_analytics_admin_v1alpha_audience_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaAudience
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a BigQueryLink.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink] google_analytics_admin_v1alpha_big_query_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_big_query_link(parent, google_analytics_admin_v1alpha_big_query_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/bigQueryLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink::Representation
          command.request_object = google_analytics_admin_v1alpha_big_query_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a BigQueryLink on a property.
        # @param [String] name
        #   Required. The BigQueryLink to delete. Example format: properties/1234/
        #   bigQueryLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_big_query_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single BigQuery Link.
        # @param [String] name
        #   Required. The name of the BigQuery link to lookup. Format: properties/`
        #   property_id`/bigQueryLinks/`bigquery_link_id` Example: properties/123/
        #   bigQueryLinks/456
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_big_query_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists BigQuery Links on a property.
        # @param [String] parent
        #   Required. The name of the property to list BigQuery links under. Format:
        #   properties/`property_id` Example: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListBigQueryLinks` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListBigQueryLinks` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_big_query_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/bigQueryLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListBigQueryLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a BigQueryLink.
        # @param [String] name
        #   Output only. Resource name of this BigQuery link. Format: 'properties/`
        #   property_id`/bigQueryLinks/`bigquery_link_id`' Format: 'properties/1234/
        #   bigQueryLinks/abc567'
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink] google_analytics_admin_v1alpha_big_query_link_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_big_query_link(name, google_analytics_admin_v1alpha_big_query_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink::Representation
          command.request_object = google_analytics_admin_v1alpha_big_query_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaBigQueryLink
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CalculatedMetric.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric] google_analytics_admin_v1alpha_calculated_metric_object
        # @param [String] calculated_metric_id
        #   Required. The ID to use for the calculated metric which will become the final
        #   component of the calculated metric's resource name. This value should be 1-80
        #   characters and valid characters are /[a-zA-Z0-9_]/, no spaces allowed.
        #   calculated_metric_id must be unique between all calculated metrics under a
        #   property. The calculated_metric_id is used when referencing this calculated
        #   metric from external APIs, for example, "calcMetric:`calculated_metric_id`".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_calculated_metric(parent, google_analytics_admin_v1alpha_calculated_metric_object = nil, calculated_metric_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/calculatedMetrics', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric::Representation
          command.request_object = google_analytics_admin_v1alpha_calculated_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric
          command.params['parent'] = parent unless parent.nil?
          command.query['calculatedMetricId'] = calculated_metric_id unless calculated_metric_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a CalculatedMetric on a property.
        # @param [String] name
        #   Required. The name of the CalculatedMetric to delete. Format: properties/`
        #   property_id`/calculatedMetrics/`calculated_metric_id` Example: properties/1234/
        #   calculatedMetrics/Metric01
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_calculated_metric(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single CalculatedMetric.
        # @param [String] name
        #   Required. The name of the CalculatedMetric to get. Format: properties/`
        #   property_id`/calculatedMetrics/`calculated_metric_id` Example: properties/1234/
        #   calculatedMetrics/Metric01
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_calculated_metric(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CalculatedMetrics on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   Optional. The maximum number of resources to return. If unspecified, at most
        #   50 resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListCalculatedMetrics` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListCalculatedMetrics` must match the call that
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_calculated_metrics(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/calculatedMetrics', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCalculatedMetricsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a CalculatedMetric on a property.
        # @param [String] name
        #   Output only. Resource name for this CalculatedMetric. Format: 'properties/`
        #   property_id`/calculatedMetrics/`calculated_metric_id`'
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric] google_analytics_admin_v1alpha_calculated_metric_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_calculated_metric(name, google_analytics_admin_v1alpha_calculated_metric_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric::Representation
          command.request_object = google_analytics_admin_v1alpha_calculated_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCalculatedMetric
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ChannelGroup.
        # @param [String] parent
        #   Required. The property for which to create a ChannelGroup. Example format:
        #   properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup] google_analytics_admin_v1alpha_channel_group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_channel_group(parent, google_analytics_admin_v1alpha_channel_group_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/channelGroups', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup::Representation
          command.request_object = google_analytics_admin_v1alpha_channel_group_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a ChannelGroup on a property.
        # @param [String] name
        #   Required. The ChannelGroup to delete. Example format: properties/1234/
        #   channelGroups/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_channel_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single ChannelGroup.
        # @param [String] name
        #   Required. The ChannelGroup to get. Example format: properties/1234/
        #   channelGroups/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_channel_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ChannelGroups on a property.
        # @param [String] parent
        #   Required. The property for which to list ChannelGroups. Example format:
        #   properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListChannelGroups` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListChannelGroups` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListChannelGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListChannelGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_channel_groups(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/channelGroups', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListChannelGroupsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListChannelGroupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ChannelGroup.
        # @param [String] name
        #   Output only. The resource name for this Channel Group resource. Format:
        #   properties/`property`/channelGroups/`channel_group`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup] google_analytics_admin_v1alpha_channel_group_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_channel_group(name, google_analytics_admin_v1alpha_channel_group_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup::Representation
          command.request_object = google_analytics_admin_v1alpha_channel_group_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaChannelGroup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `CreateKeyEvent` instead. Creates a conversion event with the
        # specified attributes.
        # @param [String] parent
        #   Required. The resource name of the parent property where this conversion event
        #   will be created. Format: properties/123
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] google_analytics_admin_v1alpha_conversion_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_conversion_event(parent, google_analytics_admin_v1alpha_conversion_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/conversionEvents', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.request_object = google_analytics_admin_v1alpha_conversion_event_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `DeleteKeyEvent` instead. Deletes a conversion event in a
        # property.
        # @param [String] name
        #   Required. The resource name of the conversion event to delete. Format:
        #   properties/`property`/conversionEvents/`conversion_event` Example: "properties/
        #   123/conversionEvents/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_conversion_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `GetKeyEvent` instead. Retrieve a single conversion event.
        # @param [String] name
        #   Required. The resource name of the conversion event to retrieve. Format:
        #   properties/`property`/conversionEvents/`conversion_event` Example: "properties/
        #   123/conversionEvents/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_conversion_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `ListKeyEvents` instead. Returns a list of conversion events
        # in the specified parent property. Returns an empty list if no conversion
        # events are found.
        # @param [String] parent
        #   Required. The resource name of the parent property. Example: 'properties/123'
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListConversionEvents` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListConversionEvents` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_conversion_events(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/conversionEvents', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListConversionEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deprecated: Use `UpdateKeyEvent` instead. Updates a conversion event with the
        # specified attributes.
        # @param [String] name
        #   Output only. Resource name of this conversion event. Format: properties/`
        #   property`/conversionEvents/`conversion_event`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] google_analytics_admin_v1alpha_conversion_event_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_conversion_event(name, google_analytics_admin_v1alpha_conversion_event_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.request_object = google_analytics_admin_v1alpha_conversion_event_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaConversionEvent
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives a CustomDimension on a property.
        # @param [String] name
        #   Required. The name of the CustomDimension to archive. Example format:
        #   properties/1234/customDimensions/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest] google_analytics_admin_v1alpha_archive_custom_dimension_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_property_custom_dimension(name, google_analytics_admin_v1alpha_archive_custom_dimension_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:archive', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomDimensionRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_archive_custom_dimension_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CustomDimension.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] google_analytics_admin_v1alpha_custom_dimension_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_custom_dimension(parent, google_analytics_admin_v1alpha_custom_dimension_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/customDimensions', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_dimension_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single CustomDimension.
        # @param [String] name
        #   Required. The name of the CustomDimension to get. Example format: properties/
        #   1234/customDimensions/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_custom_dimension(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CustomDimensions on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListCustomDimensions` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListCustomDimensions` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_custom_dimensions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/customDimensions', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomDimensionsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a CustomDimension on a property.
        # @param [String] name
        #   Output only. Resource name for this CustomDimension resource. Format:
        #   properties/`property`/customDimensions/`customDimension`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] google_analytics_admin_v1alpha_custom_dimension_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_custom_dimension(name, google_analytics_admin_v1alpha_custom_dimension_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_dimension_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomDimension
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives a CustomMetric on a property.
        # @param [String] name
        #   Required. The name of the CustomMetric to archive. Example format: properties/
        #   1234/customMetrics/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest] google_analytics_admin_v1alpha_archive_custom_metric_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_property_custom_metric(name, google_analytics_admin_v1alpha_archive_custom_metric_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:archive', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaArchiveCustomMetricRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_archive_custom_metric_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CustomMetric.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] google_analytics_admin_v1alpha_custom_metric_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_custom_metric(parent, google_analytics_admin_v1alpha_custom_metric_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/customMetrics', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single CustomMetric.
        # @param [String] name
        #   Required. The name of the CustomMetric to get. Example format: properties/1234/
        #   customMetrics/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_custom_metric(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists CustomMetrics on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListCustomMetrics` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListCustomMetrics` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_custom_metrics(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/customMetrics', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListCustomMetricsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a CustomMetric on a property.
        # @param [String] name
        #   Output only. Resource name for this CustomMetric resource. Format: properties/`
        #   property`/customMetrics/`customMetric`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] google_analytics_admin_v1alpha_custom_metric_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_custom_metric(name, google_analytics_admin_v1alpha_custom_metric_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.request_object = google_analytics_admin_v1alpha_custom_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCustomMetric
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DataStream.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream] google_analytics_admin_v1alpha_data_stream_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_data_stream(parent, google_analytics_admin_v1alpha_data_stream_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/dataStreams', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream::Representation
          command.request_object = google_analytics_admin_v1alpha_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DataStream on a property.
        # @param [String] name
        #   Required. The name of the DataStream to delete. Example format: properties/
        #   1234/dataStreams/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single DataStream.
        # @param [String] name
        #   Required. The name of the DataStream to get. Example format: properties/1234/
        #   dataStreams/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single DataRedactionSettings.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: properties/`property`/
        #   dataStreams/`data_stream`/dataRedactionSettings Example: "properties/1000/
        #   dataStreams/2000/dataRedactionSettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_data_redaction_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the enhanced measurement settings for this data stream. Note that the
        # stream must enable enhanced measurement for these settings to take effect.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: properties/`property`/
        #   dataStreams/`data_stream`/enhancedMeasurementSettings Example: "properties/
        #   1000/dataStreams/2000/enhancedMeasurementSettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_enhanced_measurement_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the Site Tag for the specified web stream. Site Tags are immutable
        # singletons.
        # @param [String] name
        #   Required. The name of the site tag to lookup. Note that site tags are
        #   singletons and do not have unique IDs. Format: properties/`property_id`/
        #   dataStreams/`stream_id`/globalSiteTag Example: `properties/123/dataStreams/456/
        #   globalSiteTag`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_global_site_tag(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGlobalSiteTag
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DataStreams on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListDataStreams` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListDataStreams` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDataStreamsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDataStreamsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_data_streams(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/dataStreams', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDataStreamsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDataStreamsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataStream on a property.
        # @param [String] name
        #   Output only. Resource name of this Data Stream. Format: properties/`
        #   property_id`/dataStreams/`stream_id` Example: "properties/1000/dataStreams/
        #   2000"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream] google_analytics_admin_v1alpha_data_stream_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_data_stream(name, google_analytics_admin_v1alpha_data_stream_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream::Representation
          command.request_object = google_analytics_admin_v1alpha_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataStream
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DataRedactionSettings on a property.
        # @param [String] name
        #   Output only. Name of this Data Redaction Settings resource. Format: properties/
        #   `property_id`/dataStreams/`data_stream`/dataRedactionSettings Example: "
        #   properties/1000/dataStreams/2000/dataRedactionSettings"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings] google_analytics_admin_v1alpha_data_redaction_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_data_stream_data_redaction_settings(name, google_analytics_admin_v1alpha_data_redaction_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_data_redaction_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDataRedactionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the enhanced measurement settings for this data stream. Note that the
        # stream must enable enhanced measurement for these settings to take effect.
        # @param [String] name
        #   Output only. Resource name of the Enhanced Measurement Settings. Format:
        #   properties/`property_id`/dataStreams/`data_stream`/enhancedMeasurementSettings
        #   Example: "properties/1000/dataStreams/2000/enhancedMeasurementSettings"
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings] google_analytics_admin_v1alpha_enhanced_measurement_settings_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_data_stream_enhanced_measurement_settings(name, google_analytics_admin_v1alpha_enhanced_measurement_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings::Representation
          command.request_object = google_analytics_admin_v1alpha_enhanced_measurement_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an EventCreateRule.
        # @param [String] parent
        #   Required. Example format: properties/123/dataStreams/456
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule] google_analytics_admin_v1alpha_event_create_rule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_data_stream_event_create_rule(parent, google_analytics_admin_v1alpha_event_create_rule_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/eventCreateRules', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule::Representation
          command.request_object = google_analytics_admin_v1alpha_event_create_rule_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an EventCreateRule.
        # @param [String] name
        #   Required. Example format: properties/123/dataStreams/456/eventCreateRules/789
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_data_stream_event_create_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single EventCreateRule.
        # @param [String] name
        #   Required. The name of the EventCreateRule to get. Example format: properties/
        #   123/dataStreams/456/eventCreateRules/789
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_event_create_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists EventCreateRules on a web data stream.
        # @param [String] parent
        #   Required. Example format: properties/123/dataStreams/456
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListEventCreateRules` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListEventCreateRules` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_data_stream_event_create_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/eventCreateRules', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventCreateRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an EventCreateRule.
        # @param [String] name
        #   Output only. Resource name for this EventCreateRule resource. Format:
        #   properties/`property`/dataStreams/`data_stream`/eventCreateRules/`
        #   event_create_rule`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule] google_analytics_admin_v1alpha_event_create_rule_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_data_stream_event_create_rule(name, google_analytics_admin_v1alpha_event_create_rule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule::Representation
          command.request_object = google_analytics_admin_v1alpha_event_create_rule_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventCreateRule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an EventEditRule.
        # @param [String] parent
        #   Required. Example format: properties/123/dataStreams/456
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule] google_analytics_admin_v1alpha_event_edit_rule_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_data_stream_event_edit_rule(parent, google_analytics_admin_v1alpha_event_edit_rule_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/eventEditRules', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule::Representation
          command.request_object = google_analytics_admin_v1alpha_event_edit_rule_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an EventEditRule.
        # @param [String] name
        #   Required. Example format: properties/123/dataStreams/456/eventEditRules/789
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_data_stream_event_edit_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single EventEditRule.
        # @param [String] name
        #   Required. The name of the EventEditRule to get. Example format: properties/123/
        #   dataStreams/456/eventEditRules/789
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_event_edit_rule(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists EventEditRules on a web data stream.
        # @param [String] parent
        #   Required. Example format: properties/123/dataStreams/456
        # @param [Fixnum] page_size
        #   Optional. The maximum number of resources to return. If unspecified, at most
        #   50 resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListEventEditRules` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListEventEditRules` must match the call that provided
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventEditRulesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventEditRulesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_data_stream_event_edit_rules(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/eventEditRules', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventEditRulesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListEventEditRulesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an EventEditRule.
        # @param [String] name
        #   Identifier. Resource name for this EventEditRule resource. Format: properties/`
        #   property`/dataStreams/`data_stream`/eventEditRules/`event_edit_rule`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule] google_analytics_admin_v1alpha_event_edit_rule_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_data_stream_event_edit_rule(name, google_analytics_admin_v1alpha_event_edit_rule_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule::Representation
          command.request_object = google_analytics_admin_v1alpha_event_edit_rule_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaEventEditRule
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Changes the processing order of event edit rules on the specified stream.
        # @param [String] parent
        #   Required. Example format: properties/123/dataStreams/456
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest] google_analytics_admin_v1alpha_reorder_event_edit_rules_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def reorder_property_data_stream_event_edit_rule(parent, google_analytics_admin_v1alpha_reorder_event_edit_rules_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/eventEditRules:reorder', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReorderEventEditRulesRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_reorder_event_edit_rules_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a measurement protocol secret.
        # @param [String] parent
        #   Required. The parent resource where this secret will be created. Format:
        #   properties/`property`/dataStreams/`dataStream`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_data_stream_measurement_protocol_secret(parent, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes target MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the MeasurementProtocolSecret to delete. Format:
        #   properties/`property`/dataStreams/`dataStream`/measurementProtocolSecrets/`
        #   measurementProtocolSecret`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single MeasurementProtocolSecret.
        # @param [String] name
        #   Required. The name of the measurement protocol secret to lookup. Format:
        #   properties/`property`/dataStreams/`dataStream`/measurementProtocolSecrets/`
        #   measurementProtocolSecret`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child MeasurementProtocolSecrets under the specified parent Property.
        # @param [String] parent
        #   Required. The resource name of the parent stream. Format: properties/`property`
        #   /dataStreams/`dataStream`/measurementProtocolSecrets
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 10
        #   resources will be returned. The maximum value is 10. Higher values will be
        #   coerced to the maximum.
        # @param [String] page_token
        #   A page token, received from a previous `ListMeasurementProtocolSecrets` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListMeasurementProtocolSecrets` must match the call
        #   that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_data_stream_measurement_protocol_secrets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/measurementProtocolSecrets', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListMeasurementProtocolSecretsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a measurement protocol secret.
        # @param [String] name
        #   Output only. Resource name of this secret. This secret may be a child of any
        #   type of stream. Format: properties/`property`/dataStreams/`dataStream`/
        #   measurementProtocolSecrets/`measurementProtocolSecret`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] google_analytics_admin_v1alpha_measurement_protocol_secret_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_data_stream_measurement_protocol_secret(name, google_analytics_admin_v1alpha_measurement_protocol_secret_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1alpha_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a SKAdNetworkConversionValueSchema.
        # @param [String] parent
        #   Required. The parent resource where this schema will be created. Format:
        #   properties/`property`/dataStreams/`dataStream`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema] google_analytics_admin_v1alpha_sk_ad_network_conversion_value_schema_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_data_stream_s_k_ad_network_conversion_value_schema(parent, google_analytics_admin_v1alpha_sk_ad_network_conversion_value_schema_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/sKAdNetworkConversionValueSchema', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema::Representation
          command.request_object = google_analytics_admin_v1alpha_sk_ad_network_conversion_value_schema_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes target SKAdNetworkConversionValueSchema.
        # @param [String] name
        #   Required. The name of the SKAdNetworkConversionValueSchema to delete. Format:
        #   properties/`property`/dataStreams/`dataStream`/
        #   sKAdNetworkConversionValueSchema/`skadnetwork_conversion_value_schema`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_data_stream_s_k_ad_network_conversion_value_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up a single SKAdNetworkConversionValueSchema.
        # @param [String] name
        #   Required. The resource name of SKAdNetwork conversion value schema to look up.
        #   Format: properties/`property`/dataStreams/`dataStream`/
        #   sKAdNetworkConversionValueSchema/`skadnetwork_conversion_value_schema`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_s_k_ad_network_conversion_value_schema(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists SKAdNetworkConversionValueSchema on a stream. Properties can have at
        # most one SKAdNetworkConversionValueSchema.
        # @param [String] parent
        #   Required. The DataStream resource to list schemas for. Format: properties/`
        #   property_id`/dataStreams/`dataStream` Example: properties/1234/dataStreams/
        #   5678
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListSKAdNetworkConversionValueSchemas`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListSKAdNetworkConversionValueSchema` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSkAdNetworkConversionValueSchemasResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSkAdNetworkConversionValueSchemasResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_data_stream_s_k_ad_network_conversion_value_schemas(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/sKAdNetworkConversionValueSchema', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSkAdNetworkConversionValueSchemasResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSkAdNetworkConversionValueSchemasResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a SKAdNetworkConversionValueSchema.
        # @param [String] name
        #   Output only. Resource name of the schema. This will be child of ONLY an iOS
        #   stream, and there can be at most one such child under an iOS stream. Format:
        #   properties/`property`/dataStreams/`dataStream`/
        #   sKAdNetworkConversionValueSchema
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema] google_analytics_admin_v1alpha_sk_ad_network_conversion_value_schema_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_data_stream_s_k_ad_network_conversion_value_schema(name, google_analytics_admin_v1alpha_sk_ad_network_conversion_value_schema_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema::Representation
          command.request_object = google_analytics_admin_v1alpha_sk_ad_network_conversion_value_schema_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSkAdNetworkConversionValueSchema
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Approves a DisplayVideo360AdvertiserLinkProposal. The
        # DisplayVideo360AdvertiserLinkProposal will be deleted and a new
        # DisplayVideo360AdvertiserLink will be created.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to approve.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest] google_analytics_admin_v1alpha_approve_display_video360_advertiser_link_proposal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def approve_property_display_video360_advertiser_link_proposal(name, google_analytics_admin_v1alpha_approve_display_video360_advertiser_link_proposal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:approve', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_approve_display_video360_advertiser_link_proposal_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaApproveDisplayVideo360AdvertiserLinkProposalResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a DisplayVideo360AdvertiserLinkProposal. Cancelling can mean either: -
        # Declining a proposal initiated from Display & Video 360 - Withdrawing a
        # proposal initiated from Google Analytics After being cancelled, a proposal
        # will eventually be deleted automatically.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to cancel.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest] google_analytics_admin_v1alpha_cancel_display_video360_advertiser_link_proposal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_property_display_video360_advertiser_link_proposal(name, google_analytics_admin_v1alpha_cancel_display_video360_advertiser_link_proposal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+name}:cancel', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaCancelDisplayVideo360AdvertiserLinkProposalRequest::Representation
          command.request_object = google_analytics_admin_v1alpha_cancel_display_video360_advertiser_link_proposal_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DisplayVideo360AdvertiserLinkProposal.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] google_analytics_admin_v1alpha_display_video360_advertiser_link_proposal_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_display_video360_advertiser_link_proposal(parent, google_analytics_admin_v1alpha_display_video360_advertiser_link_proposal_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/displayVideo360AdvertiserLinkProposals', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.request_object = google_analytics_admin_v1alpha_display_video360_advertiser_link_proposal_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DisplayVideo360AdvertiserLinkProposal on a property. This can only
        # be used on cancelled proposals.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to delete.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_display_video360_advertiser_link_proposal(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single DisplayVideo360AdvertiserLinkProposal.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLinkProposal to get.
        #   Example format: properties/1234/displayVideo360AdvertiserLinkProposals/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_display_video360_advertiser_link_proposal(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLinkProposal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists DisplayVideo360AdvertiserLinkProposals on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `
        #   ListDisplayVideo360AdvertiserLinkProposals` call. Provide this to retrieve the
        #   subsequent page. When paginating, all other parameters provided to `
        #   ListDisplayVideo360AdvertiserLinkProposals` must match the call that provided
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_display_video360_advertiser_link_proposals(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/displayVideo360AdvertiserLinkProposals', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinkProposalsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DisplayVideo360AdvertiserLink. This can only be utilized by users
        # who have proper authorization both on the Google Analytics property and on the
        # Display & Video 360 advertiser. Users who do not have access to the Display &
        # Video 360 advertiser should instead seek to create a
        # DisplayVideo360LinkProposal.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] google_analytics_admin_v1alpha_display_video360_advertiser_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_display_video360_advertiser_link(parent, google_analytics_admin_v1alpha_display_video360_advertiser_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/displayVideo360AdvertiserLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_display_video360_advertiser_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a DisplayVideo360AdvertiserLink on a property.
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLink to delete. Example
        #   format: properties/1234/displayVideo360AdvertiserLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_display_video360_advertiser_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Look up a single DisplayVideo360AdvertiserLink
        # @param [String] name
        #   Required. The name of the DisplayVideo360AdvertiserLink to get. Example format:
        #   properties/1234/displayVideo360AdvertiserLink/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_display_video360_advertiser_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all DisplayVideo360AdvertiserLinks on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListDisplayVideo360AdvertiserLinks`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListDisplayVideo360AdvertiserLinks` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_display_video360_advertiser_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/displayVideo360AdvertiserLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListDisplayVideo360AdvertiserLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a DisplayVideo360AdvertiserLink on a property.
        # @param [String] name
        #   Output only. The resource name for this DisplayVideo360AdvertiserLink resource.
        #   Format: properties/`propertyId`/displayVideo360AdvertiserLinks/`linkId` Note:
        #   linkId is not the Display & Video 360 Advertiser ID
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] google_analytics_admin_v1alpha_display_video360_advertiser_link_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_display_video360_advertiser_link(name, google_analytics_admin_v1alpha_display_video360_advertiser_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.request_object = google_analytics_admin_v1alpha_display_video360_advertiser_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaDisplayVideo360AdvertiserLink
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ExpandedDataSet.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet] google_analytics_admin_v1alpha_expanded_data_set_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_expanded_data_set(parent, google_analytics_admin_v1alpha_expanded_data_set_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/expandedDataSets', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet::Representation
          command.request_object = google_analytics_admin_v1alpha_expanded_data_set_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a ExpandedDataSet on a property.
        # @param [String] name
        #   Required. Example format: properties/1234/expandedDataSets/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_expanded_data_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single ExpandedDataSet.
        # @param [String] name
        #   Required. The name of the ExpandedDataSet to get. Example format: properties/
        #   1234/expandedDataSets/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_expanded_data_set(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists ExpandedDataSets on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListExpandedDataSets` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListExpandedDataSet` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_expanded_data_sets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/expandedDataSets', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListExpandedDataSetsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ExpandedDataSet on a property.
        # @param [String] name
        #   Output only. The resource name for this ExpandedDataSet resource. Format:
        #   properties/`property_id`/expandedDataSets/`expanded_data_set`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet] google_analytics_admin_v1alpha_expanded_data_set_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_expanded_data_set(name, google_analytics_admin_v1alpha_expanded_data_set_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet::Representation
          command.request_object = google_analytics_admin_v1alpha_expanded_data_set_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaExpandedDataSet
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a FirebaseLink. Properties can have at most one FirebaseLink.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: `properties/1234`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink] google_analytics_admin_v1alpha_firebase_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_firebase_link(parent, google_analytics_admin_v1alpha_firebase_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/firebaseLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
          command.request_object = google_analytics_admin_v1alpha_firebase_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaFirebaseLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a FirebaseLink on a property
        # @param [String] name
        #   Required. Format: properties/`property_id`/firebaseLinks/`firebase_link_id`
        #   Example: `properties/1234/firebaseLinks/5678`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_firebase_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists FirebaseLinks on a property. Properties can have at most one
        # FirebaseLink.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: `properties/1234`
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. The service may return fewer than
        #   this value, even if there are additional pages. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListFirebaseLinks` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListFirebaseLinks` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_firebase_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/firebaseLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListFirebaseLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a GoogleAdsLink.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] google_analytics_admin_v1alpha_google_ads_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_google_ads_link(parent, google_analytics_admin_v1alpha_google_ads_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/googleAdsLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.request_object = google_analytics_admin_v1alpha_google_ads_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a GoogleAdsLink on a property
        # @param [String] name
        #   Required. Example format: properties/1234/googleAdsLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_google_ads_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists GoogleAdsLinks on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListGoogleAdsLinks` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListGoogleAdsLinks` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_google_ads_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/googleAdsLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListGoogleAdsLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a GoogleAdsLink on a property
        # @param [String] name
        #   Output only. Format: properties/`propertyId`/googleAdsLinks/`googleAdsLinkId`
        #   Note: googleAdsLinkId is not the Google Ads customer ID.
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] google_analytics_admin_v1alpha_google_ads_link_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_google_ads_link(name, google_analytics_admin_v1alpha_google_ads_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.request_object = google_analytics_admin_v1alpha_google_ads_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaGoogleAdsLink
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Key Event.
        # @param [String] parent
        #   Required. The resource name of the parent property where this Key Event will
        #   be created. Format: properties/123
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent] google_analytics_admin_v1alpha_key_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_key_event(parent, google_analytics_admin_v1alpha_key_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/keyEvents', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent::Representation
          command.request_object = google_analytics_admin_v1alpha_key_event_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Key Event.
        # @param [String] name
        #   Required. The resource name of the Key Event to delete. Format: properties/`
        #   property`/keyEvents/`key_event` Example: "properties/123/keyEvents/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_key_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single Key Event.
        # @param [String] name
        #   Required. The resource name of the Key Event to retrieve. Format: properties/`
        #   property`/keyEvents/`key_event` Example: "properties/123/keyEvents/456"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_key_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of Key Events in the specified parent property. Returns an
        # empty list if no Key Events are found.
        # @param [String] parent
        #   Required. The resource name of the parent property. Example: 'properties/123'
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200; (higher values will be
        #   coerced to the maximum)
        # @param [String] page_token
        #   A page token, received from a previous `ListKeyEvents` call. Provide this to
        #   retrieve the subsequent page. When paginating, all other parameters provided
        #   to `ListKeyEvents` must match the call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListKeyEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListKeyEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_key_events(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/keyEvents', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListKeyEventsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListKeyEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Key Event.
        # @param [String] name
        #   Output only. Resource name of this key event. Format: properties/`property`/
        #   keyEvents/`key_event`
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent] google_analytics_admin_v1alpha_key_event_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Field names must be in snake case (
        #   e.g., "field_to_update"). Omitted fields will not be updated. To replace the
        #   entire entity, use one path with the string "*" to match all fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_key_event(name, google_analytics_admin_v1alpha_key_event_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent::Representation
          command.request_object = google_analytics_admin_v1alpha_key_event_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaKeyEvent
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Reporting Data Annotation.
        # @param [String] parent
        #   Required. The property for which to create a Reporting Data Annotation. Format:
        #   properties/property_id Example: properties/123
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation] google_analytics_admin_v1alpha_reporting_data_annotation_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_reporting_data_annotation(parent, google_analytics_admin_v1alpha_reporting_data_annotation_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/reportingDataAnnotations', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation::Representation
          command.request_object = google_analytics_admin_v1alpha_reporting_data_annotation_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a Reporting Data Annotation.
        # @param [String] name
        #   Required. Resource name of the Reporting Data Annotation to delete. Format:
        #   properties/property_id/reportingDataAnnotations/reporting_data_annotation
        #   Example: properties/123/reportingDataAnnotations/456
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_reporting_data_annotation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup a single Reporting Data Annotation.
        # @param [String] name
        #   Required. Resource name of the Reporting Data Annotation to lookup. Format:
        #   properties/property_id/reportingDataAnnotations/reportingDataAnnotation
        #   Example: properties/123/reportingDataAnnotations/456
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_reporting_data_annotation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all Reporting Data Annotations on a property.
        # @param [String] parent
        #   Required. Resource name of the property. Format: properties/property_id
        #   Example: properties/123
        # @param [String] filter
        #   Optional. Filter that restricts which reporting data annotations under the
        #   parent property are listed. Supported fields are: * 'name' * `title` * `
        #   description` * `annotation_date` * `annotation_date_range` * `color`
        #   Additionally, this API provides the following helper functions: *
        #   annotation_duration() : the duration that this annotation marks, [durations](
        #   https://github.com/protocolbuffers/protobuf/blob/main/src/google/protobuf/
        #   duration.proto). expect a numeric representation of seconds followed by an `s`
        #   suffix. * is_annotation_in_range(start_date, end_date) : if the annotation is
        #   in the range specified by the `start_date` and `end_date`. The dates are in
        #   ISO-8601 format, for example `2031-06-28`. Supported operations: * `=` :
        #   equals * `!=` : not equals * `<` : less than * `>` : greater than * `<=` :
        #   less than or equals * `>=` : greater than or equals * `:` : has operator * `=~`
        #   : [regular expression](https://github.com/google/re2/wiki/Syntax) match * `!~`
        #   : [regular expression](https://github.com/google/re2/wiki/Syntax) does not
        #   match * `NOT` : Logical not * `AND` : Logical and * `OR` : Logical or Examples:
        #   1. `title="Holiday Sale"` 2. `description=~"[Bb]ig [Gg]ame.*[Ss]ale"` 3. `
        #   is_annotation_in_range("2025-12-25", "2026-01-16") = true` 4. `
        #   annotation_duration() >= 172800s AND title:BOGO`
        # @param [Fixnum] page_size
        #   Optional. The maximum number of resources to return. The service may return
        #   fewer than this value, even if there are additional pages. If unspecified, at
        #   most 50 resources will be returned. The maximum value is 200; (higher values
        #   will be coerced to the maximum)
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListReportingDataAnnotations`
        #   call. Provide this to retrieve the subsequent page. When paginating, all
        #   other parameters provided to `ListReportingDataAnnotations` must match the
        #   call that provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_reporting_data_annotations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/reportingDataAnnotations', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListReportingDataAnnotationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a Reporting Data Annotation.
        # @param [String] name
        #   Required. Identifier. Resource name of this Reporting Data Annotation. Format:
        #   'properties/`property_id`/reportingDataAnnotations/`reporting_data_annotation`'
        #   Format: 'properties/123/reportingDataAnnotations/456'
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation] google_analytics_admin_v1alpha_reporting_data_annotation_object
        # @param [String] update_mask
        #   Optional. The list of fields to update. Field names must be in snake case (for
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_reporting_data_annotation(name, google_analytics_admin_v1alpha_reporting_data_annotation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation::Representation
          command.request_object = google_analytics_admin_v1alpha_reporting_data_annotation_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaReportingDataAnnotation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a roll-up property source link. Only roll-up properties can have
        # source links, so this method will throw an error if used on other types of
        # properties.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink] google_analytics_admin_v1alpha_rollup_property_source_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_rollup_property_source_link(parent, google_analytics_admin_v1alpha_rollup_property_source_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/rollupPropertySourceLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink::Representation
          command.request_object = google_analytics_admin_v1alpha_rollup_property_source_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a roll-up property source link. Only roll-up properties can have
        # source links, so this method will throw an error if used on other types of
        # properties.
        # @param [String] name
        #   Required. Format: properties/`property_id`/rollupPropertySourceLinks/`
        #   rollup_property_source_link_id` Example: properties/1234/
        #   rollupPropertySourceLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_rollup_property_source_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single roll-up property source Link. Only roll-up properties can
        # have source links, so this method will throw an error if used on other types
        # of properties.
        # @param [String] name
        #   Required. The name of the roll-up property source link to lookup. Format:
        #   properties/`property_id`/rollupPropertySourceLinks/`
        #   rollup_property_source_link_id` Example: properties/123/
        #   rollupPropertySourceLinks/456
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_rollup_property_source_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaRollupPropertySourceLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists roll-up property source Links on a property. Only roll-up properties can
        # have source links, so this method will throw an error if used on other types
        # of properties.
        # @param [String] parent
        #   Required. The name of the roll-up property to list roll-up property source
        #   links under. Format: properties/`property_id` Example: properties/1234
        # @param [Fixnum] page_size
        #   Optional. The maximum number of resources to return. The service may return
        #   fewer than this value, even if there are additional pages. If unspecified, at
        #   most 50 resources will be returned. The maximum value is 200; (higher values
        #   will be coerced to the maximum)
        # @param [String] page_token
        #   Optional. A page token, received from a previous `
        #   ListRollupPropertySourceLinks` call. Provide this to retrieve the subsequent
        #   page. When paginating, all other parameters provided to `
        #   ListRollupPropertySourceLinks` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_rollup_property_source_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/rollupPropertySourceLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListRollupPropertySourceLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a SearchAds360Link.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link] google_analytics_admin_v1alpha_search_ads360_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_search_ads360_link(parent, google_analytics_admin_v1alpha_search_ads360_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/searchAds360Links', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link::Representation
          command.request_object = google_analytics_admin_v1alpha_search_ads360_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a SearchAds360Link on a property.
        # @param [String] name
        #   Required. The name of the SearchAds360Link to delete. Example format:
        #   properties/1234/SearchAds360Links/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_search_ads360_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Look up a single SearchAds360Link
        # @param [String] name
        #   Required. The name of the SearchAds360Link to get. Example format: properties/
        #   1234/SearchAds360Link/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_search_ads360_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all SearchAds360Links on a property.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Fixnum] page_size
        #   The maximum number of resources to return. If unspecified, at most 50
        #   resources will be returned. The maximum value is 200 (higher values will be
        #   coerced to the maximum).
        # @param [String] page_token
        #   A page token, received from a previous `ListSearchAds360Links` call. Provide
        #   this to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListSearchAds360Links` must match the call that provided the page
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_search_ads360_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/searchAds360Links', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSearchAds360LinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a SearchAds360Link on a property.
        # @param [String] name
        #   Output only. The resource name for this SearchAds360Link resource. Format:
        #   properties/`propertyId`/searchAds360Links/`linkId` Note: linkId is not the
        #   Search Ads 360 advertiser ID
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link] google_analytics_admin_v1alpha_search_ads360_link_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated. Omitted fields will not be updated.
        #   To replace the entire entity, use one path with the string "*" to match all
        #   fields.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_search_ads360_link(name, google_analytics_admin_v1alpha_search_ads360_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link::Representation
          command.request_object = google_analytics_admin_v1alpha_search_ads360_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSearchAds360Link
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a subproperty Event Filter.
        # @param [String] parent
        #   Required. The ordinary property for which to create a subproperty event filter.
        #   Format: properties/property_id Example: properties/123
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter] google_analytics_admin_v1alpha_subproperty_event_filter_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_subproperty_event_filter(parent, google_analytics_admin_v1alpha_subproperty_event_filter_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1alpha/{+parent}/subpropertyEventFilters', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter::Representation
          command.request_object = google_analytics_admin_v1alpha_subproperty_event_filter_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a subproperty event filter.
        # @param [String] name
        #   Required. Resource name of the subproperty event filter to delete. Format:
        #   properties/property_id/subpropertyEventFilters/subproperty_event_filter
        #   Example: properties/123/subpropertyEventFilters/456
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_subproperty_event_filter(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single subproperty Event Filter.
        # @param [String] name
        #   Required. Resource name of the subproperty event filter to lookup. Format:
        #   properties/property_id/subpropertyEventFilters/subproperty_event_filter
        #   Example: properties/123/subpropertyEventFilters/456
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_subproperty_event_filter(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all subproperty Event Filters on a property.
        # @param [String] parent
        #   Required. Resource name of the ordinary property. Format: properties/
        #   property_id Example: properties/123
        # @param [Fixnum] page_size
        #   Optional. The maximum number of resources to return. The service may return
        #   fewer than this value, even if there are additional pages. If unspecified, at
        #   most 50 resources will be returned. The maximum value is 200; (higher values
        #   will be coerced to the maximum)
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListSubpropertyEventFilters`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListSubpropertyEventFilters` must match the call that
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_subproperty_event_filters(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/subpropertyEventFilters', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertyEventFiltersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a subproperty Event Filter.
        # @param [String] name
        #   Output only. Format: properties/`ordinary_property_id`/subpropertyEventFilters/
        #   `sub_property_event_filter` Example: properties/1234/subpropertyEventFilters/
        #   5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter] google_analytics_admin_v1alpha_subproperty_event_filter_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_subproperty_event_filter(name, google_analytics_admin_v1alpha_subproperty_event_filter_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter::Representation
          command.request_object = google_analytics_admin_v1alpha_subproperty_event_filter_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertyEventFilter
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single `SubpropertySyncConfig`.
        # @param [String] name
        #   Required. Resource name of the SubpropertySyncConfig to lookup. Format:
        #   properties/`ordinary_property_id`/subpropertySyncConfigs/`subproperty_id`
        #   Example: properties/1234/subpropertySyncConfigs/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_subproperty_sync_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all `SubpropertySyncConfig` resources for a property.
        # @param [String] parent
        #   Required. Resource name of the property. Format: properties/property_id
        #   Example: properties/123
        # @param [Fixnum] page_size
        #   Optional. The maximum number of resources to return. The service may return
        #   fewer than this value, even if there are additional pages. If unspecified, at
        #   most 50 resources will be returned. The maximum value is 200; (higher values
        #   will be coerced to the maximum)
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListSubpropertySyncConfig`
        #   call. Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListSubpropertySyncConfig` must match the call that
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_subproperty_sync_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1alpha/{+parent}/subpropertySyncConfigs', options)
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaListSubpropertySyncConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a `SubpropertySyncConfig`.
        # @param [String] name
        #   Output only. Identifier. Format: properties/`ordinary_property_id`/
        #   subpropertySyncConfigs/`subproperty_id` Example: properties/1234/
        #   subpropertySyncConfigs/5678
        # @param [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig] google_analytics_admin_v1alpha_subproperty_sync_config_object
        # @param [String] update_mask
        #   Optional. The list of fields to update. Field names must be in snake case (for
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_subproperty_sync_config(name, google_analytics_admin_v1alpha_subproperty_sync_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1alpha/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig::Representation
          command.request_object = google_analytics_admin_v1alpha_subproperty_sync_config_object
          command.response_representation = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig::Representation
          command.response_class = Google::Apis::AnalyticsadminV1alpha::GoogleAnalyticsAdminV1alphaSubpropertySyncConfig
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
