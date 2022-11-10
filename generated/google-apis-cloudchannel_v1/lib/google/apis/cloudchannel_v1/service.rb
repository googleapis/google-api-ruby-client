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
    module CloudchannelV1
      # Cloud Channel API
      #
      # The Cloud Channel API enables Google Cloud partners to have a single unified
      #  resale platform and APIs across all of Google Cloud including GCP, Workspace,
      #  Maps and Chrome.
      #
      # @example
      #    require 'google/apis/cloudchannel_v1'
      #
      #    Cloudchannel = Google::Apis::CloudchannelV1 # Alias the module
      #    service = Cloudchannel::CloudchannelService.new
      #
      # @see https://cloud.google.com/channel
      class CloudchannelService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://cloudchannel.googleapis.com/', '',
                client_name: 'google-apis-cloudchannel_v1',
                client_version: Google::Apis::CloudchannelV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Confirms the existence of Cloud Identity accounts based on the domain and if
        # the Cloud Identity accounts are owned by the reseller. Possible error codes: *
        # PERMISSION_DENIED: The reseller account making the request is different from
        # the reseller account in the API request. * INVALID_ARGUMENT: Required request
        # parameters are missing or invalid. * INVALID_VALUE: Invalid domain value in
        # the request. Return value: A list of CloudIdentityCustomerAccount resources
        # for the domain (may be empty) Note: in the v1alpha1 version of the API, a
        # NOT_FOUND error returns if no CloudIdentityCustomerAccount resources match the
        # domain.
        # @param [String] parent
        #   Required. The reseller account's resource name. Parent uses the format:
        #   accounts/`account_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest] google_cloud_channel_v1_check_cloud_identity_accounts_exist_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_account_cloud_identity_accounts_exist(parent, google_cloud_channel_v1_check_cloud_identity_accounts_exist_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:checkCloudIdentityAccountsExist', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest::Representation
          command.request_object = google_cloud_channel_v1_check_cloud_identity_accounts_exist_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists service accounts with subscriber privileges on the Cloud Pub/Sub topic
        # created for this Channel Services account. Possible error codes: *
        # PERMISSION_DENIED: The reseller account making the request and the provided
        # reseller account are different, or the impersonated user is not a super admin.
        # * INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: The topic resource doesn't exist. * INTERNAL: Any non-user error
        # related to a technical issue in the backend. Contact Cloud Channel support. *
        # UNKNOWN: Any non-user error related to a technical issue in the backend.
        # Contact Cloud Channel support. Return value: A list of service email addresses.
        # @param [String] account
        #   Required. Resource name of the account.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of service accounts to return. The service may
        #   return fewer than this value. If unspecified, returns at most 100 service
        #   accounts. The maximum value is 1000; the server will coerce values above 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListSubscribers` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListSubscribers` must match the call that provided the
        #   page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSubscribersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSubscribersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_subscribers(account, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+account}:listSubscribers', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSubscribersResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSubscribersResponse
          command.params['account'] = account unless account.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List TransferableOffers of a customer based on Cloud Identity ID or Customer
        # Name in the request. Use this method when a reseller gets the entitlement
        # information of an unowned customer. The reseller should provide the customer's
        # Cloud Identity ID or Customer Name. Possible error codes: * PERMISSION_DENIED:
        # * The customer doesn't belong to the reseller and has no auth token. * The
        # customer provided incorrect reseller information when generating auth token. *
        # The reseller account making the request is different from the reseller account
        # in the query. * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid. Return value: List of TransferableOffer for the given customer and
        # SKU.
        # @param [String] parent
        #   Required. The resource name of the reseller's account.
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableOffersRequest] google_cloud_channel_v1_list_transferable_offers_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableOffersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableOffersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_transferable_offers(parent, google_cloud_channel_v1_list_transferable_offers_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:listTransferableOffers', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableOffersRequest::Representation
          command.request_object = google_cloud_channel_v1_list_transferable_offers_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableOffersResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableOffersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List TransferableSkus of a customer based on the Cloud Identity ID or Customer
        # Name in the request. Use this method to list the entitlements information of
        # an unowned customer. You should provide the customer's Cloud Identity ID or
        # Customer Name. Possible error codes: * PERMISSION_DENIED: * The customer doesn'
        # t belong to the reseller and has no auth token. * The supplied auth token is
        # invalid. * The reseller account making the request is different from the
        # reseller account in the query. * INVALID_ARGUMENT: Required request parameters
        # are missing or invalid. Return value: A list of the customer's TransferableSku.
        # @param [String] parent
        #   Required. The reseller account's resource name. Parent uses the format:
        #   accounts/`account_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableSkusRequest] google_cloud_channel_v1_list_transferable_skus_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableSkusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableSkusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_transferable_skus(parent, google_cloud_channel_v1_list_transferable_skus_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:listTransferableSkus', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableSkusRequest::Representation
          command.request_object = google_cloud_channel_v1_list_transferable_skus_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableSkusResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListTransferableSkusResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Registers a service account with subscriber privileges on the Cloud Pub/Sub
        # topic for this Channel Services account. After you create a subscriber, you
        # get the events through SubscriberEvent Possible error codes: *
        # PERMISSION_DENIED: The reseller account making the request and the provided
        # reseller account are different, or the impersonated user is not a super admin.
        # * INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # INTERNAL: Any non-user error related to a technical issue in the backend.
        # Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a
        # technical issue in the backend. Contact Cloud Channel support. Return value:
        # The topic name with the registered service email address.
        # @param [String] account
        #   Required. Resource name of the account.
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RegisterSubscriberRequest] google_cloud_channel_v1_register_subscriber_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RegisterSubscriberResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RegisterSubscriberResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def register_account(account, google_cloud_channel_v1_register_subscriber_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+account}:register', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1RegisterSubscriberRequest::Representation
          command.request_object = google_cloud_channel_v1_register_subscriber_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1RegisterSubscriberResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1RegisterSubscriberResponse
          command.params['account'] = account unless account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unregisters a service account with subscriber privileges on the Cloud Pub/Sub
        # topic created for this Channel Services account. If there are no service
        # accounts left with subscriber privileges, this deletes the topic. You can call
        # ListSubscribers to check for these accounts. Possible error codes: *
        # PERMISSION_DENIED: The reseller account making the request and the provided
        # reseller account are different, or the impersonated user is not a super admin.
        # * INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: The topic resource doesn't exist. * INTERNAL: Any non-user error
        # related to a technical issue in the backend. Contact Cloud Channel support. *
        # UNKNOWN: Any non-user error related to a technical issue in the backend.
        # Contact Cloud Channel support. Return value: The topic name that unregistered
        # the service email address. Returns a success response if the service email
        # address wasn't registered with the topic.
        # @param [String] account
        #   Required. Resource name of the account.
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1UnregisterSubscriberRequest] google_cloud_channel_v1_unregister_subscriber_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1UnregisterSubscriberResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1UnregisterSubscriberResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unregister_account(account, google_cloud_channel_v1_unregister_subscriber_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+account}:unregister', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1UnregisterSubscriberRequest::Representation
          command.request_object = google_cloud_channel_v1_unregister_subscriber_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1UnregisterSubscriberResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1UnregisterSubscriberResponse
          command.params['account'] = account unless account.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Initiates a channel partner link between a distributor and a reseller, or
        # between resellers in an n-tier reseller channel. Invited partners need to
        # follow the invite_link_uri provided in the response to accept. After accepting
        # the invitation, a link is set up between the two parties. You must be a
        # distributor to call this method. Possible error codes: * PERMISSION_DENIED:
        # The reseller account making the request is different from the reseller account
        # in the API request. * INVALID_ARGUMENT: Required request parameters are
        # missing or invalid. * ALREADY_EXISTS: The ChannelPartnerLink sent in the
        # request already exists. * NOT_FOUND: No Cloud Identity customer exists for
        # provided domain. * INTERNAL: Any non-user error related to a technical issue
        # in the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error
        # related to a technical issue in the backend. Contact Cloud Channel support.
        # Return value: The new ChannelPartnerLink resource.
        # @param [String] parent
        #   Required. Create a channel partner link for the provided reseller account's
        #   resource name. Parent uses the format: accounts/`account_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink] google_cloud_channel_v1_channel_partner_link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_channel_partner_link(parent, google_cloud_channel_v1_channel_partner_link_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/channelPartnerLinks', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink::Representation
          command.request_object = google_cloud_channel_v1_channel_partner_link_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the requested ChannelPartnerLink resource. You must be a distributor
        # to call this method. Possible error codes: * PERMISSION_DENIED: The reseller
        # account making the request is different from the reseller account in the API
        # request. * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid. * NOT_FOUND: ChannelPartnerLink resource not found because of an
        # invalid channel partner link name. Return value: The ChannelPartnerLink
        # resource.
        # @param [String] name
        #   Required. The resource name of the channel partner link to retrieve. Name uses
        #   the format: accounts/`account_id`/channelPartnerLinks/`id` where `id` is the
        #   Cloud Identity ID of the partner.
        # @param [String] view
        #   Optional. The level of granularity the ChannelPartnerLink will display.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_channel_partner_link(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List ChannelPartnerLinks belonging to a distributor. You must be a distributor
        # to call this method. Possible error codes: * PERMISSION_DENIED: The reseller
        # account making the request is different from the reseller account in the API
        # request. * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid. Return value: The list of the distributor account's
        # ChannelPartnerLink resources.
        # @param [String] parent
        #   Required. The resource name of the reseller account for listing channel
        #   partner links. Parent uses the format: accounts/`account_id`
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, server will pick a default size (25). The maximum
        #   value is 200; the server will coerce values above 200.
        # @param [String] page_token
        #   Optional. A token for a page of results other than the first page. Obtained
        #   using ListChannelPartnerLinksResponse.next_page_token of the previous
        #   CloudChannelService.ListChannelPartnerLinks call.
        # @param [String] view
        #   Optional. The level of granularity the ChannelPartnerLink will display.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerLinksResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerLinksResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_channel_partner_links(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/channelPartnerLinks', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerLinksResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerLinksResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a channel partner link. Distributors call this method to change a link'
        # s status. For example, to suspend a partner link. You must be a distributor to
        # call this method. Possible error codes: * PERMISSION_DENIED: The reseller
        # account making the request is different from the reseller account in the API
        # request. * INVALID_ARGUMENT: * Required request parameters are missing or
        # invalid. * Link state cannot change from invited to active or suspended. *
        # Cannot send reseller_cloud_identity_id, invite_url, or name in update mask. *
        # NOT_FOUND: ChannelPartnerLink resource not found. * INTERNAL: Any non-user
        # error related to a technical issue in the backend. Contact Cloud Channel
        # support. * UNKNOWN: Any non-user error related to a technical issue in the
        # backend. Contact Cloud Channel support. Return value: The updated
        # ChannelPartnerLink resource.
        # @param [String] name
        #   Required. The resource name of the channel partner link to cancel. Name uses
        #   the format: accounts/`account_id`/channelPartnerLinks/`id` where `id` is the
        #   Cloud Identity ID of the partner.
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1UpdateChannelPartnerLinkRequest] google_cloud_channel_v1_update_channel_partner_link_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_channel_partner_link(name, google_cloud_channel_v1_update_channel_partner_link_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1UpdateChannelPartnerLinkRequest::Representation
          command.request_object = google_cloud_channel_v1_update_channel_partner_link_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerLink
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a ChannelPartnerRepricingConfig. Call this method to set modifications
        # for a specific ChannelPartner's bill. You can only create configs if the
        # RepricingConfig.effective_invoice_month is a future month. If needed, you can
        # create a config for the current month, with some restrictions. When creating a
        # config for a future month, make sure there are no existing configs for that
        # RepricingConfig.effective_invoice_month. The following restrictions are for
        # creating configs in the current month. * This functionality is reserved for
        # recovering from an erroneous config, and should not be used for regular
        # business cases. * The new config will not modify exports used with other
        # configs. Changes to the config may be immediate, but may take up to 24 hours. *
        # There is a limit of ten configs for any ChannelPartner or RepricingConfig.
        # effective_invoice_month. * The contained ChannelPartnerRepricingConfig.
        # repricing_config vaule must be different from the value used in the current
        # config for a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the
        # account making the request and the account being queried are different. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. Also
        # displays if the updated config is for the current month or past months. *
        # NOT_FOUND: The ChannelPartnerRepricingConfig specified does not exist or is
        # not associated with the given account. * INTERNAL: Any non-user error related
        # to technical issues in the backend. In this case, contact Cloud Channel
        # support. Return Value: If successful, the updated
        # ChannelPartnerRepricingConfig resource, otherwise returns an error.
        # @param [String] parent
        #   Required. The resource name of the ChannelPartner that will receive the
        #   repricing config. Parent uses the format: accounts/`account_id`/
        #   channelPartnerLinks/`channel_partner_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig] google_cloud_channel_v1_channel_partner_repricing_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_channel_partner_link_channel_partner_repricing_config(parent, google_cloud_channel_v1_channel_partner_repricing_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/channelPartnerRepricingConfigs', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig::Representation
          command.request_object = google_cloud_channel_v1_channel_partner_repricing_config_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the given ChannelPartnerRepricingConfig permanently. You can only
        # delete configs if their RepricingConfig.effective_invoice_month is set to a
        # date after the current month. Possible error codes: * PERMISSION_DENIED: The
        # account making the request does not own this customer. * INVALID_ARGUMENT:
        # Required request parameters are missing or invalid. * FAILED_PRECONDITION: The
        # ChannelPartnerRepricingConfig is active or in the past. * NOT_FOUND: No
        # ChannelPartnerRepricingConfig found for the name in the request.
        # @param [String] name
        #   Required. The resource name of the channel partner repricing config rule to
        #   delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_channel_partner_link_channel_partner_repricing_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about how a Distributor modifies their bill before sending it
        # to a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account
        # making the request and the account being queried are different. * NOT_FOUND:
        # The ChannelPartnerRepricingConfig was not found. * INTERNAL: Any non-user
        # error related to technical issues in the backend. In this case, contact Cloud
        # Channel support. Return Value: If successful, the
        # ChannelPartnerRepricingConfig resource, otherwise returns an error.
        # @param [String] name
        #   Required. The resource name of the ChannelPartnerRepricingConfig Format:
        #   accounts/`account_id`/channelPartnerLinks/`channel_partner_id`/
        #   channelPartnerRepricingConfigs/`id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_channel_partner_link_channel_partner_repricing_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about how a Reseller modifies their bill before sending it
        # to a ChannelPartner. Possible Error Codes: * PERMISSION_DENIED: If the account
        # making the request and the account being queried are different. * NOT_FOUND:
        # The ChannelPartnerRepricingConfig specified does not exist or is not
        # associated with the given account. * INTERNAL: Any non-user error related to
        # technical issues in the backend. In this case, contact Cloud Channel support.
        # Return Value: If successful, the ChannelPartnerRepricingConfig resources. The
        # data for each resource is displayed in the ascending order of: * channel
        # partner ID * RepricingConfig.effective_invoice_month *
        # ChannelPartnerRepricingConfig.update_time If unsuccessful, returns an error.
        # @param [String] parent
        #   Required. The resource name of the account's ChannelPartnerLink. Parent uses
        #   the format: accounts/`account_id`/channelPartnerLinks/`channel_partner_id`.
        #   Supports accounts/`account_id`/channelPartnerLinks/- to retrieve configs for
        #   all channel partners.
        # @param [String] filter
        #   Optional. A filter for [CloudChannelService.ListChannelPartnerRepricingConfigs]
        #   results (channel_partner_link only). You can use this filter when you support
        #   a BatchGet-like query. To use the filter, you must set `parent=accounts/`
        #   account_id`/channelPartnerLinks/-`. Example: `channel_partner_link = accounts/
        #   account_id/channelPartnerLinks/c1` OR `channel_partner_link = accounts/
        #   account_id/channelPartnerLinks/c2`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of repricing configs to return. The service may
        #   return fewer than this value. If unspecified, returns a maximum of 50 rules.
        #   The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results beyond the first page.
        #   Obtained through ListChannelPartnerRepricingConfigsResponse.next_page_token of
        #   the previous CloudChannelService.ListChannelPartnerRepricingConfigs call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_channel_partner_link_channel_partner_repricing_configs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/channelPartnerRepricingConfigs', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a ChannelPartnerRepricingConfig. Call this method to set modifications
        # for a specific ChannelPartner's bill. This method overwrites the existing
        # CustomerRepricingConfig. You can only update configs if the RepricingConfig.
        # effective_invoice_month is a future month. To make changes to configs for the
        # current month, use CreateChannelPartnerRepricingConfig, taking note of its
        # restrictions. You cannot update the RepricingConfig.effective_invoice_month.
        # When updating a config in the future: * This config must already exist.
        # Possible Error Codes: * PERMISSION_DENIED: If the account making the request
        # and the account being queried are different. * INVALID_ARGUMENT: Missing or
        # invalid required parameters in the request. Also displays if the updated
        # config is for the current month or past months. * NOT_FOUND: The
        # ChannelPartnerRepricingConfig specified does not exist or is not associated
        # with the given account. * INTERNAL: Any non-user error related to technical
        # issues in the backend. In this case, contact Cloud Channel support. Return
        # Value: If successful, the updated ChannelPartnerRepricingConfig resource,
        # otherwise returns an error.
        # @param [String] name
        #   Output only. Resource name of the ChannelPartnerRepricingConfig. Format:
        #   accounts/`account_id`/channelPartnerLinks/`channel_partner_id`/
        #   channelPartnerRepricingConfigs/`id`.
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig] google_cloud_channel_v1_channel_partner_repricing_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_channel_partner_link_channel_partner_repricing_config(name, google_cloud_channel_v1_channel_partner_repricing_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig::Representation
          command.request_object = google_cloud_channel_v1_channel_partner_repricing_config_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChannelPartnerRepricingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Customer resource under the reseller or distributor account.
        # Possible error codes: * PERMISSION_DENIED: The reseller account making the
        # request is different from the reseller account in the API request. *
        # INVALID_ARGUMENT: * Required request parameters are missing or invalid. *
        # Domain field value doesn't match the primary email domain. Return value: The
        # newly created Customer resource.
        # @param [String] parent
        #   Required. The resource name of reseller account in which to create the
        #   customer. Parent uses the format: accounts/`account_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] google_cloud_channel_v1_customer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_channel_partner_link_customer(parent, google_cloud_channel_v1_customer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/customers', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.request_object = google_cloud_channel_v1_customer_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the given Customer permanently. Possible error codes: *
        # PERMISSION_DENIED: The account making the request does not own this customer. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # FAILED_PRECONDITION: The customer has existing entitlements. * NOT_FOUND: No
        # Customer resource found for the name in the request.
        # @param [String] name
        #   Required. The resource name of the customer to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_channel_partner_link_customer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the requested Customer resource. Possible error codes: *
        # PERMISSION_DENIED: The reseller account making the request is different from
        # the reseller account in the API request. * INVALID_ARGUMENT: Required request
        # parameters are missing or invalid. * NOT_FOUND: The customer resource doesn't
        # exist. Usually the result of an invalid name parameter. Return value: The
        # Customer resource.
        # @param [String] name
        #   Required. The resource name of the customer to retrieve. Name uses the format:
        #   accounts/`account_id`/customers/`customer_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_channel_partner_link_customer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a Customer from the Cloud Identity associated with the provided Cloud
        # Identity ID or domain before a TransferEntitlements call. If a linked Customer
        # already exists and overwrite_if_exists is true, it will update that Customer's
        # data. Possible error codes: * PERMISSION_DENIED: The reseller account making
        # the request is different from the reseller account in the API request. *
        # NOT_FOUND: Cloud Identity doesn't exist or was deleted. * INVALID_ARGUMENT:
        # Required parameters are missing, or the auth_token is expired or invalid. *
        # ALREADY_EXISTS: A customer already exists and has conflicting critical fields.
        # Requires an overwrite. Return value: The Customer.
        # @param [String] parent
        #   Required. The resource name of the reseller's account. Parent takes the format:
        #   accounts/`account_id` or accounts/`account_id`/channelPartnerLinks/`
        #   channel_partner_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ImportCustomerRequest] google_cloud_channel_v1_import_customer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_account_channel_partner_link_customer(parent, google_cloud_channel_v1_import_customer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/customers:import', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ImportCustomerRequest::Representation
          command.request_object = google_cloud_channel_v1_import_customer_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Customers. Possible error codes: * PERMISSION_DENIED: The reseller
        # account making the request is different from the reseller account in the API
        # request. * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid. Return value: List of Customers, or an empty list if there are no
        # customers.
        # @param [String] parent
        #   Required. The resource name of the reseller account to list customers from.
        #   Parent uses the format: accounts/`account_id`.
        # @param [String] filter
        #   Optional. Filters applied to the [CloudChannelService.ListCustomers] results.
        #   See https://cloud.google.com/channel/docs/concepts/google-cloud/filter-
        #   customers for more information.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of customers to return. The service may return
        #   fewer than this value. If unspecified, returns at most 10 customers. The
        #   maximum value is 50.
        # @param [String] page_token
        #   Optional. A token identifying a page of results other than the first page.
        #   Obtained through ListCustomersResponse.next_page_token of the previous
        #   CloudChannelService.ListCustomers call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_channel_partner_link_customers(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/customers', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Customer resource for the reseller or distributor.
        # Possible error codes: * PERMISSION_DENIED: The reseller account making the
        # request is different from the reseller account in the API request. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: No Customer resource found for the name in the request. Return
        # value: The updated Customer resource.
        # @param [String] name
        #   Output only. Resource name of the customer. Format: accounts/`account_id`/
        #   customers/`customer_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] google_cloud_channel_v1_customer_object
        # @param [String] update_mask
        #   The update mask that applies to the resource. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_channel_partner_link_customer(name, google_cloud_channel_v1_customer_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.request_object = google_cloud_channel_v1_customer_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Customer resource under the reseller or distributor account.
        # Possible error codes: * PERMISSION_DENIED: The reseller account making the
        # request is different from the reseller account in the API request. *
        # INVALID_ARGUMENT: * Required request parameters are missing or invalid. *
        # Domain field value doesn't match the primary email domain. Return value: The
        # newly created Customer resource.
        # @param [String] parent
        #   Required. The resource name of reseller account in which to create the
        #   customer. Parent uses the format: accounts/`account_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] google_cloud_channel_v1_customer_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_customer(parent, google_cloud_channel_v1_customer_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/customers', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.request_object = google_cloud_channel_v1_customer_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the given Customer permanently. Possible error codes: *
        # PERMISSION_DENIED: The account making the request does not own this customer. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # FAILED_PRECONDITION: The customer has existing entitlements. * NOT_FOUND: No
        # Customer resource found for the name in the request.
        # @param [String] name
        #   Required. The resource name of the customer to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_customer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the requested Customer resource. Possible error codes: *
        # PERMISSION_DENIED: The reseller account making the request is different from
        # the reseller account in the API request. * INVALID_ARGUMENT: Required request
        # parameters are missing or invalid. * NOT_FOUND: The customer resource doesn't
        # exist. Usually the result of an invalid name parameter. Return value: The
        # Customer resource.
        # @param [String] name
        #   Required. The resource name of the customer to retrieve. Name uses the format:
        #   accounts/`account_id`/customers/`customer_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_customer(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Imports a Customer from the Cloud Identity associated with the provided Cloud
        # Identity ID or domain before a TransferEntitlements call. If a linked Customer
        # already exists and overwrite_if_exists is true, it will update that Customer's
        # data. Possible error codes: * PERMISSION_DENIED: The reseller account making
        # the request is different from the reseller account in the API request. *
        # NOT_FOUND: Cloud Identity doesn't exist or was deleted. * INVALID_ARGUMENT:
        # Required parameters are missing, or the auth_token is expired or invalid. *
        # ALREADY_EXISTS: A customer already exists and has conflicting critical fields.
        # Requires an overwrite. Return value: The Customer.
        # @param [String] parent
        #   Required. The resource name of the reseller's account. Parent takes the format:
        #   accounts/`account_id` or accounts/`account_id`/channelPartnerLinks/`
        #   channel_partner_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ImportCustomerRequest] google_cloud_channel_v1_import_customer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_account_customer(parent, google_cloud_channel_v1_import_customer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/customers:import', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ImportCustomerRequest::Representation
          command.request_object = google_cloud_channel_v1_import_customer_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Customers. Possible error codes: * PERMISSION_DENIED: The reseller
        # account making the request is different from the reseller account in the API
        # request. * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid. Return value: List of Customers, or an empty list if there are no
        # customers.
        # @param [String] parent
        #   Required. The resource name of the reseller account to list customers from.
        #   Parent uses the format: accounts/`account_id`.
        # @param [String] filter
        #   Optional. Filters applied to the [CloudChannelService.ListCustomers] results.
        #   See https://cloud.google.com/channel/docs/concepts/google-cloud/filter-
        #   customers for more information.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of customers to return. The service may return
        #   fewer than this value. If unspecified, returns at most 10 customers. The
        #   maximum value is 50.
        # @param [String] page_token
        #   Optional. A token identifying a page of results other than the first page.
        #   Obtained through ListCustomersResponse.next_page_token of the previous
        #   CloudChannelService.ListCustomers call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_customers(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/customers', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the following: * Offers that you can purchase for a customer. * Offers
        # that you can change for an entitlement. Possible error codes: *
        # PERMISSION_DENIED: The customer doesn't belong to the reseller *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid.
        # @param [String] customer
        #   Required. The resource name of the customer to list Offers for. Format:
        #   accounts/`account_id`/customers/`customer_id`.
        # @param [String] change_offer_purchase_entitlement
        #   Required. Resource name of the entitlement. Format: accounts/`account_id`/
        #   customers/`customer_id`/entitlements/`entitlement_id`
        # @param [String] change_offer_purchase_new_sku
        #   Optional. Resource name of the new target SKU. Provide this SKU when upgrading
        #   or downgrading an entitlement. Format: products/`product_id`/skus/`sku_id`
        # @param [String] create_entitlement_purchase_sku
        #   Required. SKU that the result should be restricted to. Format: products/`
        #   product_id`/skus/`sku_id`.
        # @param [String] language_code
        #   Optional. The BCP-47 language code. For example, "en-US". The response will
        #   localize in the corresponding language code, if specified. The default value
        #   is "en-US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, returns at most 100 Offers. The maximum value is
        #   1000; the server will coerce values above 1000.
        # @param [String] page_token
        #   Optional. A token for a page of results other than the first page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableOffersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableOffersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_customer_purchasable_offers(customer, change_offer_purchase_entitlement: nil, change_offer_purchase_new_sku: nil, create_entitlement_purchase_sku: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}:listPurchasableOffers', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableOffersResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableOffersResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['changeOfferPurchase.entitlement'] = change_offer_purchase_entitlement unless change_offer_purchase_entitlement.nil?
          command.query['changeOfferPurchase.newSku'] = change_offer_purchase_new_sku unless change_offer_purchase_new_sku.nil?
          command.query['createEntitlementPurchase.sku'] = create_entitlement_purchase_sku unless create_entitlement_purchase_sku.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the following: * SKUs that you can purchase for a customer * SKUs that
        # you can upgrade or downgrade for an entitlement. Possible error codes: *
        # PERMISSION_DENIED: The customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid.
        # @param [String] customer
        #   Required. The resource name of the customer to list SKUs for. Format: accounts/
        #   `account_id`/customers/`customer_id`.
        # @param [String] change_offer_purchase_change_type
        #   Required. Change Type for the entitlement.
        # @param [String] change_offer_purchase_entitlement
        #   Required. Resource name of the entitlement. Format: accounts/`account_id`/
        #   customers/`customer_id`/entitlements/`entitlement_id`
        # @param [String] create_entitlement_purchase_product
        #   Required. List SKUs belonging to this Product. Format: products/`product_id`.
        #   Supports products/- to retrieve SKUs for all products.
        # @param [String] language_code
        #   Optional. The BCP-47 language code. For example, "en-US". The response will
        #   localize in the corresponding language code, if specified. The default value
        #   is "en-US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, returns at most 100 SKUs. The maximum value is 1000;
        #   the server will coerce values above 1000.
        # @param [String] page_token
        #   Optional. A token for a page of results other than the first page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableSkusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableSkusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_customer_purchasable_skus(customer, change_offer_purchase_change_type: nil, change_offer_purchase_entitlement: nil, create_entitlement_purchase_product: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+customer}:listPurchasableSkus', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableSkusResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListPurchasableSkusResponse
          command.params['customer'] = customer unless customer.nil?
          command.query['changeOfferPurchase.changeType'] = change_offer_purchase_change_type unless change_offer_purchase_change_type.nil?
          command.query['changeOfferPurchase.entitlement'] = change_offer_purchase_entitlement unless change_offer_purchase_entitlement.nil?
          command.query['createEntitlementPurchase.product'] = create_entitlement_purchase_product unless create_entitlement_purchase_product.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing Customer resource for the reseller or distributor.
        # Possible error codes: * PERMISSION_DENIED: The reseller account making the
        # request is different from the reseller account in the API request. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: No Customer resource found for the name in the request. Return
        # value: The updated Customer resource.
        # @param [String] name
        #   Output only. Resource name of the customer. Format: accounts/`account_id`/
        #   customers/`customer_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] google_cloud_channel_v1_customer_object
        # @param [String] update_mask
        #   The update mask that applies to the resource. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_customer(name, google_cloud_channel_v1_customer_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.request_object = google_cloud_channel_v1_customer_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Customer
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Cloud Identity for the given customer using the customer's
        # information, or the information provided here. Possible error codes: *
        # PERMISSION_DENIED: The customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: The customer was not found. * ALREADY_EXISTS: The customer's
        # primary email already exists. Retry after changing the customer's primary
        # contact email. * INTERNAL: Any non-user error related to a technical issue in
        # the backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error
        # related to a technical issue in the backend. Contact Cloud Channel support.
        # Return value: The ID of a long-running operation. To get the results of the
        # operation, call the GetOperation method of CloudChannelOperationsService. The
        # Operation metadata contains an instance of OperationMetadata.
        # @param [String] customer
        #   Required. Resource name of the customer. Format: accounts/`account_id`/
        #   customers/`customer_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionCloudIdentityRequest] google_cloud_channel_v1_provision_cloud_identity_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def provision_account_customer_cloud_identity(customer, google_cloud_channel_v1_provision_cloud_identity_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+customer}:provisionCloudIdentity', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ProvisionCloudIdentityRequest::Representation
          command.request_object = google_cloud_channel_v1_provision_cloud_identity_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['customer'] = customer unless customer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Transfers customer entitlements to new reseller. Possible error codes: *
        # PERMISSION_DENIED: The customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: The customer or offer resource was not found. * ALREADY_EXISTS: The
        # SKU was already transferred for the customer. * CONDITION_NOT_MET or
        # FAILED_PRECONDITION: * The SKU requires domain verification to transfer, but
        # the domain is not verified. * An Add-On SKU (example, Vault or Drive) is
        # missing the pre-requisite SKU (example, G Suite Basic). * (Developer accounts
        # only) Reseller and resold domain must meet the following naming requirements: *
        # Domain names must start with goog-test. * Domain names must include the
        # reseller domain. * Specify all transferring entitlements. * INTERNAL: Any non-
        # user error related to a technical issue in the backend. Contact Cloud Channel
        # support. * UNKNOWN: Any non-user error related to a technical issue in the
        # backend. Contact Cloud Channel support. Return value: The ID of a long-running
        # operation. To get the results of the operation, call the GetOperation method
        # of CloudChannelOperationsService. The Operation metadata will contain an
        # instance of OperationMetadata.
        # @param [String] parent
        #   Required. The resource name of the reseller's customer account that will
        #   receive transferred entitlements. Parent uses the format: accounts/`account_id`
        #   /customers/`customer_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferEntitlementsRequest] google_cloud_channel_v1_transfer_entitlements_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def transfer_account_customer_entitlements(parent, google_cloud_channel_v1_transfer_entitlements_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:transferEntitlements', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferEntitlementsRequest::Representation
          command.request_object = google_cloud_channel_v1_transfer_entitlements_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Transfers customer entitlements from their current reseller to Google.
        # Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the
        # reseller. * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid. * NOT_FOUND: The customer or offer resource was not found. *
        # ALREADY_EXISTS: The SKU was already transferred for the customer. *
        # CONDITION_NOT_MET or FAILED_PRECONDITION: * The SKU requires domain
        # verification to transfer, but the domain is not verified. * An Add-On SKU (
        # example, Vault or Drive) is missing the pre-requisite SKU (example, G Suite
        # Basic). * (Developer accounts only) Reseller and resold domain must meet the
        # following naming requirements: * Domain names must start with goog-test. *
        # Domain names must include the reseller domain. * INTERNAL: Any non-user error
        # related to a technical issue in the backend. Contact Cloud Channel support. *
        # UNKNOWN: Any non-user error related to a technical issue in the backend.
        # Contact Cloud Channel support. Return value: The ID of a long-running
        # operation. To get the results of the operation, call the GetOperation method
        # of CloudChannelOperationsService. The response will contain google.protobuf.
        # Empty on success. The Operation metadata will contain an instance of
        # OperationMetadata.
        # @param [String] parent
        #   Required. The resource name of the reseller's customer account where the
        #   entitlements transfer from. Parent uses the format: accounts/`account_id`/
        #   customers/`customer_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferEntitlementsToGoogleRequest] google_cloud_channel_v1_transfer_entitlements_to_google_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def transfer_account_customer_entitlements_to_google(parent, google_cloud_channel_v1_transfer_entitlements_to_google_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}:transferEntitlementsToGoogle', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1TransferEntitlementsToGoogleRequest::Representation
          command.request_object = google_cloud_channel_v1_transfer_entitlements_to_google_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a CustomerRepricingConfig. Call this method to set modifications for a
        # specific customer's bill. You can only create configs if the RepricingConfig.
        # effective_invoice_month is a future month. If needed, you can create a config
        # for the current month, with some restrictions. When creating a config for a
        # future month, make sure there are no existing configs for that RepricingConfig.
        # effective_invoice_month. The following restrictions are for creating configs
        # in the current month. * This functionality is reserved for recovering from an
        # erroneous config, and should not be used for regular business cases. * The new
        # config will not modify exports used with other configs. Changes to the config
        # may be immediate, but may take up to 24 hours. * There is a limit of ten
        # configs for any RepricingConfig.EntitlementGranularity.entitlement or
        # RepricingConfig.effective_invoice_month. * The contained
        # CustomerRepricingConfig.repricing_config vaule must be different from the
        # value used in the current config for a RepricingConfig.EntitlementGranularity.
        # entitlement. Possible Error Codes: * PERMISSION_DENIED: If the account making
        # the request and the account being queried are different. * INVALID_ARGUMENT:
        # Missing or invalid required parameters in the request. Also displays if the
        # updated config is for the current month or past months. * NOT_FOUND: The
        # CustomerRepricingConfig specified does not exist or is not associated with the
        # given account. * INTERNAL: Any non-user error related to technical issues in
        # the backend. In this case, contact Cloud Channel support. Return Value: If
        # successful, the updated CustomerRepricingConfig resource, otherwise returns an
        # error.
        # @param [String] parent
        #   Required. The resource name of the customer that will receive this repricing
        #   config. Parent uses the format: accounts/`account_id`/customers/`customer_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig] google_cloud_channel_v1_customer_repricing_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_customer_customer_repricing_config(parent, google_cloud_channel_v1_customer_repricing_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/customerRepricingConfigs', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig::Representation
          command.request_object = google_cloud_channel_v1_customer_repricing_config_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the given CustomerRepricingConfig permanently. You can only delete
        # configs if their RepricingConfig.effective_invoice_month is set to a date
        # after the current month. Possible error codes: * PERMISSION_DENIED: The
        # account making the request does not own this customer. * INVALID_ARGUMENT:
        # Required request parameters are missing or invalid. * FAILED_PRECONDITION: The
        # CustomerRepricingConfig is active or in the past. * NOT_FOUND: No
        # CustomerRepricingConfig found for the name in the request.
        # @param [String] name
        #   Required. The resource name of the customer repricing config rule to delete.
        #   Format: accounts/`account_id`/customers/`customer_id`/customerRepricingConfigs/
        #   `id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_account_customer_customer_repricing_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about how a Reseller modifies their bill before sending it to
        # a Customer. Possible Error Codes: * PERMISSION_DENIED: If the account making
        # the request and the account being queried are different. * NOT_FOUND: The
        # CustomerRepricingConfig was not found. * INTERNAL: Any non-user error related
        # to technical issues in the backend. In this case, contact Cloud Channel
        # support. Return Value: If successful, the CustomerRepricingConfig resource,
        # otherwise returns an error.
        # @param [String] name
        #   Required. The resource name of the CustomerRepricingConfig. Format: accounts/`
        #   account_id`/customers/`customer_id`/customerRepricingConfigs/`id`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_customer_customer_repricing_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about how a Reseller modifies their bill before sending it
        # to a Customer. Possible Error Codes: * PERMISSION_DENIED: If the account
        # making the request and the account being queried are different. * NOT_FOUND:
        # The CustomerRepricingConfig specified does not exist or is not associated with
        # the given account. * INTERNAL: Any non-user error related to technical issues
        # in the backend. In this case, contact Cloud Channel support. Return Value: If
        # successful, the CustomerRepricingConfig resources. The data for each resource
        # is displayed in the ascending order of: * customer ID * RepricingConfig.
        # EntitlementGranularity.entitlement * RepricingConfig.effective_invoice_month *
        # CustomerRepricingConfig.update_time If unsuccessful, returns an error.
        # @param [String] parent
        #   Required. The resource name of the customer. Parent uses the format: accounts/`
        #   account_id`/customers/`customer_id`. Supports accounts/`account_id`/customers/-
        #   to retrieve configs for all customers.
        # @param [String] filter
        #   Optional. A filter for [CloudChannelService.ListCustomerRepricingConfigs]
        #   results (customer only). You can use this filter when you support a BatchGet-
        #   like query. To use the filter, you must set `parent=accounts/`account_id`/
        #   customers/-`. Example: customer = accounts/account_id/customers/c1 OR customer
        #   = accounts/account_id/customers/c2.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of repricing configs to return. The service may
        #   return fewer than this value. If unspecified, returns a maximum of 50 rules.
        #   The maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results beyond the first page.
        #   Obtained through ListCustomerRepricingConfigsResponse.next_page_token of the
        #   previous CloudChannelService.ListCustomerRepricingConfigs call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomerRepricingConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomerRepricingConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_customer_customer_repricing_configs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/customerRepricingConfigs', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomerRepricingConfigsResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomerRepricingConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a CustomerRepricingConfig. Call this method to set modifications for a
        # specific customer's bill. This method overwrites the existing
        # CustomerRepricingConfig. You can only update configs if the RepricingConfig.
        # effective_invoice_month is a future month. To make changes to configs for the
        # current month, use CreateCustomerRepricingConfig, taking note of its
        # restrictions. You cannot update the RepricingConfig.effective_invoice_month.
        # When updating a config in the future: * This config must already exist.
        # Possible Error Codes: * PERMISSION_DENIED: If the account making the request
        # and the account being queried are different. * INVALID_ARGUMENT: Missing or
        # invalid required parameters in the request. Also displays if the updated
        # config is for the current month or past months. * NOT_FOUND: The
        # CustomerRepricingConfig specified does not exist or is not associated with the
        # given account. * INTERNAL: Any non-user error related to technical issues in
        # the backend. In this case, contact Cloud Channel support. Return Value: If
        # successful, the updated CustomerRepricingConfig resource, otherwise returns an
        # error.
        # @param [String] name
        #   Output only. Resource name of the CustomerRepricingConfig. Format: accounts/`
        #   account_id`/customers/`customer_id`/customerRepricingConfigs/`id`.
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig] google_cloud_channel_v1_customer_repricing_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_account_customer_customer_repricing_config(name, google_cloud_channel_v1_customer_repricing_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig::Representation
          command.request_object = google_cloud_channel_v1_customer_repricing_config_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CustomerRepricingConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates a previously suspended entitlement. Entitlements suspended for
        # pending ToS acceptance can't be activated using this method. An entitlement
        # activation is a long-running operation and it updates the state of the
        # customer entitlement. Possible error codes: * PERMISSION_DENIED: The reseller
        # account making the request is different from the reseller account in the API
        # request. * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid. * NOT_FOUND: Entitlement resource not found. *
        # SUSPENSION_NOT_RESELLER_INITIATED: Can only activate reseller-initiated
        # suspensions and entitlements that have accepted the TOS. * NOT_SUSPENDED: Can
        # only activate suspended entitlements not in an ACTIVE state. * INTERNAL: Any
        # non-user error related to a technical issue in the backend. Contact Cloud
        # Channel support. * UNKNOWN: Any non-user error related to a technical issue in
        # the backend. Contact Cloud Channel support. Return value: The ID of a long-
        # running operation. To get the results of the operation, call the GetOperation
        # method of CloudChannelOperationsService. The Operation metadata will contain
        # an instance of OperationMetadata.
        # @param [String] name
        #   Required. The resource name of the entitlement to activate. Name uses the
        #   format: accounts/`account_id`/customers/`customer_id`/entitlements/`
        #   entitlement_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ActivateEntitlementRequest] google_cloud_channel_v1_activate_entitlement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_account_customer_entitlement(name, google_cloud_channel_v1_activate_entitlement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:activate', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ActivateEntitlementRequest::Representation
          command.request_object = google_cloud_channel_v1_activate_entitlement_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels a previously fulfilled entitlement. An entitlement cancellation is a
        # long-running operation. Possible error codes: * PERMISSION_DENIED: The
        # reseller account making the request is different from the reseller account in
        # the API request. * FAILED_PRECONDITION: There are Google Cloud projects linked
        # to the Google Cloud entitlement's Cloud Billing subaccount. * INVALID_ARGUMENT:
        # Required request parameters are missing or invalid. * NOT_FOUND: Entitlement
        # resource not found. * DELETION_TYPE_NOT_ALLOWED: Cancel is only allowed for
        # Google Workspace add-ons, or entitlements for Google Cloud's development
        # platform. * INTERNAL: Any non-user error related to a technical issue in the
        # backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related
        # to a technical issue in the backend. Contact Cloud Channel support. Return
        # value: The ID of a long-running operation. To get the results of the operation,
        # call the GetOperation method of CloudChannelOperationsService. The response
        # will contain google.protobuf.Empty on success. The Operation metadata will
        # contain an instance of OperationMetadata.
        # @param [String] name
        #   Required. The resource name of the entitlement to cancel. Name uses the format:
        #   accounts/`account_id`/customers/`customer_id`/entitlements/`entitlement_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CancelEntitlementRequest] google_cloud_channel_v1_cancel_entitlement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_account_customer_entitlement(name, google_cloud_channel_v1_cancel_entitlement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CancelEntitlementRequest::Representation
          command.request_object = google_cloud_channel_v1_cancel_entitlement_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the Offer for an existing customer entitlement. An entitlement update
        # is a long-running operation and it updates the entitlement as a result of
        # fulfillment. Possible error codes: * PERMISSION_DENIED: The customer doesn't
        # belong to the reseller. * INVALID_ARGUMENT: Required request parameters are
        # missing or invalid. * NOT_FOUND: Offer or Entitlement resource not found. *
        # INTERNAL: Any non-user error related to a technical issue in the backend.
        # Contact Cloud Channel support. * UNKNOWN: Any non-user error related to a
        # technical issue in the backend. Contact Cloud Channel support. Return value:
        # The ID of a long-running operation. To get the results of the operation, call
        # the GetOperation method of CloudChannelOperationsService. The Operation
        # metadata will contain an instance of OperationMetadata.
        # @param [String] name
        #   Required. The resource name of the entitlement to update. Name uses the format:
        #   accounts/`account_id`/customers/`customer_id`/entitlements/`entitlement_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChangeOfferRequest] google_cloud_channel_v1_change_offer_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def change_account_customer_entitlement_offer(name, google_cloud_channel_v1_change_offer_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:changeOffer', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChangeOfferRequest::Representation
          command.request_object = google_cloud_channel_v1_change_offer_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Change parameters of the entitlement. An entitlement update is a long-running
        # operation and it updates the entitlement as a result of fulfillment. Possible
        # error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller.
        # * INVALID_ARGUMENT: Required request parameters are missing or invalid. For
        # example, the number of seats being changed is greater than the allowed number
        # of max seats, or decreasing seats for a commitment based plan. * NOT_FOUND:
        # Entitlement resource not found. * INTERNAL: Any non-user error related to a
        # technical issue in the backend. Contact Cloud Channel support. * UNKNOWN: Any
        # non-user error related to a technical issue in the backend. Contact Cloud
        # Channel support. Return value: The ID of a long-running operation. To get the
        # results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The Operation metadata will contain an instance
        # of OperationMetadata.
        # @param [String] name
        #   Required. The name of the entitlement to update. Name uses the format:
        #   accounts/`account_id`/customers/`customer_id`/entitlements/`entitlement_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChangeParametersRequest] google_cloud_channel_v1_change_parameters_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def change_account_customer_entitlement_parameters(name, google_cloud_channel_v1_change_parameters_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:changeParameters', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChangeParametersRequest::Representation
          command.request_object = google_cloud_channel_v1_change_parameters_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the renewal settings for an existing customer entitlement. An
        # entitlement update is a long-running operation and it updates the entitlement
        # as a result of fulfillment. Possible error codes: * PERMISSION_DENIED: The
        # customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request
        # parameters are missing or invalid. * NOT_FOUND: Entitlement resource not found.
        # * NOT_COMMITMENT_PLAN: Renewal Settings are only applicable for a commitment
        # plan. Can't enable or disable renewals for non-commitment plans. * INTERNAL:
        # Any non-user error related to a technical issue in the backend. Contact Cloud
        # Channel support. * UNKNOWN: Any non-user error related to a technical issue in
        # the backend. Contact Cloud Channel support. Return value: The ID of a long-
        # running operation. To get the results of the operation, call the GetOperation
        # method of CloudChannelOperationsService. The Operation metadata will contain
        # an instance of OperationMetadata.
        # @param [String] name
        #   Required. The name of the entitlement to update. Name uses the format:
        #   accounts/`account_id`/customers/`customer_id`/entitlements/`entitlement_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChangeRenewalSettingsRequest] google_cloud_channel_v1_change_renewal_settings_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def change_account_customer_entitlement_renewal_settings(name, google_cloud_channel_v1_change_renewal_settings_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:changeRenewalSettings', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ChangeRenewalSettingsRequest::Representation
          command.request_object = google_cloud_channel_v1_change_renewal_settings_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an entitlement for a customer. Possible error codes: *
        # PERMISSION_DENIED: The customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: * Required request parameters are missing or invalid. *
        # There is already a customer entitlement for a SKU from the same product family.
        # * INVALID_VALUE: Make sure the OfferId is valid. If it is, contact Google
        # Channel support for further troubleshooting. * NOT_FOUND: The customer or
        # offer resource was not found. * ALREADY_EXISTS: * The SKU was already
        # purchased for the customer. * The customer's primary email already exists.
        # Retry after changing the customer's primary contact email. * CONDITION_NOT_MET
        # or FAILED_PRECONDITION: * The domain required for purchasing a SKU has not
        # been verified. * A pre-requisite SKU required to purchase an Add-On SKU is
        # missing. For example, Google Workspace Business Starter is required to
        # purchase Vault or Drive. * (Developer accounts only) Reseller and resold
        # domain must meet the following naming requirements: * Domain names must start
        # with goog-test. * Domain names must include the reseller domain. * INTERNAL:
        # Any non-user error related to a technical issue in the backend. Contact Cloud
        # Channel support. * UNKNOWN: Any non-user error related to a technical issue in
        # the backend. Contact Cloud Channel support. Return value: The ID of a long-
        # running operation. To get the results of the operation, call the GetOperation
        # method of CloudChannelOperationsService. The Operation metadata will contain
        # an instance of OperationMetadata.
        # @param [String] parent
        #   Required. The resource name of the reseller's customer account in which to
        #   create the entitlement. Parent uses the format: accounts/`account_id`/
        #   customers/`customer_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1CreateEntitlementRequest] google_cloud_channel_v1_create_entitlement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_account_customer_entitlement(parent, google_cloud_channel_v1_create_entitlement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/entitlements', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1CreateEntitlementRequest::Representation
          command.request_object = google_cloud_channel_v1_create_entitlement_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the requested Entitlement resource. Possible error codes: *
        # PERMISSION_DENIED: The customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: The customer entitlement was not found. Return value: The requested
        # Entitlement resource.
        # @param [String] name
        #   Required. The resource name of the entitlement to retrieve. Name uses the
        #   format: accounts/`account_id`/customers/`customer_id`/entitlements/`
        #   entitlement_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_customer_entitlement(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Entitlement
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Entitlements belonging to a customer. Possible error codes: *
        # PERMISSION_DENIED: The customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. Return
        # value: A list of the customer's Entitlements.
        # @param [String] parent
        #   Required. The resource name of the reseller's customer account to list
        #   entitlements for. Parent uses the format: accounts/`account_id`/customers/`
        #   customer_id`
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, return at most 50 entitlements. The maximum value
        #   is 100; the server will coerce values above 100.
        # @param [String] page_token
        #   Optional. A token for a page of results other than the first page. Obtained
        #   using ListEntitlementsResponse.next_page_token of the previous
        #   CloudChannelService.ListEntitlements call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListEntitlementsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListEntitlementsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_customer_entitlements(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/entitlements', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListEntitlementsResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListEntitlementsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the requested Offer resource. Possible error codes: *
        # PERMISSION_DENIED: The entitlement doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: Entitlement or offer was not found. Return value: The Offer
        # resource.
        # @param [String] entitlement
        #   Required. The resource name of the entitlement to retrieve the Offer.
        #   Entitlement uses the format: accounts/`account_id`/customers/`customer_id`/
        #   entitlements/`entitlement_id`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def lookup_account_customer_entitlement_offer(entitlement, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+entitlement}:lookupOffer', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1Offer
          command.params['entitlement'] = entitlement unless entitlement.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts paid service for a trial entitlement. Starts paid service for a trial
        # entitlement immediately. This method is only applicable if a plan is set up
        # for a trial entitlement but has some trial days remaining. Possible error
        # codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid. *
        # NOT_FOUND: Entitlement resource not found. * FAILED_PRECONDITION/NOT_IN_TRIAL:
        # This method only works for entitlement on trial plans. * INTERNAL: Any non-
        # user error related to a technical issue in the backend. Contact Cloud Channel
        # support. * UNKNOWN: Any non-user error related to a technical issue in the
        # backend. Contact Cloud Channel support. Return value: The ID of a long-running
        # operation. To get the results of the operation, call the GetOperation method
        # of CloudChannelOperationsService. The Operation metadata will contain an
        # instance of OperationMetadata.
        # @param [String] name
        #   Required. The name of the entitlement to start a paid service for. Name uses
        #   the format: accounts/`account_id`/customers/`customer_id`/entitlements/`
        #   entitlement_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1StartPaidServiceRequest] google_cloud_channel_v1_start_paid_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_account_customer_entitlement_paid_service(name, google_cloud_channel_v1_start_paid_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:startPaidService', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1StartPaidServiceRequest::Representation
          command.request_object = google_cloud_channel_v1_start_paid_service_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Suspends a previously fulfilled entitlement. An entitlement suspension is a
        # long-running operation. Possible error codes: * PERMISSION_DENIED: The
        # customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request
        # parameters are missing or invalid. * NOT_FOUND: Entitlement resource not found.
        # * NOT_ACTIVE: Entitlement is not active. * INTERNAL: Any non-user error
        # related to a technical issue in the backend. Contact Cloud Channel support. *
        # UNKNOWN: Any non-user error related to a technical issue in the backend.
        # Contact Cloud Channel support. Return value: The ID of a long-running
        # operation. To get the results of the operation, call the GetOperation method
        # of CloudChannelOperationsService. The Operation metadata will contain an
        # instance of OperationMetadata.
        # @param [String] name
        #   Required. The resource name of the entitlement to suspend. Name uses the
        #   format: accounts/`account_id`/customers/`customer_id`/entitlements/`
        #   entitlement_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1SuspendEntitlementRequest] google_cloud_channel_v1_suspend_entitlement_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def suspend_account_customer_entitlement(name, google_cloud_channel_v1_suspend_entitlement_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:suspend', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1SuspendEntitlementRequest::Representation
          command.request_object = google_cloud_channel_v1_suspend_entitlement_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Offers the reseller can sell. Possible error codes: *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid.
        # @param [String] parent
        #   Required. The resource name of the reseller account from which to list Offers.
        #   Parent uses the format: accounts/`account_id`.
        # @param [String] filter
        #   Optional. The expression to filter results by name (name of the Offer), sku.
        #   name (name of the SKU), or sku.product.name (name of the Product). Example 1:
        #   sku.product.name=products/p1 AND sku.name!=products/p1/skus/s1 Example 2: name=
        #   accounts/a1/offers/o1
        # @param [String] language_code
        #   Optional. The BCP-47 language code. For example, "en-US". The response will
        #   localize in the corresponding language code, if specified. The default value
        #   is "en-US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, returns at most 500 Offers. The maximum value is
        #   1000; the server will coerce values above 1000.
        # @param [String] page_token
        #   Optional. A token for a page of results other than the first page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListOffersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListOffersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_offers(parent, filter: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/offers', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListOffersResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListOffersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves data generated by CloudChannelReportsService.RunReportJob.
        # @param [String] report_job
        #   Required. The report job created by CloudChannelReportsService.RunReportJob.
        #   Report_job uses the format: accounts/`account_id`/reportJobs/`report_job_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1FetchReportResultsRequest] google_cloud_channel_v1_fetch_report_results_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1FetchReportResultsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1FetchReportResultsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def fetch_account_report_job_report_results(report_job, google_cloud_channel_v1_fetch_report_results_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+reportJob}:fetchReportResults', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1FetchReportResultsRequest::Representation
          command.request_object = google_cloud_channel_v1_fetch_report_results_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1FetchReportResultsResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1FetchReportResultsResponse
          command.params['reportJob'] = report_job unless report_job.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the reports that RunReportJob can run. These reports include an ID, a
        # description, and the list of columns that will be in the result.
        # @param [String] parent
        #   Required. The resource name of the partner account to list available reports
        #   for. Parent uses the format: accounts/`account_id`
        # @param [String] language_code
        #   Optional. The BCP-47 language code, such as "en-US". If specified, the
        #   response is localized to the corresponding language code if the original data
        #   sources support it. Default is "en-US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size of the report. The server might return fewer
        #   results than requested. If unspecified, returns 20 reports. The maximum value
        #   is 100.
        # @param [String] page_token
        #   Optional. A token that specifies a page of results beyond the first page.
        #   Obtained through ListReportsResponse.next_page_token of the previous
        #   CloudChannelReportsService.ListReports call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_reports(parent, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reports', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListReportsResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins generation of data for a given report. The report identifier is a UID (
        # for example, `613bf59q`). Possible error codes: * PERMISSION_DENIED: The user
        # doesn't have access to this report. * INVALID_ARGUMENT: Required request
        # parameters are missing or invalid. * NOT_FOUND: The report identifier was not
        # found. * INTERNAL: Any non-user error related to a technical issue in the
        # backend. Contact Cloud Channel support. * UNKNOWN: Any non-user error related
        # to a technical issue in the backend. Contact Cloud Channel support. Return
        # value: The ID of a long-running operation. To get the results of the operation,
        # call the GetOperation method of CloudChannelOperationsService. The Operation
        # metadata contains an instance of OperationMetadata. To get the results of
        # report generation, call CloudChannelReportsService.FetchReportResults with the
        # RunReportJobResponse.report_job.
        # @param [String] name
        #   Required. The report's resource name. Specifies the account and report used to
        #   generate report data. The report_id identifier is a UID (for example, `
        #   613bf59q`). Name uses the format: accounts/`account_id`/reports/`report_id`
        # @param [Google::Apis::CloudchannelV1::GoogleCloudChannelV1RunReportJobRequest] google_cloud_channel_v1_run_report_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def run_account_report(name, google_cloud_channel_v1_run_report_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:run', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1RunReportJobRequest::Representation
          command.request_object = google_cloud_channel_v1_run_report_job_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [Google::Apis::CloudchannelV1::GoogleLongrunningCancelOperationRequest] google_longrunning_cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, google_longrunning_cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::CloudchannelV1::GoogleLongrunningCancelOperationRequest::Representation
          command.request_object = google_longrunning_cancel_operation_request_object
          command.response_representation = Google::Apis::CloudchannelV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningOperation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Products the reseller is authorized to sell. Possible error codes: *
        # INVALID_ARGUMENT: Required request parameters are missing or invalid.
        # @param [String] account
        #   Required. The resource name of the reseller account. Format: accounts/`
        #   account_id`.
        # @param [String] language_code
        #   Optional. The BCP-47 language code. For example, "en-US". The response will
        #   localize in the corresponding language code, if specified. The default value
        #   is "en-US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, returns at most 100 Products. The maximum value is
        #   1000; the server will coerce values above 1000.
        # @param [String] page_token
        #   Optional. A token for a page of results other than the first page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_products(account: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/products', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListProductsResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListProductsResponse
          command.query['account'] = account unless account.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the SKUs for a product the reseller is authorized to sell. Possible
        # error codes: * INVALID_ARGUMENT: Required request parameters are missing or
        # invalid.
        # @param [String] parent
        #   Required. The resource name of the Product to list SKUs for. Parent uses the
        #   format: products/`product_id`. Supports products/- to retrieve SKUs for all
        #   products.
        # @param [String] account
        #   Required. Resource name of the reseller. Format: accounts/`account_id`.
        # @param [String] language_code
        #   Optional. The BCP-47 language code. For example, "en-US". The response will
        #   localize in the corresponding language code, if specified. The default value
        #   is "en-US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, returns at most 100 SKUs. The maximum value is 1000;
        #   the server will coerce values above 1000.
        # @param [String] page_token
        #   Optional. A token for a page of results other than the first page. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSkusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSkusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_product_skus(parent, account: nil, language_code: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/skus', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSkusResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListSkusResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['account'] = account unless account.nil?
          command.query['languageCode'] = language_code unless language_code.nil?
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
