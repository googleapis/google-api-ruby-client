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
    module GmailpostmastertoolsV1beta1
      # Gmail Postmaster Tools API
      #
      # The Postmaster Tools API is a RESTful API that provides programmatic access to
      #  email traffic metrics (like spam reports, delivery errors etc) otherwise
      #  available through the Gmail Postmaster Tools UI currently.
      #
      # @example
      #    require 'google/apis/gmailpostmastertools_v1beta1'
      #
      #    Gmailpostmastertools = Google::Apis::GmailpostmastertoolsV1beta1 # Alias the module
      #    service = Gmailpostmastertools::PostmasterToolsService.new
      #
      # @see https://developers.google.com/gmail/postmaster
      class PostmasterToolsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://gmailpostmastertools.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets a specific domain registered by the client. Returns NOT_FOUND if the
        # domain does not exist.
        # @param [String] name
        #   The resource name of the domain. It should have the form `domains/`domain_name`
        #   `, where domain_name is the fully qualified domain name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV1beta1::Domain] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV1beta1::Domain]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV1beta1::Domain::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV1beta1::Domain
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the domains that have been registered by the client. The order of
        # domains in the response is unspecified and non-deterministic. Newly created
        # domains will not necessarily be added to the end of this list.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer domains than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any. This
        #   is the value of ListDomainsResponse.next_page_token returned from the previous
        #   call to `ListDomains` method.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV1beta1::ListDomainsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV1beta1::ListDomainsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_domains(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/domains', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV1beta1::ListDomainsResponse::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV1beta1::ListDomainsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get traffic statistics for a domain on a specific date. Returns
        # PERMISSION_DENIED if user does not have permission to access TrafficStats for
        # the domain.
        # @param [String] name
        #   The resource name of the traffic statistics to get. E.g., domains/mymail.
        #   mydomain.com/trafficStats/20160807.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV1beta1::TrafficStats] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV1beta1::TrafficStats]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_domain_traffic_stat(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV1beta1::TrafficStats::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV1beta1::TrafficStats
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List traffic statistics for all available days. Returns PERMISSION_DENIED if
        # user does not have permission to access TrafficStats for the domain.
        # @param [String] parent
        #   The resource name of the domain whose traffic statistics we'd like to list. It
        #   should have the form `domains/`domain_name``, where domain_name is the fully
        #   qualified domain name.
        # @param [Fixnum] end_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] end_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] end_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer TrafficStats than requested. If
        #   unspecified, server will pick an appropriate default.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any. This
        #   is the value of ListTrafficStatsResponse.next_page_token returned from the
        #   previous call to `ListTrafficStats` method.
        # @param [Fixnum] start_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] start_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] start_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::GmailpostmastertoolsV1beta1::ListTrafficStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::GmailpostmastertoolsV1beta1::ListTrafficStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_domain_traffic_stats(parent, end_date_day: nil, end_date_month: nil, end_date_year: nil, page_size: nil, page_token: nil, start_date_day: nil, start_date_month: nil, start_date_year: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/trafficStats', options)
          command.response_representation = Google::Apis::GmailpostmastertoolsV1beta1::ListTrafficStatsResponse::Representation
          command.response_class = Google::Apis::GmailpostmastertoolsV1beta1::ListTrafficStatsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['endDate.day'] = end_date_day unless end_date_day.nil?
          command.query['endDate.month'] = end_date_month unless end_date_month.nil?
          command.query['endDate.year'] = end_date_year unless end_date_year.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startDate.day'] = start_date_day unless start_date_day.nil?
          command.query['startDate.month'] = start_date_month unless start_date_month.nil?
          command.query['startDate.year'] = start_date_year unless start_date_year.nil?
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
