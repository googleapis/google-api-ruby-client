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
    module AnalyticsadminV1beta
      # Google Analytics Admin API
      #
      # 
      #
      # @example
      #    require 'google/apis/analyticsadmin_v1beta'
      #
      #    Analyticsadmin = Google::Apis::AnalyticsadminV1beta # Alias the module
      #    service = Analyticsadmin::GoogleAnalyticsAdminService.new
      #
      # @see http://code.google.com/apis/analytics/docs/mgmt/home.html
      class GoogleAnalyticsAdminService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://analyticsadmin.googleapis.com/', '',
                client_name: 'google-apis-analyticsadmin_v1beta',
                client_version: Google::Apis::AnalyticsadminV1beta::GEM_VERSION)
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountSummariesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountSummariesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_summaries(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/accountSummaries', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountSummariesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountSummariesResponse
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
        # GoogleAdsLinks, Streams, UserLinks) will be permanently purged. https://
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get data sharing settings on an account. Data sharing settings are singletons.
        # @param [String] name
        #   Required. The name of the settings to lookup. Format: accounts/`account`/
        #   dataSharingSettings Example: "accounts/1000/dataSharingSettings"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataSharingSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataSharingSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_data_sharing_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataSharingSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataSharingSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns all accounts accessible by the caller. Note that these accounts might
        # not currently have GA4 properties. Soft-deleted (ie: "trashed") accounts are
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/accounts', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListAccountsResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount] google_analytics_admin_v1beta_account_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account(name, google_analytics_admin_v1beta_account_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
          command.request_object = google_analytics_admin_v1beta_account_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAccount
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests a ticket for creating an account.
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest] google_analytics_admin_v1beta_provision_account_ticket_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_account_account_ticket(google_analytics_admin_v1beta_provision_account_ticket_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/accounts:provisionAccountTicket', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProvisionAccountTicketRequest::Representation
          command.request_object = google_analytics_admin_v1beta_provision_account_ticket_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProvisionAccountTicketResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Searches through all changes to an account or its children given the specified
        # set of filters.
        # @param [String] account
        #   Required. The account resource for which to return change history resources.
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest] google_analytics_admin_v1beta_search_change_history_events_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_account_change_history_events(account, google_analytics_admin_v1beta_search_change_history_events_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+account}:searchChangeHistoryEvents', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsRequest::Representation
          command.request_object = google_analytics_admin_v1beta_search_change_history_events_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaSearchChangeHistoryEventsResponse
          command.params['account'] = account unless account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acknowledges the terms of user data collection for the specified property.
        # This acknowledgement must be completed (either in the Google Analytics UI or
        # through this API) before MeasurementProtocolSecret resources may be created.
        # @param [String] property
        #   Required. The property for which to acknowledge user data collection.
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest] google_analytics_admin_v1beta_acknowledge_user_data_collection_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_property_user_data_collection(property, google_analytics_admin_v1beta_acknowledge_user_data_collection_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+property}:acknowledgeUserDataCollection', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionRequest::Representation
          command.request_object = google_analytics_admin_v1beta_acknowledge_user_data_collection_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaAcknowledgeUserDataCollectionResponse
          command.params['property'] = property unless property.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an "GA4" property with the specified location and attributes.
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty] google_analytics_admin_v1beta_property_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property(google_analytics_admin_v1beta_property_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/properties', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
          command.request_object = google_analytics_admin_v1beta_property_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Marks target Property as soft-deleted (ie: "trashed") and returns it. This API
        # does not have a method to restore soft-deleted properties. However, they can
        # be restored using the Trash Can UI. If the properties are not restored before
        # the expiration time, the Property and all child resources (eg: GoogleAdsLinks,
        # Streams, UserLinks) will be permanently purged. https://support.google.com/
        # analytics/answer/6154772 Returns an error if the target is not found, or is
        # not a GA4 Property.
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single "GA4" Property.
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_retention_settings(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns child Properties under the specified parent Account. Only "GA4"
        # properties will be returned. Properties will be excluded if the caller does
        # not have access. Soft-deleted (ie: "trashed") properties are excluded by
        # default. Returns an empty list if no relevant properties are found.
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListPropertiesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListPropertiesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_properties(filter: nil, page_size: nil, page_token: nil, show_deleted: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/properties', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListPropertiesResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListPropertiesResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty] google_analytics_admin_v1beta_property_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property(name, google_analytics_admin_v1beta_property_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
          command.request_object = google_analytics_admin_v1beta_property_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaProperty
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings] google_analytics_admin_v1beta_data_retention_settings_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_property_data_retention_settings(name, google_analytics_admin_v1beta_data_retention_settings_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings::Representation
          command.request_object = google_analytics_admin_v1beta_data_retention_settings_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataRetentionSettings
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a conversion event with the specified attributes.
        # @param [String] parent
        #   Required. The resource name of the parent property where this conversion event
        #   will be created. Format: properties/123
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent] google_analytics_admin_v1beta_conversion_event_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_conversion_event(parent, google_analytics_admin_v1beta_conversion_event_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/conversionEvents', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent::Representation
          command.request_object = google_analytics_admin_v1beta_conversion_event_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a conversion event in a property.
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_conversion_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve a single conversion event.
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_conversion_event(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaConversionEvent
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of conversion events in the specified parent property. Returns
        # an empty list if no conversion events are found.
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListConversionEventsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListConversionEventsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_conversion_events(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/conversionEvents', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListConversionEventsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListConversionEventsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Archives a CustomDimension on a property.
        # @param [String] name
        #   Required. The name of the CustomDimension to archive. Example format:
        #   properties/1234/customDimensions/5678
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest] google_analytics_admin_v1beta_archive_custom_dimension_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_property_custom_dimension(name, google_analytics_admin_v1beta_archive_custom_dimension_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:archive', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaArchiveCustomDimensionRequest::Representation
          command.request_object = google_analytics_admin_v1beta_archive_custom_dimension_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CustomDimension.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension] google_analytics_admin_v1beta_custom_dimension_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_custom_dimension(parent, google_analytics_admin_v1beta_custom_dimension_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/customDimensions', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension::Representation
          command.request_object = google_analytics_admin_v1beta_custom_dimension_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_custom_dimension(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomDimensionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomDimensionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_custom_dimensions(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/customDimensions', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomDimensionsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomDimensionsResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension] google_analytics_admin_v1beta_custom_dimension_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_custom_dimension(name, google_analytics_admin_v1beta_custom_dimension_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension::Representation
          command.request_object = google_analytics_admin_v1beta_custom_dimension_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomDimension
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest] google_analytics_admin_v1beta_archive_custom_metric_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def archive_property_custom_metric(name, google_analytics_admin_v1beta_archive_custom_metric_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+name}:archive', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaArchiveCustomMetricRequest::Representation
          command.request_object = google_analytics_admin_v1beta_archive_custom_metric_request_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CustomMetric.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric] google_analytics_admin_v1beta_custom_metric_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_custom_metric(parent, google_analytics_admin_v1beta_custom_metric_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/customMetrics', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric::Representation
          command.request_object = google_analytics_admin_v1beta_custom_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_custom_metric(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_custom_metrics(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/customMetrics', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomMetricsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListCustomMetricsResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric] google_analytics_admin_v1beta_custom_metric_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_custom_metric(name, google_analytics_admin_v1beta_custom_metric_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric::Representation
          command.request_object = google_analytics_admin_v1beta_custom_metric_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaCustomMetric
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a DataStream.
        # @param [String] parent
        #   Required. Example format: properties/1234
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream] google_analytics_admin_v1beta_data_stream_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_data_stream(parent, google_analytics_admin_v1beta_data_stream_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/dataStreams', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
          command.request_object = google_analytics_admin_v1beta_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListDataStreamsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListDataStreamsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_data_streams(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/dataStreams', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListDataStreamsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListDataStreamsResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream] google_analytics_admin_v1beta_data_stream_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_data_stream(name, google_analytics_admin_v1beta_data_stream_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
          command.request_object = google_analytics_admin_v1beta_data_stream_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaDataStream
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a measurement protocol secret.
        # @param [String] parent
        #   Required. The parent resource where this secret will be created. Format:
        #   properties/`property`/dataStreams/`dataStream`
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret] google_analytics_admin_v1beta_measurement_protocol_secret_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_data_stream_measurement_protocol_secret(parent, google_analytics_admin_v1beta_measurement_protocol_secret_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/measurementProtocolSecrets', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1beta_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lookup for a single "GA4" MeasurementProtocolSecret.
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_property_data_stream_measurement_protocol_secret(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_data_stream_measurement_protocol_secrets(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/measurementProtocolSecrets', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListMeasurementProtocolSecretsResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret] google_analytics_admin_v1beta_measurement_protocol_secret_object
        # @param [String] update_mask
        #   The list of fields to be updated. Omitted fields will not be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_data_stream_measurement_protocol_secret(name, google_analytics_admin_v1beta_measurement_protocol_secret_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
          command.request_object = google_analytics_admin_v1beta_measurement_protocol_secret_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaMeasurementProtocolSecret
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a FirebaseLink. Properties can have at most one FirebaseLink.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: properties/1234
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink] google_analytics_admin_v1beta_firebase_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_firebase_link(parent, google_analytics_admin_v1beta_firebase_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/firebaseLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink::Representation
          command.request_object = google_analytics_admin_v1beta_firebase_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaFirebaseLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a FirebaseLink on a property
        # @param [String] name
        #   Required. Format: properties/`property_id`/firebaseLinks/`firebase_link_id`
        #   Example: properties/1234/firebaseLinks/5678
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_firebase_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists FirebaseLinks on a property. Properties can have at most one
        # FirebaseLink.
        # @param [String] parent
        #   Required. Format: properties/`property_id` Example: properties/1234
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListFirebaseLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListFirebaseLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_firebase_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/firebaseLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListFirebaseLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListFirebaseLinksResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink] google_analytics_admin_v1beta_google_ads_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_property_google_ads_link(parent, google_analytics_admin_v1beta_google_ads_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}/googleAdsLinks', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
          command.request_object = google_analytics_admin_v1beta_google_ads_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_property_google_ads_link(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta/{+name}', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleProtobufEmpty
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_property_google_ads_links(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta/{+parent}/googleAdsLinks', options)
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaListGoogleAdsLinksResponse
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
        # @param [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink] google_analytics_admin_v1beta_google_ads_link_object
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
        # @yieldparam result [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_property_google_ads_link(name, google_analytics_admin_v1beta_google_ads_link_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta/{+name}', options)
          command.request_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
          command.request_object = google_analytics_admin_v1beta_google_ads_link_object
          command.response_representation = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink::Representation
          command.response_class = Google::Apis::AnalyticsadminV1beta::GoogleAnalyticsAdminV1betaGoogleAdsLink
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
