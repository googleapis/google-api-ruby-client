# Copyright 2020 Google LLC
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
    module MonitoringV1
      # Cloud Monitoring API
      #
      # Manages your Cloud Monitoring data and configurations. Most projects must be
      #  associated with a Workspace, with a few exceptions as noted on the individual
      #  method pages. The table entries below are presented in alphabetical order, not
      #  in order of common use. For explanations of the concepts found in the table
      #  entries, read the Cloud Monitoring documentation (https://cloud.google.com/
      #  monitoring/docs).
      #
      # @example
      #    require 'google/apis/monitoring_v1'
      #
      #    Monitoring = Google::Apis::MonitoringV1 # Alias the module
      #    service = Monitoring::MonitoringService.new
      #
      # @see https://cloud.google.com/monitoring/api/
      class MonitoringService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://monitoring.googleapis.com/', '',
                client_name: 'google-apis-monitoring_v1',
                client_version: Google::Apis::MonitoringV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Returns a specific Metrics Scope.
        # @param [String] name
        #   Required. The resource name of the Metrics Scope. Example: locations/global/
        #   metricsScopes/`SCOPING_PROJECT_ID_OR_NUMBER`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::MetricsScope] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::MetricsScope]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_location_global_metrics_scope(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV1::MetricsScope::Representation
          command.response_class = Google::Apis::MonitoringV1::MetricsScope
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of every Metrics Scope that a specific MonitoredProject has
        # been added to. The metrics scope representing the specified monitored project
        # will always be the first entry in the response.
        # @param [String] monitored_resource_container
        #   Required. The resource name of the Monitored Project being requested. Example:
        #   projects/`MONITORED_PROJECT_ID_OR_NUMBER`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::ListMetricsScopesByMonitoredProjectResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::ListMetricsScopesByMonitoredProjectResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_location_global_metrics_scope_metric_scopes_by_monitored_project(monitored_resource_container: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/locations/global/metricsScopes:listMetricScopesByMonitoredProject', options)
          command.response_representation = Google::Apis::MonitoringV1::ListMetricsScopesByMonitoredProjectResponse::Representation
          command.response_class = Google::Apis::MonitoringV1::ListMetricsScopesByMonitoredProjectResponse
          command.query['monitoredResourceContainer'] = monitored_resource_container unless monitored_resource_container.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a MonitoredProject with the given project ID to the specified Metrics
        # Scope.
        # @param [String] parent
        #   Required. The resource name of the existing Metrics Scope that will monitor
        #   this project. Example: locations/global/metricsScopes/`
        #   SCOPING_PROJECT_ID_OR_NUMBER`
        # @param [Google::Apis::MonitoringV1::MonitoredProject] monitored_project_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_location_global_metrics_scope_project(parent, monitored_project_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/projects', options)
          command.request_representation = Google::Apis::MonitoringV1::MonitoredProject::Representation
          command.request_object = monitored_project_object
          command.response_representation = Google::Apis::MonitoringV1::Operation::Representation
          command.response_class = Google::Apis::MonitoringV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a MonitoredProject from the specified Metrics Scope.
        # @param [String] name
        #   Required. The resource name of the MonitoredProject. Example: locations/global/
        #   metricsScopes/`SCOPING_PROJECT_ID_OR_NUMBER`/projects/`
        #   MONITORED_PROJECT_ID_OR_NUMBER`Authorization requires the following Google IAM
        #   (https://cloud.google.com/iam) permissions on both the Metrics Scope and on
        #   the MonitoredProject: monitoring.metricsScopes.link
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_location_global_metrics_scope_project(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV1::Operation::Representation
          command.response_class = Google::Apis::MonitoringV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
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
        # @yieldparam result [Google::Apis::MonitoringV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV1::Operation::Representation
          command.response_class = Google::Apis::MonitoringV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new custom dashboard. For examples on how you can use this API to
        # create dashboards, see Managing dashboards by API (https://cloud.google.com/
        # monitoring/dashboards/api-dashboard). This method requires the monitoring.
        # dashboards.create permission on the specified project. For more information
        # about permissions, see Cloud Identity and Access Management (https://cloud.
        # google.com/iam).
        # @param [String] parent
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER] The [PROJECT_ID_OR_NUMBER] must match the dashboard
        #   resource name.
        # @param [Google::Apis::MonitoringV1::Dashboard] dashboard_object
        # @param [Boolean] validate_only
        #   If set, validate the request and preview the review, but do not actually save
        #   it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::Dashboard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::Dashboard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_dashboard(parent, dashboard_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/dashboards', options)
          command.request_representation = Google::Apis::MonitoringV1::Dashboard::Representation
          command.request_object = dashboard_object
          command.response_representation = Google::Apis::MonitoringV1::Dashboard::Representation
          command.response_class = Google::Apis::MonitoringV1::Dashboard
          command.params['parent'] = parent unless parent.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing custom dashboard.This method requires the monitoring.
        # dashboards.delete permission on the specified dashboard. For more information,
        # see Cloud Identity and Access Management (https://cloud.google.com/iam).
        # @param [String] name
        #   Required. The resource name of the Dashboard. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/dashboards/[DASHBOARD_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_dashboard(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV1::Empty::Representation
          command.response_class = Google::Apis::MonitoringV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Fetches a specific dashboard.This method requires the monitoring.dashboards.
        # get permission on the specified dashboard. For more information, see Cloud
        # Identity and Access Management (https://cloud.google.com/iam).
        # @param [String] name
        #   Required. The resource name of the Dashboard. The format is one of: dashboards/
        #   [DASHBOARD_ID] (for system dashboards) projects/[PROJECT_ID_OR_NUMBER]/
        #   dashboards/[DASHBOARD_ID] (for custom dashboards).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::Dashboard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::Dashboard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_dashboard(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV1::Dashboard::Representation
          command.response_class = Google::Apis::MonitoringV1::Dashboard
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the existing dashboards.This method requires the monitoring.dashboards.
        # list permission on the specified project. For more information, see Cloud
        # Identity and Access Management (https://cloud.google.com/iam).
        # @param [String] parent
        #   Required. The scope of the dashboards to list. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]
        # @param [Fixnum] page_size
        #   A positive number that is the maximum number of results to return. If
        #   unspecified, a default of 1000 is used.
        # @param [String] page_token
        #   If this field is not empty then it must contain the nextPageToken value
        #   returned by a previous call to this method. Using this field causes the method
        #   to return additional results from the previous method call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::ListDashboardsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::ListDashboardsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_dashboards(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/dashboards', options)
          command.response_representation = Google::Apis::MonitoringV1::ListDashboardsResponse::Representation
          command.response_class = Google::Apis::MonitoringV1::ListDashboardsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Replaces an existing custom dashboard with a new definition.This method
        # requires the monitoring.dashboards.update permission on the specified
        # dashboard. For more information, see Cloud Identity and Access Management (
        # https://cloud.google.com/iam).
        # @param [String] name
        #   Immutable. The resource name of the dashboard.
        # @param [Google::Apis::MonitoringV1::Dashboard] dashboard_object
        # @param [Boolean] validate_only
        #   If set, validate the request and preview the review, but do not actually save
        #   it.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV1::Dashboard] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV1::Dashboard]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_dashboard(name, dashboard_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::MonitoringV1::Dashboard::Representation
          command.request_object = dashboard_object
          command.response_representation = Google::Apis::MonitoringV1::Dashboard::Representation
          command.response_class = Google::Apis::MonitoringV1::Dashboard
          command.params['name'] = name unless name.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
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
