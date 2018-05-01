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
    module AdminReportsV1
      # Admin Reports API
      #
      # Fetches reports for the administrators of G Suite customers about the usage,
      #  collaboration, security, and risk for their users.
      #
      # @example
      #    require 'google/apis/admin_reports_v1'
      #
      #    Admin = Google::Apis::AdminReportsV1 # Alias the module
      #    service = Admin::ReportsService.new
      #
      # @see https://developers.google.com/admin-sdk/reports/
      class ReportsService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'admin/reports/v1/')
          @batch_path = 'batch/admin/reports_v1'
        end
        
        # Retrieves a list of activities for a specific customer and application.
        # @param [String] user_key
        #   Represents the profile id or the user email for which the data should be
        #   filtered. When 'all' is specified as the userKey, it returns usageReports for
        #   all users.
        # @param [String] application_name
        #   Application name for which the events are to be retrieved.
        # @param [String] actor_ip_address
        #   IP Address of host where the event was performed. Supports both IPv4 and IPv6
        #   addresses.
        # @param [String] customer_id
        #   Represents the customer for which the data is to be fetched.
        # @param [String] end_time
        #   Return events which occurred at or before this time.
        # @param [String] event_name
        #   Name of the event being queried.
        # @param [String] filters
        #   Event parameters in the form [parameter1 name][operator][parameter1 value],[
        #   parameter2 name][operator][parameter2 value],...
        # @param [Fixnum] max_results
        #   Number of activity records to be shown in each page.
        # @param [String] page_token
        #   Token to specify next page.
        # @param [String] start_time
        #   Return events which occurred at or after this time.
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
        # @yieldparam result [Google::Apis::AdminReportsV1::Activities] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminReportsV1::Activities]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_activities(user_key, application_name, actor_ip_address: nil, customer_id: nil, end_time: nil, event_name: nil, filters: nil, max_results: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'activity/users/{userKey}/applications/{applicationName}', options)
          command.response_representation = Google::Apis::AdminReportsV1::Activities::Representation
          command.response_class = Google::Apis::AdminReportsV1::Activities
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['applicationName'] = application_name unless application_name.nil?
          command.query['actorIpAddress'] = actor_ip_address unless actor_ip_address.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['eventName'] = event_name unless event_name.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Push changes to activities
        # @param [String] user_key
        #   Represents the profile id or the user email for which the data should be
        #   filtered. When 'all' is specified as the userKey, it returns usageReports for
        #   all users.
        # @param [String] application_name
        #   Application name for which the events are to be retrieved.
        # @param [Google::Apis::AdminReportsV1::Channel] channel_object
        # @param [String] actor_ip_address
        #   IP Address of host where the event was performed. Supports both IPv4 and IPv6
        #   addresses.
        # @param [String] customer_id
        #   Represents the customer for which the data is to be fetched.
        # @param [String] end_time
        #   Return events which occurred at or before this time.
        # @param [String] event_name
        #   Name of the event being queried.
        # @param [String] filters
        #   Event parameters in the form [parameter1 name][operator][parameter1 value],[
        #   parameter2 name][operator][parameter2 value],...
        # @param [Fixnum] max_results
        #   Number of activity records to be shown in each page.
        # @param [String] page_token
        #   Token to specify next page.
        # @param [String] start_time
        #   Return events which occurred at or after this time.
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
        # @yieldparam result [Google::Apis::AdminReportsV1::Channel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminReportsV1::Channel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def watch_activity(user_key, application_name, channel_object = nil, actor_ip_address: nil, customer_id: nil, end_time: nil, event_name: nil, filters: nil, max_results: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, 'activity/users/{userKey}/applications/{applicationName}/watch', options)
          command.request_representation = Google::Apis::AdminReportsV1::Channel::Representation
          command.request_object = channel_object
          command.response_representation = Google::Apis::AdminReportsV1::Channel::Representation
          command.response_class = Google::Apis::AdminReportsV1::Channel
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['applicationName'] = application_name unless application_name.nil?
          command.query['actorIpAddress'] = actor_ip_address unless actor_ip_address.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['eventName'] = event_name unless event_name.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stop watching resources through this channel
        # @param [Google::Apis::AdminReportsV1::Channel] channel_object
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
        # @yieldparam result [NilClass] No result returned for this method
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [void]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def stop_channel(channel_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '/admin/reports_v1/channels/stop', options)
          command.request_representation = Google::Apis::AdminReportsV1::Channel::Representation
          command.request_object = channel_object
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a report which is a collection of properties / statistics for a
        # specific customer.
        # @param [String] date
        #   Represents the date in yyyy-mm-dd format for which the data is to be fetched.
        # @param [String] customer_id
        #   Represents the customer for which the data is to be fetched.
        # @param [String] page_token
        #   Token to specify next page.
        # @param [String] parameters
        #   Represents the application name, parameter name pairs to fetch in csv as
        #   app_name1:param_name1, app_name2:param_name2.
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
        # @yieldparam result [Google::Apis::AdminReportsV1::UsageReports] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminReportsV1::UsageReports]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_customer_usage_report(date, customer_id: nil, page_token: nil, parameters: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'usage/dates/{date}', options)
          command.response_representation = Google::Apis::AdminReportsV1::UsageReports::Representation
          command.response_class = Google::Apis::AdminReportsV1::UsageReports
          command.params['date'] = date unless date.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parameters'] = parameters unless parameters.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a report which is a collection of properties / statistics for a set
        # of objects.
        # @param [String] entity_type
        #   Type of object. Should be one of - gplus_communities.
        # @param [String] entity_key
        #   Represents the key of object for which the data should be filtered.
        # @param [String] date
        #   Represents the date in yyyy-mm-dd format for which the data is to be fetched.
        # @param [String] customer_id
        #   Represents the customer for which the data is to be fetched.
        # @param [String] filters
        #   Represents the set of filters including parameter operator value.
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Maximum allowed is 1000
        # @param [String] page_token
        #   Token to specify next page.
        # @param [String] parameters
        #   Represents the application name, parameter name pairs to fetch in csv as
        #   app_name1:param_name1, app_name2:param_name2.
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
        # @yieldparam result [Google::Apis::AdminReportsV1::UsageReports] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminReportsV1::UsageReports]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_entity_usage_report(entity_type, entity_key, date, customer_id: nil, filters: nil, max_results: nil, page_token: nil, parameters: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'usage/{entityType}/{entityKey}/dates/{date}', options)
          command.response_representation = Google::Apis::AdminReportsV1::UsageReports::Representation
          command.response_class = Google::Apis::AdminReportsV1::UsageReports
          command.params['entityType'] = entity_type unless entity_type.nil?
          command.params['entityKey'] = entity_key unless entity_key.nil?
          command.params['date'] = date unless date.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parameters'] = parameters unless parameters.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a report which is a collection of properties / statistics for a set
        # of users.
        # @param [String] user_key
        #   Represents the profile id or the user email for which the data should be
        #   filtered.
        # @param [String] date
        #   Represents the date in yyyy-mm-dd format for which the data is to be fetched.
        # @param [String] customer_id
        #   Represents the customer for which the data is to be fetched.
        # @param [String] filters
        #   Represents the set of filters including parameter operator value.
        # @param [Fixnum] max_results
        #   Maximum number of results to return. Maximum allowed is 1000
        # @param [String] page_token
        #   Token to specify next page.
        # @param [String] parameters
        #   Represents the application name, parameter name pairs to fetch in csv as
        #   app_name1:param_name1, app_name2:param_name2.
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
        # @yieldparam result [Google::Apis::AdminReportsV1::UsageReports] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AdminReportsV1::UsageReports]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user_usage_report(user_key, date, customer_id: nil, filters: nil, max_results: nil, page_token: nil, parameters: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, 'usage/users/{userKey}/dates/{date}', options)
          command.response_representation = Google::Apis::AdminReportsV1::UsageReports::Representation
          command.response_class = Google::Apis::AdminReportsV1::UsageReports
          command.params['userKey'] = user_key unless user_key.nil?
          command.params['date'] = date unless date.nil?
          command.query['customerId'] = customer_id unless customer_id.nil?
          command.query['filters'] = filters unless filters.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parameters'] = parameters unless parameters.nil?
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
