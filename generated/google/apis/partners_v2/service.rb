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
    module PartnersV2
      # Google Partners API
      #
      # Lets advertisers search certified companies and create contact leads with them,
      #  and also audits the usage of clients.
      #
      # @example
      #    require 'google/apis/partners_v2'
      #
      #    Partners = Google::Apis::PartnersV2 # Alias the module
      #    service = Partners::PartnersService.new
      #
      # @see https://developers.google.com/partners/
      class PartnersService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://partners.googleapis.com/', '')
        end
        
        # Logs a user event.
        # @param [Google::Apis::PartnersV2::LogUserEventRequest] log_user_event_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::LogUserEventResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::LogUserEventResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def log_user_event(log_user_event_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2/userEvents:log', options)
          command.request_representation = Google::Apis::PartnersV2::LogUserEventRequest::Representation
          command.request_object = log_user_event_request_object
          command.response_representation = Google::Apis::PartnersV2::LogUserEventResponse::Representation
          command.response_class = Google::Apis::PartnersV2::LogUserEventResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Logs a generic message from the client, such as `Failed to render component`, `
        # Profile page is running slow`, `More than 500 users have accessed this result.`
        # , etc.
        # @param [Google::Apis::PartnersV2::LogMessageRequest] log_message_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::LogMessageResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::LogMessageResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def log_client_message_message(log_message_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2/clientMessages:log', options)
          command.request_representation = Google::Apis::PartnersV2::LogMessageRequest::Representation
          command.request_object = log_message_request_object
          command.response_representation = Google::Apis::PartnersV2::LogMessageResponse::Representation
          command.response_class = Google::Apis::PartnersV2::LogMessageResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists states for current user.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from. An identifier has
        #   multiple letters created by a team which redirected the traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from. An
        #   identifier has multiple letters created by a team which redirected the traffic
        #   to us.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::ListUserStatesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::ListUserStatesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_user_states(request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_experiment_ids: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/userStates', options)
          command.response_representation = Google::Apis::PartnersV2::ListUserStatesResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListUserStatesResponse
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a company.
        # @param [String] company_id
        #   The ID of the company to retrieve.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from. An identifier has
        #   multiple letters created by a team which redirected the traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from. An
        #   identifier has multiple letters created by a team which redirected the traffic
        #   to us.
        # @param [String] view
        #   The view of `Company` resource to be returned. This must not be `
        #   COMPANY_VIEW_UNSPECIFIED`.
        # @param [String] order_by
        #   How to order addresses within the returned company. Currently, only `address`
        #   and `address desc` is supported which will sorted by closest to farthest in
        #   distance from given address and farthest to closest distance from given
        #   address respectively.
        # @param [String] currency_code
        #   If the company's budget is in a different currency code than this one, then
        #   the converted budget is converted to this currency code.
        # @param [String] address
        #   The address to use for sorting the company's addresses by proximity. If not
        #   given, the geo-located address of the request is used. Used when order_by is
        #   set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::GetCompanyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::GetCompanyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_company(company_id, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_experiment_ids: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, view: nil, order_by: nil, currency_code: nil, address: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/companies/{companyId}', options)
          command.response_representation = Google::Apis::PartnersV2::GetCompanyResponse::Representation
          command.response_class = Google::Apis::PartnersV2::GetCompanyResponse
          command.params['companyId'] = company_id unless company_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['address'] = address unless address.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists companies.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from. An identifier has
        #   multiple letters created by a team which redirected the traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from. An
        #   identifier has multiple letters created by a team which redirected the traffic
        #   to us.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer companies than requested. If
        #   unspecified, server picks an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results that the server returns. Typically, this
        #   is the value of `ListCompaniesResponse.next_page_token` returned from the
        #   previous call to ListCompanies.
        # @param [String] company_name
        #   Company name to search for.
        # @param [String] view
        #   The view of the `Company` resource to be returned. This must not be `
        #   COMPANY_VIEW_UNSPECIFIED`.
        # @param [String] min_monthly_budget_currency_code
        #   The 3-letter currency code defined in ISO 4217.
        # @param [String] min_monthly_budget_units
        #   The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        #   1 unit is one US dollar.
        # @param [Fixnum] min_monthly_budget_nanos
        #   Number of nano (10^-9) units of the amount. The value must be between -999,999,
        #   999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        #   positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        #   negative. If `units` is negative, `nanos` must be negative or zero. For
        #   example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # @param [String] max_monthly_budget_currency_code
        #   The 3-letter currency code defined in ISO 4217.
        # @param [String] max_monthly_budget_units
        #   The whole units of the amount. For example if `currencyCode` is `"USD"`, then
        #   1 unit is one US dollar.
        # @param [Fixnum] max_monthly_budget_nanos
        #   Number of nano (10^-9) units of the amount. The value must be between -999,999,
        #   999 and +999,999,999 inclusive. If `units` is positive, `nanos` must be
        #   positive or zero. If `units` is zero, `nanos` can be positive, zero, or
        #   negative. If `units` is negative, `nanos` must be negative or zero. For
        #   example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # @param [Array<String>, String] industries
        #   List of industries the company can help with.
        # @param [Array<String>, String] services
        #   List of services the company can help with.
        # @param [Array<String>, String] language_codes
        #   List of language codes that company can support. Only primary language subtags
        #   are accepted as defined by BCP 47 (IETF BCP 47, "Tags for Identifying
        #   Languages").
        # @param [String] address
        #   The address to use when searching for companies. If not given, the geo-located
        #   address of the request is used.
        # @param [String] order_by
        #   How to order addresses within the returned companies. Currently, only `address`
        #   and `address desc` is supported which will sorted by closest to farthest in
        #   distance from given address and farthest to closest distance from given
        #   address respectively.
        # @param [Array<String>, String] gps_motivations
        #   List of reasons for using Google Partner Search to get companies.
        # @param [String] website_url
        #   Website URL that will help to find a better matched company. .
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::ListCompaniesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::ListCompaniesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_companies(request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_experiment_ids: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, page_size: nil, page_token: nil, company_name: nil, view: nil, min_monthly_budget_currency_code: nil, min_monthly_budget_units: nil, min_monthly_budget_nanos: nil, max_monthly_budget_currency_code: nil, max_monthly_budget_units: nil, max_monthly_budget_nanos: nil, industries: nil, services: nil, language_codes: nil, address: nil, order_by: nil, gps_motivations: nil, website_url: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/companies', options)
          command.response_representation = Google::Apis::PartnersV2::ListCompaniesResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListCompaniesResponse
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['companyName'] = company_name unless company_name.nil?
          command.query['view'] = view unless view.nil?
          command.query['minMonthlyBudget.currencyCode'] = min_monthly_budget_currency_code unless min_monthly_budget_currency_code.nil?
          command.query['minMonthlyBudget.units'] = min_monthly_budget_units unless min_monthly_budget_units.nil?
          command.query['minMonthlyBudget.nanos'] = min_monthly_budget_nanos unless min_monthly_budget_nanos.nil?
          command.query['maxMonthlyBudget.currencyCode'] = max_monthly_budget_currency_code unless max_monthly_budget_currency_code.nil?
          command.query['maxMonthlyBudget.units'] = max_monthly_budget_units unless max_monthly_budget_units.nil?
          command.query['maxMonthlyBudget.nanos'] = max_monthly_budget_nanos unless max_monthly_budget_nanos.nil?
          command.query['industries'] = industries unless industries.nil?
          command.query['services'] = services unless services.nil?
          command.query['languageCodes'] = language_codes unless language_codes.nil?
          command.query['address'] = address unless address.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['gpsMotivations'] = gps_motivations unless gps_motivations.nil?
          command.query['websiteUrl'] = website_url unless website_url.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an advertiser lead for the given company ID.
        # @param [String] company_id
        #   The ID of the company to contact.
        # @param [Google::Apis::PartnersV2::CreateLeadRequest] create_lead_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::CreateLeadResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::CreateLeadResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_lead(company_id, create_lead_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v2/companies/{companyId}/leads', options)
          command.request_representation = Google::Apis::PartnersV2::CreateLeadRequest::Representation
          command.request_object = create_lead_request_object
          command.response_representation = Google::Apis::PartnersV2::CreateLeadResponse::Representation
          command.response_class = Google::Apis::PartnersV2::CreateLeadResponse
          command.params['companyId'] = company_id unless company_id.nil?
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
