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
      # 
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
        
        # Confirms the existence of Cloud Identity accounts, based on the domain and
        # whether the Cloud Identity accounts are owned by the reseller. Possible Error
        # Codes: * PERMISSION_DENIED: If the reseller account making the request and the
        # reseller account being queried for are different. * INVALID_ARGUMENT: Missing
        # or invalid required parameters in the request. * INVALID_VALUE: Invalid domain
        # value in the request. Return Value: List of CloudIdentityCustomerAccount
        # resources for the domain. List may be empty. Note: in the v1alpha1 version of
        # the API, a NOT_FOUND error is returned if no CloudIdentityCustomerAccount
        # resources match the domain.
        # @param [String] parent
        #   Required. The resource name of the reseller account. The parent takes the
        #   format: accounts/`account_id`
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
        # created for this Channel Services account. Possible Error Codes: *
        # PERMISSION_DENIED: If the reseller account making the request and the reseller
        # account being provided are different, or if the account is not a super admin. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. *
        # NOT_FOUND: If the topic resource doesn't exist. * INTERNAL: Any non-user error
        # related to a technical issue in the backend. In this case, contact Cloud
        # Channel support. * UNKNOWN: Any non-user error related to a technical issue in
        # the backend. In this case, contact Cloud Channel support. Return Value: List
        # of service email addresses if successful, otherwise error is returned.
        # @param [String] account
        #   Required. Resource name of the account.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of service accounts to return. The service may
        #   return fewer than this value. If unspecified, at most 100 service accounts
        #   will be returned. The maximum value is 1000; values above 1000 will be coerced
        #   to 1000.
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
        # Name in the request. This method is used when a reseller gets the entitlement
        # information of a customer that is not owned. The reseller should provide the
        # customer's Cloud Identity ID or Customer Name. Possible Error Codes: *
        # PERMISSION_DENIED: Appears because of one of the following: * If the customer
        # doesn't belong to the reseller and no auth token or invalid auth token is
        # supplied. * If the reseller account making the request and the reseller
        # account being queried for are different. * INVALID_ARGUMENT: Missing or
        # invalid required parameters in the request. Return Value: List of
        # TransferableOffer for the given customer and SKU.
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
        
        # List TransferableSkus of a customer based on Cloud Identity ID or Customer
        # Name in the request. This method is used when a reseller lists the
        # entitlements information of a customer that is not owned. The reseller should
        # provide the customer's Cloud Identity ID or Customer Name. Possible Error
        # Codes: * PERMISSION_DENIED: Appears because of one of the following - * The
        # customer doesn't belong to the reseller and no auth token. * The supplied auth
        # token is invalid. * The reseller account making the request and the queries
        # reseller account are different. * INVALID_ARGUMENT: Missing or invalid
        # required parameters in the request. Return Value: List of TransferableSku for
        # the given customer.
        # @param [String] parent
        #   Required. The resource name of the reseller's account. The parent takes the
        #   format: accounts/`account_id`
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
        # topic created for this Channel Services account. Once you create a subscriber,
        # you will get the events as per SubscriberEvent Possible Error Codes: *
        # PERMISSION_DENIED: If the reseller account making the request and the reseller
        # account being provided are different, or if the impersonated user is not a
        # super admin. * INVALID_ARGUMENT: Missing or invalid required parameters in the
        # request. * INTERNAL: Any non-user error related to a technical issue in the
        # backend. In this case, contact Cloud Channel support. * UNKNOWN: Any non-user
        # error related to a technical issue in the backend. In this case, contact Cloud
        # Channel support. Return Value: Topic name with service email address
        # registered if successful, otherwise error is returned.
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
        # topic created for this Channel Services account. If there are no more service
        # account left with sunbscriber privileges, the topic will be deleted. You can
        # check this by calling ListSubscribers api. Possible Error Codes: *
        # PERMISSION_DENIED: If the reseller account making the request and the reseller
        # account being provided are different, or if the impersonated user is not a
        # super admin. * INVALID_ARGUMENT: Missing or invalid required parameters in the
        # request. * NOT_FOUND: If the topic resource doesn't exist. * INTERNAL: Any non-
        # user error related to a technical issue in the backend. In this case, contact
        # Cloud Channel support. * UNKNOWN: Any non-user error related to a technical
        # issue in the backend. In this case, contact Cloud Channel support. Return
        # Value: Topic name from which service email address has been unregistered if
        # successful, otherwise error is returned. If the service email was already not
        # associated with the topic, the success response will be returned.
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
        
        # Initiates a channel partner link between a distributor and a reseller or
        # between resellers in an n-tier reseller channel. To accept the invite, the
        # invited partner should follow the invite_link_uri provided in the response. If
        # the link creation is accepted, a valid link is set up between the two involved
        # parties. To call this method, you must be a distributor. Possible Error Codes:
        # * PERMISSION_DENIED: If the reseller account making the request and the
        # reseller account being queried for are different. * INVALID_ARGUMENT: Missing
        # or invalid required parameters in the request. * ALREADY_EXISTS: If the
        # ChannelPartnerLink sent in the request already exists. * NOT_FOUND: If no
        # Cloud Identity customer exists for domain provided. * INTERNAL: Any non-user
        # error related to a technical issue in the backend. In this case, contact Cloud
        # Channel support. * UNKNOWN: Any non-user error related to a technical issue in
        # the backend. In this case, contact Cloud Channel support. Return Value: Newly
        # created ChannelPartnerLink resource if successful, otherwise error is returned.
        # @param [String] parent
        #   Required. The resource name of reseller's account for which to create a
        #   channel partner link. The parent takes the format: accounts/`account_id`
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
        
        # Returns a requested ChannelPartnerLink resource. To call this method, you must
        # be a distributor. Possible Error Codes: * PERMISSION_DENIED: If the reseller
        # account making the request and the reseller account being queried for are
        # different. * INVALID_ARGUMENT: Missing or invalid required parameters in the
        # request. * NOT_FOUND: ChannelPartnerLink resource not found. Results due
        # invalid channel partner link name. Return Value: ChannelPartnerLink resource
        # if found, otherwise returns an error.
        # @param [String] name
        #   Required. The resource name of the channel partner link to retrieve. The name
        #   takes the format: accounts/`account_id`/channelPartnerLinks/`id` where `id` is
        #   the Cloud Identity ID of the partner.
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
        
        # List ChannelPartnerLinks belonging to a distributor. To call this method, you
        # must be a distributor. Possible Error Codes: * PERMISSION_DENIED: If the
        # reseller account making the request and the reseller account being queried for
        # are different. * INVALID_ARGUMENT: Missing or invalid required parameters in
        # the request. Return Value: If successful, returns the list of
        # ChannelPartnerLink resources for the distributor account, otherwise returns an
        # error.
        # @param [String] parent
        #   Required. The resource name of the reseller account for listing channel
        #   partner links. The parent takes the format: accounts/`account_id`
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, server will pick a default size (25). The maximum
        #   value is 200, values above 200 will be coerced to 200.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
        #   Typically obtained via ListChannelPartnerLinksResponse.next_page_token of the
        #   previous CloudChannelService.ListChannelPartnerLinks call.
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
        
        # Updates a channel partner link. A distributor calls this method to change a
        # link's status. For example, suspend a partner link. To call this method, you
        # must be a distributor. Possible Error Codes: * PERMISSION_DENIED: If the
        # reseller account making the request and the reseller account being queried for
        # are different. * INVALID_ARGUMENT: It can happen in following scenarios - *
        # Missing or invalid required parameters in the request. * Updating link state
        # from invited to active or suspended. * Sending reseller_cloud_identity_id,
        # invite_url or name in update mask. * NOT_FOUND: ChannelPartnerLink resource
        # not found. * INTERNAL: Any non-user error related to a technical issue in the
        # backend. In this case, contact Cloud Channel support. * UNKNOWN: Any non-user
        # error related to a technical issue in the backend. In this case, contact Cloud
        # Channel support. Return Value: If successful, the updated ChannelPartnerLink
        # resource, otherwise returns an error.
        # @param [String] name
        #   Required. The resource name of the channel partner link to cancel. The name
        #   takes the format: accounts/`account_id`/channelPartnerLinks/`id` where `id` is
        #   the Cloud Identity ID of the partner.
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
        
        # Creates a new Customer resource under the reseller or distributor account.
        # Possible Error Codes: * PERMISSION_DENIED: If the reseller account making the
        # request and the reseller account being queried for are different. *
        # INVALID_ARGUMENT: It can happen in following scenarios - * Missing or invalid
        # required parameters in the request. * Domain field value doesn't match the
        # domain specified in primary email. Return Value: If successful, the newly
        # created Customer resource, otherwise returns an error.
        # @param [String] parent
        #   Required. The resource name of reseller account in which to create the
        #   customer. The parent takes the format: accounts/`account_id`
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
        
        # Deletes the given Customer permanently and irreversibly. Possible Error Codes:
        # * PERMISSION_DENIED: If the account making the request does not own this
        # customer. * INVALID_ARGUMENT: Missing or invalid required parameters in the
        # request. * FAILED_PRECONDITION: If the customer has existing entitlements. *
        # NOT_FOUND: No Customer resource found for the name specified in the request.
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
        
        # Returns a requested Customer resource. Possible Error Codes: *
        # PERMISSION_DENIED: If the reseller account making the request and the reseller
        # account being queried for are different. * INVALID_ARGUMENT: Missing or
        # invalid required parameters in the request. * NOT_FOUND: If the customer
        # resource doesn't exist. Usually the result of an invalid name parameter.
        # Return Value: Customer resource if found, error otherwise.
        # @param [String] name
        #   Required. The resource name of the customer to retrieve. The name takes the
        #   format: accounts/`account_id`/customers/`customer_id`
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
        
        # List downstream Customers. Possible Error Codes: * PERMISSION_DENIED: If the
        # reseller account making the request and the reseller account being queried for
        # are different. * INVALID_ARGUMENT: Missing or invalid required parameters in
        # the request. Return Value: List of Customers pertaining to the reseller or
        # empty list if there are none.
        # @param [String] parent
        #   Required. The resource name of the reseller account from which to list
        #   customers. The parent takes the format: accounts/`account_id`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of customers to return. The service may return
        #   fewer than this value. If unspecified, at most 10 customers will be returned.
        #   The maximum value is 50; values about 50 will be coerced to 50.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
        #   Typically obtained via ListCustomersResponse.next_page_token of the previous
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
        def list_account_customers(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/customers', options)
          command.response_representation = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse::Representation
          command.response_class = Google::Apis::CloudchannelV1::GoogleCloudChannelV1ListCustomersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Purchasable Offers for the following cases: * Offers that can be
        # newly purchased for a customer * Offers that can be changed to, for an
        # entitlement. Possible Error Codes: * PERMISSION_DENIED: If the customer doesn'
        # t belong to the reseller * INVALID_ARGUMENT: Missing or invalid required
        # parameters in the request.
        # @param [String] customer
        #   Required. The resource name of the customer for which to list Offers. Format:
        #   accounts/`account_id`/customers/`customer_id`.
        # @param [String] change_offer_purchase_entitlement
        #   Required. Resource name of the entitlement. Format: accounts/`account_id`/
        #   customers/`customer_id`/entitlements/`entitlement_id`
        # @param [String] change_offer_purchase_new_sku
        #   Optional. Resource name of the SKU that is being changed to. Should be
        #   provided if upgrading or downgrading an entitlement. Format: products/`
        #   product_id`/skus/`sku_id`
        # @param [String] create_entitlement_purchase_sku
        #   Required. SKU that the result should be restricted to. Format: products/`
        #   product_id`/skus/`sku_id`.
        # @param [String] language_code
        #   Optional. The BCP-47 language code, such as "en-US". If specified, the
        #   response will be localized to the corresponding language code. Default is "en-
        #   US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, at most 100 Offers will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
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
        
        # Lists the Purchasable SKUs for following cases: * SKUs that can be newly
        # purchased for a customer * SKUs that can be upgraded/downgraded to, for an
        # entitlement. Possible Error Codes: * PERMISSION_DENIED: If the customer doesn'
        # t belong to the reseller * INVALID_ARGUMENT: Missing or invalid required
        # parameters in the request.
        # @param [String] customer
        #   Required. The resource name of the customer for which to list SKUs. Format:
        #   accounts/`account_id`/customers/`customer_id`.
        # @param [String] change_offer_purchase_change_type
        #   Required. Change Type for the entitlement.
        # @param [String] change_offer_purchase_entitlement
        #   Required. Resource name of the entitlement. Format: accounts/`account_id`/
        #   customers/`customer_id`/entitlements/`entitlement_id`
        # @param [String] create_entitlement_purchase_product
        #   Required. List SKUs belonging to this Product. Format: products/`product_id`.
        #   Supports products/- to retrieve SKUs for all products.
        # @param [String] language_code
        #   Optional. The BCP-47 language code, such as "en-US". If specified, the
        #   response will be localized to the corresponding language code. Default is "en-
        #   US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, at most 100 SKUs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
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
        
        # Updates an existing Customer resource belonging to the reseller or distributor.
        # Possible Error Codes: * PERMISSION_DENIED: If the reseller account making the
        # request and the reseller account being queried for are different. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. *
        # NOT_FOUND: No Customer resource found for the name specified in the request.
        # Return Value: If successful, the updated Customer resource, otherwise returns
        # an error.
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
        # information or the information provided here, if present. Possible Error Codes:
        # * PERMISSION_DENIED: If the customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. *
        # NOT_FOUND: If the customer is not found for the reseller. * ALREADY_EXISTS: If
        # the customer's primary email already exists. In this case, retry after
        # changing the customer's primary contact email. * INTERNAL: Any non-user error
        # related to a technical issue in the backend. Contact Cloud Channel support in
        # this case. * UNKNOWN: Any non-user error related to a technical issue in the
        # backend. Contact Cloud Channel support in this case. Return Value: Long
        # Running Operation ID. To get the results of the operation, call the
        # GetOperation method of CloudChannelOperationsService. The Operation metadata
        # will contain an instance of OperationMetadata.
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
        
        # Transfers customer entitlements to new reseller. Possible Error Codes: *
        # PERMISSION_DENIED: If the customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. *
        # NOT_FOUND: If the customer or offer resource is not found for the reseller. *
        # ALREADY_EXISTS: If the SKU has been already transferred for the customer. *
        # CONDITION_NOT_MET or FAILED_PRECONDITION: This failure can happen in the
        # following cases: * Transferring a SKU that requires domain verification and
        # the domain has not been verified. * Transferring an Add-On SKU like Vault or
        # Drive without transferring the pre-requisite SKU, such as G Suite Basic. *
        # Applicable only for developer accounts: reseller and resold domain must follow
        # the domain naming convention as follows: * Domain names must start with goog-
        # test. * Resold domain names must include the reseller domain. * All
        # transferring entitlements must be specified. * INTERNAL: Any non-user error
        # related to a technical issue in the backend. Please contact Cloud Channel
        # Support in this case. * UNKNOWN: Any non-user error related to a technical
        # issue in the backend. Please contact Cloud Channel Support in this case.
        # Return Value: Long Running Operation ID. To get the results of the operation,
        # call the GetOperation method of CloudChannelOperationsService. The Operation
        # metadata will contain an instance of OperationMetadata.
        # @param [String] parent
        #   Required. The resource name of reseller's customer account where the
        #   entitlements transfer to. The parent takes the format: accounts/`account_id`/
        #   customers/`customer_id`
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
        
        # Transfers customer entitlements from current reseller to Google. Possible
        # Error Codes: * PERMISSION_DENIED: If the customer doesn't belong to the
        # reseller. * INVALID_ARGUMENT: Missing or invalid required parameters in the
        # request. * NOT_FOUND: If the customer or offer resource is not found for the
        # reseller. * ALREADY_EXISTS: If the SKU has been already transferred for the
        # customer. * CONDITION_NOT_MET or FAILED_PRECONDITION: This failure can happen
        # in the following cases: * Transferring a SKU that requires domain verification
        # and the domain has not been verified. * Transferring an Add-On SKU like Vault
        # or Drive without purchasing the pre-requisite SKU, such as G Suite Basic. *
        # Applicable only for developer accounts: reseller and resold domain must follow
        # the domain naming convention as follows: * Domain names must start with goog-
        # test. * Resold domain names must include the reseller domain. * INTERNAL: Any
        # non-user error related to a technical issue in the backend. Please contact
        # Cloud Channel Support in this case. * UNKNOWN: Any non-user error related to a
        # technical issue in the backend. Please contact Cloud Channel Support in this
        # case. Return Value: Long Running Operation ID. To get the results of the
        # operation, call the GetOperation method of CloudChannelOperationsService. The
        # response will contain google.protobuf.Empty on success. The Operation metadata
        # will contain an instance of OperationMetadata.
        # @param [String] parent
        #   Required. The resource name of reseller's customer account where the
        #   entitlements transfer from. The parent takes the format: accounts/`account_id`/
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
        
        # Activates a previously suspended entitlement. The entitlement must be in a
        # suspended state for it to be activated. Entitlements suspended for pending ToS
        # acceptance can't be activated using this method. An entitlement activation is
        # a long-running operation and can result in updates to the state of the
        # customer entitlement. Possible Error Codes: * PERMISSION_DENIED: If the
        # customer doesn't belong to the reseller or if the reseller account making the
        # request and reseller account being queried for are different. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. *
        # NOT_FOUND: Entitlement resource not found. * SUSPENSION_NOT_RESELLER_INITIATED:
        # Can't activate an entitlement that is pending TOS acceptance. Only reseller
        # initiated suspensions can be activated. * NOT_SUSPENDED: Can't activate
        # entitlements that are already in ACTIVE state. Can only activate suspended
        # entitlements. * INTERNAL: Any non-user error related to a technical issue in
        # the backend. In this case, contact Cloud Channel support. * UNKNOWN: Any non-
        # user error related to a technical issue in the backend. In this case, contact
        # Cloud Channel support. Return Value: Long Running Operation ID. To get the
        # results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The Operation metadata will contain an instance
        # of OperationMetadata.
        # @param [String] name
        #   Required. The resource name of the entitlement to activate. The name takes the
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
        # long-running operation. Possible Error Codes: * PERMISSION_DENIED: If the
        # customer doesn't belong to the reseller or if the reseller account making the
        # request and reseller account being queried for are different. *
        # FAILED_PRECONDITION: If there are any Google Cloud projects linked to the
        # Google Cloud entitlement's Cloud Billing subaccount. * INVALID_ARGUMENT:
        # Missing or invalid required parameters in the request. * NOT_FOUND:
        # Entitlement resource not found. * DELETION_TYPE_NOT_ALLOWED: Cancel is only
        # allowed for Google Workspace add-ons or entitlements for Google Cloud's
        # development platform. * INTERNAL: Any non-user error related to a technical
        # issue in the backend. In this case, contact Cloud Channel support. * UNKNOWN:
        # Any non-user error related to a technical issue in the backend. In this case,
        # contact Cloud Channel support. Return Value: Long Running Operation ID. To get
        # the results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The response will contain google.protobuf.Empty
        # on success. The Operation metadata will contain an instance of
        # OperationMetadata.
        # @param [String] name
        #   Required. The resource name of the entitlement to cancel. The name takes the
        #   format: accounts/`account_id`/customers/`customer_id`/entitlements/`
        #   entitlement_id`
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
        # is a long-running operation and results in updates to the entitlement as a
        # result of fulfillment. Possible Error Codes: * PERMISSION_DENIED: If the
        # customer doesn't belong to the reseller. * INVALID_ARGUMENT: Missing or
        # invalid required parameters in the request. * NOT_FOUND: Offer or Entitlement
        # resource not found. * INTERNAL: Any non-user error related to a technical
        # issue in the backend. In this case, contact Cloud Channel support. * UNKNOWN:
        # Any non-user error related to a technical issue in the backend. In this case,
        # contact Cloud Channel support. Return Value: Long Running Operation ID. To get
        # the results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The Operation metadata will contain an instance
        # of OperationMetadata.
        # @param [String] name
        #   Required. The name of the entitlement to update. Format: accounts/`account_id`/
        #   customers/`customer_id`/entitlements/`entitlement_id`
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
        
        # Change parameters of the entitlement An entitlement parameters update is a
        # long-running operation and results in updates to the entitlement as a result
        # of fulfillment. Possible Error Codes: * PERMISSION_DENIED: If the customer
        # doesn't belong to the reseller. * INVALID_ARGUMENT: Missing or invalid
        # required parameters in the request. For example, if the number of seats being
        # changed to is greater than the allowed number of max seats for the resource.
        # Or decreasing seats for a commitment based plan. * NOT_FOUND: Entitlement
        # resource not found. * INTERNAL: Any non-user error related to a technical
        # issue in the backend. In this case, contact Cloud Channel support. * UNKNOWN:
        # Any non-user error related to a technical issue in the backend. In this case,
        # contact Cloud Channel support. Return Value: Long Running Operation ID. To get
        # the results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The Operation metadata will contain an instance
        # of OperationMetadata.
        # @param [String] name
        #   Required. The name of the entitlement to update. The name takes the format:
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
        # entitlement update is a long-running operation and results in updates to the
        # entitlement as a result of fulfillment. Possible Error Codes: *
        # PERMISSION_DENIED: If the customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. *
        # NOT_FOUND: Entitlement resource not found. * NOT_COMMITMENT_PLAN: Renewal
        # Settings are only applicable for a commitment plan. Can't enable or disable
        # renewal for non-commitment plans. * INTERNAL: Any non user error related to a
        # technical issue in the backend. In this case, contact Cloud Channel support. *
        # UNKNOWN: Any non user error related to a technical issue in the backend. In
        # this case, contact Cloud Channel support. Return Value: Long Running Operation
        # ID. To get the results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The Operation metadata will contain an instance
        # of OperationMetadata.
        # @param [String] name
        #   Required. The name of the entitlement to update. The name takes the format:
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
        
        # Creates an entitlement for a customer. Possible Error Codes: *
        # PERMISSION_DENIED: If the customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: It can happen in below scenarios - * Missing or invalid
        # required parameters in the request. * Cannot purchase an entitlement if there
        # is already an entitlement for customer, for a SKU from the same product family.
        # * INVALID_VALUE: Offer passed in isn't valid. Make sure OfferId is valid. If
        # it is valid, then contact Google Channel support for further troubleshooting. *
        # NOT_FOUND: If the customer or offer resource is not found for the reseller. *
        # ALREADY_EXISTS: This failure can happen in the following cases: * If the SKU
        # has been already purchased for the customer. * If the customer's primary email
        # already exists. In this case retry after changing the customer's primary
        # contact email. * CONDITION_NOT_MET or FAILED_PRECONDITION: This failure can
        # happen in the following cases: * Purchasing a SKU that requires domain
        # verification and the domain has not been verified. * Purchasing an Add-On SKU
        # like Vault or Drive without purchasing the pre-requisite SKU, such as Google
        # Workspace Business Starter. * Applicable only for developer accounts: reseller
        # and resold domain. Must meet the following domain naming requirements: *
        # Domain names must start with goog-test. * Resold domain names must include the
        # reseller domain. * INTERNAL: Any non-user error related to a technical issue
        # in the backend. Contact Cloud Channel Support in this case. * UNKNOWN: Any non-
        # user error related to a technical issue in the backend. Contact Cloud Channel
        # Support in this case. Return Value: Long Running Operation ID. To get the
        # results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The Operation metadata will contain an instance
        # of OperationMetadata.
        # @param [String] parent
        #   Required. The resource name of reseller's customer account in which to create
        #   the entitlement. The parent takes the format: accounts/`account_id`/customers/`
        #   customer_id`
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
        
        # Returns a requested Entitlement resource. Possible Error Codes: *
        # PERMISSION_DENIED: If the customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request. *
        # NOT_FOUND: If the entitlement is not found for the customer. Return Value: If
        # found, the requested Entitlement resource, otherwise returns an error.
        # @param [String] name
        #   Required. The resource name of the entitlement to retrieve. The name takes the
        #   format: accounts/`account_id`/customers/`customer_id`/entitlements/`id`
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
        
        # List Entitlements belonging to a customer. Possible Error Codes: *
        # PERMISSION_DENIED: If the customer doesn't belong to the reseller. *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request.
        # Return Value: List of Entitlements belonging to the customer, or empty list if
        # there are none.
        # @param [String] parent
        #   Required. The resource name of the reseller's customer account for which to
        #   list entitlements. The parent takes the format: accounts/`account_id`/
        #   customers/`customer_id`
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, at most 50 entitlements will be returned. The
        #   maximum value is 100; values above 100 will be coerced to 100.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
        #   Typically obtained via ListEntitlementsResponse.next_page_token of the
        #   previous CloudChannelService.ListEntitlements call.
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
        
        # Starts paid service for a trial entitlement. Starts paid service for a trial
        # entitlement immediately. This method is only applicable if a plan has already
        # been set up for a trial entitlement but has some trial days remaining.
        # Possible Error Codes: * PERMISSION_DENIED: If the customer doesn't belong to
        # the reseller. * INVALID_ARGUMENT: Missing or invalid required parameters in
        # the request. * NOT_FOUND: Entitlement resource not found. *
        # FAILED_PRECONDITION/NOT_IN_TRIAL: This method only works for entitlement on
        # trial plans. * INTERNAL: Any non-user error related to a technical issue in
        # the backend. In this case, contact Cloud Channel support. * UNKNOWN: Any non-
        # user error related to a technical issue in the backend. In this case, contact
        # Cloud Channel support. Return Value: Long Running Operation ID. To get the
        # results of the operation, call the GetOperation method of
        # CloudChannelOperationsService. The Operation metadata will contain an instance
        # of OperationMetadata.
        # @param [String] name
        #   Required. The name of the entitlement for which paid service is being started.
        #   The name takes the format: accounts/`account_id`/customers/`customer_id`/
        #   entitlements/`entitlement_id`
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
        # long-running operation. Possible Error Codes: * PERMISSION_DENIED: If the
        # customer doesn't belong to the reseller. * INVALID_ARGUMENT: Missing or
        # invalid required parameters in the request. * NOT_FOUND: Entitlement resource
        # not found. * NOT_ACTIVE: Entitlement is not active. * INTERNAL: Any non-user
        # error related to a technical issue in the backend. In this case, contact Cloud
        # Channel support. * UNKNOWN: Any non-user error related to a technical issue in
        # the backend. In this case, contact Cloud Channel support. Return Value: Long
        # Running Operation ID. To get the results of the operation, call the
        # GetOperation method of CloudChannelOperationsService. The Operation metadata
        # will contain an instance of OperationMetadata.
        # @param [String] name
        #   Required. The resource name of the entitlement to suspend. The name takes the
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
        
        # Lists the Offers the reseller can sell. Possible Error Codes: *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request.
        # @param [String] parent
        #   Required. The resource name of the reseller account from which to list Offers.
        #   The parent takes the format: accounts/`account_id`.
        # @param [String] filter
        #   Optional. The expression to filter results by name (name of the Offer), sku.
        #   name (name of the SKU) or sku.product.name (name of the Product). Example 1:
        #   sku.product.name=products/p1 AND sku.name!=products/p1/skus/s1 Example 2: name=
        #   accounts/a1/offers/o1
        # @param [String] language_code
        #   Optional. The BCP-47 language code, such as "en-US". If specified, the
        #   response will be localized to the corresponding language code. Default is "en-
        #   US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, at most 500 Offers will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
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
        
        # Lists the Products the reseller is authorized to sell. Possible Error Codes: *
        # INVALID_ARGUMENT: Missing or invalid required parameters in the request.
        # @param [String] account
        #   Required. The resource name of the reseller account. Format: accounts/`
        #   account_id`.
        # @param [String] language_code
        #   Optional. The BCP-47 language code, such as "en-US". If specified, the
        #   response will be localized to the corresponding language code. Default is "en-
        #   US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, at most 100 Products will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
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
        # Error Codes: * INVALID_ARGUMENT: Missing or invalid required parameters in the
        # request.
        # @param [String] parent
        #   Required. The resource name of the Product for which to list SKUs. The parent
        #   takes the format: products/`product_id`. Supports products/- to retrieve SKUs
        #   for all products.
        # @param [String] account
        #   Required. Resource name of the reseller. Format: accounts/`account_id`.
        # @param [String] language_code
        #   Optional. The BCP-47 language code, such as "en-US". If specified, the
        #   response will be localized to the corresponding language code. Default is "en-
        #   US".
        # @param [Fixnum] page_size
        #   Optional. Requested page size. Server might return fewer results than
        #   requested. If unspecified, at most 100 SKUs will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A token identifying a page of results, if other than the first one.
        #   Optional.
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
