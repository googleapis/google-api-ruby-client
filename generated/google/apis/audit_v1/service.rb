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
    module AuditV1
      # Enterprise Audit API
      #
      # Lets you access user activities in your enterprise made through various
      #  applications.
      #
      # @example
      #    require 'google/apis/audit_v1'
      #
      #    Audit = Google::Apis::AuditV1 # Alias the module
      #    service = Audit::AuditService.new
      #
      # @see https://developers.google.com/google-apps/admin-audit/get_started
      class AuditService < Google::Apis::Core::BaseService

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
          super('https://www.googleapis.com/', '/apps/reporting/audit/v1/')
        end

        # Retrieves a list of activities for a specific customer and application.
        # @param [String] customer_id
        #   Represents the customer who is the owner of target object on which action was
        #   performed.
        # @param [String] application_id
        #   Application ID of the application on which the event was performed.
        # @param [String] actor_application_id
        #   Application ID of the application which interacted on behalf of the user while
        #   performing the event.
        # @param [String] actor_email
        #   Email address of the user who performed the action.
        # @param [String] actor_ip_address
        #   IP Address of host where the event was performed. Supports both IPv4 and IPv6
        #   addresses.
        # @param [String] caller
        #   Type of the caller.
        # @param [String] continuation_token
        #   Next page URL.
        # @param [String] end_time
        #   Return events which occured at or before this time.
        # @param [String] event_name
        #   Name of the event being queried.
        # @param [Fixnum] max_results
        #   Number of activity records to be shown in each page.
        # @param [String] start_time
        #   Return events which occured at or after this time.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Api::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AuditV1::Activities] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AuditV1::Activities]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_activities(customer_id, application_id, actor_application_id: nil, actor_email: nil, actor_ip_address: nil, caller: nil, continuation_token: nil, end_time: nil, event_name: nil, max_results: nil, start_time: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          path = '{customerId}/{applicationId}'
          command =  make_simple_command(:get, path, options)
          command.response_representation = Google::Apis::AuditV1::ActivitiesRepresentation
          command.response_class = Google::Apis::AuditV1::Activities
          command.params['customerId'] = customer_id unless customer_id.nil?
          command.params['applicationId'] = application_id unless application_id.nil?
          command.query['actorApplicationId'] = actor_application_id unless actor_application_id.nil?
          command.query['actorEmail'] = actor_email unless actor_email.nil?
          command.query['actorIpAddress'] = actor_ip_address unless actor_ip_address.nil?
          command.query['caller'] = caller unless caller.nil?
          command.query['continuationToken'] = continuation_token unless continuation_token.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['eventName'] = event_name unless event_name.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['startTime'] = start_time unless start_time.nil?
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
