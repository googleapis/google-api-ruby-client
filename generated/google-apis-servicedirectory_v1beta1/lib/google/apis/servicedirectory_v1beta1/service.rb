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
    module ServicedirectoryV1beta1
      # Service Directory API
      #
      # Service Directory is a platform for discovering, publishing, and connecting
      #  services.
      #
      # @example
      #    require 'google/apis/servicedirectory_v1beta1'
      #
      #    Servicedirectory = Google::Apis::ServicedirectoryV1beta1 # Alias the module
      #    service = Servicedirectory::ServiceDirectoryService.new
      #
      # @see https://cloud.google.com/service-directory
      class ServiceDirectoryService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://servicedirectory.googleapis.com/', '',
                client_name: 'google-apis-servicedirectory_v1beta1',
                client_version: Google::Apis::ServicedirectoryV1beta1::GEM_VERSION)
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Location] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Location]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Location::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Location
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists information about the supported locations for this service.
        # @param [String] name
        #   The resource that owns the locations collection, if applicable.
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
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::ListLocationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::ListLocationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_locations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/locations', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::ListLocationsResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::ListLocationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a namespace, and returns the new namespace.
        # @param [String] parent
        #   Required. The resource name of the project and location the namespace will be
        #   created in.
        # @param [Google::Apis::ServicedirectoryV1beta1::Namespace] namespace_object
        # @param [String] namespace_id
        #   Required. The Resource ID must be 1-63 characters long, and comply with
        #   RFC1035. Specifically, the name must be 1-63 characters long and match the
        #   regular expression `[a-z](?:[-a-z0-9]`0,61`[a-z0-9])?` which means the first
        #   character must be a lowercase letter, and all following characters must be a
        #   dash, lowercase letter, or digit, except the last character, which cannot be a
        #   dash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Namespace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Namespace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_namespace(parent, namespace_object = nil, namespace_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/namespaces', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::Namespace::Representation
          command.request_object = namespace_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Namespace::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Namespace
          command.params['parent'] = parent unless parent.nil?
          command.query['namespaceId'] = namespace_id unless namespace_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a namespace. This also deletes all services and endpoints in the
        # namespace.
        # @param [String] name
        #   Required. The name of the namespace to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_namespace(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Empty::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a namespace.
        # @param [String] name
        #   Required. The name of the namespace to retrieve.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Namespace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Namespace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_namespace(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Namespace::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Namespace
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_namespace_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all namespaces.
        # @param [String] parent
        #   Required. The resource name of the project and location whose namespaces you'd
        #   like to list.
        # @param [String] filter
        #   Optional. The filter to list results by. General `filter` string syntax: ` ()`
        #   * `` can be `name`, `labels.` for map field, or `attributes.` for attributes
        #   field * `` can be `<`, `>`, `<=`, `>=`, `!=`, `=`, `:`. Of which `:` means `
        #   HAS`, and is roughly the same as `=` * `` must be the same data type as field *
        #   `` can be `AND`, `OR`, `NOT` Examples of valid filters: * `labels.owner`
        #   returns namespaces that have a label with the key `owner`, this is the same as
        #   `labels:owner` * `labels.owner=sd` returns namespaces that have key/value `
        #   owner=sd` * `name>projects/my-project/locations/us-east1/namespaces/namespace-
        #   c` returns namespaces that have name that is alphabetically later than the
        #   string, so "namespace-e" is returned but "namespace-a" is not * `labels.owner!=
        #   sd AND labels.foo=bar` returns namespaces that have `owner` in label key but
        #   value is not `sd` AND have key/value `foo=bar` * `doesnotexist.foo=bar`
        #   returns an empty list. Note that namespace doesn't have a field called "
        #   doesnotexist". Since the filter does not match any namespaces, it returns no
        #   results * `attributes.managed_registration=true` returns namespaces that are
        #   managed by a GCP product or service For more information about filtering, see [
        #   API Filtering](https://aip.dev/160).
        # @param [String] order_by
        #   Optional. The order to list results by. General `order_by` string syntax: ` ()
        #   (,)` * `` allows value: `name` * `` ascending or descending order by ``. If
        #   this is left blank, `asc` is used Note that an empty `order_by` string results
        #   in default order, which is order by `name` in ascending order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::ListNamespacesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::ListNamespacesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_namespaces(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/namespaces', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::ListNamespacesResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::ListNamespacesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a namespace.
        # @param [String] name
        #   Immutable. The resource name for the namespace in the format `projects/*/
        #   locations/*/namespaces/*`.
        # @param [Google::Apis::ServicedirectoryV1beta1::Namespace] namespace_object
        # @param [String] update_mask
        #   Required. List of fields to be updated in this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Namespace] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Namespace]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_namespace(name, namespace_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::Namespace::Representation
          command.request_object = namespace_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Namespace::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Namespace
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_namespace_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests IAM permissions for a resource (namespace, service or service workload
        # only).
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_namespace_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_workload_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_service_workload_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests IAM permissions for a resource (namespace, service or service workload
        # only).
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_service_workload_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a service, and returns the new service.
        # @param [String] parent
        #   Required. The resource name of the namespace this service will belong to.
        # @param [Google::Apis::ServicedirectoryV1beta1::Service] service_object
        # @param [String] service_id
        #   Required. The Resource ID must be 1-63 characters long, and comply with
        #   RFC1035. Specifically, the name must be 1-63 characters long and match the
        #   regular expression `[a-z](?:[-a-z0-9]`0,61`[a-z0-9])?` which means the first
        #   character must be a lowercase letter, and all following characters must be a
        #   dash, lowercase letter, or digit, except the last character, which cannot be a
        #   dash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_namespace_service(parent, service_object = nil, service_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/services', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Service::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Service
          command.params['parent'] = parent unless parent.nil?
          command.query['serviceId'] = service_id unless service_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a service. This also deletes all endpoints associated with the service.
        # @param [String] name
        #   Required. The name of the service to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_namespace_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Empty::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets a service.
        # @param [String] name
        #   Required. The name of the service to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_namespace_service(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Service::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Service
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_service_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all services belonging to a namespace.
        # @param [String] parent
        #   Required. The resource name of the namespace whose services you'd like to list.
        # @param [String] filter
        #   Optional. The filter to list results by. General `filter` string syntax: ` ()`
        #   * `` can be `name` or `metadata.` for map field * `` can be `<`, `>`, `<=`, `>=
        #   `, `!=`, `=`, `:`. Of which `:` means `HAS`, and is roughly the same as `=` * `
        #   ` must be the same data type as field * `` can be `AND`, `OR`, `NOT` Examples
        #   of valid filters: * `metadata.owner` returns services that have a metadata
        #   with the key `owner`, this is the same as `metadata:owner` * `metadata.
        #   protocol=gRPC` returns services that have key/value `protocol=gRPC` * `name>
        #   projects/my-project/locations/us-east1/namespaces/my-namespace/services/
        #   service-c` returns services that have name that is alphabetically later than
        #   the string, so "service-e" is returned but "service-a" is not * `metadata.
        #   owner!=sd AND metadata.foo=bar` returns services that have `owner` in metadata
        #   key but value is not `sd` AND have key/value `foo=bar` * `doesnotexist.foo=bar`
        #   returns an empty list. Note that service doesn't have a field called "
        #   doesnotexist". Since the filter does not match any services, it returns no
        #   results * `attributes.managed_registration=true` returns services that are
        #   managed by a GCP product or service For more information about filtering, see [
        #   API Filtering](https://aip.dev/160).
        # @param [String] order_by
        #   Optional. The order to list results by. General `order_by` string syntax: ` ()
        #   (,)` * `` allows value: `name` * `` ascending or descending order by ``. If
        #   this is left blank, `asc` is used Note that an empty `order_by` string results
        #   in default order, which is order by `name` in ascending order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::ListServicesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::ListServicesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_namespace_services(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/services', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::ListServicesResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::ListServicesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a service.
        # @param [String] name
        #   Immutable. The resource name for the service in the format `projects/*/
        #   locations/*/namespaces/*/services/*`.
        # @param [Google::Apis::ServicedirectoryV1beta1::Service] service_object
        # @param [String] update_mask
        #   Required. List of fields to be updated in this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Service] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Service]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_namespace_service(name, service_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::Service::Representation
          command.request_object = service_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Service::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Service
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns a service and its associated endpoints. Resolving a service is not
        # considered an active developer method.
        # @param [String] name
        #   Required. The name of the service to resolve.
        # @param [Google::Apis::ServicedirectoryV1beta1::ResolveServiceRequest] resolve_service_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::ResolveServiceResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::ResolveServiceResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resolve_service(name, resolve_service_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:resolve', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::ResolveServiceRequest::Representation
          command.request_object = resolve_service_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::ResolveServiceResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::ResolveServiceResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_service_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests IAM permissions for a resource (namespace, service or service workload
        # only).
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_service_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an endpoint, and returns the new endpoint.
        # @param [String] parent
        #   Required. The resource name of the service that this endpoint provides.
        # @param [Google::Apis::ServicedirectoryV1beta1::Endpoint] endpoint_object
        # @param [String] endpoint_id
        #   Required. The Resource ID must be 1-63 characters long, and comply with
        #   RFC1035. Specifically, the name must be 1-63 characters long and match the
        #   regular expression `[a-z](?:[-a-z0-9]`0,61`[a-z0-9])?` which means the first
        #   character must be a lowercase letter, and all following characters must be a
        #   dash, lowercase letter, or digit, except the last character, which cannot be a
        #   dash.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Endpoint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Endpoint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_namespace_service_endpoint(parent, endpoint_object = nil, endpoint_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/endpoints', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::Endpoint::Representation
          command.request_object = endpoint_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Endpoint::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Endpoint
          command.params['parent'] = parent unless parent.nil?
          command.query['endpointId'] = endpoint_id unless endpoint_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes an endpoint.
        # @param [String] name
        #   Required. The name of the endpoint to delete.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_namespace_service_endpoint(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Empty::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets an endpoint.
        # @param [String] name
        #   Required. The name of the endpoint to get.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Endpoint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Endpoint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_namespace_service_endpoint(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Endpoint::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Endpoint
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all endpoints.
        # @param [String] parent
        #   Required. The resource name of the service whose endpoints you'd like to list.
        # @param [String] filter
        #   Optional. The filter to list results by. General `filter` string syntax: ` ()`
        #   * `` can be `name`, `address`, `port`, `metadata.` for map field, or `
        #   attributes.` for attributes field * `` can be `<`, `>`, `<=`, `>=`, `!=`, `=`,
        #   `:`. Of which `:` means `HAS`, and is roughly the same as `=` * `` must be the
        #   same data type as field * `` can be `AND`, `OR`, `NOT` Examples of valid
        #   filters: * `metadata.owner` returns endpoints that have a metadata with the
        #   key `owner`, this is the same as `metadata:owner` * `metadata.protocol=gRPC`
        #   returns endpoints that have key/value `protocol=gRPC` * `address=192.108.1.105`
        #   returns endpoints that have this address * `port>8080` returns endpoints that
        #   have port number larger than 8080 * `name>projects/my-project/locations/us-
        #   east1/namespaces/my-namespace/services/my-service/endpoints/endpoint-c`
        #   returns endpoints that have name that is alphabetically later than the string,
        #   so "endpoint-e" is returned but "endpoint-a" is not * `metadata.owner!=sd AND
        #   metadata.foo=bar` returns endpoints that have `owner` in metadata key but
        #   value is not `sd` AND have key/value `foo=bar` * `doesnotexist.foo=bar`
        #   returns an empty list. Note that endpoint doesn't have a field called "
        #   doesnotexist". Since the filter does not match any endpoints, it returns no
        #   results * `attributes.kubernetes_resource_type=
        #   KUBERNETES_RESOURCE_TYPE_CLUSTER_ IP` returns endpoints with the corresponding
        #   kubernetes_resource_type For more information about filtering, see [API
        #   Filtering](https://aip.dev/160).
        # @param [String] order_by
        #   Optional. The order to list results by. General `order_by` string syntax: ` ()
        #   (,)` * `` allows values: `name`, `address`, `port` * `` ascending or
        #   descending order by ``. If this is left blank, `asc` is used Note that an
        #   empty `order_by` string results in default order, which is order by `name` in
        #   ascending order.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of items to return.
        # @param [String] page_token
        #   Optional. The next_page_token value returned from a previous List request, if
        #   any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::ListEndpointsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::ListEndpointsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_namespace_service_endpoints(parent, filter: nil, order_by: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/endpoints', options)
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::ListEndpointsResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::ListEndpointsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['orderBy'] = order_by unless order_by.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an endpoint.
        # @param [String] name
        #   Immutable. The resource name for the endpoint in the format `projects/*/
        #   locations/*/namespaces/*/services/*/endpoints/*`.
        # @param [Google::Apis::ServicedirectoryV1beta1::Endpoint] endpoint_object
        # @param [String] update_mask
        #   Required. List of fields to be updated in this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Endpoint] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Endpoint]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_namespace_service_endpoint(name, endpoint_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::Endpoint::Representation
          command.request_object = endpoint_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Endpoint::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Endpoint
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_workload_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_workload_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests IAM permissions for a resource (namespace, service or service workload
        # only).
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_workload_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being requested. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest] get_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_registration_policy_iam_policy(resource, get_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:getIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::GetIamPolicyRequest::Representation
          command.request_object = get_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Sets the IAM Policy for a resource
        # @param [String] resource
        #   REQUIRED: The resource for which the policy is being specified. See [Resource
        #   names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest] set_iam_policy_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::Policy] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::Policy]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def set_registration_policy_iam_policy(resource, set_iam_policy_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:setIamPolicy', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::SetIamPolicyRequest::Representation
          command.request_object = set_iam_policy_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::Policy::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::Policy
          command.params['resource'] = resource unless resource.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Tests IAM permissions for a resource (namespace, service or service workload
        # only).
        # @param [String] resource
        #   REQUIRED: The resource for which the policy detail is being requested. See [
        #   Resource names](https://cloud.google.com/apis/design/resource_names) for the
        #   appropriate value for this field.
        # @param [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest] test_iam_permissions_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def test_registration_policy_iam_permissions(resource, test_iam_permissions_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+resource}:testIamPermissions', options)
          command.request_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsRequest::Representation
          command.request_object = test_iam_permissions_request_object
          command.response_representation = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse::Representation
          command.response_class = Google::Apis::ServicedirectoryV1beta1::TestIamPermissionsResponse
          command.params['resource'] = resource unless resource.nil?
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
