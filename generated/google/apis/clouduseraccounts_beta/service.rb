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
    module ClouduseraccountsBeta
      # Cloud User Accounts API
      #
      # Creates and manages users and groups for accessing Google Compute Engine
      #  virtual machines.
      #
      # @example
      #    require 'google/apis/clouduseraccounts_beta'
      #
      #    Clouduseraccounts = Google::Apis::ClouduseraccountsBeta # Alias the module
      #    service = Clouduseraccounts::CloudUserAccountsService.new
      #
      # @see https://cloud.google.com/compute/docs/access/user-accounts/api/latest/
      class CloudUserAccountsService < Google::Apis::Core::BaseService
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
          super('https://www.googleapis.com/', 'clouduseraccounts/beta/projects/')
          @batch_path = 'batch/clouduseraccounts/beta'
        end
        
        # Deletes the specified operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] operation
        #   Name of the Operations resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
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
        def delete_global_accounts_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/global/operations/{operation}', options)
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the specified operation resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] operation
        #   Name of the Operations resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_global_accounts_operation(project, operation, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/operations/{operation}', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.params['operation'] = operation unless operation.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of operation resources contained within the specified
        # project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: field_name
        #   comparison_string literal_string.
        #   The field_name is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The comparison_string must be
        #   either eq (equals) or ne (not equals). The literal_string is the string value
        #   to filter to. The literal value must be valid for the type of field you are
        #   filtering by (string, number, boolean). For string fields, the literal value
        #   is interpreted as a regular expression using RE2 syntax. The literal value
        #   must match the entire field.
        #   For example, to filter for instances that do not have a name of example-
        #   instance, you would use filter=name ne example-instance.
        #   Compute Engine Beta API Only: If you use filtering in the Beta API, you can
        #   also filter on nested fields. For example, you could filter on instances that
        #   have set the scheduling.automaticRestart field to true. In particular, use
        #   filtering on nested fields to take advantage of instance labels to organize
        #   and filter results based on label values.
        #   The Beta API also supports filtering on multiple expressions by providing each
        #   separate expression within parentheses. For example, (scheduling.
        #   automaticRestart eq true) (zone eq us-central1-f). Multiple expressions are
        #   treated as AND expressions, meaning that resources must match all expressions
        #   to pass the filters.
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than maxResults, Compute Engine returns a
        #   nextPageToken that can be used to get the next page of results in subsequent
        #   list requests.
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name.
        #   You can also sort results in descending order based on the creation timestamp
        #   using orderBy="creationTimestamp desc". This sorts results based on the
        #   creationTimestamp field in reverse chronological order (newest result first).
        #   Use this to sort resources like operations so that the newest operation is
        #   returned first.
        #   Currently, only sorting by name or creationTimestamp desc is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set pageToken to the nextPageToken returned by
        #   a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::OperationList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::OperationList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_global_accounts_operations(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/operations', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::OperationList::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::OperationList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds users to the specified group.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] group_name
        #   Name of the group for this request.
        # @param [Google::Apis::ClouduseraccountsBeta::GroupsAddMemberRequest] groups_add_member_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_group_member(project, group_name, groups_add_member_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/global/groups/{groupName}/addMember', options)
          command.request_representation = Google::Apis::ClouduseraccountsBeta::GroupsAddMemberRequest::Representation
          command.request_object = groups_add_member_request_object
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.params['groupName'] = group_name unless group_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified Group resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] group_name
        #   Name of the Group resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_group(project, group_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/global/groups/{groupName}', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.params['groupName'] = group_name unless group_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified Group resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] group_name
        #   Name of the Group resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Group] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Group]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_group(project, group_name, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/groups/{groupName}', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Group::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Group
          command.params['project'] = project unless project.nil?
          command.params['groupName'] = group_name unless group_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a Group resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ClouduseraccountsBeta::Group] group_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_group(project, group_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/global/groups', options)
          command.request_representation = Google::Apis::ClouduseraccountsBeta::Group::Representation
          command.request_object = group_object
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves the list of groups contained within the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: field_name
        #   comparison_string literal_string.
        #   The field_name is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The comparison_string must be
        #   either eq (equals) or ne (not equals). The literal_string is the string value
        #   to filter to. The literal value must be valid for the type of field you are
        #   filtering by (string, number, boolean). For string fields, the literal value
        #   is interpreted as a regular expression using RE2 syntax. The literal value
        #   must match the entire field.
        #   For example, to filter for instances that do not have a name of example-
        #   instance, you would use filter=name ne example-instance.
        #   Compute Engine Beta API Only: If you use filtering in the Beta API, you can
        #   also filter on nested fields. For example, you could filter on instances that
        #   have set the scheduling.automaticRestart field to true. In particular, use
        #   filtering on nested fields to take advantage of instance labels to organize
        #   and filter results based on label values.
        #   The Beta API also supports filtering on multiple expressions by providing each
        #   separate expression within parentheses. For example, (scheduling.
        #   automaticRestart eq true) (zone eq us-central1-f). Multiple expressions are
        #   treated as AND expressions, meaning that resources must match all expressions
        #   to pass the filters.
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than maxResults, Compute Engine returns a
        #   nextPageToken that can be used to get the next page of results in subsequent
        #   list requests.
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name.
        #   You can also sort results in descending order based on the creation timestamp
        #   using orderBy="creationTimestamp desc". This sorts results based on the
        #   creationTimestamp field in reverse chronological order (newest result first).
        #   Use this to sort resources like operations so that the newest operation is
        #   returned first.
        #   Currently, only sorting by name or creationTimestamp desc is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set pageToken to the nextPageToken returned by
        #   a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::GroupList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::GroupList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_groups(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/groups', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::GroupList::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::GroupList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes users from the specified group.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] group_name
        #   Name of the group for this request.
        # @param [Google::Apis::ClouduseraccountsBeta::GroupsRemoveMemberRequest] groups_remove_member_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_group_member(project, group_name, groups_remove_member_request_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/global/groups/{groupName}/removeMember', options)
          command.request_representation = Google::Apis::ClouduseraccountsBeta::GroupsRemoveMemberRequest::Representation
          command.request_object = groups_remove_member_request_object
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.params['groupName'] = group_name unless group_name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a list of authorized public keys for a specific user account.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone for this request.
        # @param [String] user
        #   The user account for which you want to get a list of authorized public keys.
        # @param [String] instance
        #   The fully-qualified URL of the virtual machine requesting the view.
        # @param [Boolean] login
        #   Whether the view was requested as part of a user-initiated login.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::LinuxGetAuthorizedKeysViewResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::LinuxGetAuthorizedKeysViewResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_linux_authorized_keys_view(project, zone, user, instance, login: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/authorizedKeysView/{user}', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::LinuxGetAuthorizedKeysViewResponse::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::LinuxGetAuthorizedKeysViewResponse
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.params['user'] = user unless user.nil?
          command.query['instance'] = instance unless instance.nil?
          command.query['login'] = login unless login.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of user accounts for an instance within a specific project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] zone
        #   Name of the zone for this request.
        # @param [String] instance
        #   The fully-qualified URL of the virtual machine requesting the views.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: field_name
        #   comparison_string literal_string.
        #   The field_name is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The comparison_string must be
        #   either eq (equals) or ne (not equals). The literal_string is the string value
        #   to filter to. The literal value must be valid for the type of field you are
        #   filtering by (string, number, boolean). For string fields, the literal value
        #   is interpreted as a regular expression using RE2 syntax. The literal value
        #   must match the entire field.
        #   For example, to filter for instances that do not have a name of example-
        #   instance, you would use filter=name ne example-instance.
        #   Compute Engine Beta API Only: If you use filtering in the Beta API, you can
        #   also filter on nested fields. For example, you could filter on instances that
        #   have set the scheduling.automaticRestart field to true. In particular, use
        #   filtering on nested fields to take advantage of instance labels to organize
        #   and filter results based on label values.
        #   The Beta API also supports filtering on multiple expressions by providing each
        #   separate expression within parentheses. For example, (scheduling.
        #   automaticRestart eq true) (zone eq us-central1-f). Multiple expressions are
        #   treated as AND expressions, meaning that resources must match all expressions
        #   to pass the filters.
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than maxResults, Compute Engine returns a
        #   nextPageToken that can be used to get the next page of results in subsequent
        #   list requests.
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name.
        #   You can also sort results in descending order based on the creation timestamp
        #   using orderBy="creationTimestamp desc". This sorts results based on the
        #   creationTimestamp field in reverse chronological order (newest result first).
        #   Use this to sort resources like operations so that the newest operation is
        #   returned first.
        #   Currently, only sorting by name or creationTimestamp desc is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set pageToken to the nextPageToken returned by
        #   a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::LinuxGetLinuxAccountViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::LinuxGetLinuxAccountViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_linux_linux_account_views(project, zone, instance, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/zones/{zone}/linuxAccountViews', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::LinuxGetLinuxAccountViewsResponse::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::LinuxGetLinuxAccountViewsResponse
          command.params['project'] = project unless project.nil?
          command.params['zone'] = zone unless zone.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['instance'] = instance unless instance.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Adds a public key to the specified User resource with the data included in the
        # request.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] user
        #   Name of the user for this request.
        # @param [Google::Apis::ClouduseraccountsBeta::PublicKey] public_key_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def add_user_public_key(project, user, public_key_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/global/users/{user}/addPublicKey', options)
          command.request_representation = Google::Apis::ClouduseraccountsBeta::PublicKey::Representation
          command.request_object = public_key_object
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.params['user'] = user unless user.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the specified User resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] user
        #   Name of the user resource to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_user(project, user, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:delete, '{project}/global/users/{user}', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.params['user'] = user unless user.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the specified User resource.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] user
        #   Name of the user resource to return.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::User] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::User]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_user(project, user, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/users/{user}', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::User::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::User
          command.params['project'] = project unless project.nil?
          command.params['user'] = user unless user.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a User resource in the specified project using the data included in
        # the request.
        # @param [String] project
        #   Project ID for this request.
        # @param [Google::Apis::ClouduseraccountsBeta::User] user_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def insert_user(project, user_object = nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/global/users', options)
          command.request_representation = Google::Apis::ClouduseraccountsBeta::User::Representation
          command.request_object = user_object
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a list of users contained within the specified project.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] filter
        #   Sets a filter expression for filtering listed resources, in the form filter=`
        #   expression`. Your `expression` must be in the format: field_name
        #   comparison_string literal_string.
        #   The field_name is the name of the field you want to compare. Only atomic field
        #   types are supported (string, number, boolean). The comparison_string must be
        #   either eq (equals) or ne (not equals). The literal_string is the string value
        #   to filter to. The literal value must be valid for the type of field you are
        #   filtering by (string, number, boolean). For string fields, the literal value
        #   is interpreted as a regular expression using RE2 syntax. The literal value
        #   must match the entire field.
        #   For example, to filter for instances that do not have a name of example-
        #   instance, you would use filter=name ne example-instance.
        #   Compute Engine Beta API Only: If you use filtering in the Beta API, you can
        #   also filter on nested fields. For example, you could filter on instances that
        #   have set the scheduling.automaticRestart field to true. In particular, use
        #   filtering on nested fields to take advantage of instance labels to organize
        #   and filter results based on label values.
        #   The Beta API also supports filtering on multiple expressions by providing each
        #   separate expression within parentheses. For example, (scheduling.
        #   automaticRestart eq true) (zone eq us-central1-f). Multiple expressions are
        #   treated as AND expressions, meaning that resources must match all expressions
        #   to pass the filters.
        # @param [Fixnum] max_results
        #   The maximum number of results per page that should be returned. If the number
        #   of available results is larger than maxResults, Compute Engine returns a
        #   nextPageToken that can be used to get the next page of results in subsequent
        #   list requests.
        # @param [String] order_by
        #   Sorts list results by a certain order. By default, results are returned in
        #   alphanumerical order based on the resource name.
        #   You can also sort results in descending order based on the creation timestamp
        #   using orderBy="creationTimestamp desc". This sorts results based on the
        #   creationTimestamp field in reverse chronological order (newest result first).
        #   Use this to sort resources like operations so that the newest operation is
        #   returned first.
        #   Currently, only sorting by name or creationTimestamp desc is supported.
        # @param [String] page_token
        #   Specifies a page token to use. Set pageToken to the nextPageToken returned by
        #   a previous list request to get the next page of results.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::UserList] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::UserList]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_users(project, filter: nil, max_results: nil, order_by: nil, page_token: nil, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:get, '{project}/global/users', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::UserList::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::UserList
          command.params['project'] = project unless project.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['maxResults'] = max_results unless max_results.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          command.query['userIp'] = user_ip unless user_ip.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Removes the specified public key from the user.
        # @param [String] project
        #   Project ID for this request.
        # @param [String] user
        #   Name of the user for this request.
        # @param [String] fingerprint
        #   The fingerprint of the public key to delete. Public keys are identified by
        #   their fingerprint, which is defined by RFC4716 to be the MD5 digest of the
        #   public key.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        #   Overrides userIp if both are provided.
        # @param [String] user_ip
        #   IP address of the site where the request originates. Use this if you want to
        #   enforce per-user limits.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ClouduseraccountsBeta::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ClouduseraccountsBeta::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def remove_user_public_key(project, user, fingerprint, fields: nil, quota_user: nil, user_ip: nil, options: nil, &block)
          command =  make_simple_command(:post, '{project}/global/users/{user}/removePublicKey', options)
          command.response_representation = Google::Apis::ClouduseraccountsBeta::Operation::Representation
          command.response_class = Google::Apis::ClouduseraccountsBeta::Operation
          command.params['project'] = project unless project.nil?
          command.params['user'] = user unless user.nil?
          command.query['fingerprint'] = fingerprint unless fingerprint.nil?
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
