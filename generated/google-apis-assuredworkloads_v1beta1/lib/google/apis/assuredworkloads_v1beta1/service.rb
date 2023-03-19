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
      # @see https://cloud.google.com/learnmoreurl
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
          super('https://assuredworkloads.googleapis.com/', '',
                client_name: 'google-apis-assuredworkloads_v1beta1',
                client_version: Google::Apis::AssuredworkloadsV1beta1::GEM_VERSION)
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
        # error. In addition to assuredworkloads.workload.delete permission, the user
        # should also have orgpolicy.policy.set permission on the deleted folder to
        # remove Assured Workloads OrgPolicies.
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
        
        # Restrict the list of resources allowed in the Workload environment. The
        # current list of allowed products can be found at https://cloud.google.com/
        # assured-workloads/docs/supported-products In addition to assuredworkloads.
        # workload.update permission, the user should also have orgpolicy.policy.set
        # permission on the folder resource to use this functionality.
        # @param [String] name
        #   Required. The resource name of the Workload. This is the workloads's relative
        #   path in the API, formatted as "organizations/`organization_id`/locations/`
        #   location_id`/workloads/`workload_id`". For example, "organizations/123/
        #   locations/us-east1/workloads/assured-workload-1".
        # @param [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest] google_cloud_assuredworkloads_v1beta1_restrict_allowed_resources_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def restrict_organization_location_workload_allowed_resources(name, google_cloud_assuredworkloads_v1beta1_restrict_allowed_resources_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:restrictAllowedResources', options)
          command.request_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesRequest::Representation
          command.request_object = google_cloud_assuredworkloads_v1beta1_restrict_allowed_resources_request_object
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1RestrictAllowedResourcesResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes a hypothetical move of a source project or project-based workload to
        # a target (destination) folder-based workload.
        # @param [String] source
        #   The source type is a project-based workload. Specify the workloads's relative
        #   resource name, formatted as: "organizations/`ORGANIZATION_ID`/locations/`
        #   LOCATION_ID`/workloads/`WORKLOAD_ID`" For example: "organizations/123/
        #   locations/us-east1/workloads/assured-workload-1"
        # @param [String] target
        #   Required. The resource ID of the folder-based destination workload. This
        #   workload is where the source project will hypothetically be moved to. Specify
        #   the workload's relative resource name, formatted as: "organizations/`
        #   ORGANIZATION_ID`/locations/`LOCATION_ID`/workloads/`WORKLOAD_ID`" For example:
        #   "organizations/123/locations/us-east1/workloads/assured-workload-2"
        # @param [String] project
        #   The source type is a project. Specify the project's relative resource name,
        #   formatted as either a project number or a project ID: "projects/`
        #   PROJECT_NUMBER`" or "projects/`PROJECT_ID`" For example: "projects/
        #   951040570662" when specifying a project number, or "projects/my-project-123"
        #   when specifying a project ID.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_organization_location_workload_organization_location_workload_workload_move(source, target, project: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+source}/{+target}:analyzeWorkloadMove', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse
          command.params['source'] = source unless source.nil?
          command.params['target'] = target unless target.nil?
          command.query['project'] = project unless project.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Acknowledges an existing violation. By acknowledging a violation, users
        # acknowledge the existence of a compliance violation in their workload and
        # decide to ignore it due to a valid business justification. Acknowledgement is
        # a permanent operation and it cannot be reverted.
        # @param [String] name
        #   Required. The resource name of the Violation to acknowledge. Format:
        #   organizations/`organization`/locations/`location`/workloads/`workload`/
        #   violations/`violation`
        # @param [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest] google_cloud_assuredworkloads_v1beta1_acknowledge_violation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def acknowledge_organization_location_workload_violation(name, google_cloud_assuredworkloads_v1beta1_acknowledge_violation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1beta1/{+name}:acknowledge', options)
          command.request_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationRequest::Representation
          command.request_object = google_cloud_assuredworkloads_v1beta1_acknowledge_violation_request_object
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AcknowledgeViolationResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves Assured Workload Violation based on ID.
        # @param [String] name
        #   Required. The resource name of the Violation to fetch (ie. Violation.name).
        #   Format: organizations/`organization`/locations/`location`/workloads/`workload`/
        #   violations/`violation`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_organization_location_workload_violation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+name}', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1Violation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists the Violations in the AssuredWorkload Environment. Callers may also
        # choose to read across multiple Workloads as per [AIP-159](https://google.aip.
        # dev/159) by using '-' (the hyphen or dash character) as a wildcard character
        # instead of workload-id in the parent. Format `organizations/`org_id`/locations/
        # `location`/workloads/-`
        # @param [String] parent
        #   Required. The Workload name. Format `organizations/`org_id`/locations/`
        #   location`/workloads/`workload``.
        # @param [String] filter
        #   Optional. A custom filter for filtering by the Violations properties.
        # @param [String] interval_end_time
        #   The end of the time window.
        # @param [String] interval_start_time
        #   The start of the time window.
        # @param [Fixnum] page_size
        #   Optional. Page size.
        # @param [String] page_token
        #   Optional. Page token returned from previous request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_organization_location_workload_violations(parent, filter: nil, interval_end_time: nil, interval_start_time: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+parent}/violations', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1ListViolationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['interval.endTime'] = interval_end_time unless interval_end_time.nil?
          command.query['interval.startTime'] = interval_start_time unless interval_start_time.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Analyzes a hypothetical move of a source project or project-based workload to
        # a target (destination) folder-based workload.
        # @param [String] project
        #   The source type is a project. Specify the project's relative resource name,
        #   formatted as either a project number or a project ID: "projects/`
        #   PROJECT_NUMBER`" or "projects/`PROJECT_ID`" For example: "projects/
        #   951040570662" when specifying a project number, or "projects/my-project-123"
        #   when specifying a project ID.
        # @param [String] target
        #   Required. The resource ID of the folder-based destination workload. This
        #   workload is where the source project will hypothetically be moved to. Specify
        #   the workload's relative resource name, formatted as: "organizations/`
        #   ORGANIZATION_ID`/locations/`LOCATION_ID`/workloads/`WORKLOAD_ID`" For example:
        #   "organizations/123/locations/us-east1/workloads/assured-workload-2"
        # @param [String] source
        #   The source type is a project-based workload. Specify the workloads's relative
        #   resource name, formatted as: "organizations/`ORGANIZATION_ID`/locations/`
        #   LOCATION_ID`/workloads/`WORKLOAD_ID`" For example: "organizations/123/
        #   locations/us-east1/workloads/assured-workload-1"
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def analyze_project_organization_location_workload_workload_move(project, target, source: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1beta1/{+project}/{+target}:analyzeWorkloadMove', options)
          command.response_representation = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse::Representation
          command.response_class = Google::Apis::AssuredworkloadsV1beta1::GoogleCloudAssuredworkloadsV1beta1AnalyzeWorkloadMoveResponse
          command.params['project'] = project unless project.nil?
          command.params['target'] = target unless target.nil?
          command.query['source'] = source unless source.nil?
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
