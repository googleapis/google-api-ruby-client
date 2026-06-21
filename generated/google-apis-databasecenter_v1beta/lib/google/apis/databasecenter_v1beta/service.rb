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
    module DatabasecenterV1beta
      # Database Center API
      #
      # Database Center offers a comprehensive, organization-wide platform for
      #  monitoring database fleet health across various products. It simplifies
      #  management and reduces risk by automatically aggregating and summarizing key
      #  health signals, removing the need for custom dashboards. The platform provides
      #  a unified view through its dashboard and API, enabling teams focused on
      #  reliability, compliance, security, cost, and administration to quickly
      #  identify and address relevant issues within their database fleets.
      #
      # @example
      #    require 'google/apis/databasecenter_v1beta'
      #
      #    Databasecenter = Google::Apis::DatabasecenterV1beta # Alias the module
      #    service = Databasecenter::DatabaseCenterService.new
      #
      # @see https://docs.cloud.google.com/database-center/docs/overview
      class DatabaseCenterService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://databasecenter.$UNIVERSE_DOMAIN$/"

        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super(DEFAULT_ENDPOINT_TEMPLATE, '',
                client_name: 'google-apis-databasecenter_v1beta',
                client_version: Google::Apis::DatabasecenterV1beta::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # AggregateQueryStats provides database resource query execution statistics.
        # @param [String] parent
        #   Required. Parent can be a project, a folder, or an organization. The search is
        #   limited to the resources within the `parent`. The allowed values are: *
        #   projects/`PROJECT_ID` (e.g., "projects/foo-bar") * projects/`PROJECT_NUMBER` (
        #   e.g., "projects/12345678") * folders/`FOLDER_NUMBER` (e.g., "folders/1234567")
        #   * organizations/`ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # @param [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsRequest] aggregate_query_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregate_folder_query_stats(parent, aggregate_query_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}:aggregateQueryStats', options)
          command.request_representation = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsRequest::Representation
          command.request_object = aggregate_query_stats_request_object
          command.response_representation = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # AggregateQueryStats provides database resource query execution statistics.
        # @param [String] parent
        #   Required. Parent can be a project, a folder, or an organization. The search is
        #   limited to the resources within the `parent`. The allowed values are: *
        #   projects/`PROJECT_ID` (e.g., "projects/foo-bar") * projects/`PROJECT_NUMBER` (
        #   e.g., "projects/12345678") * folders/`FOLDER_NUMBER` (e.g., "folders/1234567")
        #   * organizations/`ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # @param [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsRequest] aggregate_query_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregate_organization_query_stats(parent, aggregate_query_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}:aggregateQueryStats', options)
          command.request_representation = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsRequest::Representation
          command.request_object = aggregate_query_stats_request_object
          command.response_representation = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # AggregateQueryStats provides database resource query execution statistics.
        # @param [String] parent
        #   Required. Parent can be a project, a folder, or an organization. The search is
        #   limited to the resources within the `parent`. The allowed values are: *
        #   projects/`PROJECT_ID` (e.g., "projects/foo-bar") * projects/`PROJECT_NUMBER` (
        #   e.g., "projects/12345678") * folders/`FOLDER_NUMBER` (e.g., "folders/1234567")
        #   * organizations/`ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # @param [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsRequest] aggregate_query_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregate_project_query_stats(parent, aggregate_query_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta/{+parent}:aggregateQueryStats', options)
          command.request_representation = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsRequest::Representation
          command.request_object = aggregate_query_stats_request_object
          command.response_representation = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::AggregateQueryStatsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # AggregateFleet provides statistics about the fleet grouped by various fields.
        # @param [Fixnum] baseline_date_day
        #   Day of a month. Must be from 1 to 31 and valid for the year and month, or 0 to
        #   specify a year by itself or a year and month where the day isn't significant.
        # @param [Fixnum] baseline_date_month
        #   Month of a year. Must be from 1 to 12, or 0 to specify a year without a month
        #   and day.
        # @param [Fixnum] baseline_date_year
        #   Year of the date. Must be from 1 to 9999, or 0 to specify a date without a
        #   year.
        # @param [String] filter
        #   Optional. The expression to filter resources. Supported fields are: `
        #   full_resource_name`, `resource_type`, `container`, `product.type`, `product.
        #   engine`, `product.version`, `location`, `labels`, `issues`, fields of
        #   availability_info, data_protection_info, 'resource_name', etc. The expression
        #   is a list of zero or more restrictions combined via logical operators `AND`
        #   and `OR`. When `AND` and `OR` are both used in the expression, parentheses
        #   must be appropriately used to group the combinations. Example: `location="us-
        #   east1"` Example: `container="projects/123" OR container="projects/456"`
        #   Example: `(container="projects/123" OR container="projects/456") AND location="
        #   us-east1"`
        # @param [String] group_by
        #   Optional. A field that statistics are grouped by. Valid values are any
        #   combination of the following: * container * product.type * product.engine *
        #   product.version * location * sub_resource_type * management_type * tag.key *
        #   tag.value * tag.source * tag.inherited * label.key * label.value * label.
        #   source * has_maintenance_schedule * has_deny_maintenance_schedules Comma
        #   separated list.
        # @param [String] order_by
        #   Optional. Valid values to order by are: * resource_groups_count *
        #   resources_count * and all fields supported by `group_by` The default order is
        #   ascending. Add "DESC" after the field name to indicate descending order. Add "
        #   ASC" after the field name to indicate ascending order. It supports ordering
        #   using multiple fields. For example: `order_by = "resource_groups_count"` sorts
        #   response in ascending order `order_by = "resource_groups_count DESC"` sorts
        #   response in descending order `order_by = "product.type, product.version DESC,
        #   location"` orders by type in ascending order, version in descending order and
        #   location in ascending order
        # @param [Fixnum] page_size
        #   Optional. If unspecified, at most 50 items will be returned. The maximum value
        #   is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `AggregateFleet` call.
        #   Provide this to retrieve the subsequent page. All other parameters should
        #   match the parameters in the call that provided the page token except for
        #   page_size which can be different.
        # @param [String] parent
        #   Required. Parent can be a project, a folder, or an organization. The search is
        #   limited to the resources within the `scope`. The allowed values are: *
        #   projects/`PROJECT_ID` (e.g., "projects/foo-bar") * projects/`PROJECT_NUMBER` (
        #   e.g., "projects/12345678") * folders/`FOLDER_NUMBER` (e.g., "folders/1234567")
        #   * organizations/`ORGANIZATION_NUMBER` (e.g., "organizations/123456")
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::AggregateFleetResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::AggregateFleetResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregate_fleet(baseline_date_day: nil, baseline_date_month: nil, baseline_date_year: nil, filter: nil, group_by: nil, order_by: nil, page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta:aggregateFleet', options)
          command.response_representation = Google::Apis::DatabasecenterV1beta::AggregateFleetResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::AggregateFleetResponse
          command.query['baselineDate.day'] = baseline_date_day unless baseline_date_day.nil?
          command.query['baselineDate.month'] = baseline_date_month unless baseline_date_month.nil?
          command.query['baselineDate.year'] = baseline_date_year unless baseline_date_year.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['groupBy'] = group_by unless group_by.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # AggregateIssueStats provides database resource issues statistics.
        # @param [Google::Apis::DatabasecenterV1beta::AggregateIssueStatsRequest] aggregate_issue_stats_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::AggregateIssueStatsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::AggregateIssueStatsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def aggregate_issue_stats(aggregate_issue_stats_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta:aggregateIssueStats', options)
          command.request_representation = Google::Apis::DatabasecenterV1beta::AggregateIssueStatsRequest::Representation
          command.request_object = aggregate_issue_stats_request_object
          command.response_representation = Google::Apis::DatabasecenterV1beta::AggregateIssueStatsResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::AggregateIssueStatsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # QueryDatabaseResourceGroups returns paginated results of database groups.
        # @param [Google::Apis::DatabasecenterV1beta::QueryDatabaseResourceGroupsRequest] query_database_resource_groups_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::QueryDatabaseResourceGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::QueryDatabaseResourceGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_database_resource_groups(query_database_resource_groups_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta:queryDatabaseResourceGroups', options)
          command.request_representation = Google::Apis::DatabasecenterV1beta::QueryDatabaseResourceGroupsRequest::Representation
          command.request_object = query_database_resource_groups_request_object
          command.response_representation = Google::Apis::DatabasecenterV1beta::QueryDatabaseResourceGroupsResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::QueryDatabaseResourceGroupsResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # QueryIssues provides a list of issues and recommendations that a user has
        # access to and that are within the requested scope.
        # @param [Google::Apis::DatabasecenterV1beta::QueryIssuesRequest] query_issues_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::QueryIssuesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::QueryIssuesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_issues(query_issues_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta:queryIssues', options)
          command.request_representation = Google::Apis::DatabasecenterV1beta::QueryIssuesRequest::Representation
          command.request_object = query_issues_request_object
          command.response_representation = Google::Apis::DatabasecenterV1beta::QueryIssuesResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::QueryIssuesResponse
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # QueryProducts provides a list of all possible products which can be used to
        # filter database resources.
        # @param [Fixnum] page_size
        #   Optional. If unspecified, at most 50 products will be returned. The maximum
        #   value is 1000; values above 1000 will be coerced to 1000.
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListLocations` call. Provide
        #   this to retrieve the subsequent page. All other parameters except page size
        #   should match the call that provided the page page token.
        # @param [String] parent
        #   Required. Parent can be a project, a folder, or an organization. The allowed
        #   values are: * projects/`PROJECT_ID`/locations/`LOCATION` (e.g.,"projects/foo-
        #   bar/locations/us-central1") * projects/`PROJECT_NUMBER`/locations/`LOCATION` (
        #   e.g.,"projects/12345678/locations/us-central1") * folders/`FOLDER_NUMBER`/
        #   locations/`LOCATION` (e.g.,"folders/1234567/locations/us-central1") *
        #   organizations/`ORGANIZATION_NUMBER`/locations/`LOCATION` (e.g.,"organizations/
        #   123456/locations/us-central1") * projects/`PROJECT_ID` (e.g., "projects/foo-
        #   bar") * projects/`PROJECT_NUMBER` (e.g., "projects/12345678") * folders/`
        #   FOLDER_NUMBER` (e.g., "folders/1234567") * organizations/`ORGANIZATION_NUMBER`
        #   (e.g., "organizations/123456")
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DatabasecenterV1beta::QueryProductsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DatabasecenterV1beta::QueryProductsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_products(page_size: nil, page_token: nil, parent: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta:queryProducts', options)
          command.response_representation = Google::Apis::DatabasecenterV1beta::QueryProductsResponse::Representation
          command.response_class = Google::Apis::DatabasecenterV1beta::QueryProductsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['parent'] = parent unless parent.nil?
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
