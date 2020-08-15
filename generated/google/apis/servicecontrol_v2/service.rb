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
    module ServicecontrolV2
      # Service Control API
      #
      # Provides control plane functionality to managed services, such as logging,
      #  monitoring, and status checks.
      #
      # @example
      #    require 'google/apis/servicecontrol_v2'
      #
      #    Servicecontrol = Google::Apis::ServicecontrolV2 # Alias the module
      #    service = Servicecontrol::ServiceControlService.new
      #
      # @see https://cloud.google.com/service-control/
      class ServiceControlService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://servicecontrol.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Private Preview. This feature is only available for approved services. This
        # method provides admission control for services that are integrated with [
        # Service Infrastructure](/service-infrastructure). It checks whether an
        # operation should be allowed based on the service configuration and relevant
        # policies. It must be called before the operation is executed. For more
        # information, see [Admission Control](/service-infrastructure/docs/admission-
        # control). NOTE: The admission control has an expected policy propagation delay
        # of 60s. The caller **must** not depend on the most recent policy changes. NOTE:
        # The admission control has a hard limit of 1 referenced resources per call. If
        # an operation refers to more than 1 resources, the caller must call the Check
        # method multiple times. This method requires the `servicemanagement.services.
        # check` permission on the specified service. For more information, see [Service
        # Control API Access Control](https://cloud.google.com/service-infrastructure/
        # docs/service-control/access-control).
        # @param [String] service_name
        #   The service name as specified in its service configuration. For example, `"
        #   pubsub.googleapis.com"`. See [google.api.Service](https://cloud.google.com/
        #   service-management/reference/rpc/google.api#google.api.Service) for the
        #   definition of a service name.
        # @param [Google::Apis::ServicecontrolV2::CheckRequest] check_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV2::CheckResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV2::CheckResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_service(service_name, check_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/services/{serviceName}:check', options)
          command.request_representation = Google::Apis::ServicecontrolV2::CheckRequest::Representation
          command.request_object = check_request_object
          command.response_representation = Google::Apis::ServicecontrolV2::CheckResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV2::CheckResponse
          command.params['serviceName'] = service_name unless service_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Private Preview. This feature is only available for approved services. This
        # method provides telemetry reporting for services that are integrated with [
        # Service Infrastructure](/service-infrastructure). It reports a list of
        # operations that have occurred on a service. It must be called after the
        # operations have been executed. For more information, see [Telemetry Reporting](
        # /service-infrastructure/docs/telemetry-reporting). NOTE: The telemetry
        # reporting has a hard limit of 1000 operations and 1MB per Report call. It is
        # recommended to have no more than 100 operations per call. This method requires
        # the `servicemanagement.services.report` permission on the specified service.
        # For more information, see [Service Control API Access Control](https://cloud.
        # google.com/service-infrastructure/docs/service-control/access-control).
        # @param [String] service_name
        #   The service name as specified in its service configuration. For example, `"
        #   pubsub.googleapis.com"`. See [google.api.Service](https://cloud.google.com/
        #   service-management/reference/rpc/google.api#google.api.Service) for the
        #   definition of a service name.
        # @param [Google::Apis::ServicecontrolV2::ReportRequest] report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV2::ReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV2::ReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_service(service_name, report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/services/{serviceName}:report', options)
          command.request_representation = Google::Apis::ServicecontrolV2::ReportRequest::Representation
          command.request_object = report_request_object
          command.response_representation = Google::Apis::ServicecontrolV2::ReportResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV2::ReportResponse
          command.params['serviceName'] = service_name unless service_name.nil?
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
