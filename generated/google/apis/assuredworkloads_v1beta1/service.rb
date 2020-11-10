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
    module AssuredworkloadsV1beta1
      # Assured Workloads API
      #
      # 
      #
      # @example
      #    require 'google/apis/assuredworkloads_v1beta1'
      #
      #    Assuredworkloads = Google::Apis::AssuredworkloadsV1beta1 # Alias the module
      #    service = Assuredworkloads::AssuredworkloadsService.new
      #
      # @see https://cloud.google.com
      class AssuredworkloadsService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://assuredworkloads.googleapis.com/', '')
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
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation
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
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}/operations', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningListOperationsResponse::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates Assured Workload.
        # @param [String] parent
        #   Required. The resource name of the new Workload's parent. Must be of the form `
        #   organizations/`org_id`/locations/`location_id``.
        # @param [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload] google_cloud_assuredworkloads_v1beta1_workload_object
        # @param [String] external_id
        #   Optional. A identifier associated with the workload and underlying projects
        #   which allows for the break down of billing costs for a workload. The value
        #   provided for the identifier will add a label to the workload and contained
        #   projects with the identifier as the value.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_organization_location_workload(parent, google_cloud_assuredworkloads_v1beta1_workload_object = nil, external_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+parent}/workloads', options)
          command.request_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload::Representation
          command.request_object = google_cloud_assuredworkloads_v1beta1_workload_object
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleLongrunningOperation
          command.params['parent'] = parent unless parent.nil?
          command.query['externalId'] = external_id unless external_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes the workload. Make sure that workload's direct children are already in
        # a deleted state, otherwise the request will fail with a FAILED_PRECONDITION
        # error.
        # @param [String] name
        #   Required. The `name` field is used to identify the workload. Format:
        #   organizations/`org_id`/locations/`location_id`/workloads/`workload_id`
        # @param [String] etag
        #   Optional. The etag of the workload. If this is provided, it must match the
        #   server's etag.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleProtobufEmpty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleProtobufEmpty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_organization_location_workload(name, etag: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleProtobufEmpty::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleProtobufEmpty
          command.params['name'] = name unless name.nil?
          command.query['etag'] = etag unless etag.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets Assured Workload associated with a CRM Node
        # @param [String] name
        #   Required. The resource name of the Workload to fetch. This is the workloads's
        #   relative path in the API, formatted as "organizations/`organization_id`/
        #   locations/`location_id`/workloads/`workload_id`". For example, "organizations/
        #   123/locations/us-east1/workloads/assured-workload-1".
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_workload(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists Assured Workloads under a CRM Node.
        # @param [String] parent
        #   Required. Parent Resource to list workloads from. Must be of the form `
        #   organizations/`org_id`/locations/`location``.
        # @param [String] filter
        #   A custom filter for filtering by properties of a workload. At this time, only
        #   filtering by labels is supported.
        # @param [Fixnum] page_size
        #   Page size.
        # @param [String] page_token
        #   Page token returned from previous request. Page token contains context from
        #   previous request. Page token needs to be passed in the second and following
        #   requests.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_workloads(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/workloads', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListWorkloadsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing workload. Currently allows updating of workload
        # display_name and labels. For force updates don't set etag field in the
        # Workload. Only one update operation per workload can be in progress.
        # @param [String] name
        #   Optional. The resource name of the workload. Format: organizations/`
        #   organization`/locations/`location`/workloads/`workload` Read-only.
        # @param [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload] google_cloud_assuredworkloads_v1beta1_workload_object
        # @param [String] update_mask
        #   Required. The list of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_organization_location_workload(name, google_cloud_assuredworkloads_v1beta1_workload_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1beta1/{+name}', options)
          command.request_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload::Representation
          command.request_object = google_cloud_assuredworkloads_v1beta1_workload_object
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Workload
          command.params['name'] = name unless name.nil?
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
