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
    module MonitoringV3
      # Cloud Monitoring API
      #
      # Manages your Cloud Monitoring data and configurations. Most projects must be
      #  associated with a Workspace, with a few exceptions as noted on the individual
      #  method pages. The table entries below are presented in alphabetical order, not
      #  in order of common use. For explanations of the concepts found in the table
      #  entries, read the Cloud Monitoring documentation.
      #
      # @example
      #    require 'google/apis/monitoring_v3'
      #
      #    Monitoring = Google::Apis::MonitoringV3 # Alias the module
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
          super('https://monitoring.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Creates a new alerting policy.
        # @param [String] name
        #   Required. The project in which to create the alerting policy. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER] Note that this field names the parent
        #   container in which the alerting policy will be written, not the name of the
        #   created policy. |name| must be a host project of a workspace, otherwise
        #   INVALID_ARGUMENT error will return. The alerting policy that is returned will
        #   have a name that contains a normalized representation of this name as a prefix
        #   but adds a suffix of the form /alertPolicies/[ALERT_POLICY_ID], identifying
        #   the policy in the container.
        # @param [Google::Apis::MonitoringV3::AlertPolicy] alert_policy_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::AlertPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::AlertPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_alert_policy(name, alert_policy_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}/alertPolicies', options)
          command.request_representation = Google::Apis::MonitoringV3::AlertPolicy::Representation
          command.request_object = alert_policy_object
          command.response_representation = Google::Apis::MonitoringV3::AlertPolicy::Representation
          command.response_class = Google::Apis::MonitoringV3::AlertPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an alerting policy.
        # @param [String] name
        #   Required. The alerting policy to delete. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] For more information,
        #   see AlertPolicy.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_alert_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single alerting policy.
        # @param [String] name
        #   Required. The alerting policy to retrieve. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::AlertPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::AlertPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_alert_policy(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::AlertPolicy::Representation
          command.response_class = Google::Apis::MonitoringV3::AlertPolicy
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the existing alerting policies for the workspace.
        # @param [String] name
        #   Required. The project whose alert policies are to be listed. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER] Note that this field names the parent
        #   container in which the alerting policies to be listed are stored. To retrieve
        #   a single alerting policy by name, use the GetAlertPolicy operation, instead.
        # @param [String] filter
        #   If provided, this field specifies the criteria that must be met by alert
        #   policies to be included in the response.For more details, see sorting and
        #   filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-filtering).
        # @param [String] order_by
        #   A comma-separated list of fields by which to sort the result. Supports the
        #   same set of field references as the filter field. Entries can be prefixed with
        #   a minus sign to sort by the field in descending order.For more details, see
        #   sorting and filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-
        #   filtering).
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response.
        # @param [String] page_token
        #   If this field is not empty then it must contain the nextPageToken value
        #   returned by a previous call to this method. Using this field causes the method
        #   to return more results from the previous method call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ListAlertPoliciesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListAlertPoliciesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_alert_policies(name, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/alertPolicies', options)
          command.response_representation = Google::Apis::MonitoringV3::ListAlertPoliciesResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListAlertPoliciesResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an alerting policy. You can either replace the entire policy with a
        # new one or replace only certain fields in the current alerting policy by
        # specifying the fields to be updated via updateMask. Returns the updated
        # alerting policy.
        # @param [String] name
        #   Required if the policy exists. The resource name for this policy. The format
        #   is: projects/[PROJECT_ID_OR_NUMBER]/alertPolicies/[ALERT_POLICY_ID] [
        #   ALERT_POLICY_ID] is assigned by Stackdriver Monitoring when the policy is
        #   created. When calling the alertPolicies.create method, do not include the name
        #   field in the alerting policy passed as part of the request.
        # @param [Google::Apis::MonitoringV3::AlertPolicy] alert_policy_object
        # @param [String] update_mask
        #   Optional. A list of alerting policy field names. If this field is not empty,
        #   each listed field in the existing alerting policy is set to the value of the
        #   corresponding field in the supplied policy (alert_policy), or to the field's
        #   default value if the field is not in the supplied alerting policy. Fields not
        #   listed retain their previous value.Examples of valid field masks include
        #   display_name, documentation, documentation.content, documentation.mime_type,
        #   user_labels, user_label.nameofkey, enabled, conditions, combiner, etc.If this
        #   field is empty, then the supplied alerting policy replaces the existing policy.
        #   It is the same as deleting the existing policy and adding the supplied policy,
        #   except for the following: The new policy will have the same [ALERT_POLICY_ID]
        #   as the former policy. This gives you continuity with the former policy in your
        #   notifications and incidents. Conditions in the new policy will keep their
        #   former [CONDITION_ID] if the supplied condition includes the name field with
        #   that [CONDITION_ID]. If the supplied condition omits the name field, then a
        #   new [CONDITION_ID] is created.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::AlertPolicy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::AlertPolicy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_alert_policy(name, alert_policy_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MonitoringV3::AlertPolicy::Representation
          command.request_object = alert_policy_object
          command.response_representation = Google::Apis::MonitoringV3::AlertPolicy::Representation
          command.response_class = Google::Apis::MonitoringV3::AlertPolicy
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Stackdriver Monitoring Agent only: Creates a new time series.This method is
        # only for use by the Stackdriver Monitoring Agent. Use projects.timeSeries.
        # create instead.
        # @param [String] name
        #   The project in which to create the time series. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]
        # @param [Google::Apis::MonitoringV3::CreateCollectdTimeSeriesRequest] create_collectd_time_series_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::CreateCollectdTimeSeriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::CreateCollectdTimeSeriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_collectd_time_series(name, create_collectd_time_series_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}/collectdTimeSeries', options)
          command.request_representation = Google::Apis::MonitoringV3::CreateCollectdTimeSeriesRequest::Representation
          command.request_object = create_collectd_time_series_request_object
          command.response_representation = Google::Apis::MonitoringV3::CreateCollectdTimeSeriesResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::CreateCollectdTimeSeriesResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new group.
        # @param [String] name
        #   Required. The project in which to create the group. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]
        # @param [Google::Apis::MonitoringV3::Group] group_object
        # @param [Boolean] validate_only
        #   If true, validate this request but do not create the group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_group(name, group_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}/groups', options)
          command.request_representation = Google::Apis::MonitoringV3::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::MonitoringV3::Group::Representation
          command.response_class = Google::Apis::MonitoringV3::Group
          command.params['name'] = name unless name.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an existing group.
        # @param [String] name
        #   Required. The group to delete. The format is: projects/[PROJECT_ID_OR_NUMBER]/
        #   groups/[GROUP_ID]
        # @param [Boolean] recursive
        #   If this field is true, then the request means to delete a group with all its
        #   descendants. Otherwise, the request means to delete a group only when it has
        #   no descendants. The default value is false.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_group(name, recursive: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['recursive'] = recursive unless recursive.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single group.
        # @param [String] name
        #   Required. The group to retrieve. The format is: projects/[PROJECT_ID_OR_NUMBER]
        #   /groups/[GROUP_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Group::Representation
          command.response_class = Google::Apis::MonitoringV3::Group
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the existing groups.
        # @param [String] name
        #   Required. The project whose groups are to be listed. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]
        # @param [String] ancestors_of_group
        #   A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        #   Returns groups that are ancestors of the specified group. The groups are
        #   returned in order, starting with the immediate parent and ending with the most
        #   distant ancestor. If the specified group has no immediate parent, the results
        #   are empty.
        # @param [String] children_of_group
        #   A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        #   Returns groups whose parent_name field contains the group name. If no groups
        #   have this parent, the results are empty.
        # @param [String] descendants_of_group
        #   A group name. The format is: projects/[PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        #   Returns the descendants of the specified group. This is a superset of the
        #   results returned by the children_of_group filter, and includes children-of-
        #   children, and so forth.
        # @param [Fixnum] page_size
        #   A positive number that is the maximum number of results to return.
        # @param [String] page_token
        #   If this field is not empty then it must contain the next_page_token value
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
        # @yieldparam result [Google::Apis::MonitoringV3::ListGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_groups(name, ancestors_of_group: nil, children_of_group: nil, descendants_of_group: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/groups', options)
          command.response_representation = Google::Apis::MonitoringV3::ListGroupsResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListGroupsResponse
          command.params['name'] = name unless name.nil?
          command.query['ancestorsOfGroup'] = ancestors_of_group unless ancestors_of_group.nil?
          command.query['childrenOfGroup'] = children_of_group unless children_of_group.nil?
          command.query['descendantsOfGroup'] = descendants_of_group unless descendants_of_group.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing group. You can change any group attributes except name.
        # @param [String] name
        #   Output only. The name of this group. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID] When creating a group, this field is
        #   ignored and a new name is created consisting of the project specified in the
        #   call to CreateGroup and a unique [GROUP_ID] that is generated automatically.
        # @param [Google::Apis::MonitoringV3::Group] group_object
        # @param [Boolean] validate_only
        #   If true, validate this request but do not update the existing group.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_group(name, group_object = nil, validate_only: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MonitoringV3::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::MonitoringV3::Group::Representation
          command.response_class = Google::Apis::MonitoringV3::Group
          command.params['name'] = name unless name.nil?
          command.query['validateOnly'] = validate_only unless validate_only.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the monitored resources that are members of a group.
        # @param [String] name
        #   Required. The group whose members are listed. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/groups/[GROUP_ID]
        # @param [String] filter
        #   An optional list filter (https://cloud.google.com/monitoring/api/learn_more#
        #   filtering) describing the members to be returned. The filter may reference the
        #   type, labels, and metadata of monitored resources that comprise the group. For
        #   example, to return only resources representing Compute Engine VM instances,
        #   use this filter: `resource.type = "gce_instance"`
        # @param [String] interval_end_time
        #   Required. The end of the time interval.
        # @param [String] interval_start_time
        #   Optional. The beginning of the time interval. The default value for the start
        #   time is the end time. The start time must not be later than the end time.
        # @param [Fixnum] page_size
        #   A positive number that is the maximum number of results to return.
        # @param [String] page_token
        #   If this field is not empty then it must contain the next_page_token value
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
        # @yieldparam result [Google::Apis::MonitoringV3::ListGroupMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListGroupMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_group_members(name, filter: nil, interval_end_time: nil, interval_start_time: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/members', options)
          command.response_representation = Google::Apis::MonitoringV3::ListGroupMembersResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListGroupMembersResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['interval.endTime'] = interval_end_time unless interval_end_time.nil?
          command.query['interval.startTime'] = interval_start_time unless interval_start_time.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new metric descriptor. User-created metric descriptors define custom
        # metrics (https://cloud.google.com/monitoring/custom-metrics).
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER]
        # @param [Google::Apis::MonitoringV3::MetricDescriptor] metric_descriptor_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::MetricDescriptor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::MetricDescriptor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_metric_descriptor(name, metric_descriptor_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}/metricDescriptors', options)
          command.request_representation = Google::Apis::MonitoringV3::MetricDescriptor::Representation
          command.request_object = metric_descriptor_object
          command.response_representation = Google::Apis::MonitoringV3::MetricDescriptor::Representation
          command.response_class = Google::Apis::MonitoringV3::MetricDescriptor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a metric descriptor. Only user-created custom metrics (https://cloud.
        # google.com/monitoring/custom-metrics) can be deleted.
        # @param [String] name
        #   Required. The metric descriptor on which to execute the request. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/metricDescriptors/[METRIC_ID] An example of [
        #   METRIC_ID] is: "custom.googleapis.com/my_test_metric".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_metric_descriptor(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single metric descriptor. This method does not require a Workspace.
        # @param [String] name
        #   Required. The metric descriptor on which to execute the request. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/metricDescriptors/[METRIC_ID] An example
        #   value of [METRIC_ID] is "compute.googleapis.com/instance/disk/read_bytes_count"
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
        # @yieldparam result [Google::Apis::MonitoringV3::MetricDescriptor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::MetricDescriptor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_metric_descriptor(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::MetricDescriptor::Representation
          command.response_class = Google::Apis::MonitoringV3::MetricDescriptor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists metric descriptors that match a filter. This method does not require a
        # Workspace.
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER]
        # @param [String] filter
        #   If this field is empty, all custom and system-defined metric descriptors are
        #   returned. Otherwise, the filter (https://cloud.google.com/monitoring/api/v3/
        #   filters) specifies which metric descriptors are to be returned. For example,
        #   the following filter matches all custom metrics (https://cloud.google.com/
        #   monitoring/custom-metrics): metric.type = starts_with("custom.googleapis.com/")
        #   
        # @param [Fixnum] page_size
        #   A positive number that is the maximum number of results to return.
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
        # @yieldparam result [Google::Apis::MonitoringV3::ListMetricDescriptorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListMetricDescriptorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_metric_descriptors(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/metricDescriptors', options)
          command.response_representation = Google::Apis::MonitoringV3::ListMetricDescriptorsResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListMetricDescriptorsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single monitored resource descriptor. This method does not require a
        # Workspace.
        # @param [String] name
        #   Required. The monitored resource descriptor to get. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/monitoredResourceDescriptors/[RESOURCE_TYPE] The [
        #   RESOURCE_TYPE] is a predefined type, such as cloudsql_database.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::MonitoredResourceDescriptor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::MonitoredResourceDescriptor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_monitored_resource_descriptor(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::MonitoredResourceDescriptor::Representation
          command.response_class = Google::Apis::MonitoringV3::MonitoredResourceDescriptor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists monitored resource descriptors that match a filter. This method does not
        # require a Workspace.
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER]
        # @param [String] filter
        #   An optional filter (https://cloud.google.com/monitoring/api/v3/filters)
        #   describing the descriptors to be returned. The filter can reference the
        #   descriptor's type and labels. For example, the following filter returns only
        #   Google Compute Engine descriptors that have an id label: resource.type =
        #   starts_with("gce_") AND resource.label:id
        # @param [Fixnum] page_size
        #   A positive number that is the maximum number of results to return.
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
        # @yieldparam result [Google::Apis::MonitoringV3::ListMonitoredResourceDescriptorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListMonitoredResourceDescriptorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_monitored_resource_descriptors(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/monitoredResourceDescriptors', options)
          command.response_representation = Google::Apis::MonitoringV3::ListMonitoredResourceDescriptorsResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListMonitoredResourceDescriptorsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single channel descriptor. The descriptor indicates which fields are
        # expected / permitted for a notification channel of the given type.
        # @param [String] name
        #   Required. The channel type for which to execute the request. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/notificationChannelDescriptors/[CHANNEL_TYPE]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::NotificationChannelDescriptor] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::NotificationChannelDescriptor]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_notification_channel_descriptor(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::NotificationChannelDescriptor::Representation
          command.response_class = Google::Apis::MonitoringV3::NotificationChannelDescriptor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the descriptors for supported channel types. The use of descriptors
        # makes it possible for new channel types to be dynamically added.
        # @param [String] name
        #   Required. The REST resource name of the parent from which to retrieve the
        #   notification channel descriptors. The expected syntax is: projects/[
        #   PROJECT_ID_OR_NUMBER] Note that this names the parent container in which to
        #   look for the descriptors; to retrieve a single descriptor by name, use the
        #   GetNotificationChannelDescriptor operation, instead.
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. If not set to a
        #   positive number, a reasonable value will be chosen by the service.
        # @param [String] page_token
        #   If non-empty, page_token must contain a value returned as the next_page_token
        #   in a previous response to request the next set of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ListNotificationChannelDescriptorsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListNotificationChannelDescriptorsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_notification_channel_descriptors(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/notificationChannelDescriptors', options)
          command.response_representation = Google::Apis::MonitoringV3::ListNotificationChannelDescriptorsResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListNotificationChannelDescriptorsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new notification channel, representing a single notification
        # endpoint such as an email address, SMS number, or PagerDuty service.
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER] This names the container into which the channel will be
        #   written, this does not name the newly created channel. The resulting channel's
        #   name will have a normalized version of this field as a prefix, but will add /
        #   notificationChannels/[CHANNEL_ID] to identify the channel.
        # @param [Google::Apis::MonitoringV3::NotificationChannel] notification_channel_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::NotificationChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::NotificationChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_notification_channel(name, notification_channel_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}/notificationChannels', options)
          command.request_representation = Google::Apis::MonitoringV3::NotificationChannel::Representation
          command.request_object = notification_channel_object
          command.response_representation = Google::Apis::MonitoringV3::NotificationChannel::Representation
          command.response_class = Google::Apis::MonitoringV3::NotificationChannel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a notification channel.
        # @param [String] name
        #   Required. The channel for which to execute the request. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
        # @param [Boolean] force
        #   If true, the notification channel will be deleted regardless of its use in
        #   alert policies (the policies will be updated to remove the channel). If false,
        #   channels that are still referenced by an existing alerting policy will fail to
        #   be deleted in a delete operation.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_notification_channel(name, force: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['force'] = force unless force.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single notification channel. The channel includes the relevant
        # configuration details with which the channel was created. However, the
        # response may truncate or omit passwords, API keys, or other private key matter
        # and thus the response may not be 100% identical to the information that was
        # supplied in the call to the create method.
        # @param [String] name
        #   Required. The channel for which to execute the request. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::NotificationChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::NotificationChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_notification_channel(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::NotificationChannel::Representation
          command.response_class = Google::Apis::MonitoringV3::NotificationChannel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Requests a verification code for an already verified channel that can then be
        # used in a call to VerifyNotificationChannel() on a different channel with an
        # equivalent identity in the same or in a different project. This makes it
        # possible to copy a channel between projects without requiring manual
        # reverification of the channel. If the channel is not in the verified state,
        # this method will fail (in other words, this may only be used if the
        # SendNotificationChannelVerificationCode and VerifyNotificationChannel paths
        # have already been used to put the given channel into the verified state).There
        # is no guarantee that the verification codes returned by this method will be of
        # a similar structure or form as the ones that are delivered to the channel via
        # SendNotificationChannelVerificationCode; while VerifyNotificationChannel()
        # will recognize both the codes delivered via
        # SendNotificationChannelVerificationCode() and returned from
        # GetNotificationChannelVerificationCode(), it is typically the case that the
        # verification codes delivered via SendNotificationChannelVerificationCode()
        # will be shorter and also have a shorter expiration (e.g. codes such as "G-
        # 123456") whereas GetVerificationCode() will typically return a much longer,
        # websafe base 64 encoded string that has a longer expiration time.
        # @param [String] name
        #   Required. The notification channel for which a verification code is to be
        #   generated and retrieved. This must name a channel that is already verified; if
        #   the specified channel is not verified, the request will fail.
        # @param [Google::Apis::MonitoringV3::GetNotificationChannelVerificationCodeRequest] get_notification_channel_verification_code_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::GetNotificationChannelVerificationCodeResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::GetNotificationChannelVerificationCodeResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_notification_channel_verification_code(name, get_notification_channel_verification_code_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:getVerificationCode', options)
          command.request_representation = Google::Apis::MonitoringV3::GetNotificationChannelVerificationCodeRequest::Representation
          command.request_object = get_notification_channel_verification_code_request_object
          command.response_representation = Google::Apis::MonitoringV3::GetNotificationChannelVerificationCodeResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::GetNotificationChannelVerificationCodeResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the notification channels that have been created for the project.
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER] This names the container in which to look for the
        #   notification channels; it does not name a specific channel. To query a
        #   specific channel by REST resource name, use the GetNotificationChannel
        #   operation.
        # @param [String] filter
        #   If provided, this field specifies the criteria that must be met by
        #   notification channels to be included in the response.For more details, see
        #   sorting and filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-
        #   filtering).
        # @param [String] order_by
        #   A comma-separated list of fields by which to sort the result. Supports the
        #   same set of fields as in filter. Entries can be prefixed with a minus sign to
        #   sort in descending rather than ascending order.For more details, see sorting
        #   and filtering (https://cloud.google.com/monitoring/api/v3/sorting-and-
        #   filtering).
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. If not set to a
        #   positive number, a reasonable value will be chosen by the service.
        # @param [String] page_token
        #   If non-empty, page_token must contain a value returned as the next_page_token
        #   in a previous response to request the next set of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ListNotificationChannelsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListNotificationChannelsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_notification_channels(name, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/notificationChannels', options)
          command.response_representation = Google::Apis::MonitoringV3::ListNotificationChannelsResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListNotificationChannelsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a notification channel. Fields not specified in the field mask remain
        # unchanged.
        # @param [String] name
        #   The full REST resource name for this channel. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/notificationChannels/[CHANNEL_ID] The [CHANNEL_ID] is
        #   automatically assigned by the server on creation.
        # @param [Google::Apis::MonitoringV3::NotificationChannel] notification_channel_object
        # @param [String] update_mask
        #   The fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::NotificationChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::NotificationChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_notification_channel(name, notification_channel_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MonitoringV3::NotificationChannel::Representation
          command.request_object = notification_channel_object
          command.response_representation = Google::Apis::MonitoringV3::NotificationChannel::Representation
          command.response_class = Google::Apis::MonitoringV3::NotificationChannel
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Causes a verification code to be delivered to the channel. The code can then
        # be supplied in VerifyNotificationChannel to verify the channel.
        # @param [String] name
        #   Required. The notification channel to which to send a verification code.
        # @param [Google::Apis::MonitoringV3::SendNotificationChannelVerificationCodeRequest] send_notification_channel_verification_code_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def send_project_notification_channel_verification_code(name, send_notification_channel_verification_code_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:sendVerificationCode', options)
          command.request_representation = Google::Apis::MonitoringV3::SendNotificationChannelVerificationCodeRequest::Representation
          command.request_object = send_notification_channel_verification_code_request_object
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Verifies a NotificationChannel by proving receipt of the code delivered to the
        # channel as a result of calling SendNotificationChannelVerificationCode.
        # @param [String] name
        #   Required. The notification channel to verify.
        # @param [Google::Apis::MonitoringV3::VerifyNotificationChannelRequest] verify_notification_channel_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::NotificationChannel] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::NotificationChannel]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def verify_notification_channel(name, verify_notification_channel_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}:verify', options)
          command.request_representation = Google::Apis::MonitoringV3::VerifyNotificationChannelRequest::Representation
          command.request_object = verify_notification_channel_request_object
          command.response_representation = Google::Apis::MonitoringV3::NotificationChannel::Representation
          command.response_class = Google::Apis::MonitoringV3::NotificationChannel
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates or adds data to one or more time series. The response is empty if all
        # time series in the request were written. If any time series could not be
        # written, a corresponding failure message is included in the error response.
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER]
        # @param [Google::Apis::MonitoringV3::CreateTimeSeriesRequest] create_time_series_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_time_series(name, create_time_series_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}/timeSeries', options)
          command.request_representation = Google::Apis::MonitoringV3::CreateTimeSeriesRequest::Representation
          command.request_object = create_time_series_request_object
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists time series that match a filter. This method does not require a
        # Workspace.
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER]
        # @param [String] aggregation_alignment_period
        #   The alignment_period specifies a time interval, in seconds, that is used to
        #   divide the data in all the time series into consistent blocks of time. This
        #   will be done before the per-series aligner can be applied to the data.The
        #   value must be at least 60 seconds. If a per-series aligner other than
        #   ALIGN_NONE is specified, this field is required or an error is returned. If no
        #   per-series aligner is specified, or the aligner ALIGN_NONE is specified, then
        #   this field is ignored.The maximum value of the alignment_period is 104 weeks (
        #   2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.
        # @param [String] aggregation_cross_series_reducer
        #   The reduction operation to be used to combine time series into a single time
        #   series, where the value of each data point in the resulting series is a
        #   function of all the already aligned values in the input time series.Not all
        #   reducer operations can be applied to all time series. The valid choices depend
        #   on the metric_kind and the value_type of the original time series. Reduction
        #   can yield a time series with a different metric_kind or value_type than the
        #   input time series.Time series data must first be aligned (see
        #   per_series_aligner) in order to perform cross-time series reduction. If
        #   cross_series_reducer is specified, then per_series_aligner must be specified,
        #   and must not be ALIGN_NONE. An alignment_period must also be specified;
        #   otherwise, an error is returned.
        # @param [Array<String>, String] aggregation_group_by_fields
        #   The set of fields to preserve when cross_series_reducer is specified. The
        #   group_by_fields determine how the time series are partitioned into subsets
        #   prior to applying the aggregation operation. Each subset contains time series
        #   that have the same value for each of the grouping fields. Each individual time
        #   series is a member of exactly one subset. The cross_series_reducer is applied
        #   to each subset of time series. It is not possible to reduce across different
        #   resource types, so this field implicitly contains resource.type. Fields not
        #   specified in group_by_fields are aggregated away. If group_by_fields is not
        #   specified and all the time series have the same resource type, then the time
        #   series are aggregated into a single output time series. If
        #   cross_series_reducer is not defined, this field is ignored.
        # @param [String] aggregation_per_series_aligner
        #   An Aligner describes how to bring the data points in a single time series into
        #   temporal alignment. Except for ALIGN_NONE, all alignments cause all the data
        #   points in an alignment_period to be mathematically grouped together, resulting
        #   in a single data point for each alignment_period with end timestamp at the end
        #   of the period.Not all alignment operations may be applied to all time series.
        #   The valid choices depend on the metric_kind and value_type of the original
        #   time series. Alignment can change the metric_kind or the value_type of the
        #   time series.Time series data must be aligned in order to perform cross-time
        #   series reduction. If cross_series_reducer is specified, then
        #   per_series_aligner must be specified and not equal to ALIGN_NONE and
        #   alignment_period must be specified; otherwise, an error is returned.
        # @param [String] filter
        #   Required. A monitoring filter (https://cloud.google.com/monitoring/api/v3/
        #   filters) that specifies which time series should be returned. The filter must
        #   specify a single metric type, and can additionally specify metric labels and
        #   other information. For example: metric.type = "compute.googleapis.com/instance/
        #   cpu/usage_time" AND metric.labels.instance_name = "my-instance-name"
        # @param [String] interval_end_time
        #   Required. The end of the time interval.
        # @param [String] interval_start_time
        #   Optional. The beginning of the time interval. The default value for the start
        #   time is the end time. The start time must not be later than the end time.
        # @param [String] order_by
        #   Unsupported: must be left blank. The points in each time series are currently
        #   returned in reverse time order (most recent to oldest).
        # @param [Fixnum] page_size
        #   A positive number that is the maximum number of results to return. If
        #   page_size is empty or more than 100,000 results, the effective page_size is
        #   100,000 results. If view is set to FULL, this is the maximum number of Points
        #   returned. If view is set to HEADERS, this is the maximum number of TimeSeries
        #   returned.
        # @param [String] page_token
        #   If this field is not empty then it must contain the nextPageToken value
        #   returned by a previous call to this method. Using this field causes the method
        #   to return additional results from the previous method call.
        # @param [String] secondary_aggregation_alignment_period
        #   The alignment_period specifies a time interval, in seconds, that is used to
        #   divide the data in all the time series into consistent blocks of time. This
        #   will be done before the per-series aligner can be applied to the data.The
        #   value must be at least 60 seconds. If a per-series aligner other than
        #   ALIGN_NONE is specified, this field is required or an error is returned. If no
        #   per-series aligner is specified, or the aligner ALIGN_NONE is specified, then
        #   this field is ignored.The maximum value of the alignment_period is 104 weeks (
        #   2 years) for charts, and 90,000 seconds (25 hours) for alerting policies.
        # @param [String] secondary_aggregation_cross_series_reducer
        #   The reduction operation to be used to combine time series into a single time
        #   series, where the value of each data point in the resulting series is a
        #   function of all the already aligned values in the input time series.Not all
        #   reducer operations can be applied to all time series. The valid choices depend
        #   on the metric_kind and the value_type of the original time series. Reduction
        #   can yield a time series with a different metric_kind or value_type than the
        #   input time series.Time series data must first be aligned (see
        #   per_series_aligner) in order to perform cross-time series reduction. If
        #   cross_series_reducer is specified, then per_series_aligner must be specified,
        #   and must not be ALIGN_NONE. An alignment_period must also be specified;
        #   otherwise, an error is returned.
        # @param [Array<String>, String] secondary_aggregation_group_by_fields
        #   The set of fields to preserve when cross_series_reducer is specified. The
        #   group_by_fields determine how the time series are partitioned into subsets
        #   prior to applying the aggregation operation. Each subset contains time series
        #   that have the same value for each of the grouping fields. Each individual time
        #   series is a member of exactly one subset. The cross_series_reducer is applied
        #   to each subset of time series. It is not possible to reduce across different
        #   resource types, so this field implicitly contains resource.type. Fields not
        #   specified in group_by_fields are aggregated away. If group_by_fields is not
        #   specified and all the time series have the same resource type, then the time
        #   series are aggregated into a single output time series. If
        #   cross_series_reducer is not defined, this field is ignored.
        # @param [String] secondary_aggregation_per_series_aligner
        #   An Aligner describes how to bring the data points in a single time series into
        #   temporal alignment. Except for ALIGN_NONE, all alignments cause all the data
        #   points in an alignment_period to be mathematically grouped together, resulting
        #   in a single data point for each alignment_period with end timestamp at the end
        #   of the period.Not all alignment operations may be applied to all time series.
        #   The valid choices depend on the metric_kind and value_type of the original
        #   time series. Alignment can change the metric_kind or the value_type of the
        #   time series.Time series data must be aligned in order to perform cross-time
        #   series reduction. If cross_series_reducer is specified, then
        #   per_series_aligner must be specified and not equal to ALIGN_NONE and
        #   alignment_period must be specified; otherwise, an error is returned.
        # @param [String] view
        #   Required. Specifies which information is returned about the time series.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ListTimeSeriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListTimeSeriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_time_series(name, aggregation_alignment_period: nil, aggregation_cross_series_reducer: nil, aggregation_group_by_fields: nil, aggregation_per_series_aligner: nil, filter: nil, interval_end_time: nil, interval_start_time: nil, order_by: nil, page_size: nil, page_token: nil, secondary_aggregation_alignment_period: nil, secondary_aggregation_cross_series_reducer: nil, secondary_aggregation_group_by_fields: nil, secondary_aggregation_per_series_aligner: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}/timeSeries', options)
          command.response_representation = Google::Apis::MonitoringV3::ListTimeSeriesResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListTimeSeriesResponse
          command.params['name'] = name unless name.nil?
          command.query['aggregation.alignmentPeriod'] = aggregation_alignment_period unless aggregation_alignment_period.nil?
          command.query['aggregation.crossSeriesReducer'] = aggregation_cross_series_reducer unless aggregation_cross_series_reducer.nil?
          command.query['aggregation.groupByFields'] = aggregation_group_by_fields unless aggregation_group_by_fields.nil?
          command.query['aggregation.perSeriesAligner'] = aggregation_per_series_aligner unless aggregation_per_series_aligner.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['interval.endTime'] = interval_end_time unless interval_end_time.nil?
          command.query['interval.startTime'] = interval_start_time unless interval_start_time.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['secondaryAggregation.alignmentPeriod'] = secondary_aggregation_alignment_period unless secondary_aggregation_alignment_period.nil?
          command.query['secondaryAggregation.crossSeriesReducer'] = secondary_aggregation_cross_series_reducer unless secondary_aggregation_cross_series_reducer.nil?
          command.query['secondaryAggregation.groupByFields'] = secondary_aggregation_group_by_fields unless secondary_aggregation_group_by_fields.nil?
          command.query['secondaryAggregation.perSeriesAligner'] = secondary_aggregation_per_series_aligner unless secondary_aggregation_per_series_aligner.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Queries time series using Monitoring Query Language. This method does not
        # require a Workspace.
        # @param [String] name
        #   Required. The project on which to execute the request. The format is: projects/
        #   [PROJECT_ID_OR_NUMBER]
        # @param [Google::Apis::MonitoringV3::QueryTimeSeriesRequest] query_time_series_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::QueryTimeSeriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::QueryTimeSeriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def query_time_series(name, query_time_series_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+name}/timeSeries:query', options)
          command.request_representation = Google::Apis::MonitoringV3::QueryTimeSeriesRequest::Representation
          command.request_object = query_time_series_request_object
          command.response_representation = Google::Apis::MonitoringV3::QueryTimeSeriesResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::QueryTimeSeriesResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Uptime check configuration.
        # @param [String] parent
        #   Required. The project in which to create the Uptime check. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]
        # @param [Google::Apis::MonitoringV3::UptimeCheckConfig] uptime_check_config_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::UptimeCheckConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::UptimeCheckConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_uptime_check_config(parent, uptime_check_config_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/uptimeCheckConfigs', options)
          command.request_representation = Google::Apis::MonitoringV3::UptimeCheckConfig::Representation
          command.request_object = uptime_check_config_object
          command.response_representation = Google::Apis::MonitoringV3::UptimeCheckConfig::Representation
          command.response_class = Google::Apis::MonitoringV3::UptimeCheckConfig
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an Uptime check configuration. Note that this method will fail if the
        # Uptime check configuration is referenced by an alert policy or other dependent
        # configs that would be rendered invalid by the deletion.
        # @param [String] name
        #   Required. The Uptime check configuration to delete. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_uptime_check_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single Uptime check configuration.
        # @param [String] name
        #   Required. The Uptime check configuration to retrieve. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::UptimeCheckConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::UptimeCheckConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_uptime_check_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::UptimeCheckConfig::Representation
          command.response_class = Google::Apis::MonitoringV3::UptimeCheckConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the existing valid Uptime check configurations for the project (leaving
        # out any invalid configurations).
        # @param [String] parent
        #   Required. The project whose Uptime check configurations are listed. The format
        #   is: projects/[PROJECT_ID_OR_NUMBER]
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. The server may
        #   further constrain the maximum number of results returned in a single page. If
        #   the page_size is <=0, the server will decide the number of results to be
        #   returned.
        # @param [String] page_token
        #   If this field is not empty then it must contain the nextPageToken value
        #   returned by a previous call to this method. Using this field causes the method
        #   to return more results from the previous method call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ListUptimeCheckConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListUptimeCheckConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_uptime_check_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/uptimeCheckConfigs', options)
          command.response_representation = Google::Apis::MonitoringV3::ListUptimeCheckConfigsResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListUptimeCheckConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an Uptime check configuration. You can either replace the entire
        # configuration with a new one or replace only certain fields in the current
        # configuration by specifying the fields to be updated via updateMask. Returns
        # the updated configuration.
        # @param [String] name
        #   A unique resource name for this Uptime check configuration. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [
        #   PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime
        #   check.This field should be omitted when creating the Uptime check
        #   configuration; on create, the resource name is assigned by the server and
        #   included in the response.
        # @param [Google::Apis::MonitoringV3::UptimeCheckConfig] uptime_check_config_object
        # @param [String] update_mask
        #   Optional. If present, only the listed fields in the current Uptime check
        #   configuration are updated with values from the new configuration. If this
        #   field is empty, then the current configuration is completely replaced with the
        #   new configuration.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::UptimeCheckConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::UptimeCheckConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_uptime_check_config(name, uptime_check_config_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MonitoringV3::UptimeCheckConfig::Representation
          command.request_object = uptime_check_config_object
          command.response_representation = Google::Apis::MonitoringV3::UptimeCheckConfig::Representation
          command.response_class = Google::Apis::MonitoringV3::UptimeCheckConfig
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a Service.
        # @param [String] parent
        #   Required. Resource name of the parent workspace. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]
        # @param [Google::Apis::MonitoringV3::Service] service_object
        # @param [String] service_id
        #   Optional. The Service id to use for this Service. If omitted, an id will be
        #   generated instead. Must match the pattern [a-z0-9\-]+
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service(parent, service_object = nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/services', options)
          command.request_representation = Google::Apis::MonitoringV3::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::MonitoringV3::Service::Representation
          command.response_class = Google::Apis::MonitoringV3::Service
          command.params['parent'] = parent unless parent.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Soft delete this Service.
        # @param [String] name
        #   Required. Resource name of the Service to delete. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the named Service.
        # @param [String] name
        #   Required. Resource name of the Service. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Service::Representation
          command.response_class = Google::Apis::MonitoringV3::Service
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List Services for this workspace.
        # @param [String] parent
        #   Required. Resource name of the parent containing the listed services, either a
        #   project or a Monitoring Workspace. The formats are: projects/[
        #   PROJECT_ID_OR_NUMBER] workspaces/[HOST_PROJECT_ID_OR_NUMBER]
        # @param [String] filter
        #   A filter specifying what Services to return. The filter currently supports the
        #   following fields: - `identifier_case` - `app_engine.module_id` - `
        #   cloud_endpoints.service` (reserved for future use) - `mesh_istio.mesh_uid` - `
        #   mesh_istio.service_namespace` - `mesh_istio.service_name` - `cluster_istio.
        #   location` (deprecated) - `cluster_istio.cluster_name` (deprecated) - `
        #   cluster_istio.service_namespace` (deprecated) - `cluster_istio.service_name` (
        #   deprecated) identifier_case refers to which option in the identifier oneof is
        #   populated. For example, the filter identifier_case = "CUSTOM" would match all
        #   services with a value for the custom field. Valid options are "CUSTOM", "
        #   APP_ENGINE", "MESH_ISTIO", plus "CLUSTER_ISTIO" (deprecated) and "
        #   CLOUD_ENDPOINTS" (reserved for future use).
        # @param [Fixnum] page_size
        #   A non-negative number that is the maximum number of results to return. When 0,
        #   use default page size.
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
        # @yieldparam result [Google::Apis::MonitoringV3::ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_services(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/services', options)
          command.response_representation = Google::Apis::MonitoringV3::ListServicesResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update this Service.
        # @param [String] name
        #   Resource name for this Service. The format is: projects/[PROJECT_ID_OR_NUMBER]/
        #   services/[SERVICE_ID]
        # @param [Google::Apis::MonitoringV3::Service] service_object
        # @param [String] update_mask
        #   A set of field paths defining which fields to use for the update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_service(name, service_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MonitoringV3::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::MonitoringV3::Service::Representation
          command.response_class = Google::Apis::MonitoringV3::Service
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a ServiceLevelObjective for the given Service.
        # @param [String] parent
        #   Required. Resource name of the parent Service. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]
        # @param [Google::Apis::MonitoringV3::ServiceLevelObjective] service_level_objective_object
        # @param [String] service_level_objective_id
        #   Optional. The ServiceLevelObjective id to use for this ServiceLevelObjective.
        #   If omitted, an id will be generated instead. Must match the pattern [a-z0-9\-]+
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ServiceLevelObjective] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ServiceLevelObjective]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_service_service_level_objective(parent, service_level_objective_object = nil, service_level_objective_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v3/{+parent}/serviceLevelObjectives', options)
          command.request_representation = Google::Apis::MonitoringV3::ServiceLevelObjective::Representation
          command.request_object = service_level_objective_object
          command.response_representation = Google::Apis::MonitoringV3::ServiceLevelObjective::Representation
          command.response_class = Google::Apis::MonitoringV3::ServiceLevelObjective
          command.params['parent'] = parent unless parent.nil?
          command.query['serviceLevelObjectiveId'] = service_level_objective_id unless service_level_objective_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the given ServiceLevelObjective.
        # @param [String] name
        #   Required. Resource name of the ServiceLevelObjective to delete. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[
        #   SLO_NAME]
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_service_service_level_objective(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a ServiceLevelObjective by name.
        # @param [String] name
        #   Required. Resource name of the ServiceLevelObjective to get. The format is:
        #   projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[
        #   SLO_NAME]
        # @param [String] view
        #   View of the ServiceLevelObjective to return. If DEFAULT, return the
        #   ServiceLevelObjective as originally defined. If EXPLICIT and the
        #   ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli
        #   with a RequestBasedSli spelling out how the SLI is computed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ServiceLevelObjective] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ServiceLevelObjective]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_service_level_objective(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::ServiceLevelObjective::Representation
          command.response_class = Google::Apis::MonitoringV3::ServiceLevelObjective
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the ServiceLevelObjectives for the given Service.
        # @param [String] parent
        #   Required. Resource name of the parent containing the listed SLOs, either a
        #   project or a Monitoring Workspace. The formats are: projects/[
        #   PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID] workspaces/[
        #   HOST_PROJECT_ID_OR_NUMBER]/services/-
        # @param [String] filter
        #   A filter specifying what ServiceLevelObjectives to return.
        # @param [Fixnum] page_size
        #   A non-negative number that is the maximum number of results to return. When 0,
        #   use default page size.
        # @param [String] page_token
        #   If this field is not empty then it must contain the nextPageToken value
        #   returned by a previous call to this method. Using this field causes the method
        #   to return additional results from the previous method call.
        # @param [String] view
        #   View of the ServiceLevelObjectives to return. If DEFAULT, return each
        #   ServiceLevelObjective as originally defined. If EXPLICIT and the
        #   ServiceLevelObjective is defined in terms of a BasicSli, replace the BasicSli
        #   with a RequestBasedSli spelling out how the SLI is computed.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ListServiceLevelObjectivesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListServiceLevelObjectivesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_service_service_level_objectives(parent, filter: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/{+parent}/serviceLevelObjectives', options)
          command.response_representation = Google::Apis::MonitoringV3::ListServiceLevelObjectivesResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListServiceLevelObjectivesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update the given ServiceLevelObjective.
        # @param [String] name
        #   Resource name for this ServiceLevelObjective. The format is: projects/[
        #   PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
        # @param [Google::Apis::MonitoringV3::ServiceLevelObjective] service_level_objective_object
        # @param [String] update_mask
        #   A set of field paths defining which fields to use for the update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ServiceLevelObjective] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ServiceLevelObjective]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_service_service_level_objective(name, service_level_objective_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v3/{+name}', options)
          command.request_representation = Google::Apis::MonitoringV3::ServiceLevelObjective::Representation
          command.request_object = service_level_objective_object
          command.response_representation = Google::Apis::MonitoringV3::ServiceLevelObjective::Representation
          command.response_class = Google::Apis::MonitoringV3::ServiceLevelObjective
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the list of IP addresses that checkers run from
        # @param [Fixnum] page_size
        #   The maximum number of results to return in a single response. The server may
        #   further constrain the maximum number of results returned in a single page. If
        #   the page_size is <=0, the server will decide the number of results to be
        #   returned. NOTE: this field is not yet implemented
        # @param [String] page_token
        #   If this field is not empty then it must contain the nextPageToken value
        #   returned by a previous call to this method. Using this field causes the method
        #   to return more results from the previous method call. NOTE: this field is not
        #   yet implemented
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::MonitoringV3::ListUptimeCheckIpsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListUptimeCheckIpsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_uptime_check_ips(page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v3/uptimeCheckIps', options)
          command.response_representation = Google::Apis::MonitoringV3::ListUptimeCheckIpsResponse::Representation
          command.response_class = Google::Apis::MonitoringV3::ListUptimeCheckIpsResponse
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
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
