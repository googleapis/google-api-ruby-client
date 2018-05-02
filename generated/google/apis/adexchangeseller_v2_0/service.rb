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
    module AdexchangesellerV2_0
      # Ad Exchange Seller API
      #
      # Accesses the inventory of Ad Exchange seller users and generates reports.
      #
      # @example
      #    require 'google/apis/adexchangeseller_v2_0'
      #
      #    Adexchangeseller = Google::Apis::AdexchangesellerV2_0 # Alias the module
      #    service = Adexchangeseller::AdExchangeSellerService.new
      #
      # @see https://developers.google.com/ad-exchange/seller-rest/
      class AdExchangeSellerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  An opaque string that represents a user for quota purposes. Must not exceed 40
        #  characters.
        attr_accessor :quota_user

        # @return [String]
        #  Deprecated. Please use quotaUser instead.
        attr_accessor :user_ip

        def initialize
          super('https://www.googleapis.com/', 'adexchangeseller/v2.0/')
          @batch_path = 'batch/adexchangeseller/v2.0'
        end
        
        # Get information about the selected Ad Exchange account.
        # @param [String] account_id
        #   Account to get information about. Tip: 'myaccount' is a valid ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::Account] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::Account]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::Account::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::Account
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all accounts available to this Ad Exchange account.
        # @param [Fixnum] max_results
        #   The maximum number of accounts to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through accounts. To retrieve the next page,
        #   set this parameter to the value of "nextPageToken" from the previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::Accounts] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::Accounts]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_accounts(max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::Accounts::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::Accounts
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all ad clients in this Ad Exchange account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [Fixnum] max_results
        #   The maximum number of ad clients to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through ad clients. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::AdClients] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::AdClients]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_ad_clients(account_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/adclients', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::AdClients::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::AdClients
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the alerts for this Ad Exchange account.
        # @param [String] account_id
        #   Account owning the alerts.
        # @param [String] locale
        #   The locale to use for translating alert messages. The account locale will be
        #   used if this is not supplied. The AdSense default (English) will be used if
        #   the supplied locale is invalid or unsupported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::Alerts] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::Alerts]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_alerts(account_id, locale: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/alerts', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::Alerts::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::Alerts
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the specified custom channel from the specified ad client.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client which contains the custom channel.
        # @param [String] custom_channel_id
        #   Custom channel to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::CustomChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::CustomChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_custom_channel(account_id, ad_client_id, custom_channel_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/adclients/{adClientId}/customchannels/{customChannelId}', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::CustomChannel::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::CustomChannel
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.params['customChannelId'] = custom_channel_id unless custom_channel_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all custom channels in the specified ad client for this Ad Exchange
        # account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client for which to list custom channels.
        # @param [Fixnum] max_results
        #   The maximum number of custom channels to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through custom channels. To retrieve the
        #   next page, set this parameter to the value of "nextPageToken" from the
        #   previous response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::CustomChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::CustomChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_custom_channels(account_id, ad_client_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/adclients/{adClientId}/customchannels', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::CustomChannels::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::CustomChannels
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the metadata for the dimensions available to this AdExchange account.
        # @param [String] account_id
        #   Account with visibility to the dimensions.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::Metadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::Metadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_metadata_dimensions(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/metadata/dimensions', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::Metadata::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::Metadata
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the metadata for the metrics available to this AdExchange account.
        # @param [String] account_id
        #   Account with visibility to the metrics.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::Metadata] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::Metadata]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_metadata_metrics(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/metadata/metrics', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::Metadata::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::Metadata
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get information about the selected Ad Exchange Preferred Deal.
        # @param [String] account_id
        #   Account owning the deal.
        # @param [String] deal_id
        #   Preferred deal to get information about.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::PreferredDeal] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::PreferredDeal]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_account_preferred_deal(account_id, deal_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/preferreddeals/{dealId}', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::PreferredDeal::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::PreferredDeal
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['dealId'] = deal_id unless deal_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the preferred deals for this Ad Exchange account.
        # @param [String] account_id
        #   Account owning the deals.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::PreferredDeals] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::PreferredDeals]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_preferred_deals(account_id, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/preferreddeals', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::PreferredDeals::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::PreferredDeals
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate an Ad Exchange report based on the report request sent in the query
        # parameters. Returns the result as JSON; to retrieve output in CSV format
        # specify "alt=csv" as a query parameter.
        # @param [String] account_id
        #   Account which owns the generated report.
        # @param [String] start_date
        #   Start of the date range to report on in "YYYY-MM-DD" format, inclusive.
        # @param [String] end_date
        #   End of the date range to report on in "YYYY-MM-DD" format, inclusive.
        # @param [Array<String>, String] dimension
        #   Dimensions to base the report on.
        # @param [Array<String>, String] filter
        #   Filters to be run on the report.
        # @param [String] locale
        #   Optional locale to use for translating report output to a local language.
        #   Defaults to "en_US" if not specified.
        # @param [Fixnum] max_results
        #   The maximum number of rows of report data to return.
        # @param [Array<String>, String] metric
        #   Numeric columns to include in the report.
        # @param [Array<String>, String] sort
        #   The name of a dimension or metric to sort the resulting report on, optionally
        #   prefixed with "+" to sort ascending or "-" to sort descending. If no prefix is
        #   specified, the column is sorted ascending.
        # @param [Fixnum] start_index
        #   Index of the first row of report data to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [IO, String] download_dest
        #   IO stream or filename to receive content download
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_report(account_id, start_date, end_date, dimension: nil, filter: nil, locale: nil, max_results: nil, metric: nil, sort: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, download_dest: nil, options: nil, &block)
          if download_dest.nil?
            command =  make_simple_command(:get, 'accounts/{accountId}/reports', options)
          else
            command = make_download_command(:get, 'accounts/{accountId}/reports', options)
            command.download_dest = download_dest
          end
          command.response_representation = Google::Apis::AdexchangesellerV2_0::Report::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::Report
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['dimension'] = dimension unless dimension.nil?
          command.query['endDate'] = end_date unless end_date.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['metric'] = metric unless metric.nil?
          command.query['sort'] = sort unless sort.nil?
          command.query['startDate'] = start_date unless start_date.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate an Ad Exchange report based on the saved report ID sent in the query
        # parameters.
        # @param [String] account_id
        #   Account owning the saved report.
        # @param [String] saved_report_id
        #   The saved report to retrieve.
        # @param [String] locale
        #   Optional locale to use for translating report output to a local language.
        #   Defaults to "en_US" if not specified.
        # @param [Fixnum] max_results
        #   The maximum number of rows of report data to return.
        # @param [Fixnum] start_index
        #   Index of the first row of report data to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::Report] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::Report]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_account_saved_report(account_id, saved_report_id, locale: nil, max_results: nil, start_index: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/reports/{savedReportId}', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::Report::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::Report
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['savedReportId'] = saved_report_id unless saved_report_id.nil?
          command.query['locale'] = locale unless locale.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startIndex'] = start_index unless start_index.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all saved reports in this Ad Exchange account.
        # @param [String] account_id
        #   Account owning the saved reports.
        # @param [Fixnum] max_results
        #   The maximum number of saved reports to include in the response, used for
        #   paging.
        # @param [String] page_token
        #   A continuation token, used to page through saved reports. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::SavedReports] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::SavedReports]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_saved_reports(account_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/reports/saved', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::SavedReports::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::SavedReports
          command.params['accountId'] = account_id unless account_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all URL channels in the specified ad client for this Ad Exchange account.
        # @param [String] account_id
        #   Account to which the ad client belongs.
        # @param [String] ad_client_id
        #   Ad client for which to list URL channels.
        # @param [Fixnum] max_results
        #   The maximum number of URL channels to include in the response, used for paging.
        # @param [String] page_token
        #   A continuation token, used to page through URL channels. To retrieve the next
        #   page, set this parameter to the value of "nextPageToken" from the previous
        #   response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   An opaque string that represents a user for quota purposes. Must not exceed 40
        #   characters.
        # @param [String] user_ip
        #   Deprecated. Please use quotaUser instead.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AdexchangesellerV2_0::UrlChannels] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdexchangesellerV2_0::UrlChannels]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_account_url_channels(account_id, ad_client_id, max_results: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'accounts/{accountId}/adclients/{adClientId}/urlchannels', options)
          command.response_representation = Google::Apis::AdexchangesellerV2_0::UrlChannels::Representation
          command.response_class = Google::Apis::AdexchangesellerV2_0::UrlChannels
          command.params['accountId'] = account_id unless account_id.nil?
          command.params['adClientId'] = ad_client_id unless ad_client_id.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
