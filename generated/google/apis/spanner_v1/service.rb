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
    module SpannerV1
      # Cloud Spanner API
      #
      # Cloud Spanner is a managed, mission-critical, globally consistent and scalable
      #  relational database service.
      #
      # @example
      #    require 'google/apis/spanner_v1'
      #
      #    Spanner = Google::Apis::SpannerV1 # Alias the module
      #    service = Spanner::SpannerService.new
      #
      # @see https://cloud.google.com/spanner/
      class SpannerService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://spanner.googleapis.com/', '')
          @batch_path = 'batch'
        end
        
        # Gets information about a particular instance configuration.
        # @param [String] name
        #   Required. The name of the requested instance configuration. Values are of the
        #   form `projects//instanceConfigs/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::InstanceConfig] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::InstanceConfig]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_config(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::InstanceConfig::Representation
          command.response_class = Google::Apis::SpannerV1::InstanceConfig
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the supported instance configurations for a given project.
        # @param [String] parent
        #   Required. The name of the project for which a list of supported instance
        #   configurations is requested. Values are of the form `projects/`.
        # @param [Fixnum] page_size
        #   Number of instance configurations to be returned in the response. If 0 or less,
        #   defaults to the server's maximum allowed page size.
        # @param [String] page_token
        #   If non-empty, `page_token` should contain a next_page_token from a previous
        #   ListInstanceConfigsResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ListInstanceConfigsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListInstanceConfigsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_configs(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instanceConfigs', options)
          command.response_representation = Google::Apis::SpannerV1::ListInstanceConfigsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListInstanceConfigsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an instance and begins preparing it to begin serving. The returned
        # long-running operation can be used to track the progress of preparing the new
        # instance. The instance name is assigned by the caller. If the named instance
        # already exists, `CreateInstance` returns `ALREADY_EXISTS`. Immediately upon
        # completion of this request: * The instance is readable via the API, with all
        # requested attributes but no allocated resources. Its state is `CREATING`.
        # Until completion of the returned operation: * Cancelling the operation renders
        # the instance immediately unreadable via the API. * The instance can be deleted.
        # * All other attempts to modify the instance are rejected. Upon completion of
        # the returned operation: * Billing for all successfully-allocated resources
        # begins (some types may have lower than the requested levels). * Databases can
        # be created in the instance. * The instance's allocated resource levels are
        # readable via the API. * The instance's state becomes `READY`. The returned
        # long-running operation will have a name of the format `/operations/` and can
        # be used to track creation of the instance. The metadata field type is
        # CreateInstanceMetadata. The response field type is Instance, if successful.
        # @param [String] parent
        #   Required. The name of the project in which to create the instance. Values are
        #   of the form `projects/`.
        # @param [Google::Apis::SpannerV1::CreateInstanceRequest] create_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_instance(parent, create_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/instances', options)
          command.request_representation = Google::Apis::SpannerV1::CreateInstanceRequest::Representation
          command.request_object = create_instance_request_object
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an instance. Immediately upon completion of the request: * Billing
        # ceases for all of the instance's reserved resources. Soon afterward: * The
        # instance and *all of its databases* immediately and irrevocably disappear from
        # the API. All data in the databases is permanently deleted.
        # @param [String] name
        #   Required. The name of the instance to be deleted. Values are of the form `
        #   projects//instances/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets information about a particular instance.
        # @param [String] name
        #   Required. The name of the requested instance. Values are of the form `projects/
        #   /instances/`.
        # @param [String] field_mask
        #   If field_mask is present, specifies the subset of Instance fields that should
        #   be returned. If absent, all Instance fields are returned.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Instance] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Instance]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance(name, field_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Instance::Representation
          command.response_class = Google::Apis::SpannerV1::Instance
          command.params['name'] = name unless name.nil?
          command.query['fieldMask'] = field_mask unless field_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for an instance resource. Returns an empty
        # policy if an instance exists but does not have a policy set. Authorization
        # requires `spanner.instances.getIamPolicy` on resource.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which the policy is being retrieved.
        #   The format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for database resources.
        # @param [Google::Apis::SpannerV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_instance_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::SpannerV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::SpannerV1::Policy::Representation
          command.response_class = Google::Apis::SpannerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all instances in the given project.
        # @param [String] parent
        #   Required. The name of the project for which a list of instances is requested.
        #   Values are of the form `projects/`.
        # @param [String] filter
        #   An expression for filtering the results of the request. Filter rules are case
        #   insensitive. The fields eligible for filtering are: * `name` * `display_name` *
        #   `labels.key` where key is the name of a label Some examples of using filters
        #   are: * `name:*` --> The instance has a name. * `name:Howl` --> The instance's
        #   name contains the string "howl". * `name:HOWL` --> Equivalent to above. * `
        #   NAME:howl` --> Equivalent to above. * `labels.env:*` --> The instance has the
        #   label "env". * `labels.env:dev` --> The instance has the label "env" and the
        #   value of the label contains the string "dev". * `name:howl labels.env:dev` -->
        #   The instance's name contains "howl" and it has the label "env" with its value
        #   containing "dev".
        # @param [Fixnum] page_size
        #   Number of instances to be returned in the response. If 0 or less, defaults to
        #   the server's maximum allowed page size.
        # @param [String] page_token
        #   If non-empty, `page_token` should contain a next_page_token from a previous
        #   ListInstancesResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ListInstancesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListInstancesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instances(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instances', options)
          command.response_representation = Google::Apis::SpannerV1::ListInstancesResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListInstancesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an instance, and begins allocating or releasing resources as requested.
        # The returned long-running operation can be used to track the progress of
        # updating the instance. If the named instance does not exist, returns `
        # NOT_FOUND`. Immediately upon completion of this request: * For resource types
        # for which a decrease in the instance's allocation has been requested, billing
        # is based on the newly-requested level. Until completion of the returned
        # operation: * Cancelling the operation sets its metadata's cancel_time, and
        # begins restoring resources to their pre-request values. The operation is
        # guaranteed to succeed at undoing all resource changes, after which point it
        # terminates with a `CANCELLED` status. * All other attempts to modify the
        # instance are rejected. * Reading the instance via the API continues to give
        # the pre-request resource levels. Upon completion of the returned operation: *
        # Billing begins for all successfully-allocated resources (some types may have
        # lower than the requested levels). * All newly-reserved resources are available
        # for serving the instance's tables. * The instance's new resource levels are
        # readable via the API. The returned long-running operation will have a name of
        # the format `/operations/` and can be used to track the instance modification.
        # The metadata field type is UpdateInstanceMetadata. The response field type is
        # Instance, if successful. Authorization requires `spanner.instances.update`
        # permission on resource name.
        # @param [String] name
        #   Required. A unique identifier for the instance, which cannot be changed after
        #   the instance is created. Values are of the form `projects//instances/a-z*[a-z0-
        #   9]`. The final segment of the name must be between 2 and 64 characters in
        #   length.
        # @param [Google::Apis::SpannerV1::UpdateInstanceRequest] update_instance_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance(name, update_instance_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SpannerV1::UpdateInstanceRequest::Representation
          command.request_object = update_instance_request_object
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on an instance resource. Replaces any existing
        # policy. Authorization requires `spanner.instances.setIamPolicy` on resource.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which the policy is being set. The
        #   format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for databases resources.
        # @param [Google::Apis::SpannerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_instance_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::SpannerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::SpannerV1::Policy::Representation
          command.response_class = Google::Apis::SpannerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified instance resource.
        # Attempting this RPC on a non-existent Cloud Spanner instance resource will
        # result in a NOT_FOUND error if the user has `spanner.instances.list`
        # permission on the containing Google Cloud Project. Otherwise returns an empty
        # set of permissions.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which permissions are being tested.
        #   The format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for database resources.
        # @param [Google::Apis::SpannerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_instance_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::SpannerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::SpannerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the backup long-running operations in the given instance. A backup
        # operation has a name of the form `projects//instances//backups//operations/`.
        # The long-running operation metadata field type `metadata.type_url` describes
        # the type of the metadata. Operations returned include those that have
        # completed/failed/canceled within the last 7 days, and pending operations.
        # Operations returned are ordered by `operation.metadata.value.progress.
        # start_time` in descending order starting from the most recently started
        # operation.
        # @param [String] parent
        #   Required. The instance of the backup operations. Values are of the form `
        #   projects//instances/`.
        # @param [String] filter
        #   An expression that filters the list of returned backup operations. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string, a number, or a boolean. The comparison
        #   operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is
        #   the contains operator. Filter rules are not case sensitive. The following
        #   fields in the operation are eligible for filtering: * `name` - The name of the
        #   long-running operation * `done` - False if the operation is in progress, else
        #   true. * `metadata.@type` - the type of metadata. For example, the type string
        #   for CreateBackupMetadata is `type.googleapis.com/google.spanner.admin.database.
        #   v1.CreateBackupMetadata`. * `metadata.` - any field in metadata.value. * `
        #   error` - Error associated with the long-running operation. * `response.@type` -
        #   the type of response. * `response.` - any field in response.value. You can
        #   combine multiple expressions by enclosing each expression in parentheses. By
        #   default, expressions are combined with AND logic, but you can specify AND, OR,
        #   and NOT logic explicitly. Here are a few examples: * `done:true` - The
        #   operation is complete. * `metadata.database:prod` - The database the backup
        #   was taken from has a name containing the string "prod". * `(metadata.@type=
        #   type.googleapis.com/google.spanner.admin.database.v1.CreateBackupMetadata) AND`
        #   \ `(metadata.name:howl) AND` \ `(metadata.progress.start_time < \"2018-03-
        #   28T14:50:00Z\") AND` \ `(error:*)` - Returns operations where: * The operation'
        #   s metadata type is CreateBackupMetadata. * The backup name contains the string
        #   "howl". * The operation started before 2018-03-28T14:50:00Z. * The operation
        #   resulted in an error.
        # @param [Fixnum] page_size
        #   Number of operations to be returned in the response. If 0 or less, defaults to
        #   the server's maximum allowed page size.
        # @param [String] page_token
        #   If non-empty, `page_token` should contain a next_page_token from a previous
        #   ListBackupOperationsResponse to the same `parent` and with the same `filter`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ListBackupOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListBackupOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_backupoperations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backupOperations', options)
          command.response_representation = Google::Apis::SpannerV1::ListBackupOperationsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListBackupOperationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts creating a new Cloud Spanner Backup. The returned backup long-running
        # operation will have a name of the format `projects//instances//backups//
        # operations/` and can be used to track creation of the backup. The metadata
        # field type is CreateBackupMetadata. The response field type is Backup, if
        # successful. Cancelling the returned operation will stop the creation and
        # delete the backup. There can be only one pending backup creation per database.
        # Backup creation of different databases can run concurrently.
        # @param [String] parent
        #   Required. The name of the instance in which the backup will be created. This
        #   must be the same instance that contains the database the backup will be
        #   created from. The backup will be stored in the location(s) specified in the
        #   instance configuration of this instance. Values are of the form `projects//
        #   instances/`.
        # @param [Google::Apis::SpannerV1::Backup] backup_object
        # @param [String] backup_id
        #   Required. The id of the backup to be created. The `backup_id` appended to `
        #   parent` forms the full backup name of the form `projects//instances//backups/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_backup(parent, backup_object = nil, backup_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/backups', options)
          command.request_representation = Google::Apis::SpannerV1::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['backupId'] = backup_id unless backup_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a pending or completed Backup.
        # @param [String] name
        #   Required. Name of the backup to delete. Values are of the form `projects//
        #   instances//backups/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets metadata on a pending or completed Backup.
        # @param [String] name
        #   Required. Name of the backup. Values are of the form `projects//instances//
        #   backups/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_backup(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Backup::Representation
          command.response_class = Google::Apis::SpannerV1::Backup
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a database or backup resource. Returns an
        # empty policy if a database or backup exists but does not have a policy set.
        # Authorization requires `spanner.databases.getIamPolicy` permission on resource.
        # For backups, authorization requires `spanner.backups.getIamPolicy` permission
        # on resource.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which the policy is being retrieved.
        #   The format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for database resources.
        # @param [Google::Apis::SpannerV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_backup_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::SpannerV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::SpannerV1::Policy::Representation
          command.response_class = Google::Apis::SpannerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists completed and pending backups. Backups returned are ordered by `
        # create_time` in descending order, starting from the most recent `create_time`.
        # @param [String] parent
        #   Required. The instance to list backups from. Values are of the form `projects//
        #   instances/`.
        # @param [String] filter
        #   An expression that filters the list of returned backups. A filter expression
        #   consists of a field name, a comparison operator, and a value for filtering.
        #   The value must be a string, a number, or a boolean. The comparison operator
        #   must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is the
        #   contains operator. Filter rules are not case sensitive. The following fields
        #   in the Backup are eligible for filtering: * `name` * `database` * `state` * `
        #   create_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `
        #   expire_time` (and values are of the format YYYY-MM-DDTHH:MM:SSZ) * `size_bytes`
        #   You can combine multiple expressions by enclosing each expression in
        #   parentheses. By default, expressions are combined with AND logic, but you can
        #   specify AND, OR, and NOT logic explicitly. Here are a few examples: * `name:
        #   Howl` - The backup's name contains the string "howl". * `database:prod` - The
        #   database's name contains the string "prod". * `state:CREATING` - The backup is
        #   pending creation. * `state:READY` - The backup is fully created and ready for
        #   use. * `(name:howl) AND (create_time < \"2018-03-28T14:50:00Z\")` - The backup
        #   name contains the string "howl" and `create_time` of the backup is before 2018-
        #   03-28T14:50:00Z. * `expire_time < \"2018-03-28T14:50:00Z\"` - The backup `
        #   expire_time` is before 2018-03-28T14:50:00Z. * `size_bytes > 10000000000` -
        #   The backup's size is greater than 10GB
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
        # @yieldparam result [Google::Apis::SpannerV1::ListBackupsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListBackupsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_backups(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/backups', options)
          command.response_representation = Google::Apis::SpannerV1::ListBackupsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListBackupsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a pending or completed Backup.
        # @param [String] name
        #   Output only for the CreateBackup operation. Required for the UpdateBackup
        #   operation. A globally unique identifier for the backup which cannot be changed.
        #   Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final
        #   segment of the name must be between 2 and 60 characters in length. The backup
        #   is stored in the location(s) specified in the instance configuration of the
        #   instance containing the backup, identified by the prefix of the backup name of
        #   the form `projects//instances/`.
        # @param [Google::Apis::SpannerV1::Backup] backup_object
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
        # @yieldparam result [Google::Apis::SpannerV1::Backup] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Backup]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_instance_backup(name, backup_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::SpannerV1::Backup::Representation
          command.request_object = backup_object
          command.response_representation = Google::Apis::SpannerV1::Backup::Representation
          command.response_class = Google::Apis::SpannerV1::Backup
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a database or backup resource. Replaces any
        # existing policy. Authorization requires `spanner.databases.setIamPolicy`
        # permission on resource. For backups, authorization requires `spanner.backups.
        # setIamPolicy` permission on resource.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which the policy is being set. The
        #   format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for databases resources.
        # @param [Google::Apis::SpannerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_backup_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::SpannerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::SpannerV1::Policy::Representation
          command.response_class = Google::Apis::SpannerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified database or backup
        # resource. Attempting this RPC on a non-existent Cloud Spanner database will
        # result in a NOT_FOUND error if the user has `spanner.databases.list`
        # permission on the containing Cloud Spanner instance. Otherwise returns an
        # empty set of permissions. Calling this method on a backup that does not exist
        # will result in a NOT_FOUND error if the user has `spanner.backups.list`
        # permission on the containing instance.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which permissions are being tested.
        #   The format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for database resources.
        # @param [Google::Apis::SpannerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_backup_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::SpannerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::SpannerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
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
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_instance_backup_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
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
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_backup_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
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
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_backup_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
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
        # @yieldparam result [Google::Apis::SpannerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_backup_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists database longrunning-operations. A database operation has a name of the
        # form `projects//instances//databases//operations/`. The long-running operation
        # metadata field type `metadata.type_url` describes the type of the metadata.
        # Operations returned include those that have completed/failed/canceled within
        # the last 7 days, and pending operations.
        # @param [String] parent
        #   Required. The instance of the database operations. Values are of the form `
        #   projects//instances/`.
        # @param [String] filter
        #   An expression that filters the list of returned operations. A filter
        #   expression consists of a field name, a comparison operator, and a value for
        #   filtering. The value must be a string, a number, or a boolean. The comparison
        #   operator must be one of: `<`, `>`, `<=`, `>=`, `!=`, `=`, or `:`. Colon `:` is
        #   the contains operator. Filter rules are not case sensitive. The following
        #   fields in the Operation are eligible for filtering: * `name` - The name of the
        #   long-running operation * `done` - False if the operation is in progress, else
        #   true. * `metadata.@type` - the type of metadata. For example, the type string
        #   for RestoreDatabaseMetadata is `type.googleapis.com/google.spanner.admin.
        #   database.v1.RestoreDatabaseMetadata`. * `metadata.` - any field in metadata.
        #   value. * `error` - Error associated with the long-running operation. * `
        #   response.@type` - the type of response. * `response.` - any field in response.
        #   value. You can combine multiple expressions by enclosing each expression in
        #   parentheses. By default, expressions are combined with AND logic. However, you
        #   can specify AND, OR, and NOT logic explicitly. Here are a few examples: * `
        #   done:true` - The operation is complete. * `(metadata.@type=type.googleapis.com/
        #   google.spanner.admin.database.v1.RestoreDatabaseMetadata) AND` \ `(metadata.
        #   source_type:BACKUP) AND` \ `(metadata.backup_info.backup:backup_howl) AND` \ `(
        #   metadata.name:restored_howl) AND` \ `(metadata.progress.start_time < \"2018-03-
        #   28T14:50:00Z\") AND` \ `(error:*)` - Return operations where: * The operation'
        #   s metadata type is RestoreDatabaseMetadata. * The database is restored from a
        #   backup. * The backup name contains "backup_howl". * The restored database's
        #   name contains "restored_howl". * The operation started before 2018-03-28T14:50:
        #   00Z. * The operation resulted in an error.
        # @param [Fixnum] page_size
        #   Number of operations to be returned in the response. If 0 or less, defaults to
        #   the server's maximum allowed page size.
        # @param [String] page_token
        #   If non-empty, `page_token` should contain a next_page_token from a previous
        #   ListDatabaseOperationsResponse to the same `parent` and with the same `filter`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ListDatabaseOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListDatabaseOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_databaseoperations(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/databaseOperations', options)
          command.response_representation = Google::Apis::SpannerV1::ListDatabaseOperationsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListDatabaseOperationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new Cloud Spanner database and starts to prepare it for serving. The
        # returned long-running operation will have a name of the format `/operations/`
        # and can be used to track preparation of the database. The metadata field type
        # is CreateDatabaseMetadata. The response field type is Database, if successful.
        # @param [String] parent
        #   Required. The name of the instance that will serve the new database. Values
        #   are of the form `projects//instances/`.
        # @param [Google::Apis::SpannerV1::CreateDatabaseRequest] create_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_database(parent, create_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/databases', options)
          command.request_representation = Google::Apis::SpannerV1::CreateDatabaseRequest::Representation
          command.request_object = create_database_request_object
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Drops (aka deletes) a Cloud Spanner database. Completed backups for the
        # database will be retained according to their `expire_time`.
        # @param [String] database
        #   Required. The database to be dropped.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def drop_project_instance_database_database(database, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+database}', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the state of a Cloud Spanner database.
        # @param [String] name
        #   Required. The name of the requested database. Values are of the form `projects/
        #   /instances//databases/`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Database] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Database]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_database(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Database::Representation
          command.response_class = Google::Apis::SpannerV1::Database
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns the schema of a Cloud Spanner database as a list of formatted DDL
        # statements. This method does not show pending schema updates, those may be
        # queried using the Operations API.
        # @param [String] database
        #   Required. The database whose schema we wish to get. Values are of the form `
        #   projects//instances//databases/`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::GetDatabaseDdlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::GetDatabaseDdlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_database_ddl(database, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+database}/ddl', options)
          command.response_representation = Google::Apis::SpannerV1::GetDatabaseDdlResponse::Representation
          command.response_class = Google::Apis::SpannerV1::GetDatabaseDdlResponse
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the access control policy for a database or backup resource. Returns an
        # empty policy if a database or backup exists but does not have a policy set.
        # Authorization requires `spanner.databases.getIamPolicy` permission on resource.
        # For backups, authorization requires `spanner.backups.getIamPolicy` permission
        # on resource.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which the policy is being retrieved.
        #   The format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for database resources.
        # @param [Google::Apis::SpannerV1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_database_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::SpannerV1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::SpannerV1::Policy::Representation
          command.response_class = Google::Apis::SpannerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Cloud Spanner databases.
        # @param [String] parent
        #   Required. The instance whose databases should be listed. Values are of the
        #   form `projects//instances/`.
        # @param [Fixnum] page_size
        #   Number of databases to be returned in the response. If 0 or less, defaults to
        #   the server's maximum allowed page size.
        # @param [String] page_token
        #   If non-empty, `page_token` should contain a next_page_token from a previous
        #   ListDatabasesResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ListDatabasesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListDatabasesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_databases(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/databases', options)
          command.response_representation = Google::Apis::SpannerV1::ListDatabasesResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListDatabasesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create a new database by restoring from a completed backup. The new database
        # must be in the same project and in an instance with the same instance
        # configuration as the instance containing the backup. The returned database
        # long-running operation has a name of the format `projects//instances//
        # databases//operations/`, and can be used to track the progress of the
        # operation, and to cancel it. The metadata field type is
        # RestoreDatabaseMetadata. The response type is Database, if successful.
        # Cancelling the returned operation will stop the restore and delete the
        # database. There can be only one database being restored into an instance at a
        # time. Once the restore operation completes, a new restore operation can be
        # initiated, without waiting for the optimize operation associated with the
        # first restore to complete.
        # @param [String] parent
        #   Required. The name of the instance in which to create the restored database.
        #   This instance must be in the same project and have the same instance
        #   configuration as the instance containing the source backup. Values are of the
        #   form `projects//instances/`.
        # @param [Google::Apis::SpannerV1::RestoreDatabaseRequest] restore_database_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restore_database(parent, restore_database_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/databases:restore', options)
          command.request_representation = Google::Apis::SpannerV1::RestoreDatabaseRequest::Representation
          command.request_object = restore_database_request_object
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the access control policy on a database or backup resource. Replaces any
        # existing policy. Authorization requires `spanner.databases.setIamPolicy`
        # permission on resource. For backups, authorization requires `spanner.backups.
        # setIamPolicy` permission on resource.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which the policy is being set. The
        #   format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for databases resources.
        # @param [Google::Apis::SpannerV1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_database_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::SpannerV1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::SpannerV1::Policy::Representation
          command.response_class = Google::Apis::SpannerV1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns permissions that the caller has on the specified database or backup
        # resource. Attempting this RPC on a non-existent Cloud Spanner database will
        # result in a NOT_FOUND error if the user has `spanner.databases.list`
        # permission on the containing Cloud Spanner instance. Otherwise returns an
        # empty set of permissions. Calling this method on a backup that does not exist
        # will result in a NOT_FOUND error if the user has `spanner.backups.list`
        # permission on the containing instance.
        # @param [String] resource
        #   REQUIRED: The Cloud Spanner resource for which permissions are being tested.
        #   The format is `projects//instances/` for instance resources and `projects//
        #   instances//databases/` for database resources.
        # @param [Google::Apis::SpannerV1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_database_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::SpannerV1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::SpannerV1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates the schema of a Cloud Spanner database by creating/altering/dropping
        # tables, columns, indexes, etc. The returned long-running operation will have a
        # name of the format `/operations/` and can be used to track execution of the
        # schema change(s). The metadata field type is UpdateDatabaseDdlMetadata. The
        # operation has no response.
        # @param [String] database
        #   Required. The database to update.
        # @param [Google::Apis::SpannerV1::UpdateDatabaseDdlRequest] update_database_ddl_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_instance_database_ddl(database, update_database_ddl_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+database}/ddl', options)
          command.request_representation = Google::Apis::SpannerV1::UpdateDatabaseDdlRequest::Representation
          command.request_object = update_database_ddl_request_object
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
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
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_instance_database_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
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
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_database_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
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
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_database_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
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
        # @yieldparam result [Google::Apis::SpannerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_database_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates multiple new sessions. This API can be used to initialize a session
        # cache on the clients. See https://goo.gl/TgSFN2 for best practices on session
        # cache management.
        # @param [String] database
        #   Required. The database in which the new sessions are created.
        # @param [Google::Apis::SpannerV1::BatchCreateSessionsRequest] batch_create_sessions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::BatchCreateSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::BatchCreateSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def batch_create_sessions(database, batch_create_sessions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/sessions:batchCreate', options)
          command.request_representation = Google::Apis::SpannerV1::BatchCreateSessionsRequest::Representation
          command.request_object = batch_create_sessions_request_object
          command.response_representation = Google::Apis::SpannerV1::BatchCreateSessionsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::BatchCreateSessionsResponse
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Begins a new transaction. This step can often be skipped: Read, ExecuteSql and
        # Commit can begin a new transaction as a side-effect.
        # @param [String] session
        #   Required. The session in which the transaction runs.
        # @param [Google::Apis::SpannerV1::BeginTransactionRequest] begin_transaction_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Transaction] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Transaction]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def begin_session_transaction(session, begin_transaction_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:beginTransaction', options)
          command.request_representation = Google::Apis::SpannerV1::BeginTransactionRequest::Representation
          command.request_object = begin_transaction_request_object
          command.response_representation = Google::Apis::SpannerV1::Transaction::Representation
          command.response_class = Google::Apis::SpannerV1::Transaction
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Commits a transaction. The request includes the mutations to be applied to
        # rows in the database. `Commit` might return an `ABORTED` error. This can occur
        # at any time; commonly, the cause is conflicts with concurrent transactions.
        # However, it can also happen for a variety of other reasons. If `Commit`
        # returns `ABORTED`, the caller should re-attempt the transaction from the
        # beginning, re-using the same session. On very rare occasions, `Commit` might
        # return `UNKNOWN`. This can happen, for example, if the client job experiences
        # a 1+ hour networking failure. At that point, Cloud Spanner has lost track of
        # the transaction outcome and we recommend that you perform another read from
        # the database to see the state of things as they are now.
        # @param [String] session
        #   Required. The session in which the transaction to be committed is running.
        # @param [Google::Apis::SpannerV1::CommitRequest] commit_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::CommitResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::CommitResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def commit_session(session, commit_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:commit', options)
          command.request_representation = Google::Apis::SpannerV1::CommitRequest::Representation
          command.request_object = commit_request_object
          command.response_representation = Google::Apis::SpannerV1::CommitResponse::Representation
          command.response_class = Google::Apis::SpannerV1::CommitResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new session. A session can be used to perform transactions that read
        # and/or modify data in a Cloud Spanner database. Sessions are meant to be
        # reused for many consecutive transactions. Sessions can only execute one
        # transaction at a time. To execute multiple concurrent read-write/write-only
        # transactions, create multiple sessions. Note that standalone reads and queries
        # use a transaction internally, and count toward the one transaction limit.
        # Active sessions use additional server resources, so it is a good idea to
        # delete idle and unneeded sessions. Aside from explicit deletes, Cloud Spanner
        # may delete sessions for which no operations are sent for more than an hour. If
        # a session is deleted, requests to it return `NOT_FOUND`. Idle sessions can be
        # kept alive by sending a trivial SQL query periodically, e.g., `"SELECT 1"`.
        # @param [String] database
        #   Required. The database in which the new session is created.
        # @param [Google::Apis::SpannerV1::CreateSessionRequest] create_session_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Session] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Session]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_instance_database_session(database, create_session_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+database}/sessions', options)
          command.request_representation = Google::Apis::SpannerV1::CreateSessionRequest::Representation
          command.request_object = create_session_request_object
          command.response_representation = Google::Apis::SpannerV1::Session::Representation
          command.response_class = Google::Apis::SpannerV1::Session
          command.params['database'] = database unless database.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Ends a session, releasing server resources associated with it. This will
        # asynchronously trigger cancellation of any operations that are running with
        # this session.
        # @param [String] name
        #   Required. The name of the session to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_database_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes a batch of SQL DML statements. This method allows many statements to
        # be run with lower latency than submitting them sequentially with ExecuteSql.
        # Statements are executed in sequential order. A request can succeed even if a
        # statement fails. The ExecuteBatchDmlResponse.status field in the response
        # provides information about the statement that failed. Clients must inspect
        # this field to determine whether an error occurred. Execution stops after the
        # first failed statement; the remaining statements are not executed.
        # @param [String] session
        #   Required. The session in which the DML statements should be performed.
        # @param [Google::Apis::SpannerV1::ExecuteBatchDmlRequest] execute_batch_dml_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ExecuteBatchDmlResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ExecuteBatchDmlResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_session_batch_dml(session, execute_batch_dml_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:executeBatchDml', options)
          command.request_representation = Google::Apis::SpannerV1::ExecuteBatchDmlRequest::Representation
          command.request_object = execute_batch_dml_request_object
          command.response_representation = Google::Apis::SpannerV1::ExecuteBatchDmlResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ExecuteBatchDmlResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Executes an SQL statement, returning all results in a single reply. This
        # method cannot be used to return a result set larger than 10 MiB; if the query
        # yields more data than that, the query fails with a `FAILED_PRECONDITION` error.
        # Operations inside read-write transactions might return `ABORTED`. If this
        # occurs, the application should restart the transaction from the beginning. See
        # Transaction for more details. Larger result sets can be fetched in streaming
        # fashion by calling ExecuteStreamingSql instead.
        # @param [String] session
        #   Required. The session in which the SQL query should be performed.
        # @param [Google::Apis::SpannerV1::ExecuteSqlRequest] execute_sql_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ResultSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ResultSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_session_sql(session, execute_sql_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:executeSql', options)
          command.request_representation = Google::Apis::SpannerV1::ExecuteSqlRequest::Representation
          command.request_object = execute_sql_request_object
          command.response_representation = Google::Apis::SpannerV1::ResultSet::Representation
          command.response_class = Google::Apis::SpannerV1::ResultSet
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Like ExecuteSql, except returns the result set as a stream. Unlike ExecuteSql,
        # there is no limit on the size of the returned result set. However, no
        # individual row in the result set can exceed 100 MiB, and no column value can
        # exceed 10 MiB.
        # @param [String] session
        #   Required. The session in which the SQL query should be performed.
        # @param [Google::Apis::SpannerV1::ExecuteSqlRequest] execute_sql_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::PartialResultSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::PartialResultSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_project_instance_database_session_streaming_sql(session, execute_sql_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:executeStreamingSql', options)
          command.request_representation = Google::Apis::SpannerV1::ExecuteSqlRequest::Representation
          command.request_object = execute_sql_request_object
          command.response_representation = Google::Apis::SpannerV1::PartialResultSet::Representation
          command.response_class = Google::Apis::SpannerV1::PartialResultSet
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a session. Returns `NOT_FOUND` if the session does not exist. This is
        # mainly useful for determining whether a session is still alive.
        # @param [String] name
        #   Required. The name of the session to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Session] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Session]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_database_session(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Session::Representation
          command.response_class = Google::Apis::SpannerV1::Session
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all sessions in a given database.
        # @param [String] database
        #   Required. The database in which to list sessions.
        # @param [String] filter
        #   An expression for filtering the results of the request. Filter rules are case
        #   insensitive. The fields eligible for filtering are: * `labels.key` where key
        #   is the name of a label Some examples of using filters are: * `labels.env:*` -->
        #   The session has the label "env". * `labels.env:dev` --> The session has the
        #   label "env" and the value of the label contains the string "dev".
        # @param [Fixnum] page_size
        #   Number of sessions to be returned in the response. If 0 or less, defaults to
        #   the server's maximum allowed page size.
        # @param [String] page_token
        #   If non-empty, `page_token` should contain a next_page_token from a previous
        #   ListSessionsResponse.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ListSessionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListSessionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_database_sessions(database, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+database}/sessions', options)
          command.response_representation = Google::Apis::SpannerV1::ListSessionsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListSessionsResponse
          command.params['database'] = database unless database.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a set of partition tokens that can be used to execute a query
        # operation in parallel. Each of the returned partition tokens can be used by
        # ExecuteStreamingSql to specify a subset of the query result to read. The same
        # session and read-only transaction must be used by the PartitionQueryRequest
        # used to create the partition tokens and the ExecuteSqlRequests that use the
        # partition tokens. Partition tokens become invalid when the session used to
        # create them is deleted, is idle for too long, begins a new transaction, or
        # becomes too old. When any of these happen, it is not possible to resume the
        # query, and the whole operation must be restarted from the beginning.
        # @param [String] session
        #   Required. The session used to create the partitions.
        # @param [Google::Apis::SpannerV1::PartitionQueryRequest] partition_query_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::PartitionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::PartitionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def partition_session_query(session, partition_query_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:partitionQuery', options)
          command.request_representation = Google::Apis::SpannerV1::PartitionQueryRequest::Representation
          command.request_object = partition_query_request_object
          command.response_representation = Google::Apis::SpannerV1::PartitionResponse::Representation
          command.response_class = Google::Apis::SpannerV1::PartitionResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a set of partition tokens that can be used to execute a read operation
        # in parallel. Each of the returned partition tokens can be used by
        # StreamingRead to specify a subset of the read result to read. The same session
        # and read-only transaction must be used by the PartitionReadRequest used to
        # create the partition tokens and the ReadRequests that use the partition tokens.
        # There are no ordering guarantees on rows returned among the returned
        # partition tokens, or even within each individual StreamingRead call issued
        # with a partition_token. Partition tokens become invalid when the session used
        # to create them is deleted, is idle for too long, begins a new transaction, or
        # becomes too old. When any of these happen, it is not possible to resume the
        # read, and the whole operation must be restarted from the beginning.
        # @param [String] session
        #   Required. The session used to create the partitions.
        # @param [Google::Apis::SpannerV1::PartitionReadRequest] partition_read_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::PartitionResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::PartitionResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def partition_session_read(session, partition_read_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:partitionRead', options)
          command.request_representation = Google::Apis::SpannerV1::PartitionReadRequest::Representation
          command.request_object = partition_read_request_object
          command.response_representation = Google::Apis::SpannerV1::PartitionResponse::Representation
          command.response_class = Google::Apis::SpannerV1::PartitionResponse
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Reads rows from the database using key lookups and scans, as a simple key/
        # value style alternative to ExecuteSql. This method cannot be used to return a
        # result set larger than 10 MiB; if the read matches more data than that, the
        # read fails with a `FAILED_PRECONDITION` error. Reads inside read-write
        # transactions might return `ABORTED`. If this occurs, the application should
        # restart the transaction from the beginning. See Transaction for more details.
        # Larger result sets can be yielded in streaming fashion by calling
        # StreamingRead instead.
        # @param [String] session
        #   Required. The session in which the read should be performed.
        # @param [Google::Apis::SpannerV1::ReadRequest] read_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::ResultSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ResultSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def read_session(session, read_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:read', options)
          command.request_representation = Google::Apis::SpannerV1::ReadRequest::Representation
          command.request_object = read_request_object
          command.response_representation = Google::Apis::SpannerV1::ResultSet::Representation
          command.response_class = Google::Apis::SpannerV1::ResultSet
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Rolls back a transaction, releasing any locks it holds. It is a good idea to
        # call this for any transaction that includes one or more Read or ExecuteSql
        # requests and ultimately decides not to commit. `Rollback` returns `OK` if it
        # successfully aborts the transaction, the transaction was already aborted, or
        # the transaction is not found. `Rollback` never returns `ABORTED`.
        # @param [String] session
        #   Required. The session in which the transaction to roll back is running.
        # @param [Google::Apis::SpannerV1::RollbackRequest] rollback_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def rollback_session(session, rollback_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:rollback', options)
          command.request_representation = Google::Apis::SpannerV1::RollbackRequest::Representation
          command.request_object = rollback_request_object
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Like Read, except returns the result set as a stream. Unlike Read, there is no
        # limit on the size of the returned result set. However, no individual row in
        # the result set can exceed 100 MiB, and no column value can exceed 10 MiB.
        # @param [String] session
        #   Required. The session in which the read should be performed.
        # @param [Google::Apis::SpannerV1::ReadRequest] read_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::SpannerV1::PartialResultSet] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::PartialResultSet]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def streaming_project_instance_database_session_read(session, read_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+session}:streamingRead', options)
          command.request_representation = Google::Apis::SpannerV1::ReadRequest::Representation
          command.request_object = read_request_object
          command.response_representation = Google::Apis::SpannerV1::PartialResultSet::Representation
          command.response_class = Google::Apis::SpannerV1::PartialResultSet
          command.params['session'] = session unless session.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Starts asynchronous cancellation on a long-running operation. The server makes
        # a best effort to cancel the operation, but success is not guaranteed. If the
        # server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.
        # Clients can use Operations.GetOperation or other methods to check whether the
        # cancellation succeeded or whether the operation completed despite cancellation.
        # On successful cancellation, the operation is not deleted; instead, it becomes
        # an operation with an Operation.error value with a google.rpc.Status.code of 1,
        # corresponding to `Code.CANCELLED`.
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
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_project_instance_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
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
        # @yieldparam result [Google::Apis::SpannerV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_instance_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Empty::Representation
          command.response_class = Google::Apis::SpannerV1::Empty
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
        # @yieldparam result [Google::Apis::SpannerV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_instance_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::Operation::Representation
          command.response_class = Google::Apis::SpannerV1::Operation
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
        # @yieldparam result [Google::Apis::SpannerV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::SpannerV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_instance_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::SpannerV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::SpannerV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
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
