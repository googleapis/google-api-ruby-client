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
    module AuthorizedbuyersmarketplaceV1
      # Authorized Buyers Marketplace API
      #
      # The Authorized Buyers Marketplace API lets buyers programmatically discover
      #  inventory; propose, retrieve and negotiate deals with publishers.
      #
      # @example
      #    require 'google/apis/authorizedbuyersmarketplace_v1'
      #
      #    Authorizedbuyersmarketplace = Google::Apis::AuthorizedbuyersmarketplaceV1 # Alias the module
      #    service = Authorizedbuyersmarketplace::AuthorizedBuyersMarketplaceService.new
      #
      # @see https://developers.google.com/authorized-buyers/apis/marketplace/reference/rest/
      class AuthorizedBuyersMarketplaceService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://authorizedbuyersmarketplace.googleapis.com/', '',
                client_name: 'google-apis-authorizedbuyersmarketplace_v1',
                client_version: Google::Apis::AuthorizedbuyersmarketplaceV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Lists finalized deals. Use the URL path "/v1/buyers/`accountId`/finalizedDeals"
        # to list finalized deals for the current buyer and its clients. Bidders can
        # use the URL path "/v1/bidders/`accountId`/finalizedDeals" to list finalized
        # deals for the bidder, its buyers and all their clients.
        # @param [String] parent
        #   Required. The buyer to list the finalized deals for, in the format: `buyers/`
        #   accountId``. When used to list finalized deals for a bidder, its buyers and
        #   clients, in the format `bidders/`accountId``.
        # @param [String] filter
        #   Optional query string using the [Cloud API list filtering syntax](https://
        #   developers.google.com/authorized-buyers/apis/guides/list-filters) Supported
        #   columns for filtering are: * deal.displayName * deal.dealType * deal.
        #   createTime * deal.updateTime * deal.flightStartTime * deal.flightEndTime *
        #   dealServingStatus
        # @param [String] order_by
        #   An optional query string to sort finalized deals using the [Cloud API sorting
        #   syntax](https://cloud.google.com/apis/design/design_patterns#sorting_order).
        #   If no sort order is specified, results will be returned in an arbitrary order.
        #   Supported columns for sorting are: * deal.displayName * deal.createTime * deal.
        #   updateTime * deal.flightStartTime * deal.flightEndTime * rtbMetrics.
        #   bidRequests7Days * rtbMetrics.bids7Days * rtbMetrics.adImpressions7Days *
        #   rtbMetrics.bidRate7Days * rtbMetrics.filteredBidRate7Days * rtbMetrics.
        #   mustBidRateCurrentMonth Example: 'deal.displayName, deal.updateTime desc'
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer results than requested. If
        #   requested more than 500, the server will return 500 results per page. If
        #   unspecified, the server will pick a default page size of 100.
        # @param [String] page_token
        #   The page token as returned from ListFinalizedDealsResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_bidder_finalized_deals(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/finalizedDeals', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an auction package given its name.
        # @param [String] name
        #   Required. Name of auction package to get. Format: `buyers/`accountId`/
        #   auctionPackages/`auctionPackageId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_auction_package(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the auction packages subscribed by a buyer and its clients.
        # @param [String] parent
        #   Required. Name of the parent buyer that can access the auction package. Format:
        #   `buyers/`accountId``
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer results than requested. Max
        #   allowed page size is 500.
        # @param [String] page_token
        #   The page token as returned. ListAuctionPackagesResponse.nextPageToken
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListAuctionPackagesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListAuctionPackagesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_auction_packages(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/auctionPackages', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListAuctionPackagesResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListAuctionPackagesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Subscribe to the auction package for the specified buyer. Once subscribed, the
        # bidder will receive a call out for inventory matching the auction package
        # targeting criteria with the auction package deal ID and the specified buyer.
        # @param [String] name
        #   Required. Name of the auction package. Format: `buyers/`accountId`/
        #   auctionPackages/`auctionPackageId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::SubscribeAuctionPackageRequest] subscribe_auction_package_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def subscribe_auction_package(name, subscribe_auction_package_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:subscribe', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::SubscribeAuctionPackageRequest::Representation
          command.request_object = subscribe_auction_package_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Subscribe the specified clients of the buyer to the auction package. If a
        # client in the list does not belong to the buyer, an error response will be
        # returned, and all of the following clients in the list will not be subscribed.
        # Subscribing an already subscribed client will have no effect.
        # @param [String] auction_package
        #   Required. Name of the auction package. Format: `buyers/`accountId`/
        #   auctionPackages/`auctionPackageId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::SubscribeClientsRequest] subscribe_clients_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def subscribe_auction_package_clients(auction_package, subscribe_clients_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+auctionPackage}:subscribeClients', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::SubscribeClientsRequest::Representation
          command.request_object = subscribe_clients_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage
          command.params['auctionPackage'] = auction_package unless auction_package.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unsubscribe from the auction package for the specified buyer. Once
        # unsubscribed, the bidder will no longer receive a call out for the auction
        # package deal ID and the specified buyer.
        # @param [String] name
        #   Required. Name of the auction package. Format: `buyers/`accountId`/
        #   auctionPackages/`auctionPackageId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::UnsubscribeAuctionPackageRequest] unsubscribe_auction_package_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unsubscribe_auction_package(name, unsubscribe_auction_package_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:unsubscribe', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::UnsubscribeAuctionPackageRequest::Representation
          command.request_object = unsubscribe_auction_package_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unsubscribe from the auction package for the specified clients of the buyer.
        # Unsubscribing a client that is not subscribed will have no effect.
        # @param [String] auction_package
        #   Required. Name of the auction package. Format: `buyers/`accountId`/
        #   auctionPackages/`auctionPackageId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::UnsubscribeClientsRequest] unsubscribe_clients_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def unsubscribe_auction_package_clients(auction_package, unsubscribe_clients_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+auctionPackage}:unsubscribeClients', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::UnsubscribeClientsRequest::Representation
          command.request_object = unsubscribe_clients_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::AuctionPackage
          command.params['auctionPackage'] = auction_package unless auction_package.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates an existing client. The state of the client will be updated to "
        # ACTIVE". This method has no effect if the client is already in "ACTIVE" state.
        # @param [String] name
        #   Required. Format: `buyers/`buyerAccountId`/clients/`clientAccountId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::ActivateClientRequest] activate_client_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_client(name, activate_client_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:activate', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ActivateClientRequest::Representation
          command.request_object = activate_client_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Client
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new client.
        # @param [String] parent
        #   Required. The name of the buyer. Format: `buyers/`accountId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::Client] client_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_buyer_client(parent, client_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/clients', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Client
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deactivates an existing client. The state of the client will be updated to "
        # INACTIVE". This method has no effect if the client is already in "INACTIVE"
        # state.
        # @param [String] name
        #   Required. Format: `buyers/`buyerAccountId`/clients/`clientAccountId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::DeactivateClientRequest] deactivate_client_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deactivate_client(name, deactivate_client_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deactivate', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::DeactivateClientRequest::Representation
          command.request_object = deactivate_client_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Client
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a client with a given resource name.
        # @param [String] name
        #   Required. Format: `buyers/`accountId`/clients/`clientAccountId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_client(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Client
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the clients for the current buyer.
        # @param [String] parent
        #   Required. The name of the buyer. Format: `buyers/`accountId``
        # @param [String] filter
        #   Query string using the [Filtering Syntax](https://developers.google.com/
        #   authorized-buyers/apis/guides/list-filters) Supported fields for filtering are:
        #   * partnerClientId Use this field to filter the clients by the partnerClientId.
        #   For example, if the partnerClientId of the client is "1234", the value of
        #   this field should be `partnerClientId = "1234"`, in order to get only the
        #   client whose partnerClientId is "1234" in the response.
        # @param [Fixnum] page_size
        #   Requested page size. If left blank, a default page size of 500 will be applied.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of ListClientsResponse.nextPageToken returned from the
        #   previous call to the list method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_clients(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/clients', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientsResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing client.
        # @param [String] name
        #   Output only. The resource name of the client. Format: `buyers/`accountId`/
        #   clients/`clientAccountId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::Client] client_object
        # @param [String] update_mask
        #   List of fields to be updated. If empty or unspecified, the service will update
        #   all fields populated in the update request excluding the output only fields
        #   and primitive fields with default value. Note that explicit field mask is
        #   required in order to reset a primitive field back to its default value, for
        #   example, false for boolean fields, 0 for integer fields. A special field mask
        #   consisting of a single path "*" can be used to indicate full replacement(the
        #   equivalent of PUT method), updatable fields unset or unspecified in the input
        #   will be cleared or set to default value. Output only fields will be ignored
        #   regardless of the value of updateMask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Client] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Client]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_buyer_client(name, client_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
          command.request_object = client_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Client::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Client
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Activates an existing client user. The state of the client user will be
        # updated from "INACTIVE" to "ACTIVE". This method has no effect if the client
        # user is already in "ACTIVE" state. An error will be returned if the client
        # user to activate is still in "INVITED" state.
        # @param [String] name
        #   Required. Format: `buyers/`buyerAccountId`/clients/`clientAccountId`/
        #   clientUsers/`userId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::ActivateClientUserRequest] activate_client_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def activate_client_user(name, activate_client_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:activate', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ActivateClientUserRequest::Representation
          command.request_object = activate_client_user_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new client user in "INVITED" state. An email invitation will be sent
        # to the new user, once accepted the user will become active.
        # @param [String] parent
        #   Required. The name of the client. Format: `buyers/`accountId`/clients/`
        #   clientAccountId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser] client_user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_buyer_client_user(parent, client_user_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/users', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser::Representation
          command.request_object = client_user_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deactivates an existing client user. The state of the client user will be
        # updated from "ACTIVE" to "INACTIVE". This method has no effect if the client
        # user is already in "INACTIVE" state. An error will be returned if the client
        # user to deactivate is still in "INVITED" state.
        # @param [String] name
        #   Required. Format: `buyers/`buyerAccountId`/clients/`clientAccountId`/
        #   clientUsers/`userId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::DeactivateClientUserRequest] deactivate_client_user_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def deactivate_client_user(name, deactivate_client_user_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:deactivate', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::DeactivateClientUserRequest::Representation
          command.request_object = deactivate_client_user_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing client user. The client user will lose access to the
        # Authorized Buyers UI. Note that if a client user is deleted, the user's access
        # to the UI can't be restored unless a new client user is created and activated.
        # @param [String] name
        #   Required. Format: `buyers/`buyerAccountId`/clients/`clientAccountId`/
        #   clientUsers/`userId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_buyer_client_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Empty::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves an existing client user.
        # @param [String] name
        #   Required. Format: `buyers/`buyerAccountId`/clients/`clientAccountId`/
        #   clientUsers/`userId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_client_user(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ClientUser
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all client users for a specified client.
        # @param [String] parent
        #   Required. The name of the client. Format: `buyers/`buyerAccountId`/clients/`
        #   clientAccountId``
        # @param [Fixnum] page_size
        #   Requested page size. If left blank, a default page size of 500 will be applied.
        # @param [String] page_token
        #   A token identifying a page of results the server should return. Typically,
        #   this is the value of ListClientUsersResponse.nextPageToken returned from the
        #   previous call to the list method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientUsersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientUsersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_client_users(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/users', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientUsersResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListClientUsersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Add creative to be used in the bidding process for a finalized deal. For
        # programmatic guaranteed deals, it's recommended that you associate at least
        # one approved creative with the deal before calling SetReadyToServe, to help
        # reduce the number of bid responses filtered because they don't contain
        # approved creatives. Creatives successfully added to a deal can be found in the
        # Realtime-bidding Creatives API creative.deal_ids. This method only applies to
        # programmatic guaranteed deals. Maximum number of 1000 creatives can be added
        # to a finalized deal.
        # @param [String] deal
        #   Required. Name of the finalized deal in the format of: `buyers/`accountId`/
        #   finalizedDeals/`dealId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::AddCreativeRequest] add_creative_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_finalized_deal_creative(deal, add_creative_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+deal}:addCreative', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AddCreativeRequest::Representation
          command.request_object = add_creative_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal
          command.params['deal'] = deal unless deal.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a finalized deal given its name.
        # @param [String] name
        #   Required. Format: `buyers/`accountId`/finalizedDeals/`dealId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_finalized_deal(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists finalized deals. Use the URL path "/v1/buyers/`accountId`/finalizedDeals"
        # to list finalized deals for the current buyer and its clients. Bidders can
        # use the URL path "/v1/bidders/`accountId`/finalizedDeals" to list finalized
        # deals for the bidder, its buyers and all their clients.
        # @param [String] parent
        #   Required. The buyer to list the finalized deals for, in the format: `buyers/`
        #   accountId``. When used to list finalized deals for a bidder, its buyers and
        #   clients, in the format `bidders/`accountId``.
        # @param [String] filter
        #   Optional query string using the [Cloud API list filtering syntax](https://
        #   developers.google.com/authorized-buyers/apis/guides/list-filters) Supported
        #   columns for filtering are: * deal.displayName * deal.dealType * deal.
        #   createTime * deal.updateTime * deal.flightStartTime * deal.flightEndTime *
        #   dealServingStatus
        # @param [String] order_by
        #   An optional query string to sort finalized deals using the [Cloud API sorting
        #   syntax](https://cloud.google.com/apis/design/design_patterns#sorting_order).
        #   If no sort order is specified, results will be returned in an arbitrary order.
        #   Supported columns for sorting are: * deal.displayName * deal.createTime * deal.
        #   updateTime * deal.flightStartTime * deal.flightEndTime * rtbMetrics.
        #   bidRequests7Days * rtbMetrics.bids7Days * rtbMetrics.adImpressions7Days *
        #   rtbMetrics.bidRate7Days * rtbMetrics.filteredBidRate7Days * rtbMetrics.
        #   mustBidRateCurrentMonth Example: 'deal.displayName, deal.updateTime desc'
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer results than requested. If
        #   requested more than 500, the server will return 500 results per page. If
        #   unspecified, the server will pick a default page size of 100.
        # @param [String] page_token
        #   The page token as returned from ListFinalizedDealsResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_finalized_deals(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/finalizedDeals', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListFinalizedDealsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Pauses serving of the given finalized deal. This call only pauses the serving
        # status, and does not affect other fields of the finalized deal. Calling this
        # method for an already paused deal has no effect. This method only applies to
        # programmatic guaranteed deals.
        # @param [String] name
        #   Required. Format: `buyers/`accountId`/finalizedDeals/`dealId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::PauseFinalizedDealRequest] pause_finalized_deal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_finalized_deal(name, pause_finalized_deal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:pause', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::PauseFinalizedDealRequest::Representation
          command.request_object = pause_finalized_deal_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Resumes serving of the given finalized deal. Calling this method for an
        # running deal has no effect. If a deal is initially paused by the seller,
        # calling this method will not resume serving of the deal until the seller also
        # resumes the deal. This method only applies to programmatic guaranteed deals.
        # @param [String] name
        #   Required. Format: `buyers/`accountId`/finalizedDeals/`dealId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::ResumeFinalizedDealRequest] resume_finalized_deal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_finalized_deal(name, resume_finalized_deal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resume', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ResumeFinalizedDealRequest::Representation
          command.request_object = resume_finalized_deal_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the given finalized deal as ready to serve. By default, deals are set as
        # ready to serve as soon as they're finalized. If you want to opt out of the
        # default behavior, and manually indicate that deals are ready to serve, ask
        # your Technical Account Manager to add you to the allowlist. If you choose to
        # use this method, finalized deals belonging to the bidder and its child seats
        # don't start serving until after you call `setReadyToServe`, and after the
        # deals become active. For example, you can use this method to delay receiving
        # bid requests until your creative is ready. This method only applies to
        # programmatic guaranteed deals.
        # @param [String] deal
        #   Required. Format: `buyers/`accountId`/finalizedDeals/`dealId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::SetReadyToServeRequest] set_ready_to_serve_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_finalized_deal_ready_to_serve(deal, set_ready_to_serve_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+deal}:setReadyToServe', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::SetReadyToServeRequest::Representation
          command.request_object = set_ready_to_serve_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::FinalizedDeal
          command.params['deal'] = deal unless deal.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Accepts the proposal at the given revision number. If the revision number in
        # the request is behind the latest from the server, an error message will be
        # returned. This call updates the Proposal.state from `
        # BUYER_ACCEPTANCE_REQUESTED` to `FINALIZED`; it has no side effect if the
        # Proposal.state is already `FINALIZED` and throws exception if the Proposal.
        # state is not either `BUYER_ACCEPTANCE_REQUESTED` or `FINALIZED`. Accepting a
        # proposal means the buyer understands and accepts the Proposal.
        # terms_and_conditions proposed by the seller.
        # @param [String] name
        #   Name of the proposal. Format: `buyers/`accountId`/proposals/`proposalId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::AcceptProposalRequest] accept_proposal_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def accept_proposal(name, accept_proposal_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:accept', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AcceptProposalRequest::Representation
          command.request_object = accept_proposal_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a note for this proposal and sends to the seller.
        # @param [String] proposal
        #   Name of the proposal. Format: `buyers/`accountId`/proposals/`proposalId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::AddNoteRequest] add_note_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_proposal_note(proposal, add_note_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+proposal}:addNote', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::AddNoteRequest::Representation
          command.request_object = add_note_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal
          command.params['proposal'] = proposal unless proposal.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancels an ongoing negotiation on a proposal. This does not cancel or end
        # serving for the deals if the proposal has been finalized. If the proposal has
        # not been finalized before, calling this method will set the Proposal.state to `
        # TERMINATED` and increment the Proposal.proposal_revision. If the proposal has
        # been finalized before and is under renegotiation now, calling this method will
        # reset the Proposal.state to `FINALIZED` and increment the Proposal.
        # proposal_revision. This method does not support private auction proposals
        # whose Proposal.deal_type is 'PRIVATE_AUCTION'.
        # @param [String] proposal
        #   Name of the proposal. Format: `buyers/`accountId`/proposals/`proposalId``
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::CancelNegotiationRequest] cancel_negotiation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_proposal_negotiation(proposal, cancel_negotiation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+proposal}:cancelNegotiation', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::CancelNegotiationRequest::Representation
          command.request_object = cancel_negotiation_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal
          command.params['proposal'] = proposal unless proposal.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a proposal using its resource name. The proposal is returned at the
        # latest revision.
        # @param [String] name
        #   Required. Name of the proposal. Format: `buyers/`accountId`/proposals/`
        #   proposalId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_proposal(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists proposals. A filter expression using [Cloud API list filtering syntax](
        # https://developers.google.com/authorized-buyers/apis/guides/list-filters) may
        # be specified to filter the results.
        # @param [String] parent
        #   Required. Parent that owns the collection of proposals Format: `buyers/`
        #   accountId``
        # @param [String] filter
        #   Optional query string using the [Cloud API list filtering syntax](https://
        #   developers.google.com/authorized-buyers/apis/guides/list-filters) Supported
        #   columns for filtering are: * displayName * dealType * updateTime * state
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer results than requested. If
        #   unspecified, the server will put a size of 500.
        # @param [String] page_token
        #   The page token as returned from ListProposalsResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListProposalsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListProposalsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_proposals(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/proposals', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListProposalsResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListProposalsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the proposal at the given revision number. If the revision number in
        # the request is behind the latest one kept in the server, an error message will
        # be returned. See FieldMask for how to use FieldMask. Only fields specified in
        # the UpdateProposalRequest.update_mask will be updated; Fields noted as '
        # Immutable' or 'Output only' yet specified in the UpdateProposalRequest.
        # update_mask will be ignored and left unchanged. Updating a private auction
        # proposal is not allowed and will result in an error.
        # @param [String] name
        #   Immutable. The name of the proposal serving as a unique identifier. Format:
        #   buyers/`accountId`/proposals/`proposalId`
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal] proposal_object
        # @param [String] update_mask
        #   List of fields to be updated. If empty or unspecified, the service will update
        #   all fields populated in the update request excluding the output only fields
        #   and primitive fields with default value. Note that explicit field mask is
        #   required in order to reset a primitive field back to its default value, for
        #   example, false for boolean fields, 0 for integer fields. A special field mask
        #   consisting of a single path "*" can be used to indicate full replacement(the
        #   equivalent of PUT method), updatable fields unset or unspecified in the input
        #   will be cleared or set to default value. Output only fields will be ignored
        #   regardless of the value of updateMask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_buyer_proposal(name, proposal_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
          command.request_object = proposal_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sends a request for proposal (RFP) to a publisher to initiate the negotiation
        # regarding certain inventory. In the RFP, buyers can specify the deal type,
        # deal terms, start and end dates, targeting, and a message to the publisher.
        # Once the RFP is sent, a proposal in `SELLER_REVIEW_REQUESTED` state will be
        # created and returned in the response. The publisher may review your request
        # and respond with detailed deals in the proposal.
        # @param [String] buyer
        #   Required. The current buyer who is sending the RFP in the format: `buyers/`
        #   accountId``.
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::SendRfpRequest] send_rfp_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_proposal_rfp(buyer, send_rfp_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+buyer}/proposals:sendRfp', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::SendRfpRequest::Representation
          command.request_object = send_rfp_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Proposal
          command.params['buyer'] = buyer unless buyer.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Batch updates multiple deals in the same proposal.
        # @param [String] parent
        #   Required. The name of the proposal containing the deals to batch update.
        #   Format: buyers/`accountId`/proposals/`proposalId`
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::BatchUpdateDealsRequest] batch_update_deals_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::BatchUpdateDealsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::BatchUpdateDealsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_update_deals(parent, batch_update_deals_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/deals:batchUpdate', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::BatchUpdateDealsRequest::Representation
          command.request_object = batch_update_deals_request_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::BatchUpdateDealsResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::BatchUpdateDealsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a deal given its name. The deal is returned at its head revision.
        # @param [String] name
        #   Required. Format: buyers/`accountId`/proposals/`proposalId`/deals/`dealId`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Deal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Deal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_proposal_deal(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Deal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Deal
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all deals in a proposal. To retrieve only the finalized revision deals
        # regardless if a deal is being renegotiated, see the FinalizedDeals resource.
        # @param [String] parent
        #   Required. The name of the proposal containing the deals to retrieve. Format:
        #   buyers/`accountId`/proposals/`proposalId`
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer results than requested. If
        #   requested more than 500, the server will return 500 results per page. If
        #   unspecified, the server will pick a default page size of 100.
        # @param [String] page_token
        #   The page token as returned from ListDealsResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListDealsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListDealsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_proposal_deals(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/deals', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListDealsResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListDealsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the given deal at the buyer known revision number. If the server
        # revision has advanced since the passed-in proposal.proposal_revision an
        # ABORTED error message will be returned. The revision number is incremented by
        # the server whenever the proposal or its constituent deals are updated. Note:
        # The revision number is kept at a proposal level. The buyer of the API is
        # expected to keep track of the revision number after the last update operation
        # and send it in as part of the next update request. This way, if there are
        # further changes on the server (for example, seller making new updates), then
        # the server can detect conflicts and reject the proposed changes.
        # @param [String] name
        #   Immutable. The unique identifier of the deal. Auto-generated by the server
        #   when a deal is created. Format: buyers/`accountId`/proposals/`proposalId`/
        #   deals/`dealId`
        # @param [Google::Apis::AuthorizedbuyersmarketplaceV1::Deal] deal_object
        # @param [String] update_mask
        #   List of fields to be updated. If empty or unspecified, the service will update
        #   all fields populated in the update request excluding the output only fields
        #   and primitive fields with default value. Note that explicit field mask is
        #   required in order to reset a primitive field back to its default value, for
        #   example, false for boolean fields, 0 for integer fields. A special field mask
        #   consisting of a single path "*" can be used to indicate full replacement(the
        #   equivalent of PUT method), updatable fields unset or unspecified in the input
        #   will be cleared or set to default value. Output only fields will be ignored
        #   regardless of the value of updateMask.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::Deal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::Deal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_buyer_proposal_deal(name, deal_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Deal::Representation
          command.request_object = deal_object
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::Deal::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::Deal
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the requested publisher profile by name.
        # @param [String] name
        #   Required. Name of the publisher profile. Format: `buyers/`buyerId`/
        #   publisherProfiles/`publisherProfileId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_buyer_publisher_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfile::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::PublisherProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists publisher profiles. The returned publisher profiles aren't in any
        # defined order. The order of the results might change. A new publisher profile
        # can appear in any place in the list of returned results.
        # @param [String] parent
        #   Required. Parent that owns the collection of publisher profiles Format: `
        #   buyers/`buyerId``
        # @param [String] filter
        #   Optional query string using the [Cloud API list filtering] (https://developers.
        #   google.com/authorized-buyers/apis/guides/list-filters) syntax.
        # @param [Fixnum] page_size
        #   Requested page size. The server may return fewer results than requested. If
        #   requested more than 500, the server will return 500 results per page. If
        #   unspecified, the server will pick a default page size of 100.
        # @param [String] page_token
        #   The page token as returned from a previous ListPublisherProfilesResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuthorizedbuyersmarketplaceV1::ListPublisherProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuthorizedbuyersmarketplaceV1::ListPublisherProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_buyer_publisher_profiles(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/publisherProfiles', options)
          command.response_representation = Google::Apis::AuthorizedbuyersmarketplaceV1::ListPublisherProfilesResponse::Representation
          command.response_class = Google::Apis::AuthorizedbuyersmarketplaceV1::ListPublisherProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
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
