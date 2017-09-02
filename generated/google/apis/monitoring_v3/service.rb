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
      # Stackdriver Monitoring API
      #
      # Manages your Stackdriver Monitoring data and configurations. Most projects
      #  must be associated with a Stackdriver account, with a few exceptions as noted
      #  on the individual method pages.
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
        
        # Stackdriver Monitoring Agent only: Creates a new time series.<aside class="
        # caution">This method is only for use by the Stackdriver Monitoring Agent. Use
        # projects.timeSeries.create instead.</aside>
        # @param [String] name
        #   The project in which to create the time series. The format is "projects/
        #   PROJECT_ID_OR_NUMBER".
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
          command =  make_simple_command(:post, 'v3/{+name}/collectdTimeSeries', options)
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
        #   The project in which to create the group. The format is "projects/`
        #   project_id_or_number`".
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
          command =  make_simple_command(:post, 'v3/{+name}/groups', options)
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
        #   The group to delete. The format is "projects/`project_id_or_number`/groups/`
        #   group_id`".
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
        def delete_project_group(name, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single group.
        # @param [String] name
        #   The group to retrieve. The format is "projects/`project_id_or_number`/groups/`
        #   group_id`".
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
          command =  make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Group::Representation
          command.response_class = Google::Apis::MonitoringV3::Group
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the existing groups.
        # @param [String] name
        #   The project whose groups are to be listed. The format is "projects/`
        #   project_id_or_number`".
        # @param [String] ancestors_of_group
        #   A group name: "projects/`project_id_or_number`/groups/`group_id`". Returns
        #   groups that are ancestors of the specified group. The groups are returned in
        #   order, starting with the immediate parent and ending with the most distant
        #   ancestor. If the specified group has no immediate parent, the results are
        #   empty.
        # @param [String] children_of_group
        #   A group name: "projects/`project_id_or_number`/groups/`group_id`". Returns
        #   groups whose parentName field contains the group name. If no groups have this
        #   parent, the results are empty.
        # @param [String] descendants_of_group
        #   A group name: "projects/`project_id_or_number`/groups/`group_id`". Returns the
        #   descendants of the specified group. This is a superset of the results returned
        #   by the childrenOfGroup filter, and includes children-of-children, and so forth.
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
        # @yieldparam result [Google::Apis::MonitoringV3::ListGroupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListGroupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_groups(name, ancestors_of_group: nil, children_of_group: nil, descendants_of_group: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}/groups', options)
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
        #   Output only. The name of this group. The format is "projects/`
        #   project_id_or_number`/groups/`group_id`". When creating a group, this field is
        #   ignored and a new name is created consisting of the project specified in the
        #   call to CreateGroup and a unique `group_id` that is generated automatically.
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
          command =  make_simple_command(:put, 'v3/{+name}', options)
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
        #   The group whose members are listed. The format is "projects/`
        #   project_id_or_number`/groups/`group_id`".
        # @param [String] filter
        #   An optional list filter describing the members to be returned. The filter may
        #   reference the type, labels, and metadata of monitored resources that comprise
        #   the group. For example, to return only resources representing Compute Engine
        #   VM instances, use this filter:
        #   resource.type = "gce_instance"
        # @param [String] interval_end_time
        #   Required. The end of the time interval.
        # @param [String] interval_start_time
        #   Optional. The beginning of the time interval. The default value for the start
        #   time is the end time. The start time must not be later than the end time.
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
        # @yieldparam result [Google::Apis::MonitoringV3::ListGroupMembersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::MonitoringV3::ListGroupMembersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_group_members(name, filter: nil, interval_end_time: nil, interval_start_time: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}/members', options)
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
        # metrics.
        # @param [String] name
        #   The project on which to execute the request. The format is "projects/`
        #   project_id_or_number`".
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
          command =  make_simple_command(:post, 'v3/{+name}/metricDescriptors', options)
          command.request_representation = Google::Apis::MonitoringV3::MetricDescriptor::Representation
          command.request_object = metric_descriptor_object
          command.response_representation = Google::Apis::MonitoringV3::MetricDescriptor::Representation
          command.response_class = Google::Apis::MonitoringV3::MetricDescriptor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a metric descriptor. Only user-created custom metrics can be deleted.
        # @param [String] name
        #   The metric descriptor on which to execute the request. The format is "projects/
        #   `project_id_or_number`/metricDescriptors/`metric_id`". An example of `
        #   metric_id` is: "custom.googleapis.com/my_test_metric".
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
          command =  make_simple_command(:delete, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::Empty::Representation
          command.response_class = Google::Apis::MonitoringV3::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a single metric descriptor. This method does not require a Stackdriver
        # account.
        # @param [String] name
        #   The metric descriptor on which to execute the request. The format is "projects/
        #   `project_id_or_number`/metricDescriptors/`metric_id`". An example value of `
        #   metric_id` is "compute.googleapis.com/instance/disk/read_bytes_count".
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
          command =  make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::MetricDescriptor::Representation
          command.response_class = Google::Apis::MonitoringV3::MetricDescriptor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists metric descriptors that match a filter. This method does not require a
        # Stackdriver account.
        # @param [String] name
        #   The project on which to execute the request. The format is "projects/`
        #   project_id_or_number`".
        # @param [String] filter
        #   If this field is empty, all custom and system-defined metric descriptors are
        #   returned. Otherwise, the filter specifies which metric descriptors are to be
        #   returned. For example, the following filter matches all custom metrics:
        #   metric.type = starts_with("custom.googleapis.com/")
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
          command =  make_simple_command(:get, 'v3/{+name}/metricDescriptors', options)
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
        # Stackdriver account.
        # @param [String] name
        #   The monitored resource descriptor to get. The format is "projects/`
        #   project_id_or_number`/monitoredResourceDescriptors/`resource_type`". The `
        #   resource_type` is a predefined type, such as cloudsql_database.
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
          command =  make_simple_command(:get, 'v3/{+name}', options)
          command.response_representation = Google::Apis::MonitoringV3::MonitoredResourceDescriptor::Representation
          command.response_class = Google::Apis::MonitoringV3::MonitoredResourceDescriptor
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists monitored resource descriptors that match a filter. This method does not
        # require a Stackdriver account.
        # @param [String] name
        #   The project on which to execute the request. The format is "projects/`
        #   project_id_or_number`".
        # @param [String] filter
        #   An optional filter describing the descriptors to be returned. The filter can
        #   reference the descriptor's type and labels. For example, the following filter
        #   returns only Google Compute Engine descriptors that have an id label:
        #   resource.type = starts_with("gce_") AND resource.label:id
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
          command =  make_simple_command(:get, 'v3/{+name}/monitoredResourceDescriptors', options)
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
        
        # Creates or adds data to one or more time series. The response is empty if all
        # time series in the request were written. If any time series could not be
        # written, a corresponding failure message is included in the error response.
        # @param [String] name
        #   The project on which to execute the request. The format is "projects/`
        #   project_id_or_number`".
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
        def create_time_series(name, create_time_series_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:post, 'v3/{+name}/timeSeries', options)
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
        # Stackdriver account.
        # @param [String] name
        #   The project on which to execute the request. The format is "projects/`
        #   project_id_or_number`".
        # @param [String] aggregation_alignment_period
        #   The alignment period for per-time series alignment. If present,
        #   alignmentPeriod must be at least 60 seconds. After per-time series alignment,
        #   each time series will contain data points only on the period boundaries. If
        #   perSeriesAligner is not specified or equals ALIGN_NONE, then this field is
        #   ignored. If perSeriesAligner is specified and does not equal ALIGN_NONE, then
        #   this field must be defined; otherwise an error is returned.
        # @param [String] aggregation_cross_series_reducer
        #   The approach to be used to combine time series. Not all reducer functions may
        #   be applied to all time series, depending on the metric type and the value type
        #   of the original time series. Reduction may change the metric type of value
        #   type of the time series.Time series data must be aligned in order to perform
        #   cross-time series reduction. If crossSeriesReducer is specified, then
        #   perSeriesAligner must be specified and not equal ALIGN_NONE and
        #   alignmentPeriod must be specified; otherwise, an error is returned.
        # @param [Array<String>, String] aggregation_group_by_fields
        #   The set of fields to preserve when crossSeriesReducer is specified. The
        #   groupByFields determine how the time series are partitioned into subsets prior
        #   to applying the aggregation function. Each subset contains time series that
        #   have the same value for each of the grouping fields. Each individual time
        #   series is a member of exactly one subset. The crossSeriesReducer is applied to
        #   each subset of time series. It is not possible to reduce across different
        #   resource types, so this field implicitly contains resource.type. Fields not
        #   specified in groupByFields are aggregated away. If groupByFields is not
        #   specified and all the time series have the same resource type, then the time
        #   series are aggregated into a single output time series. If crossSeriesReducer
        #   is not defined, this field is ignored.
        # @param [String] aggregation_per_series_aligner
        #   The approach to be used to align individual time series. Not all alignment
        #   functions may be applied to all time series, depending on the metric type and
        #   value type of the original time series. Alignment may change the metric type
        #   or the value type of the time series.Time series data must be aligned in order
        #   to perform cross-time series reduction. If crossSeriesReducer is specified,
        #   then perSeriesAligner must be specified and not equal ALIGN_NONE and
        #   alignmentPeriod must be specified; otherwise, an error is returned.
        # @param [String] filter
        #   A monitoring filter that specifies which time series should be returned. The
        #   filter must specify a single metric type, and can additionally specify metric
        #   labels and other information. For example:
        #   metric.type = "compute.googleapis.com/instance/cpu/usage_time" AND
        #   metric.label.instance_name = "my-instance-name"
        # @param [String] interval_end_time
        #   Required. The end of the time interval.
        # @param [String] interval_start_time
        #   Optional. The beginning of the time interval. The default value for the start
        #   time is the end time. The start time must not be later than the end time.
        # @param [String] order_by
        #   Specifies the order in which the points of the time series should be returned.
        #   By default, results are not ordered. Currently, this field must be left blank.
        # @param [Fixnum] page_size
        #   A positive number that is the maximum number of results to return. When view
        #   field sets to FULL, it limits the number of Points server will return; if view
        #   field is HEADERS, it limits the number of TimeSeries server will return.
        # @param [String] page_token
        #   If this field is not empty then it must contain the nextPageToken value
        #   returned by a previous call to this method. Using this field causes the method
        #   to return additional results from the previous method call.
        # @param [String] view
        #   Specifies which information is returned about the time series.
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
        def list_project_time_series(name, aggregation_alignment_period: nil, aggregation_cross_series_reducer: nil, aggregation_group_by_fields: nil, aggregation_per_series_aligner: nil, filter: nil, interval_end_time: nil, interval_start_time: nil, order_by: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command =  make_simple_command(:get, 'v3/{+name}/timeSeries', options)
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
          command.query['view'] = view unless view.nil?
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
