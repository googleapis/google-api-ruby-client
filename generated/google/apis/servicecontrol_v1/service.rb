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
    module ServicecontrolV1
      # Service Control API
      #
      # Google Service Control provides control plane functionality to managed
      #  services, such as logging, monitoring, and status checks.
      #
      # @example
      #    require 'google/apis/servicecontrol_v1'
      #
      #    Servicecontrol = Google::Apis::ServicecontrolV1 # Alias the module
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
        
        # Attempts to allocate quota for the specified consumer. It should be called
        # before the operation is executed.
        # This method requires the `servicemanagement.services.quota`
        # permission on the specified service. For more information, see
        # [Cloud IAM](https://cloud.google.com/iam).
        # **NOTE:** The client **must** fail-open on server errors `INTERNAL`,
        # `UNKNOWN`, `DEADLINE_EXCEEDED`, and `UNAVAILABLE`. To ensure system
        # reliability, the server may inject these errors to prohibit any hard
        # dependency on the quota functionality.
        # @param [String] service_name
        #   Name of the service as specified in the service configuration. For example,
        #   `"pubsub.googleapis.com"`.
        #   See google.api.Service for the definition of a service name.
        # @param [Google::Apis::ServicecontrolV1::AllocateQuotaRequest] allocate_quota_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV1::AllocateQuotaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV1::AllocateQuotaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def allocate_service_quota(service_name, allocate_quota_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/services/{serviceName}:allocateQuota', options)
          command.request_representation = Google::Apis::ServicecontrolV1::AllocateQuotaRequest::Representation
          command.request_object = allocate_quota_request_object
          command.response_representation = Google::Apis::ServicecontrolV1::AllocateQuotaResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV1::AllocateQuotaResponse
          command.params['serviceName'] = service_name unless service_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks whether an operation on a service should be allowed to proceed
        # based on the configuration of the service and related policies. It must be
        # called before the operation is executed.
        # If feasible, the client should cache the check results and reuse them for
        # 60 seconds. In case of any server errors, the client should rely on the
        # cached results for much longer time to avoid outage.
        # WARNING: There is general 60s delay for the configuration and policy
        # propagation, therefore callers MUST NOT depend on the `Check` method having
        # the latest policy information.
        # NOTE: the CheckRequest has the size limit of 64KB.
        # This method requires the `servicemanagement.services.check` permission
        # on the specified service. For more information, see
        # [Cloud IAM](https://cloud.google.com/iam).
        # @param [String] service_name
        #   The service name as specified in its service configuration. For example,
        #   `"pubsub.googleapis.com"`.
        #   See
        #   [google.api.Service](https://cloud.google.com/service-management/reference/rpc/
        #   google.api#google.api.Service)
        #   for the definition of a service name.
        # @param [Google::Apis::ServicecontrolV1::CheckRequest] check_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV1::CheckResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV1::CheckResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_service(service_name, check_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/services/{serviceName}:check', options)
          command.request_representation = Google::Apis::ServicecontrolV1::CheckRequest::Representation
          command.request_object = check_request_object
          command.response_representation = Google::Apis::ServicecontrolV1::CheckResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV1::CheckResponse
          command.params['serviceName'] = service_name unless service_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Signals the quota controller that service ends the ongoing usage
        # reconciliation.
        # This method requires the `servicemanagement.services.quota`
        # permission on the specified service. For more information, see
        # [Google Cloud IAM](https://cloud.google.com/iam).
        # @param [String] service_name
        #   Name of the service as specified in the service configuration. For example,
        #   `"pubsub.googleapis.com"`.
        #   See google.api.Service for the definition of a service name.
        # @param [Google::Apis::ServicecontrolV1::EndReconciliationRequest] end_reconciliation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV1::EndReconciliationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV1::EndReconciliationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def end_service_reconciliation(service_name, end_reconciliation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/services/{serviceName}:endReconciliation', options)
          command.request_representation = Google::Apis::ServicecontrolV1::EndReconciliationRequest::Representation
          command.request_object = end_reconciliation_request_object
          command.response_representation = Google::Apis::ServicecontrolV1::EndReconciliationResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV1::EndReconciliationResponse
          command.params['serviceName'] = service_name unless service_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Releases previously allocated quota done through AllocateQuota method.
        # This method requires the `servicemanagement.services.quota`
        # permission on the specified service. For more information, see
        # [Cloud IAM](https://cloud.google.com/iam).
        # **NOTE:** The client **must** fail-open on server errors `INTERNAL`,
        # `UNKNOWN`, `DEADLINE_EXCEEDED`, and `UNAVAILABLE`. To ensure system
        # reliability, the server may inject these errors to prohibit any hard
        # dependency on the quota functionality.
        # @param [String] service_name
        #   Name of the service as specified in the service configuration. For example,
        #   `"pubsub.googleapis.com"`.
        #   See google.api.Service for the definition of a service name.
        # @param [Google::Apis::ServicecontrolV1::ReleaseQuotaRequest] release_quota_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV1::ReleaseQuotaResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV1::ReleaseQuotaResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def release_service_quota(service_name, release_quota_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/services/{serviceName}:releaseQuota', options)
          command.request_representation = Google::Apis::ServicecontrolV1::ReleaseQuotaRequest::Representation
          command.request_object = release_quota_request_object
          command.response_representation = Google::Apis::ServicecontrolV1::ReleaseQuotaResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV1::ReleaseQuotaResponse
          command.params['serviceName'] = service_name unless service_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reports operation results to Google Service Control, such as logs and
        # metrics. It should be called after an operation is completed.
        # If feasible, the client should aggregate reporting data for up to 5
        # seconds to reduce API traffic. Limiting aggregation to 5 seconds is to
        # reduce data loss during client crashes. Clients should carefully choose
        # the aggregation time window to avoid data loss risk more than 0.01%
        # for business and compliance reasons.
        # NOTE: the ReportRequest has the size limit of 1MB.
        # This method requires the `servicemanagement.services.report` permission
        # on the specified service. For more information, see
        # [Google Cloud IAM](https://cloud.google.com/iam).
        # @param [String] service_name
        #   The service name as specified in its service configuration. For example,
        #   `"pubsub.googleapis.com"`.
        #   See
        #   [google.api.Service](https://cloud.google.com/service-management/reference/rpc/
        #   google.api#google.api.Service)
        #   for the definition of a service name.
        # @param [Google::Apis::ServicecontrolV1::ReportRequest] report_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV1::ReportResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV1::ReportResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def report_service(service_name, report_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/services/{serviceName}:report', options)
          command.request_representation = Google::Apis::ServicecontrolV1::ReportRequest::Representation
          command.request_object = report_request_object
          command.response_representation = Google::Apis::ServicecontrolV1::ReportResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV1::ReportResponse
          command.params['serviceName'] = service_name unless service_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Unlike rate quota, allocation quota does not get refilled periodically.
        # So, it is possible that the quota usage as seen by the service differs from
        # what the One Platform considers the usage is. This is expected to happen
        # only rarely, but over time this can accumulate. Services can invoke
        # StartReconciliation and EndReconciliation to correct this usage drift, as
        # described below:
        # 1. Service sends StartReconciliation with a timestamp in future for each
        # metric that needs to be reconciled. The timestamp being in future allows
        # to account for in-flight AllocateQuota and ReleaseQuota requests for the
        # same metric.
        # 2. One Platform records this timestamp and starts tracking subsequent
        # AllocateQuota and ReleaseQuota requests until EndReconciliation is
        # called.
        # 3. At or after the time specified in the StartReconciliation, service
        # sends EndReconciliation with the usage that needs to be reconciled to.
        # 4. One Platform adjusts its own record of usage for that metric to the
        # value specified in EndReconciliation by taking in to account any
        # allocation or release between StartReconciliation and EndReconciliation.
        # Signals the quota controller that the service wants to perform a usage
        # reconciliation as specified in the request.
        # This method requires the `servicemanagement.services.quota`
        # permission on the specified service. For more information, see
        # [Google Cloud IAM](https://cloud.google.com/iam).
        # @param [String] service_name
        #   Name of the service as specified in the service configuration. For example,
        #   `"pubsub.googleapis.com"`.
        #   See google.api.Service for the definition of a service name.
        # @param [Google::Apis::ServicecontrolV1::StartReconciliationRequest] start_reconciliation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicecontrolV1::StartReconciliationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicecontrolV1::StartReconciliationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def start_service_reconciliation(service_name, start_reconciliation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v1/services/{serviceName}:startReconciliation', options)
          command.request_representation = Google::Apis::ServicecontrolV1::StartReconciliationRequest::Representation
          command.request_object = start_reconciliation_request_object
          command.response_representation = Google::Apis::ServicecontrolV1::StartReconciliationResponse::Representation
          command.response_class = Google::Apis::ServicecontrolV1::StartReconciliationResponse
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
