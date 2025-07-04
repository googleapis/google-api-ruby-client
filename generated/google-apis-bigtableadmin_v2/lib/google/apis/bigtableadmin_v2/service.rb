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
    module BigtableadminV2
      # Cloud Bigtable Admin API
      #
      # Administer your Cloud Bigtable tables and instances.
      #
      # @example
      #    require 'google/apis/bigtableadmin_v2'
      #
      #    Bigtableadmin = Google::Apis::BigtableadminV2 # Alias the module
      #    service = Bigtableadmin::BigtableAdminService.new
      #
      # @see https://cloud.google.com/bigtable/
      class BigtableAdminService < Google::Apis::Core::BaseService
        DEFAULT_ENDPOINT_TEMPLATE = "https://bigtableadmin.$UNIVERSE_DOMAIN$/"

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
                client_name: 'google-apis-bigtableadmin_v2',
                client_version: Google::Apis::BigtableadminV2::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of `1`
        # , corresponding to `Code.CANCELLED`.
        # @param [String] name
        #   The name of the operation resource to be cancelled.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:cancel', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a long-running operation. This method indicates that the client is no
        # longer interested in the operation result. It does not cancel the operation.
        # If the server doesn't support this method, it returns `google.rpc.Code.
        # UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation resource to be deleted.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
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
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists operations that match the specified filter in the request. If the server
        # doesn't support this method, it returns `UNIMPLEMENTED`.
        # @param [String] name
        #   The name of the operation's parent resource.
        # @param [String] filter
        #   The standard list filter.
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
        # @yieldparam result [Google::Apis::BigtableadminV2::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operation_project_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/operations', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListOperationsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an instance within a project. Note that exactly one of Cluster.
        # serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set.
        # If serve_nodes is set to non-zero, then the cluster is manually scaled. If
        # cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is
        # enabled.
        # @param [String] parent
        #   Required. The unique name of the project in which to create the new instance.
        #   Values are of the form `projects/`project``.
        # @param [Google::Apis::BigtableadminV2::CreateInstanceRequest] create_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_instance(parent, create_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/instances', options)
          command.request_representation = Google::Apis::BigtableadminV2::CreateInstanceRequest::Representation
          command.request_object = create_instance_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an instance from a project.
        # @param [String] name
        #   Required. The unique name of the instance to be deleted. Values are of the
        #   form `projects/`project`/instances/`instance``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about an instance.
        # @param [String] name
        #   Required. The unique name of the requested instance. Values are of the form `
        #   projects/`project`/instances/`instance``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Instance::Representation
          command.response_class = Google::Apis::BigtableadminV2::Instance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an instance resource. Returns an empty
        # policy if an instance exists but does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about instances in a project.
        # @param [String] parent
        #   Required. The unique name of the project for which a list of instances is
        #   requested. Values are of the form `projects/`project``.
        # @param [String] page_token
        #   DEPRECATED: This field is unused and ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instances(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/instances', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListInstancesResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Partially updates an instance within a project. This method can modify all
        # fields of an Instance and is the preferred way to update an Instance.
        # @param [String] name
        #   The unique name of the instance. Values are of the form `projects/`project`/
        #   instances/a-z+[a-z0-9]`.
        # @param [Google::Apis::BigtableadminV2::Instance] instance_object
        # @param [String] update_mask
        #   Required. The subset of Instance fields which should be replaced. Must be
        #   explicitly set.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def partial_project_instance_update_instance(name, instance_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on an instance resource. Replaces any existing
        # policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified instance resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_instance_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigtableadminV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigtableadminV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an instance within a project. This method updates only the display
        # name and type for an Instance. To update other Instance properties, such as
        # labels, use PartialUpdateInstance.
        # @param [String] name
        #   The unique name of the instance. Values are of the form `projects/`project`/
        #   instances/a-z+[a-z0-9]`.
        # @param [Google::Apis::BigtableadminV2::Instance] instance_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_instance(name, instance_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::Instance::Representation
          command.request_object = instance_object
          command.response_representation = Google::Apis::BigtableadminV2::Instance::Representation
          command.response_class = Google::Apis::BigtableadminV2::Instance
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an app profile within an instance.
        # @param [String] parent
        #   Required. The unique name of the instance in which to create the new app
        #   profile. Values are of the form `projects/`project`/instances/`instance``.
        # @param [Google::Apis::BigtableadminV2::AppProfile] app_profile_object
        # @param [String] app_profile_id
        #   Required. The ID to be used when referring to the new app profile within its
        #   instance, e.g., just `myprofile` rather than `projects/myproject/instances/
        #   myinstance/appProfiles/myprofile`.
        # @param [Boolean] ignore_warnings
        #   If true, ignore safety checks when creating the app profile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::AppProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::AppProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_app_profile(parent, app_profile_object = nil, app_profile_id: nil, ignore_warnings: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/appProfiles', options)
          command.request_representation = Google::Apis::BigtableadminV2::AppProfile::Representation
          command.request_object = app_profile_object
          command.response_representation = Google::Apis::BigtableadminV2::AppProfile::Representation
          command.response_class = Google::Apis::BigtableadminV2::AppProfile
          command.params['parent'] = parent unless parent.nil?
          command.query['appProfileId'] = app_profile_id unless app_profile_id.nil?
          command.query['ignoreWarnings'] = ignore_warnings unless ignore_warnings.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an app profile from an instance.
        # @param [String] name
        #   Required. The unique name of the app profile to be deleted. Values are of the
        #   form `projects/`project`/instances/`instance`/appProfiles/`app_profile``.
        # @param [Boolean] ignore_warnings
        #   Required. If true, ignore safety checks when deleting the app profile.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_app_profile(name, ignore_warnings: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['ignoreWarnings'] = ignore_warnings unless ignore_warnings.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about an app profile.
        # @param [String] name
        #   Required. The unique name of the requested app profile. Values are of the form
        #   `projects/`project`/instances/`instance`/appProfiles/`app_profile``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::AppProfile] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::AppProfile]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_app_profile(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::AppProfile::Representation
          command.response_class = Google::Apis::BigtableadminV2::AppProfile
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about app profiles in an instance.
        # @param [String] parent
        #   Required. The unique name of the instance for which a list of app profiles is
        #   requested. Values are of the form `projects/`project`/instances/`instance``.
        #   Use ``instance` = '-'` to list AppProfiles for all Instances in a project, e.g.
        #   , `projects/myproject/instances/-`.
        # @param [Fixnum] page_size
        #   Maximum number of results per page. A page_size of zero lets the server choose
        #   the number of items to return. A page_size which is strictly positive will
        #   return at most that many items. A negative page_size will cause an error.
        #   Following the first request, subsequent paginated calls are not required to
        #   pass a page_size. If a page_size is set in subsequent calls, it must match the
        #   page_size given in the first request.
        # @param [String] page_token
        #   The value of `next_page_token` returned by a previous call.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListAppProfilesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListAppProfilesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_app_profiles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/appProfiles', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListAppProfilesResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListAppProfilesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an app profile within an instance.
        # @param [String] name
        #   The unique name of the app profile, up to 50 characters long. Values are of
        #   the form `projects/`project`/instances/`instance`/appProfiles/_a-zA-Z0-9*`.
        # @param [Google::Apis::BigtableadminV2::AppProfile] app_profile_object
        # @param [Boolean] ignore_warnings
        #   If true, ignore safety checks when updating the app profile.
        # @param [String] update_mask
        #   Required. The subset of app profile fields which should be replaced. If unset,
        #   all fields will be replaced.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_app_profile(name, app_profile_object = nil, ignore_warnings: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::AppProfile::Representation
          command.request_object = app_profile_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['ignoreWarnings'] = ignore_warnings unless ignore_warnings.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a cluster within an instance. Note that exactly one of Cluster.
        # serve_nodes and Cluster.cluster_config.cluster_autoscaling_config can be set.
        # If serve_nodes is set to non-zero, then the cluster is manually scaled. If
        # cluster_config.cluster_autoscaling_config is non-empty, then autoscaling is
        # enabled.
        # @param [String] parent
        #   Required. The unique name of the instance in which to create the new cluster.
        #   Values are of the form `projects/`project`/instances/`instance``.
        # @param [Google::Apis::BigtableadminV2::Cluster] cluster_object
        # @param [String] cluster_id
        #   Required. The ID to be used when referring to the new cluster within its
        #   instance, e.g., just `mycluster` rather than `projects/myproject/instances/
        #   myinstance/clusters/mycluster`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_cluster(parent, cluster_object = nil, cluster_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/clusters', options)
          command.request_representation = Google::Apis::BigtableadminV2::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['clusterId'] = cluster_id unless cluster_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a cluster from an instance.
        # @param [String] name
        #   Required. The unique name of the cluster to be deleted. Values are of the form
        #   `projects/`project`/instances/`instance`/clusters/`cluster``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a cluster.
        # @param [String] name
        #   Required. The unique name of the requested cluster. Values are of the form `
        #   projects/`project`/instances/`instance`/clusters/`cluster``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Cluster] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Cluster]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_cluster(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Cluster::Representation
          command.response_class = Google::Apis::BigtableadminV2::Cluster
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about clusters in an instance.
        # @param [String] parent
        #   Required. The unique name of the instance for which a list of clusters is
        #   requested. Values are of the form `projects/`project`/instances/`instance``.
        #   Use ``instance` = '-'` to list Clusters for all Instances in a project, e.g., `
        #   projects/myproject/instances/-`.
        # @param [String] page_token
        #   DEPRECATED: This field is unused and ignored.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListClustersResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListClustersResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_clusters(parent, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/clusters', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListClustersResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListClustersResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Partially updates a cluster within a project. This method is the preferred way
        # to update a Cluster. To enable and update autoscaling, set cluster_config.
        # cluster_autoscaling_config. When autoscaling is enabled, serve_nodes is
        # treated as an OUTPUT_ONLY field, meaning that updates to it are ignored. Note
        # that an update cannot simultaneously set serve_nodes to non-zero and
        # cluster_config.cluster_autoscaling_config to non-empty, and also specify both
        # in the update_mask. To disable autoscaling, clear cluster_config.
        # cluster_autoscaling_config, and explicitly set a serve_node count via the
        # update_mask.
        # @param [String] name
        #   The unique name of the cluster. Values are of the form `projects/`project`/
        #   instances/`instance`/clusters/a-z*`.
        # @param [Google::Apis::BigtableadminV2::Cluster] cluster_object
        # @param [String] update_mask
        #   Required. The subset of Cluster fields which should be replaced.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def partial_project_instance_cluster_update_cluster(name, cluster_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a cluster within an instance. Note that UpdateCluster does not support
        # updating cluster_config.cluster_autoscaling_config. In order to update it, you
        # must use PartialUpdateCluster.
        # @param [String] name
        #   The unique name of the cluster. Values are of the form `projects/`project`/
        #   instances/`instance`/clusters/a-z*`.
        # @param [Google::Apis::BigtableadminV2::Cluster] cluster_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_instance_cluster(name, cluster_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:put, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::Cluster::Representation
          command.request_object = cluster_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Copy a Cloud Bigtable backup to a new backup in the destination cluster
        # located in the destination instance and project.
        # @param [String] parent
        #   Required. The name of the destination cluster that will contain the backup
        #   copy. The cluster must already exist. Values are of the form: `projects/`
        #   project`/instances/`instance`/clusters/`cluster``.
        # @param [Google::Apis::BigtableadminV2::CopyBackupRequest] copy_backup_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def copy_backup(parent, copy_backup_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/backups:copy', options)
          command.request_representation = Google::Apis::BigtableadminV2::CopyBackupRequest::Representation
          command.request_object = copy_backup_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts creating a new Cloud Bigtable Backup. The returned backup long-running
        # operation can be used to track creation of the backup. The metadata field type
        # is CreateBackupMetadata. The response field type is Backup, if successful.
        # Cancelling the returned operation will stop the creation and delete the backup.
        # @param [String] parent
        #   Required. This must be one of the clusters in the instance in which this table
        #   is located. The backup will be stored in this cluster. Values are of the form `
        #   projects/`project`/instances/`instance`/clusters/`cluster``.
        # @param [Google::Apis::BigtableadminV2::Backup] backup_object
        # @param [String] backup_id
        #   Required. The id of the backup to be created. The `backup_id` along with the
        #   parent `parent` are combined as `parent`/backups/`backup_id` to create the
        #   full backup name, of the form: `projects/`project`/instances/`instance`/
        #   clusters/`cluster`/backups/`backup_id``. This string must be between 1 and 50
        #   characters in length and match the regex _a-zA-Z0-9*.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_cluster_backup(parent, backup_object = nil, backup_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/backups', options)
          command.request_representation = Google::Apis::BigtableadminV2::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['backupId'] = backup_id unless backup_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a pending or completed Cloud Bigtable backup.
        # @param [String] name
        #   Required. Name of the backup to delete. Values are of the form `projects/`
        #   project`/instances/`instance`/clusters/`cluster`/backups/`backup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_cluster_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata on a pending or completed Cloud Bigtable Backup.
        # @param [String] name
        #   Required. Name of the backup. Values are of the form `projects/`project`/
        #   instances/`instance`/clusters/`cluster`/backups/`backup``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_cluster_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Backup::Representation
          command.response_class = Google::Apis::BigtableadminV2::Backup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a Bigtable resource. Returns an empty
        # policy if the resource exists but does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backup_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Cloud Bigtable backups. Returns both completed and pending backups.
        # @param [String] parent
        #   Required. The cluster to list backups from. Values are of the form `projects/`
        #   project`/instances/`instance`/clusters/`cluster``. Use ``cluster` = '-'` to
        #   list backups for all clusters in an instance, e.g., `projects/`project`/
        #   instances/`instance`/clusters/-`.
        # @param [String] filter
        #   A filter expression that filters backups listed in the response. The
        #   expression must specify the field name, a comparison operator, and the value
        #   that you want to use for filtering. The value must be a string, a number, or a
        #   boolean. The comparison operator must be <, >, <=, >=, !=, =, or :. Colon ':'
        #   represents a HAS operator which is roughly synonymous with equality. Filter
        #   rules are case insensitive. The fields eligible for filtering are: * `name` * `
        #   source_table` * `state` * `start_time` (and values are of the format YYYY-MM-
        #   DDTHH:MM:SSZ) * `end_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ)
        #   * `expire_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `
        #   size_bytes` To filter on multiple expressions, provide each separate
        #   expression within parentheses. By default, each expression is an AND
        #   expression. However, you can include AND, OR, and NOT expressions explicitly.
        #   Some examples of using filters are: * `name:"exact"` --> The backup's name is
        #   the string "exact". * `name:howl` --> The backup's name contains the string "
        #   howl". * `source_table:prod` --> The source_table's name contains the string "
        #   prod". * `state:CREATING` --> The backup is pending creation. * `state:READY` -
        #   -> The backup is fully created and ready for use. * `(name:howl) AND (
        #   start_time < \"2018-03-28T14:50:00Z\")` --> The backup name contains the
        #   string "howl" and start_time of the backup is before 2018-03-28T14:50:00Z. * `
        #   size_bytes > 10000000000` --> The backup's size is greater than 10GB
        # @param [String] order_by
        #   An expression for specifying the sort order of the results of the request. The
        #   string value should specify one or more fields in Backup. The full syntax is
        #   described at https://aip.dev/132#ordering. Fields supported are: * name *
        #   source_table * expire_time * start_time * end_time * size_bytes * state For
        #   example, "start_time". The default sorting order is ascending. To specify
        #   descending order for the field, a suffix " desc" should be appended to the
        #   field name. For example, "start_time desc". Redundant space characters in the
        #   syntax are insigificant. If order_by is empty, results will be sorted by `
        #   start_time` in descending order starting from the most recently created backup.
        # @param [Fixnum] page_size
        #   Number of backups to be returned in the response. If 0 or less, defaults to
        #   the server's maximum allowed page size.
        # @param [String] page_token
        #   If non-empty, `page_token` should contain a next_page_token from a previous
        #   ListBackupsResponse to the same `parent` and with the same `filter`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_cluster_backups(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/backups', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListBackupsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a pending or completed Cloud Bigtable Backup.
        # @param [String] name
        #   A globally unique identifier for the backup which cannot be changed. Values
        #   are of the form `projects/`project`/instances/`instance`/clusters/`cluster`/
        #   backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50
        #   characters in length. The backup is stored in the cluster identified by the
        #   prefix of the backup name of the form `projects/`project`/instances/`instance`/
        #   clusters/`cluster``.
        # @param [Google::Apis::BigtableadminV2::Backup] backup_object
        # @param [String] update_mask
        #   Required. A mask specifying which fields (e.g. `expire_time`) in the Backup
        #   resource should be updated. This mask is relative to the Backup resource, not
        #   to the request message. The field mask must always be specified; this prevents
        #   any future fields from being erased accidentally by clients that do not know
        #   about them.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_cluster_backup(name, backup_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::BigtableadminV2::Backup::Representation
          command.response_class = Google::Apis::BigtableadminV2::Backup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a Bigtable resource. Replaces any existing
        # policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_backup_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified Bigtable resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_backup_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigtableadminV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigtableadminV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists hot tablets in a cluster, within the time range provided. Hot tablets
        # are ordered based on CPU usage.
        # @param [String] parent
        #   Required. The cluster name to list hot tablets. Value is in the following form:
        #   `projects/`project`/instances/`instance`/clusters/`cluster``.
        # @param [String] end_time
        #   The end time to list hot tablets.
        # @param [Fixnum] page_size
        #   Maximum number of results per page. A page_size that is empty or zero lets the
        #   server choose the number of items to return. A page_size which is strictly
        #   positive will return at most that many items. A negative page_size will cause
        #   an error. Following the first request, subsequent paginated calls do not need
        #   a page_size field. If a page_size is set in subsequent calls, it must match
        #   the page_size given in the first request.
        # @param [String] page_token
        #   The value of `next_page_token` returned by a previous call.
        # @param [String] start_time
        #   The start time to list hot tablets. The hot tablets in the response will have
        #   start times between the requested start time and end time. Start time defaults
        #   to Now if it is unset, and end time defaults to Now - 24 hours if it is unset.
        #   The start time should be less than the end time, and the maximum allowed time
        #   range between start time and end time is 48 hours. Start time and end time
        #   should have values between Now and Now - 14 days.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListHotTabletsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListHotTabletsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_cluster_hot_tablets(parent, end_time: nil, page_size: nil, page_token: nil, start_time: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/hotTablets', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListHotTabletsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListHotTabletsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['endTime'] = end_time unless end_time.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['startTime'] = start_time unless start_time.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a logical view within an instance.
        # @param [String] parent
        #   Required. The parent instance where this logical view will be created. Format:
        #   `projects/`project`/instances/`instance``.
        # @param [Google::Apis::BigtableadminV2::LogicalView] logical_view_object
        # @param [String] logical_view_id
        #   Required. The ID to use for the logical view, which will become the final
        #   component of the logical view's resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_logical_view(parent, logical_view_object = nil, logical_view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/logicalViews', options)
          command.request_representation = Google::Apis::BigtableadminV2::LogicalView::Representation
          command.request_object = logical_view_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['logicalViewId'] = logical_view_id unless logical_view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a logical view from an instance.
        # @param [String] name
        #   Required. The unique name of the logical view to be deleted. Format: `projects/
        #   `project`/instances/`instance`/logicalViews/`logical_view``.
        # @param [String] etag
        #   Optional. The current etag of the logical view. If an etag is provided and
        #   does not match the current etag of the logical view, deletion will be blocked
        #   and an ABORTED error will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_logical_view(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a logical view.
        # @param [String] name
        #   Required. The unique name of the requested logical view. Values are of the
        #   form `projects/`project`/instances/`instance`/logicalViews/`logical_view``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::LogicalView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::LogicalView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_logical_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::LogicalView::Representation
          command.response_class = Google::Apis::BigtableadminV2::LogicalView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an instance resource. Returns an empty
        # policy if an instance exists but does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_logical_view_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about logical views in an instance.
        # @param [String] parent
        #   Required. The unique name of the instance for which the list of logical views
        #   is requested. Values are of the form `projects/`project`/instances/`instance``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of logical views to return. The service may
        #   return fewer than this value
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListLogicalViews` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListLogicalViews` must match the call that provided
        #   the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListLogicalViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListLogicalViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_logical_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/logicalViews', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListLogicalViewsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListLogicalViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a logical view within an instance.
        # @param [String] name
        #   Identifier. The unique name of the logical view. Format: `projects/`project`/
        #   instances/`instance`/logicalViews/`logical_view``
        # @param [Google::Apis::BigtableadminV2::LogicalView] logical_view_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_logical_view(name, logical_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::LogicalView::Representation
          command.request_object = logical_view_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on an instance resource. Replaces any existing
        # policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_logical_view_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified instance resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_logical_view_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigtableadminV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigtableadminV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a materialized view within an instance.
        # @param [String] parent
        #   Required. The parent instance where this materialized view will be created.
        #   Format: `projects/`project`/instances/`instance``.
        # @param [Google::Apis::BigtableadminV2::MaterializedView] materialized_view_object
        # @param [String] materialized_view_id
        #   Required. The ID to use for the materialized view, which will become the final
        #   component of the materialized view's resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_materialized_view(parent, materialized_view_object = nil, materialized_view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/materializedViews', options)
          command.request_representation = Google::Apis::BigtableadminV2::MaterializedView::Representation
          command.request_object = materialized_view_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['materializedViewId'] = materialized_view_id unless materialized_view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a materialized view from an instance.
        # @param [String] name
        #   Required. The unique name of the materialized view to be deleted. Format: `
        #   projects/`project`/instances/`instance`/materializedViews/`materialized_view``.
        # @param [String] etag
        #   Optional. The current etag of the materialized view. If an etag is provided
        #   and does not match the current etag of the materialized view, deletion will be
        #   blocked and an ABORTED error will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_materialized_view(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a materialized view.
        # @param [String] name
        #   Required. The unique name of the requested materialized view. Values are of
        #   the form `projects/`project`/instances/`instance`/materializedViews/`
        #   materialized_view``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::MaterializedView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::MaterializedView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_materialized_view(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::MaterializedView::Representation
          command.response_class = Google::Apis::BigtableadminV2::MaterializedView
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an instance resource. Returns an empty
        # policy if an instance exists but does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_materialized_view_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about materialized views in an instance.
        # @param [String] parent
        #   Required. The unique name of the instance for which the list of materialized
        #   views is requested. Values are of the form `projects/`project`/instances/`
        #   instance``.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of materialized views to return. The service may
        #   return fewer than this value
        # @param [String] page_token
        #   Optional. A page token, received from a previous `ListMaterializedViews` call.
        #   Provide this to retrieve the subsequent page. When paginating, all other
        #   parameters provided to `ListMaterializedViews` must match the call that
        #   provided the page token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListMaterializedViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListMaterializedViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_materialized_views(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/materializedViews', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListMaterializedViewsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListMaterializedViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a materialized view within an instance.
        # @param [String] name
        #   Identifier. The unique name of the materialized view. Format: `projects/`
        #   project`/instances/`instance`/materializedViews/`materialized_view``
        # @param [Google::Apis::BigtableadminV2::MaterializedView] materialized_view_object
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_materialized_view(name, materialized_view_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::MaterializedView::Representation
          command.request_object = materialized_view_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on an instance resource. Replaces any existing
        # policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_materialized_view_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified instance resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_materialized_view_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigtableadminV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigtableadminV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Checks replication consistency based on a consistency token, that is, if
        # replication has caught up based on the conditions specified in the token and
        # the check request.
        # @param [String] name
        #   Required. The unique name of the Table for which to check replication
        #   consistency. Values are of the form `projects/`project`/instances/`instance`/
        #   tables/`table``.
        # @param [Google::Apis::BigtableadminV2::CheckConsistencyRequest] check_consistency_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::CheckConsistencyResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::CheckConsistencyResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def check_table_consistency(name, check_consistency_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:checkConsistency', options)
          command.request_representation = Google::Apis::BigtableadminV2::CheckConsistencyRequest::Representation
          command.request_object = check_consistency_request_object
          command.response_representation = Google::Apis::BigtableadminV2::CheckConsistencyResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::CheckConsistencyResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new table in the specified instance. The table can be created with a
        # full set of initial column families, specified in the request.
        # @param [String] parent
        #   Required. The unique name of the instance in which to create the table. Values
        #   are of the form `projects/`project`/instances/`instance``.
        # @param [Google::Apis::BigtableadminV2::CreateTableRequest] create_table_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_table(parent, create_table_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/tables', options)
          command.request_representation = Google::Apis::BigtableadminV2::CreateTableRequest::Representation
          command.request_object = create_table_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Table::Representation
          command.response_class = Google::Apis::BigtableadminV2::Table
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a specified table and all of its data.
        # @param [String] name
        #   Required. The unique name of the table to be deleted. Values are of the form `
        #   projects/`project`/instances/`instance`/tables/`table``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_table(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently drop/delete a row range from a specified table. The request can
        # specify whether to delete all rows in a table, or only those that match a
        # particular prefix. Note that row key prefixes used here are treated as service
        # data. For more information about how service data is handled, see the [Google
        # Cloud Privacy Notice](https://cloud.google.com/terms/cloud-privacy-notice).
        # @param [String] name
        #   Required. The unique name of the table on which to drop a range of rows.
        #   Values are of the form `projects/`project`/instances/`instance`/tables/`table``
        #   .
        # @param [Google::Apis::BigtableadminV2::DropRowRangeRequest] drop_row_range_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def drop_table_row_range(name, drop_row_range_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:dropRowRange', options)
          command.request_representation = Google::Apis::BigtableadminV2::DropRowRangeRequest::Representation
          command.request_object = drop_row_range_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Generates a consistency token for a Table, which can be used in
        # CheckConsistency to check whether mutations to the table that finished before
        # this call started have been replicated. The tokens will be available for 90
        # days.
        # @param [String] name
        #   Required. The unique name of the Table for which to create a consistency token.
        #   Values are of the form `projects/`project`/instances/`instance`/tables/`table`
        #   `.
        # @param [Google::Apis::BigtableadminV2::GenerateConsistencyTokenRequest] generate_consistency_token_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::GenerateConsistencyTokenResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::GenerateConsistencyTokenResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def generate_table_consistency_token(name, generate_consistency_token_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:generateConsistencyToken', options)
          command.request_representation = Google::Apis::BigtableadminV2::GenerateConsistencyTokenRequest::Representation
          command.request_object = generate_consistency_token_request_object
          command.response_representation = Google::Apis::BigtableadminV2::GenerateConsistencyTokenResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::GenerateConsistencyTokenResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata information about the specified table.
        # @param [String] name
        #   Required. The unique name of the requested table. Values are of the form `
        #   projects/`project`/instances/`instance`/tables/`table``.
        # @param [String] view
        #   The view to be applied to the returned table's fields. Defaults to `
        #   SCHEMA_VIEW` if unspecified.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_table(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Table::Representation
          command.response_class = Google::Apis::BigtableadminV2::Table
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a Bigtable resource. Returns an empty
        # policy if the resource exists but does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_table_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all tables served from a specified instance.
        # @param [String] parent
        #   Required. The unique name of the instance for which tables should be listed.
        #   Values are of the form `projects/`project`/instances/`instance``.
        # @param [Fixnum] page_size
        #   Maximum number of results per page. A page_size of zero lets the server choose
        #   the number of items to return. A page_size which is strictly positive will
        #   return at most that many items. A negative page_size will cause an error.
        #   Following the first request, subsequent paginated calls are not required to
        #   pass a page_size. If a page_size is set in subsequent calls, it must match the
        #   page_size given in the first request.
        # @param [String] page_token
        #   The value of `next_page_token` returned by a previous call.
        # @param [String] view
        #   The view to be applied to the returned tables' fields. Only NAME_ONLY view (
        #   default), REPLICATION_VIEW and ENCRYPTION_VIEW are supported.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListTablesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListTablesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_tables(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/tables', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListTablesResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListTablesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Performs a series of column family modifications on the specified table.
        # Either all or none of the modifications will occur before this method returns,
        # but data requests received prior to that point may see a table where only some
        # modifications have taken effect.
        # @param [String] name
        #   Required. The unique name of the table whose families should be modified.
        #   Values are of the form `projects/`project`/instances/`instance`/tables/`table``
        #   .
        # @param [Google::Apis::BigtableadminV2::ModifyColumnFamiliesRequest] modify_column_families_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Table] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Table]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def modify_table_column_families(name, modify_column_families_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:modifyColumnFamilies', options)
          command.request_representation = Google::Apis::BigtableadminV2::ModifyColumnFamiliesRequest::Representation
          command.request_object = modify_column_families_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Table::Representation
          command.response_class = Google::Apis::BigtableadminV2::Table
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a specified table.
        # @param [String] name
        #   The unique name of the table. Values are of the form `projects/`project`/
        #   instances/`instance`/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `
        #   REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
        # @param [Google::Apis::BigtableadminV2::Table] table_object
        # @param [Boolean] ignore_warnings
        #   Optional. If true, ignore safety checks when updating the table.
        # @param [String] update_mask
        #   Required. The list of fields to update. A mask specifying which fields (e.g. `
        #   change_stream_config`) in the `table` field should be updated. This mask is
        #   relative to the `table` field, not to the request message. The wildcard (*)
        #   path is currently not supported. Currently UpdateTable is only supported for
        #   the following fields: * `change_stream_config` * `change_stream_config.
        #   retention_period` * `deletion_protection` * `automated_backup_policy` * `
        #   automated_backup_policy.retention_period` * `automated_backup_policy.frequency`
        #   * `row_key_schema` If `column_families` is set in `update_mask`, it will
        #   return an UNIMPLEMENTED error.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_table(name, table_object = nil, ignore_warnings: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::Table::Representation
          command.request_object = table_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['ignoreWarnings'] = ignore_warnings unless ignore_warnings.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new table by restoring from a completed backup. The returned table
        # long-running operation can be used to track the progress of the operation, and
        # to cancel it. The metadata field type is RestoreTableMetadata. The response
        # type is Table, if successful.
        # @param [String] parent
        #   Required. The name of the instance in which to create the restored table.
        #   Values are of the form `projects//instances/`.
        # @param [Google::Apis::BigtableadminV2::RestoreTableRequest] restore_table_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_table(parent, restore_table_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/tables:restore', options)
          command.request_representation = Google::Apis::BigtableadminV2::RestoreTableRequest::Representation
          command.request_object = restore_table_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a Bigtable resource. Replaces any existing
        # policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_table_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified Bigtable resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_table_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigtableadminV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigtableadminV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Restores a specified table which was accidentally deleted.
        # @param [String] name
        #   Required. The unique name of the table to be restored. Values are of the form `
        #   projects/`project`/instances/`instance`/tables/`table``.
        # @param [Google::Apis::BigtableadminV2::UndeleteTableRequest] undelete_table_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def undelete_table(name, undelete_table_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+name}:undelete', options)
          command.request_representation = Google::Apis::BigtableadminV2::UndeleteTableRequest::Representation
          command.request_object = undelete_table_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new AuthorizedView in a table.
        # @param [String] parent
        #   Required. This is the name of the table the AuthorizedView belongs to. Values
        #   are of the form `projects/`project`/instances/`instance`/tables/`table``.
        # @param [Google::Apis::BigtableadminV2::AuthorizedView] authorized_view_object
        # @param [String] authorized_view_id
        #   Required. The id of the AuthorizedView to create. This AuthorizedView must not
        #   already exist. The `authorized_view_id` appended to `parent` forms the full
        #   AuthorizedView name of the form `projects/`project`/instances/`instance`/
        #   tables/`table`/authorizedView/`authorized_view``.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_table_authorized_view(parent, authorized_view_object = nil, authorized_view_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/authorizedViews', options)
          command.request_representation = Google::Apis::BigtableadminV2::AuthorizedView::Representation
          command.request_object = authorized_view_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['authorizedViewId'] = authorized_view_id unless authorized_view_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Permanently deletes a specified AuthorizedView.
        # @param [String] name
        #   Required. The unique name of the AuthorizedView to be deleted. Values are of
        #   the form `projects/`project`/instances/`instance`/tables/`table`/
        #   authorizedViews/`authorized_view``.
        # @param [String] etag
        #   Optional. The current etag of the AuthorizedView. If an etag is provided and
        #   does not match the current etag of the AuthorizedView, deletion will be
        #   blocked and an ABORTED error will be returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_table_authorized_view(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information from a specified AuthorizedView.
        # @param [String] name
        #   Required. The unique name of the requested AuthorizedView. Values are of the
        #   form `projects/`project`/instances/`instance`/tables/`table`/authorizedViews/`
        #   authorized_view``.
        # @param [String] view
        #   Optional. The resource_view to be applied to the returned AuthorizedView's
        #   fields. Default to BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::AuthorizedView] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::AuthorizedView]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_table_authorized_view(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::AuthorizedView::Representation
          command.response_class = Google::Apis::BigtableadminV2::AuthorizedView
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a Bigtable resource. Returns an empty
        # policy if the resource exists but does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_authorized_view_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all AuthorizedViews from a specific table.
        # @param [String] parent
        #   Required. The unique name of the table for which AuthorizedViews should be
        #   listed. Values are of the form `projects/`project`/instances/`instance`/tables/
        #   `table``.
        # @param [Fixnum] page_size
        #   Optional. Maximum number of results per page. A page_size of zero lets the
        #   server choose the number of items to return. A page_size which is strictly
        #   positive will return at most that many items. A negative page_size will cause
        #   an error. Following the first request, subsequent paginated calls are not
        #   required to pass a page_size. If a page_size is set in subsequent calls, it
        #   must match the page_size given in the first request.
        # @param [String] page_token
        #   Optional. The value of `next_page_token` returned by a previous call.
        # @param [String] view
        #   Optional. The resource_view to be applied to the returned AuthorizedViews'
        #   fields. Default to NAME_ONLY.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListAuthorizedViewsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListAuthorizedViewsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_table_authorized_views(parent, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/authorizedViews', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListAuthorizedViewsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListAuthorizedViewsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an AuthorizedView in a table.
        # @param [String] name
        #   Identifier. The name of this AuthorizedView. Values are of the form `projects/`
        #   project`/instances/`instance`/tables/`table`/authorizedViews/`authorized_view``
        # @param [Google::Apis::BigtableadminV2::AuthorizedView] authorized_view_object
        # @param [Boolean] ignore_warnings
        #   Optional. If true, ignore the safety checks when updating the AuthorizedView.
        # @param [String] update_mask
        #   Optional. The list of fields to update. A mask specifying which fields in the
        #   AuthorizedView resource should be updated. This mask is relative to the
        #   AuthorizedView resource, not to the request message. A field will be
        #   overwritten if it is in the mask. If empty, all fields set in the request will
        #   be overwritten. A special value `*` means to overwrite all fields (including
        #   fields not set in the request).
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_table_authorized_view(name, authorized_view_object = nil, ignore_warnings: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::AuthorizedView::Representation
          command.request_object = authorized_view_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['ignoreWarnings'] = ignore_warnings unless ignore_warnings.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a Bigtable resource. Replaces any existing
        # policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_authorized_view_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified Bigtable resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_authorized_view_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigtableadminV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigtableadminV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new schema bundle in the specified table.
        # @param [String] parent
        #   Required. The parent resource where this schema bundle will be created. Values
        #   are of the form `projects/`project`/instances/`instance`/tables/`table``.
        # @param [Google::Apis::BigtableadminV2::SchemaBundle] schema_bundle_object
        # @param [String] schema_bundle_id
        #   Required. The unique ID to use for the schema bundle, which will become the
        #   final component of the schema bundle's resource name.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_table_schema_bundle(parent, schema_bundle_object = nil, schema_bundle_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+parent}/schemaBundles', options)
          command.request_representation = Google::Apis::BigtableadminV2::SchemaBundle::Representation
          command.request_object = schema_bundle_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['schemaBundleId'] = schema_bundle_id unless schema_bundle_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a schema bundle in the specified table.
        # @param [String] name
        #   Required. The unique name of the schema bundle to delete. Values are of the
        #   form `projects/`project`/instances/`instance`/tables/`table`/schemaBundles/`
        #   schema_bundle``
        # @param [String] etag
        #   Optional. The etag of the schema bundle. If this is provided, it must match
        #   the server's etag. The server returns an ABORTED error on a mismatched etag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_table_schema_bundle(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Empty::Representation
          command.response_class = Google::Apis::BigtableadminV2::Empty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata information about the specified schema bundle.
        # @param [String] name
        #   Required. The unique name of the schema bundle to retrieve. Values are of the
        #   form `projects/`project`/instances/`instance`/tables/`table`/schemaBundles/`
        #   schema_bundle``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::SchemaBundle] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::SchemaBundle]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_table_schema_bundle(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::SchemaBundle::Representation
          command.response_class = Google::Apis::BigtableadminV2::SchemaBundle
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a Bigtable resource. Returns an empty
        # policy if the resource exists but does not have a policy set.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_schema_bundle_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all schema bundles associated with the specified table.
        # @param [String] parent
        #   Required. The parent, which owns this collection of schema bundles. Values are
        #   of the form `projects/`project`/instances/`instance`/tables/`table``.
        # @param [Fixnum] page_size
        #   The maximum number of schema bundles to return. If the value is positive, the
        #   server may return at most this value. If unspecified, the server will return
        #   the maximum allowed page size.
        # @param [String] page_token
        #   A page token, received from a previous `ListSchemaBundles` call. Provide this
        #   to retrieve the subsequent page. When paginating, all other parameters
        #   provided to `ListSchemaBundles` must match the call that provided the page
        #   token.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListSchemaBundlesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListSchemaBundlesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_table_schema_bundles(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+parent}/schemaBundles', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListSchemaBundlesResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListSchemaBundlesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a schema bundle in the specified table.
        # @param [String] name
        #   Identifier. The unique name identifying this schema bundle. Values are of the
        #   form `projects/`project`/instances/`instance`/tables/`table`/schemaBundles/`
        #   schema_bundle``
        # @param [Google::Apis::BigtableadminV2::SchemaBundle] schema_bundle_object
        # @param [Boolean] ignore_warnings
        #   Optional. If set, ignore the safety checks when updating the Schema Bundle.
        #   The safety checks are: - The new Schema Bundle is backwards compatible with
        #   the existing Schema Bundle.
        # @param [String] update_mask
        #   Optional. The list of fields to update.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_table_schema_bundle(name, schema_bundle_object = nil, ignore_warnings: nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v2/{+name}', options)
          command.request_representation = Google::Apis::BigtableadminV2::SchemaBundle::Representation
          command.request_object = schema_bundle_object
          command.response_representation = Google::Apis::BigtableadminV2::Operation::Representation
          command.response_class = Google::Apis::BigtableadminV2::Operation
          command.params['name'] = name unless name.nil?
          command.query['ignoreWarnings'] = ignore_warnings unless ignore_warnings.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a Bigtable resource. Replaces any existing
        # policy.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_schema_bundle_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::BigtableadminV2::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::BigtableadminV2::Policy::Representation
          command.response_class = Google::Apis::BigtableadminV2::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified Bigtable resource.
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::BigtableadminV2::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_schema_bundle_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v2/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::BigtableadminV2::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::BigtableadminV2::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a location.
        # @param [String] name
        #   Resource name for the location.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}', options)
          command.response_representation = Google::Apis::BigtableadminV2::Location::Representation
          command.response_class = Google::Apis::BigtableadminV2::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
        # @param [Array<String>, String] extra_location_types
        #   Optional. A list of extra location types that should be used as conditions for
        #   controlling the visibility of the locations.
        # @param [String] filter
        #   A filter to narrow down results to a preferred subset. The filtering language
        #   accepts strings like `"displayName=tokyo"`, and is documented in more detail
        #   in [AIP-160](https://google.aip.dev/160).
        # @param [Fixnum] page_size
        #   The maximum number of results to return. If not set, the service selects a
        #   default.
        # @param [String] page_token
        #   A page token received from the `next_page_token` field in the response. Send
        #   that page token to receive the subsequent page.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigtableadminV2::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigtableadminV2::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, extra_location_types: nil, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v2/{+name}/locations', options)
          command.response_representation = Google::Apis::BigtableadminV2::ListLocationsResponse::Representation
          command.response_class = Google::Apis::BigtableadminV2::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['extraLocationTypes'] = extra_location_types unless extra_location_types.nil?
          command.query['filter'] = filter unless filter.nil?
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
