# Copyright 2015 Google Inc.
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
    module GanV1beta1
      # Google Affiliate Network API
      #
      # Lets you have programmatic access to your Google Affiliate Network data.
      #
      # @example
      #    require 'google/apis/gan_v1beta1'
      #
      #    Gan = Google::Apis::GanV1beta1 # Alias the module
      #    service = Gan::GanService.new
      #
      # @see https://developers.google.com/affiliate-network/
      class GanService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        #  Overrides userIp if both are provided.
        attr_accessor :quota_user

        # @return [String]
        #  IP address of the site where the request originates. Use this if you want to
        #  enforce per-user limits.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'gan/v1beta1/')
        end
        
        # Retrieves data about a single advertiser if that the requesting advertiser/
        # publisher has access to it. Only publishers can lookup advertisers.
        # Advertisers can request information about themselves by omitting the
        # advertiserId query parameter.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [String] advertiser_id
        #   The ID of the advertiser to look up. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Advertiser] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Advertiser]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_advertiser(role, role_id, advertiser_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/advertiser', options)
          command.response_representation = Google::Apis::GanV1beta1::Advertiser::Representation
          command.response_class = Google::Apis::GanV1beta1::Advertiser
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves data about all advertisers that the requesting advertiser/publisher
        # has access to.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [String] advertiser_category
        #   Caret(^) delimted list of advertiser categories. Valid categories are defined
        #   here: http://www.google.com/support/affiliatenetwork/advertiser/bin/answer.py?
        #   hl=en&answer=107581. Filters out all advertisers not in one of the given
        #   advertiser categories. Optional.
        # @param [Fixnum] max_results
        #   Max number of items to return in this page. Optional. Defaults to 20.
        # @param [Float] min_ninety_day_epc
        #   Filters out all advertisers that have a ninety day EPC average lower than the
        #   given value (inclusive). Min value: 0.0. Optional.
        # @param [Fixnum] min_payout_rank
        #   A value between 1 and 4, where 1 represents the quartile of advertisers with
        #   the lowest ranks and 4 represents the quartile of advertisers with the highest
        #   ranks. Filters out all advertisers with a lower rank than the given quartile.
        #   For example if a 2 was given only advertisers with a payout rank of 25 or
        #   higher would be included. Optional.
        # @param [Float] min_seven_day_epc
        #   Filters out all advertisers that have a seven day EPC average lower than the
        #   given value (inclusive). Min value: 0.0. Optional.
        # @param [String] page_token
        #   The value of 'nextPageToken' from the previous page. Optional.
        # @param [String] relationship_status
        #   Filters out all advertisers for which do not have the given relationship
        #   status with the requesting publisher.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Advertisers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Advertisers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_advertisers(role, role_id, advertiser_category: nil, max_results: nil, min_ninety_day_epc: nil, min_payout_rank: nil, min_seven_day_epc: nil, page_token: nil, relationship_status: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/advertisers', options)
          command.response_representation = Google::Apis::GanV1beta1::Advertisers::Representation
          command.response_class = Google::Apis::GanV1beta1::Advertisers
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['advertiserCategory'] = advertiser_category unless advertiser_category.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['minNinetyDayEpc'] = min_ninety_day_epc unless min_ninety_day_epc.nil?
          command.query['minPayoutRank'] = min_payout_rank unless min_payout_rank.nil?
          command.query['minSevenDayEpc'] = min_seven_day_epc unless min_seven_day_epc.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['relationshipStatus'] = relationship_status unless relationship_status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves credit card offers for the given publisher.
        # @param [String] publisher
        #   The ID of the publisher in question.
        # @param [Array<String>, String] advertiser
        #   The advertiser ID of a card issuer whose offers to include. Optional, may be
        #   repeated.
        # @param [String] projection
        #   The set of fields to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::CcOffers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::CcOffers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_cc_offers(publisher, advertiser: nil, projection: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'publishers/{publisher}/ccOffers', options)
          command.response_representation = Google::Apis::GanV1beta1::CcOffers::Representation
          command.response_class = Google::Apis::GanV1beta1::CcOffers
          command.params['publisher'] = publisher unless publisher.nil?
          command.query['advertiser'] = advertiser unless advertiser.nil?
          command.query['projection'] = projection unless projection.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves event data for a given advertiser/publisher.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [String] advertiser_id
        #   Caret(^) delimited list of advertiser IDs. Filters out all events that do not
        #   reference one of the given advertiser IDs. Only used when under publishers
        #   role. Optional.
        # @param [String] charge_type
        #   Filters out all charge events that are not of the given charge type. Valid
        #   values: 'other', 'slotting_fee', 'monthly_minimum', 'tier_bonus', 'credit', '
        #   debit'. Optional.
        # @param [String] event_date_max
        #   Filters out all events later than given date. Optional. Defaults to 24 hours
        #   after eventMin.
        # @param [String] event_date_min
        #   Filters out all events earlier than given date. Optional. Defaults to 24 hours
        #   from current date/time.
        # @param [String] link_id
        #   Caret(^) delimited list of link IDs. Filters out all events that do not
        #   reference one of the given link IDs. Optional.
        # @param [Fixnum] max_results
        #   Max number of offers to return in this page. Optional. Defaults to 20.
        # @param [String] member_id
        #   Caret(^) delimited list of member IDs. Filters out all events that do not
        #   reference one of the given member IDs. Optional.
        # @param [String] modify_date_max
        #   Filters out all events modified later than given date. Optional. Defaults to
        #   24 hours after modifyDateMin, if modifyDateMin is explicitly set.
        # @param [String] modify_date_min
        #   Filters out all events modified earlier than given date. Optional. Defaults to
        #   24 hours before the current modifyDateMax, if modifyDateMax is explicitly set.
        # @param [String] order_id
        #   Caret(^) delimited list of order IDs. Filters out all events that do not
        #   reference one of the given order IDs. Optional.
        # @param [String] page_token
        #   The value of 'nextPageToken' from the previous page. Optional.
        # @param [String] product_category
        #   Caret(^) delimited list of product categories. Filters out all events that do
        #   not reference a product in one of the given product categories. Optional.
        # @param [String] publisher_id
        #   Caret(^) delimited list of publisher IDs. Filters out all events that do not
        #   reference one of the given publishers IDs. Only used when under advertiser
        #   role. Optional.
        # @param [String] sku
        #   Caret(^) delimited list of SKUs. Filters out all events that do not reference
        #   one of the given SKU. Optional.
        # @param [String] status
        #   Filters out all events that do not have the given status. Valid values: '
        #   active', 'canceled'. Optional.
        # @param [String] type
        #   Filters out all events that are not of the given type. Valid values: 'action',
        #   'transaction', 'charge'. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Events] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Events]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_events(role, role_id, advertiser_id: nil, charge_type: nil, event_date_max: nil, event_date_min: nil, link_id: nil, max_results: nil, member_id: nil, modify_date_max: nil, modify_date_min: nil, order_id: nil, page_token: nil, product_category: nil, publisher_id: nil, sku: nil, status: nil, type: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/events', options)
          command.response_representation = Google::Apis::GanV1beta1::Events::Representation
          command.response_class = Google::Apis::GanV1beta1::Events
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['chargeType'] = charge_type unless charge_type.nil?
          command.query['eventDateMax'] = event_date_max unless event_date_max.nil?
          command.query['eventDateMin'] = event_date_min unless event_date_min.nil?
          command.query['linkId'] = link_id unless link_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['memberId'] = member_id unless member_id.nil?
          command.query['modifyDateMax'] = modify_date_max unless modify_date_max.nil?
          command.query['modifyDateMin'] = modify_date_min unless modify_date_min.nil?
          command.query['orderId'] = order_id unless order_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['productCategory'] = product_category unless product_category.nil?
          command.query['publisherId'] = publisher_id unless publisher_id.nil?
          command.query['sku'] = sku unless sku.nil?
          command.query['status'] = status unless status.nil?
          command.query['type'] = type unless type.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves data about a single link if the requesting advertiser/publisher has
        # access to it. Advertisers can look up their own links. Publishers can look up
        # visible links or links belonging to advertisers they are in a relationship
        # with.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [String] link_id
        #   The ID of the link to look up.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_link(role, role_id, link_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/link/{linkId}', options)
          command.response_representation = Google::Apis::GanV1beta1::Link::Representation
          command.response_class = Google::Apis::GanV1beta1::Link
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.params['linkId'] = link_id unless link_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Inserts a new link.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [Google::Apis::GanV1beta1::Link] link_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Link] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Link]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_link(role, role_id, link_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{role}/{roleId}/link', options)
          command.request_representation = Google::Apis::GanV1beta1::Link::Representation
          command.request_object = link_object
          command.response_representation = Google::Apis::GanV1beta1::Link::Representation
          command.response_class = Google::Apis::GanV1beta1::Link
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves all links that match the query parameters.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [Array<String>, String] advertiser_id
        #   Limits the resulting links to the ones belonging to the listed advertisers.
        # @param [Array<String>, String] asset_size
        #   The size of the given asset.
        # @param [String] authorship
        #   The role of the author of the link.
        # @param [String] create_date_max
        #   The end of the create date range.
        # @param [String] create_date_min
        #   The beginning of the create date range.
        # @param [String] link_type
        #   The type of the link.
        # @param [Fixnum] max_results
        #   Max number of items to return in this page. Optional. Defaults to 20.
        # @param [String] page_token
        #   The value of 'nextPageToken' from the previous page. Optional.
        # @param [Array<String>, String] promotion_type
        #   The promotion type.
        # @param [String] relationship_status
        #   The status of the relationship.
        # @param [String] search_text
        #   Field for full text search across title and merchandising text, supports link
        #   id search.
        # @param [String] start_date_max
        #   The end of the start date range.
        # @param [String] start_date_min
        #   The beginning of the start date range.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Links] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Links]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_links(role, role_id, advertiser_id: nil, asset_size: nil, authorship: nil, create_date_max: nil, create_date_min: nil, link_type: nil, max_results: nil, page_token: nil, promotion_type: nil, relationship_status: nil, search_text: nil, start_date_max: nil, start_date_min: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/links', options)
          command.response_representation = Google::Apis::GanV1beta1::Links::Representation
          command.response_class = Google::Apis::GanV1beta1::Links
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['assetSize'] = asset_size unless asset_size.nil?
          command.query['authorship'] = authorship unless authorship.nil?
          command.query['createDateMax'] = create_date_max unless create_date_max.nil?
          command.query['createDateMin'] = create_date_min unless create_date_min.nil?
          command.query['linkType'] = link_type unless link_type.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['promotionType'] = promotion_type unless promotion_type.nil?
          command.query['relationshipStatus'] = relationship_status unless relationship_status.nil?
          command.query['searchText'] = search_text unless search_text.nil?
          command.query['startDateMax'] = start_date_max unless start_date_max.nil?
          command.query['startDateMin'] = start_date_min unless start_date_min.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves data about a single advertiser if that the requesting advertiser/
        # publisher has access to it. Only advertisers can look up publishers.
        # Publishers can request information about themselves by omitting the
        # publisherId query parameter.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [String] publisher_id
        #   The ID of the publisher to look up. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Publisher] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Publisher]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_publisher(role, role_id, publisher_id: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/publisher', options)
          command.response_representation = Google::Apis::GanV1beta1::Publisher::Representation
          command.response_class = Google::Apis::GanV1beta1::Publisher
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['publisherId'] = publisher_id unless publisher_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves data about all publishers that the requesting advertiser/publisher
        # has access to.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [Fixnum] max_results
        #   Max number of items to return in this page. Optional. Defaults to 20.
        # @param [Float] min_ninety_day_epc
        #   Filters out all publishers that have a ninety day EPC average lower than the
        #   given value (inclusive). Min value: 0.0. Optional.
        # @param [Fixnum] min_payout_rank
        #   A value between 1 and 4, where 1 represents the quartile of publishers with
        #   the lowest ranks and 4 represents the quartile of publishers with the highest
        #   ranks. Filters out all publishers with a lower rank than the given quartile.
        #   For example if a 2 was given only publishers with a payout rank of 25 or
        #   higher would be included. Optional.
        # @param [Float] min_seven_day_epc
        #   Filters out all publishers that have a seven day EPC average lower than the
        #   given value (inclusive). Min value 0.0. Optional.
        # @param [String] page_token
        #   The value of 'nextPageToken' from the previous page. Optional.
        # @param [String] publisher_category
        #   Caret(^) delimted list of publisher categories. Valid categories: (
        #   unclassified|community_and_content|shopping_and_promotion|loyalty_and_rewards|
        #   network|search_specialist|comparison_shopping|email). Filters out all
        #   publishers not in one of the given advertiser categories. Optional.
        # @param [String] relationship_status
        #   Filters out all publishers for which do not have the given relationship status
        #   with the requesting publisher.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Publishers] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Publishers]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_publishers(role, role_id, max_results: nil, min_ninety_day_epc: nil, min_payout_rank: nil, min_seven_day_epc: nil, page_token: nil, publisher_category: nil, relationship_status: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/publishers', options)
          command.response_representation = Google::Apis::GanV1beta1::Publishers::Representation
          command.response_class = Google::Apis::GanV1beta1::Publishers
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['minNinetyDayEpc'] = min_ninety_day_epc unless min_ninety_day_epc.nil?
          command.query['minPayoutRank'] = min_payout_rank unless min_payout_rank.nil?
          command.query['minSevenDayEpc'] = min_seven_day_epc unless min_seven_day_epc.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['publisherCategory'] = publisher_category unless publisher_category.nil?
          command.query['relationshipStatus'] = relationship_status unless relationship_status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a report of the specified type.
        # @param [String] role
        #   The role of the requester. Valid values: 'advertisers' or 'publishers'.
        # @param [String] role_id
        #   The ID of the requesting advertiser or publisher.
        # @param [String] report_type
        #   The type of report being requested. Valid values: 'order_delta'. Required.
        # @param [Array<String>, String] advertiser_id
        #   The IDs of the advertisers to look up, if applicable.
        # @param [Boolean] calculate_totals
        #   Whether or not to calculate totals rows. Optional.
        # @param [String] end_date
        #   The end date (exclusive), in RFC 3339 format, for the report data to be
        #   returned. Defaults to one day after startDate, if that is given, or today.
        #   Optional.
        # @param [String] event_type
        #   Filters out all events that are not of the given type. Valid values: 'action',
        #   'transaction', or 'charge'. Optional.
        # @param [Array<String>, String] link_id
        #   Filters to capture one of given link IDs. Optional.
        # @param [Fixnum] max_results
        #   Max number of items to return in this page. Optional. Defaults to return all
        #   results.
        # @param [Array<String>, String] order_id
        #   Filters to capture one of the given order IDs. Optional.
        # @param [Array<String>, String] publisher_id
        #   The IDs of the publishers to look up, if applicable.
        # @param [String] start_date
        #   The start date (inclusive), in RFC 3339 format, for the report data to be
        #   returned. Defaults to one day before endDate, if that is given, or yesterday.
        #   Optional.
        # @param [Fixnum] start_index
        #   Offset on which to return results when paging. Optional.
        # @param [String] status
        #   Filters out all events that do not have the given status. Valid values: '
        #   active', 'canceled', or 'invalid'. Optional.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GanV1beta1::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GanV1beta1::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_report(role, role_id, report_type, advertiser_id: nil, calculate_totals: nil, end_date: nil, event_type: nil, link_id: nil, max_results: nil, order_id: nil, publisher_id: nil, start_date: nil, start_index: nil, status: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{role}/{roleId}/report/{reportType}', options)
          command.response_representation = Google::Apis::GanV1beta1::Report::Representation
          command.response_class = Google::Apis::GanV1beta1::Report
          command.params['role'] = role unless role.nil?
          command.params['roleId'] = role_id unless role_id.nil?
          command.params['reportType'] = report_type unless report_type.nil?
          command.query['advertiserId'] = advertiser_id unless advertiser_id.nil?
          command.query['calculateTotals'] = calculate_totals unless calculate_totals.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['eventType'] = event_type unless event_type.nil?
          command.query['linkId'] = link_id unless link_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderId'] = order_id unless order_id.nil?
          command.query['publisherId'] = publisher_id unless publisher_id.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['status'] = status unless status.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
        end
      end
    end
  end
end
