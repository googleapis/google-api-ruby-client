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
    module ServiceusageV1beta1
      # Service Usage API
      #
      # Enables services that service consumers want to use on Google Cloud Platform,
      #  lists the available or enabled services, or disables services that service
      #  consumers no longer use.
      #
      # @example
      #    require 'google/apis/serviceusage_v1beta1'
      #
      #    Serviceusage = Google::Apis::ServiceusageV1beta1 # Alias the module
      #    service = Serviceusage::ServiceUsageService.new
      #
      # @see https://cloud.google.com/service-usage/
      class ServiceUsageService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://serviceusage.googleapis.com/', '')
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`. NOTE: the `name`
        # binding allows API services to override the binding to use different resource
        # name schemes, such as `users/*/operations`. To override the binding, API
        # services can add a binding such as `"/v1/`name=users/*`/operations"` to their
        # service configuration. For backwards compatibility, the default name includes
        # the operations collection id, however overriding users must ensure the name
        # binding is the parent resource, without the operations collection id.
        # @param [String] filter
        #   The standard list filter.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [Fixnum] page_size
        #   The standard list page size.
        # @param [String] page_token
        #   The standard list page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(filter: nil, name: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/operations', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::ListOperationsResponse
          command.query['filter'] = filter unless filter.nil?
          command.query['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable multiple services on a project. The operation is atomic: if enabling
        # any service fails, then the entire batch fails, and no state changes occur.
        # Operation
        # @param [String] parent
        #   Parent to enable services on. An example name would be: `projects/123` where `
        #   123` is the project number (not project ID). The `BatchEnableServices` method
        #   currently only supports projects.
        # @param [Google::Apis::ServiceusageV1beta1::BatchEnableServicesRequest] batch_enable_services_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_enable_services(parent, batch_enable_services_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/services:batchEnable', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::BatchEnableServicesRequest::Representation
          command.request_object = batch_enable_services_request_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Disable a service so that it can no longer be used with a project. This
        # prevents unintended usage that may cause unexpected billing charges or
        # security leaks. It is not valid to call the disable method on a service that
        # is not currently enabled. Callers will receive a `FAILED_PRECONDITION` status
        # if the target service is not currently enabled. Operation
        # @param [String] name
        #   Name of the consumer and service to disable the service on. The enable and
        #   disable methods currently only support projects. An example name would be: `
        #   projects/123/services/serviceusage.googleapis.com` where `123` is the project
        #   number (not project ID).
        # @param [Google::Apis::ServiceusageV1beta1::DisableServiceRequest] disable_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def disable_service(name, disable_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:disable', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::DisableServiceRequest::Representation
          command.request_object = disable_service_request_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Enable a service so that it can be used with a project. Operation
        # @param [String] name
        #   Name of the consumer and service to enable the service on. The `EnableService`
        #   and `DisableService` methods currently only support projects. Enabling a
        #   service requires that the service is public or is shared with the user
        #   enabling the service. An example name would be: `projects/123/services/
        #   serviceusage.googleapis.com` where `123` is the project number (not project ID)
        #   .
        # @param [Google::Apis::ServiceusageV1beta1::EnableServiceRequest] enable_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def enable_service(name, enable_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:enable', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::EnableServiceRequest::Representation
          command.request_object = enable_service_request_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generate service identity for service.
        # @param [String] parent
        #   Name of the consumer and service to generate an identity for. The `
        #   GenerateServiceIdentity` methods currently only support projects. An example
        #   name would be: `projects/123/services/example.googleapis.com` where `123` is
        #   the project number.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_service_service_identity(parent, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}:generateServiceIdentity', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the service configuration and enabled state for a given service.
        # @param [String] name
        #   Name of the consumer and service to get the `ConsumerState` for. An example
        #   name would be: `projects/123/services/serviceusage.googleapis.com` where `123`
        #   is the project number (not project ID).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::Service::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Service
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List all services available to the specified project, and the current state of
        # those services with respect to the project. The list includes all public
        # services, all services for which the calling user has the `servicemanagement.
        # services.bind` permission, and all services that have already been enabled on
        # the project. The list can be filtered to only include services in a specific
        # state, for example to only include services enabled on the project.
        # @param [String] parent
        #   Parent to search for services on. An example name would be: `projects/123`
        #   where `123` is the project number (not project ID).
        # @param [String] filter
        #   Only list services that conform to the given filter. The allowed filter
        #   strings are `state:ENABLED` and `state:DISABLED`.
        # @param [Fixnum] page_size
        #   Requested size of the next page of data. Requested page size cannot exceed 200.
        #   If not set, the default page size is 50.
        # @param [String] page_token
        #   Token identifying which result to start with, which is returned by a previous
        #   list call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_services(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/services', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::ListServicesResponse::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::ListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a summary of quota information for a specific quota metric
        # @param [String] name
        #   The resource name of the quota limit. An example name would be: projects/123/
        #   services/serviceusage.googleapis.com/quotas/metrics/serviceusage.googleapis.
        #   com%2Fmutate_requests
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::ConsumerQuotaMetric] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::ConsumerQuotaMetric]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_consumer_quota_metric(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::ConsumerQuotaMetric::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::ConsumerQuotaMetric
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create or update multiple admin overrides atomically, all on the same consumer,
        # but on many different metrics or limits. The name field in the quota override
        # message should not be set.
        # @param [String] parent
        #   The resource name of the consumer. An example name would be: `projects/123/
        #   services/compute.googleapis.com`
        # @param [Google::Apis::ServiceusageV1beta1::ImportAdminOverridesRequest] import_admin_overrides_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_consumer_quota_metric_admin_overrides(parent, import_admin_overrides_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/consumerQuotaMetrics:importAdminOverrides', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::ImportAdminOverridesRequest::Representation
          command.request_object = import_admin_overrides_request_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create or update multiple consumer overrides atomically, all on the same
        # consumer, but on many different metrics or limits. The name field in the quota
        # override message should not be set.
        # @param [String] parent
        #   The resource name of the consumer. An example name would be: `projects/123/
        #   services/compute.googleapis.com`
        # @param [Google::Apis::ServiceusageV1beta1::ImportConsumerOverridesRequest] import_consumer_overrides_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def import_consumer_quota_metric_consumer_overrides(parent, import_consumer_overrides_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/consumerQuotaMetrics:importConsumerOverrides', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::ImportConsumerOverridesRequest::Representation
          command.request_object = import_consumer_overrides_request_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a summary of all quota information visible to the service consumer,
        # organized by service metric. Each metric includes information about all of its
        # defined limits. Each limit includes the limit configuration (quota unit,
        # preciseness, default value), the current effective limit value, and all of the
        # overrides applied to the limit.
        # @param [String] parent
        #   Parent of the quotas resource. Some example names would be: projects/123/
        #   services/serviceconsumermanagement.googleapis.com folders/345/services/
        #   serviceconsumermanagement.googleapis.com organizations/456/services/
        #   serviceconsumermanagement.googleapis.com
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::ListConsumerQuotaMetricsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::ListConsumerQuotaMetricsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_consumer_quota_metrics(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/consumerQuotaMetrics', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::ListConsumerQuotaMetricsResponse::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::ListConsumerQuotaMetricsResponse
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
        #   The resource name of the quota limit. Use the quota limit resource name
        #   returned by previous ListConsumerQuotaMetrics and GetConsumerQuotaMetric API
        #   calls.
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::ConsumerQuotaLimit] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::ConsumerQuotaLimit]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_consumer_quota_metric_limit(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::ConsumerQuotaLimit::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::ConsumerQuotaLimit
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an admin override. An admin override is applied by an administrator of
        # a parent folder or parent organization of the consumer receiving the override.
        # An admin override is intended to limit the amount of quota the consumer can
        # use out of the total quota pool allocated to all children of the folder or
        # organization.
        # @param [String] parent
        #   The resource name of the parent quota limit, returned by a
        #   ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name would
        #   be: `projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
        # @param [Google::Apis::ServiceusageV1beta1::QuotaOverride] quota_override_object
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_consumer_quota_metric_limit_admin_override(parent, quota_override_object = nil, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/adminOverrides', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
          command.request_object = quota_override_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an admin override.
        # @param [String] name
        #   The resource name of the override to delete. An example name would be: `
        #   projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/adminOverrides/4a3f2c1d`
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_service_consumer_quota_metric_limit_admin_override(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all admin overrides on this limit.
        # @param [String] parent
        #   The resource name of the parent quota limit, returned by a
        #   ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name would
        #   be: `projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::ListAdminOverridesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::ListAdminOverridesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_consumer_quota_metric_limit_admin_overrides(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/adminOverrides', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::ListAdminOverridesResponse::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::ListAdminOverridesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an admin override.
        # @param [String] name
        #   The resource name of the override to update. An example name would be: `
        #   projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/adminOverrides/4a3f2c1d`
        # @param [Google::Apis::ServiceusageV1beta1::QuotaOverride] quota_override_object
        # @param [Boolean] force
        #   Whether to force the update of the quota override. If updating an override
        #   would cause the effective quota for the consumer to decrease by more than 10
        #   percent, the call is rejected, as a safety measure to avoid accidentally
        #   decreasing quota too quickly. Setting the force parameter to true ignores this
        #   restriction.
        # @param [String] update_mask
        #   Update only the specified fields of the override. If unset, all fields will be
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_service_consumer_quota_metric_limit_admin_override(name, quota_override_object = nil, force: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
          command.request_object = quota_override_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a consumer override. A consumer override is applied to the consumer on
        # its own authority to limit its own quota usage. Consumer overrides cannot be
        # used to grant more quota than would be allowed by admin overrides, producer
        # overrides, or the default limit of the service.
        # @param [String] parent
        #   The resource name of the parent quota limit, returned by a
        #   ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name would
        #   be: `projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion`
        # @param [Google::Apis::ServiceusageV1beta1::QuotaOverride] quota_override_object
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_consumer_quota_metric_limit_consumer_override(parent, quota_override_object = nil, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/consumerOverrides', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
          command.request_object = quota_override_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a consumer override.
        # @param [String] name
        #   The resource name of the override to delete. An example name would be: `
        #   projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/consumerOverrides/4a3f2c1d`
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_service_consumer_quota_metric_limit_consumer_override(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all consumer overrides on this limit.
        # @param [String] parent
        #   The resource name of the parent quota limit, returned by a
        #   ListConsumerQuotaMetrics or GetConsumerQuotaMetric call. An example name would
        #   be: `projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::ListConsumerOverridesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::ListConsumerOverridesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_consumer_quota_metric_limit_consumer_overrides(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/consumerOverrides', options)
          command.response_representation = Google::Apis::ServiceusageV1beta1::ListConsumerOverridesResponse::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::ListConsumerOverridesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a consumer override.
        # @param [String] name
        #   The resource name of the override to update. An example name would be: `
        #   projects/123/services/compute.googleapis.com/consumerQuotaMetrics/compute.
        #   googleapis.com%2Fcpus/limits/%2Fproject%2Fregion/consumerOverrides/4a3f2c1d`
        # @param [Google::Apis::ServiceusageV1beta1::QuotaOverride] quota_override_object
        # @param [Boolean] force
        #   Whether to force the update of the quota override. If updating an override
        #   would cause the effective quota for the consumer to decrease by more than 10
        #   percent, the call is rejected, as a safety measure to avoid accidentally
        #   decreasing quota too quickly. Setting the force parameter to true ignores this
        #   restriction.
        # @param [String] update_mask
        #   Update only the specified fields of the override. If unset, all fields will be
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
        # @yieldparam result [Google::Apis::ServiceusageV1beta1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServiceusageV1beta1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_service_consumer_quota_metric_limit_consumer_override(name, quota_override_object = nil, force: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ServiceusageV1beta1::QuotaOverride::Representation
          command.request_object = quota_override_object
          command.response_representation = Google::Apis::ServiceusageV1beta1::Operation::Representation
          command.response_class = Google::Apis::ServiceusageV1beta1::Operation
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
