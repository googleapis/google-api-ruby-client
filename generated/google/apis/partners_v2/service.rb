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
      # Searches certified companies and creates contact leads with them, and also
      #  audits the usage of clients.
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
          @batch_path = 'batch'
        end
        
        # Lists analytics data for a user's associated company.
        # Should only be called within the context of an authorized logged in user.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer analytics than requested.
        #   If unspecified or set to 0, default value is 30.
        #   Specifies the number of days in the date range when querying analytics.
        #   The `page_token` represents the end date of the date range
        #   and the start date is calculated using the `page_size` as the number
        #   of days BEFORE the end date.
        #   Must be a non-negative integer.
        # @param [String] page_token
        #   A token identifying a page of results that the server returns.
        #   Typically, this is the value of `ListAnalyticsResponse.next_page_token`
        #   returned from the previous call to
        #   ListAnalytics.
        #   Will be a date string in `YYYY-MM-DD` format representing the end date
        #   of the date range of results to return.
        #   If unspecified or set to "", default value is the current date.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::ListAnalyticsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::ListAnalyticsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_analytics(page_size: nil, page_token: nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/analytics', options)
          command.response_representation = Google::Apis::PartnersV2::ListAnalyticsResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListAnalyticsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Logs a generic message from the client, such as
        # `Failed to render component`, `Profile page is running slow`,
        # `More than 500 users have accessed this result.`, etc.
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
        
        # Gets a company.
        # @param [String] company_id
        #   The ID of the company to retrieve.
        # @param [String] address
        #   The address to use for sorting the company's addresses by proximity.
        #   If not given, the geo-located address of the request is used.
        #   Used when order_by is set.
        # @param [String] currency_code
        #   If the company's budget is in a different currency code than this one, then
        #   the converted budget is converted to this currency code.
        # @param [String] order_by
        #   How to order addresses within the returned company. Currently, only
        #   `address` and `address desc` is supported which will sorted by closest to
        #   farthest in distance from given address and farthest to closest distance
        #   from given address respectively.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] view
        #   The view of `Company` resource to be returned. This must not be
        #   `COMPANY_VIEW_UNSPECIFIED`.
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
        def get_company(company_id, address: nil, currency_code: nil, order_by: nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/companies/{companyId}', options)
          command.response_representation = Google::Apis::PartnersV2::GetCompanyResponse::Representation
          command.response_class = Google::Apis::PartnersV2::GetCompanyResponse
          command.params['companyId'] = company_id unless company_id.nil?
          command.query['address'] = address unless address.nil?
          command.query['currencyCode'] = currency_code unless currency_code.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists companies.
        # @param [String] address
        #   The address to use when searching for companies.
        #   If not given, the geo-located address of the request is used.
        # @param [String] company_name
        #   Company name to search for.
        # @param [Array<String>, String] gps_motivations
        #   List of reasons for using Google Partner Search to get companies.
        # @param [Array<String>, String] industries
        #   List of industries the company can help with.
        # @param [Array<String>, String] language_codes
        #   List of language codes that company can support. Only primary language
        #   subtags are accepted as defined by
        #   <a href="https://tools.ietf.org/html/bcp47">BCP 47</a>
        #   (IETF BCP 47, "Tags for Identifying Languages").
        # @param [String] max_monthly_budget_currency_code
        #   The 3-letter currency code defined in ISO 4217.
        # @param [Fixnum] max_monthly_budget_nanos
        #   Number of nano (10^-9) units of the amount.
        #   The value must be between -999,999,999 and +999,999,999 inclusive.
        #   If `units` is positive, `nanos` must be positive or zero.
        #   If `units` is zero, `nanos` can be positive, zero, or negative.
        #   If `units` is negative, `nanos` must be negative or zero.
        #   For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # @param [Fixnum] max_monthly_budget_units
        #   The whole units of the amount.
        #   For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
        # @param [String] min_monthly_budget_currency_code
        #   The 3-letter currency code defined in ISO 4217.
        # @param [Fixnum] min_monthly_budget_nanos
        #   Number of nano (10^-9) units of the amount.
        #   The value must be between -999,999,999 and +999,999,999 inclusive.
        #   If `units` is positive, `nanos` must be positive or zero.
        #   If `units` is zero, `nanos` can be positive, zero, or negative.
        #   If `units` is negative, `nanos` must be negative or zero.
        #   For example $-1.75 is represented as `units`=-1 and `nanos`=-750,000,000.
        # @param [Fixnum] min_monthly_budget_units
        #   The whole units of the amount.
        #   For example if `currencyCode` is `"USD"`, then 1 unit is one US dollar.
        # @param [String] order_by
        #   How to order addresses within the returned companies. Currently, only
        #   `address` and `address desc` is supported which will sorted by closest to
        #   farthest in distance from given address and farthest to closest distance
        #   from given address respectively.
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer companies than requested.
        #   If unspecified, server picks an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results that the server returns.
        #   Typically, this is the value of `ListCompaniesResponse.next_page_token`
        #   returned from the previous call to
        #   ListCompanies.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [Array<String>, String] services
        #   List of services that the returned agencies should provide. If this is
        #   not empty, any returned agency must have at least one of these services,
        #   or one of the specializations in the "specializations" field.
        # @param [Array<String>, String] specializations
        #   List of specializations that the returned agencies should provide. If this
        #   is not empty, any returned agency must have at least one of these
        #   specializations, or one of the services in the "services" field.
        # @param [String] view
        #   The view of the `Company` resource to be returned. This must not be
        #   `COMPANY_VIEW_UNSPECIFIED`.
        # @param [String] website_url
        #   Website URL that will help to find a better matched company.
        #   .
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
        def list_companies(address: nil, company_name: nil, gps_motivations: nil, industries: nil, language_codes: nil, max_monthly_budget_currency_code: nil, max_monthly_budget_nanos: nil, max_monthly_budget_units: nil, min_monthly_budget_currency_code: nil, min_monthly_budget_nanos: nil, min_monthly_budget_units: nil, order_by: nil, page_size: nil, page_token: nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, services: nil, specializations: nil, view: nil, website_url: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/companies', options)
          command.response_representation = Google::Apis::PartnersV2::ListCompaniesResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListCompaniesResponse
          command.query['address'] = address unless address.nil?
          command.query['companyName'] = company_name unless company_name.nil?
          command.query['gpsMotivations'] = gps_motivations unless gps_motivations.nil?
          command.query['industries'] = industries unless industries.nil?
          command.query['languageCodes'] = language_codes unless language_codes.nil?
          command.query['maxMonthlyBudget.currencyCode'] = max_monthly_budget_currency_code unless max_monthly_budget_currency_code.nil?
          command.query['maxMonthlyBudget.nanos'] = max_monthly_budget_nanos unless max_monthly_budget_nanos.nil?
          command.query['maxMonthlyBudget.units'] = max_monthly_budget_units unless max_monthly_budget_units.nil?
          command.query['minMonthlyBudget.currencyCode'] = min_monthly_budget_currency_code unless min_monthly_budget_currency_code.nil?
          command.query['minMonthlyBudget.nanos'] = min_monthly_budget_nanos unless min_monthly_budget_nanos.nil?
          command.query['minMonthlyBudget.units'] = min_monthly_budget_units unless min_monthly_budget_units.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['services'] = services unless services.nil?
          command.query['specializations'] = specializations unless specializations.nil?
          command.query['view'] = view unless view.nil?
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
        
        # Gets an Exam Token for a Partner's user to take an exam in the Exams System
        # @param [String] exam_type
        #   The exam type we are requesting a token for.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::ExamToken] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::ExamToken]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_exam_token(exam_type, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/exams/{examType}/token', options)
          command.response_representation = Google::Apis::PartnersV2::ExamToken::Representation
          command.response_class = Google::Apis::PartnersV2::ExamToken
          command.params['examType'] = exam_type unless exam_type.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists advertiser leads for a user's associated company.
        # Should only be called within the context of an authorized logged in user.
        # @param [String] order_by
        #   How to order Leads. Currently, only `create_time`
        #   and `create_time desc` are supported
        # @param [Fixnum] page_size
        #   Requested page size. Server may return fewer leads than requested.
        #   If unspecified, server picks an appropriate default.
        # @param [String] page_token
        #   A token identifying a page of results that the server returns.
        #   Typically, this is the value of `ListLeadsResponse.next_page_token`
        #   returned from the previous call to
        #   ListLeads.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::ListLeadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::ListLeadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_leads(order_by: nil, page_size: nil, page_token: nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/leads', options)
          command.response_representation = Google::Apis::PartnersV2::ListLeadsResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListLeadsResponse
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Offers available for the current user
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::ListOffersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::ListOffersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_offers(request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/offers', options)
          command.response_representation = Google::Apis::PartnersV2::ListOffersResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListOffersResponse
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Historical Offers for the current user (or user's entire company)
        # @param [Boolean] entire_company
        #   if true, show history for the entire company.  Requires user to be admin.
        # @param [String] order_by
        #   Comma-separated list of fields to order by, e.g.: "foo,bar,baz".
        #   Use "foo desc" to sort descending.
        #   List of valid field names is: name, offer_code, expiration_time, status,
        #   last_modified_time, sender_name, creation_time, country_code,
        #   offer_type.
        # @param [Fixnum] page_size
        #   Maximum number of rows to return per page.
        # @param [String] page_token
        #   Token to retrieve a specific page.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::ListOffersHistoryResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::ListOffersHistoryResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_offer_histories(entire_company: nil, order_by: nil, page_size: nil, page_token: nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/offers/history', options)
          command.response_representation = Google::Apis::PartnersV2::ListOffersHistoryResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListOffersHistoryResponse
          command.query['entireCompany'] = entire_company unless entire_company.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        
        # Lists states for current user.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
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
        def list_user_states(request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/userStates', options)
          command.response_representation = Google::Apis::PartnersV2::ListUserStatesResponse::Representation
          command.response_class = Google::Apis::PartnersV2::ListUserStatesResponse
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a user's company relation. Affiliates the user to a company.
        # @param [String] user_id
        #   The ID of the user. Can be set to <code>me</code> to mean
        #   the currently authenticated user.
        # @param [Google::Apis::PartnersV2::CompanyRelation] company_relation_object
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::CompanyRelation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::CompanyRelation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_user_company_relation(user_id, company_relation_object = nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:put, 'v2/users/{userId}/companyRelation', options)
          command.request_representation = Google::Apis::PartnersV2::CompanyRelation::Representation
          command.request_object = company_relation_object
          command.response_representation = Google::Apis::PartnersV2::CompanyRelation::Representation
          command.response_class = Google::Apis::PartnersV2::CompanyRelation
          command.params['userId'] = user_id unless user_id.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a user's company relation. Unaffiliaites the user from a company.
        # @param [String] user_id
        #   The ID of the user. Can be set to <code>me</code> to mean
        #   the currently authenticated user.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user_company_relation(user_id, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v2/users/{userId}/companyRelation', options)
          command.response_representation = Google::Apis::PartnersV2::Empty::Representation
          command.response_class = Google::Apis::PartnersV2::Empty
          command.params['userId'] = user_id unless user_id.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a user.
        # @param [String] user_id
        #   Identifier of the user. Can be set to <code>me</code> to mean the currently
        #   authenticated user.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] user_view
        #   Specifies what parts of the user information to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(user_id, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, user_view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/users/{userId}', options)
          command.response_representation = Google::Apis::PartnersV2::User::Representation
          command.response_class = Google::Apis::PartnersV2::User
          command.params['userId'] = user_id unless user_id.nil?
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['userView'] = user_view unless user_view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a user's profile. A user can only update their own profile and
        # should only be called within the context of a logged in user.
        # @param [Google::Apis::PartnersV2::UserProfile] user_profile_object
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::UserProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::UserProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_user_profile(user_profile_object = nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v2/users/profile', options)
          command.request_representation = Google::Apis::PartnersV2::UserProfile::Representation
          command.request_object = user_profile_object
          command.response_representation = Google::Apis::PartnersV2::UserProfile::Representation
          command.response_class = Google::Apis::PartnersV2::UserProfile
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets Partners Status of the logged in user's agency.
        # Should only be called if the logged in user is the admin of the agency.
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::GetPartnersStatusResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::GetPartnersStatusResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_partnersstatus(request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v2/partnersstatus', options)
          command.response_representation = Google::Apis::PartnersV2::GetPartnersStatusResponse::Representation
          command.response_class = Google::Apis::PartnersV2::GetPartnersStatusResponse
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update company.
        # Should only be called within the context of an authorized logged in user.
        # @param [Google::Apis::PartnersV2::Company] company_object
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] update_mask
        #   Standard field mask for the set of fields to be updated.
        #   Required with at least 1 value in FieldMask's paths.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::Company] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::Company]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_companies(company_object = nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v2/companies', options)
          command.request_representation = Google::Apis::PartnersV2::Company::Representation
          command.request_object = company_object
          command.response_representation = Google::Apis::PartnersV2::Company::Representation
          command.response_class = Google::Apis::PartnersV2::Company
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the specified lead.
        # @param [Google::Apis::PartnersV2::Lead] lead_object
        # @param [Array<String>, String] request_metadata_experiment_ids
        #   Experiment IDs the current request belongs to.
        # @param [String] request_metadata_locale
        #   Locale to use for the current request.
        # @param [String] request_metadata_partners_session_id
        #   Google Partners session ID.
        # @param [String] request_metadata_traffic_source_traffic_source_id
        #   Identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_traffic_source_traffic_sub_id
        #   Second level identifier to indicate where the traffic comes from.
        #   An identifier has multiple letters created by a team which redirected the
        #   traffic to us.
        # @param [String] request_metadata_user_overrides_ip_address
        #   IP address to use instead of the user's geo-located IP address.
        # @param [String] request_metadata_user_overrides_user_id
        #   Logged-in user ID to impersonate instead of the user's ID.
        # @param [String] update_mask
        #   Standard field mask for the set of fields to be updated.
        #   Required with at least 1 value in FieldMask's paths.
        #   Only `state` and `adwords_customer_id` are currently supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::PartnersV2::Lead] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::PartnersV2::Lead]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_leads(lead_object = nil, request_metadata_experiment_ids: nil, request_metadata_locale: nil, request_metadata_partners_session_id: nil, request_metadata_traffic_source_traffic_source_id: nil, request_metadata_traffic_source_traffic_sub_id: nil, request_metadata_user_overrides_ip_address: nil, request_metadata_user_overrides_user_id: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:patch, 'v2/leads', options)
          command.request_representation = Google::Apis::PartnersV2::Lead::Representation
          command.request_object = lead_object
          command.response_representation = Google::Apis::PartnersV2::Lead::Representation
          command.response_class = Google::Apis::PartnersV2::Lead
          command.query['requestMetadata.experimentIds'] = request_metadata_experiment_ids unless request_metadata_experiment_ids.nil?
          command.query['requestMetadata.locale'] = request_metadata_locale unless request_metadata_locale.nil?
          command.query['requestMetadata.partnersSessionId'] = request_metadata_partners_session_id unless request_metadata_partners_session_id.nil?
          command.query['requestMetadata.trafficSource.trafficSourceId'] = request_metadata_traffic_source_traffic_source_id unless request_metadata_traffic_source_traffic_source_id.nil?
          command.query['requestMetadata.trafficSource.trafficSubId'] = request_metadata_traffic_source_traffic_sub_id unless request_metadata_traffic_source_traffic_sub_id.nil?
          command.query['requestMetadata.userOverrides.ipAddress'] = request_metadata_user_overrides_ip_address unless request_metadata_user_overrides_ip_address.nil?
          command.query['requestMetadata.userOverrides.userId'] = request_metadata_user_overrides_user_id unless request_metadata_user_overrides_user_id.nil?
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
