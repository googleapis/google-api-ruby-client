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
    module ServiceconsumermanagementV1beta1
      # Service Consumer Management API
      #
      # Manages the service consumers of a Service Infrastructure service.
      #
      # @example
      #    require 'google/apis/serviceconsumermanagement_v1beta1'
      #
      #    Serviceconsumermanagement = Google::Apis::ServiceconsumermanagementV1beta1 # Alias the module
      #    service = Serviceconsumermanagement::ServiceConsumerManagementService.new
      #
      # @see https://cloud.google.com/service-consumer-management/docs/overview
      class ServiceConsumerManagementService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://serviceconsumermanagement.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets the latest state of a long-running operation. Clients can use this method
        # to poll the operation result at intervals as recommended by the API service.
        # @param [String] name
        #   The name of the operation resource.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a summary of quota information for a specific quota metric.
        # @param [String] name
        #   The resource name of the quota metric, returned by a ListConsumerQuotaMetrics
        #   call. An example name would be: `services/compute.googleapis.com/projects/123/
        #   consumerQuotaMetrics/compute.googleapis.com%2Fcpus`
        # @param [String] view
        #   Specifies the level of detail for quota information in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_consumer_quota_metric(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaMetric::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaMetric
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create or update multiple producer overrides atomically, all on the same
        # consumer, but on many different metrics or limits. The name field in the quota
        # override message should not be set.
        # @param [String] parent
        #   The resource name of the consumer. An example name would be: `services/compute.
        #   googleapis.com/projects/123`
        # @param [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ImportProducerOverridesRequest] v1_beta1_import_producer_overrides_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_service_consumer_quota_metric_producer_overrides(parent, v1_beta1_import_producer_overrides_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/consumerQuotaMetrics:importProducerOverrides', options)
          command.request_representation = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ImportProducerOverridesRequest::Representation
          command.request_object = v1_beta1_import_producer_overrides_request_object
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a summary of all quota information about this consumer that is
        # visible to the service producer, for each quota metric defined by the service.
        # Each metric includes information about all of its defined limits. Each limit
        # includes the limit configuration (quota unit, preciseness, default value), the
        # current effective limit value, and all of the overrides applied to the limit.
        # @param [String] parent
        #   Parent of the quotas resource. An example parent would be: `services/
        #   serviceconsumermanagement.googleapis.com/projects/123`
        # @param [Fixnum] page_size
        #   Requested size of the next page of data.
        # @param [String] page_token
        #   Token identifying which result to start with; returned by a previous list call.
        # @param [String] view
        #   Specifies the level of detail for quota information in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListConsumerQuotaMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListConsumerQuotaMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_consumer_quota_metrics(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/consumerQuotaMetrics', options)
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListConsumerQuotaMetricsResponse::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListConsumerQuotaMetricsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a summary of quota information for a specific quota limit.
        # @param [String] name
        #   The resource name of the quota limit, returned by a ListConsumerQuotaMetrics
        #   or GetConsumerQuotaMetric call. An example name would be: `services/compute.
        #   googleapis.com/projects/123/consumerQuotaMetrics/compute.googleapis.com%2Fcpus/
        #   limits/%2Fproject%2Fregion`
        # @param [String] view
        #   Specifies the level of detail for quota information in the response.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_consumer_quota_metric_limit(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ConsumerQuotaLimit
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a producer override. A producer override is applied by the owner or
        # administrator of a service to increase or decrease the amount of quota a
        # consumer of the service is allowed to use. To create multiple overrides at
        # once, use ImportProducerOverrides instead. If an override with the specified
        # dimensions already exists, this call will fail. To overwrite an existing
        # override if one is already present ("upsert" semantics), use
        # ImportProducerOverrides instead.
        # @param [String] parent
        #   The resource name of the parent quota limit, returned by a
        #   ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name would
        #   be: `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
        # @param [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride] v1_beta1_quota_override_object
        # @param [Boolean] force
        #   Whether to force the creation of the quota override. If creating an override
        #   would cause the effective quota for the consumer to decrease by more than 10
        #   percent, the call is rejected, as a safety measure to avoid accidentally
        #   decreasing quota too quickly. Setting the force parameter to true ignores this
        #   restriction.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_consumer_quota_metric_limit_producer_override(parent, v1_beta1_quota_override_object = nil, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/producerOverrides', options)
          command.request_representation = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
          command.request_object = v1_beta1_quota_override_object
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a producer override.
        # @param [String] name
        #   The resource name of the override to delete. An example name would be: `
        #   services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerOverrides/4a3f2c1d`
        # @param [Boolean] force
        #   Whether to force the deletion of the quota override. If deleting an override
        #   would cause the effective quota for the consumer to decrease by more than 10
        #   percent, the call is rejected, as a safety measure to avoid accidentally
        #   decreasing quota too quickly. Setting the force parameter to true ignores this
        #   restriction.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_service_consumer_quota_metric_limit_producer_override(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all producer overrides on this limit.
        # @param [String] parent
        #   The resource name of the parent quota limit, returned by a
        #   ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name would
        #   be: `services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
        # @param [Fixnum] page_size
        #   Requested size of the next page of data.
        # @param [String] page_token
        #   Token identifying which result to start with; returned by a previous list call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListProducerOverridesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListProducerOverridesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_consumer_quota_metric_limit_producer_overrides(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/producerOverrides', options)
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListProducerOverridesResponse::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1ListProducerOverridesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a producer override.
        # @param [String] name
        #   The resource name of the override to update. An example name would be: `
        #   services/compute.googleapis.com/projects/123/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/producerOverrides/4a3f2c1d`
        # @param [Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride] v1_beta1_quota_override_object
        # @param [Boolean] force
        #   Whether to force the update of the quota override. If updating an override
        #   would cause the effective quota for the consumer to decrease by more than 10
        #   percent, the call is rejected, as a safety measure to avoid accidentally
        #   decreasing quota too quickly. Setting the force parameter to true ignores this
        #   restriction.
        # @param [String] update_mask
        #   Update only the specified fields. If unset, all modifiable fields will be
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceconsumermanagementV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceconsumermanagementV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_service_consumer_quota_metric_limit_producer_override(name, v1_beta1_quota_override_object = nil, force: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ServiceconsumermanagementV1beta1::V1Beta1QuotaOverride::Representation
          command.request_object = v1_beta1_quota_override_object
          command.response_representation = Google::Apis::ServiceconsumermanagementV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceconsumermanagementV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
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
