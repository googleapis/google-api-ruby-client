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
    module BigqueryreservationV1
      # BigQuery Reservation API
      #
      # A service to modify your BigQuery flat-rate reservations.
      #
      # @example
      #    require 'google/apis/bigqueryreservation_v1'
      #
      #    Bigqueryreservation = Google::Apis::BigqueryreservationV1 # Alias the module
      #    service = Bigqueryreservation::BigQueryReservationService.new
      #
      # @see https://cloud.google.com/bigquery/
      class BigQueryReservationService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://bigqueryreservation.googleapis.com/', '')
          @batch_path = 'batch'
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
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::Empty::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Empty
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
        # @yieldparam result [Google::Apis::BigqueryreservationV1::ListOperationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::ListOperationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_operations(name, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::ListOperationsResponse::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::ListOperationsResponse
          command.params['name'] = name unless name.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieves a BI reservation.
        # @param [String] name
        #   Required. Name of the requested reservation, for example: `projects/`
        #   project_id`/locations/`location_id`/bireservation`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::BiReservation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::BiReservation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_bi_reservation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::BiReservation::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::BiReservation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up assignments for a specified resource for a particular region. If the
        # request is about a project: 1. Assignments created on the project will be
        # returned if they exist. 2. Otherwise assignments created on the closest
        # ancestor will be returned. 3. Assignments for different JobTypes will all be
        # returned. The same logic applies if the request is about a folder. If the
        # request is about an organization, then assignments created on the organization
        # will be returned (organization doesn't have ancestors). Comparing to
        # ListAssignments, there are some behavior differences: 1. permission on the
        # assignee will be verified in this API. 2. Hierarchy lookup (project->folder->
        # organization) happens in this API. 3. Parent here is `projects/*/locations/*`,
        # instead of `projects/*/locations/*reservations/*`.
        # @param [String] parent
        #   Required. The resource name with location (project name could be the wildcard '
        #   -'), e.g.: `projects/-/locations/US`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return per page.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] query
        #   Please specify resource name as assignee in the query. Examples: * `assignee=
        #   projects/myproject` * `assignee=folders/123` * `assignee=organizations/456`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::SearchAllAssignmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::SearchAllAssignmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_all_assignments(parent, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:searchAllAssignments', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::SearchAllAssignmentsResponse::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::SearchAllAssignmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Looks up assignments for a specified resource for a particular region. If the
        # request is about a project: 1. Assignments created on the project will be
        # returned if they exist. 2. Otherwise assignments created on the closest
        # ancestor will be returned. 3. Assignments for different JobTypes will all be
        # returned. The same logic applies if the request is about a folder. If the
        # request is about an organization, then assignments created on the organization
        # will be returned (organization doesn't have ancestors). Comparing to
        # ListAssignments, there are some behavior differences: 1. permission on the
        # assignee will be verified in this API. 2. Hierarchy lookup (project->folder->
        # organization) happens in this API. 3. Parent here is `projects/*/locations/*`,
        # instead of `projects/*/locations/*reservations/*`. **Note** "-" cannot be used
        # for projects nor locations.
        # @param [String] parent
        #   Required. The resource name of the admin project(containing project and
        #   location), e.g.: `projects/myproject/locations/US`.
        # @param [Fixnum] page_size
        #   The maximum number of items to return per page.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] query
        #   Please specify resource name as assignee in the query. Examples: * `assignee=
        #   projects/myproject` * `assignee=folders/123` * `assignee=organizations/456`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::SearchAssignmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::SearchAssignmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def search_project_location_assignments(parent, page_size: nil, page_token: nil, query: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}:searchAssignments', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::SearchAssignmentsResponse::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::SearchAssignmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['query'] = query unless query.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates a BI reservation. Only fields specified in the `field_mask` are
        # updated. A singleton BI reservation always exists with default size 0. In
        # order to reserve BI capacity it needs to be updated to an amount greater than
        # 0. In order to release BI capacity reservation size must be set to 0.
        # @param [String] name
        #   The resource name of the singleton BI reservation. Reservation names have the
        #   form `projects/`project_id`/locations/`location_id`/bireservation`.
        # @param [Google::Apis::BigqueryreservationV1::BiReservation] bi_reservation_object
        # @param [String] update_mask
        #   A list of fields to be updated in this request.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::BiReservation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::BiReservation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def update_project_location_bi_reservation(name, bi_reservation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::BiReservation::Representation
          command.request_object = bi_reservation_object
          command.response_representation = Google::Apis::BigqueryreservationV1::BiReservation::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::BiReservation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new capacity commitment resource.
        # @param [String] parent
        #   Required. Resource name of the parent reservation. E.g., `projects/myproject/
        #   locations/US`
        # @param [Google::Apis::BigqueryreservationV1::CapacityCommitment] capacity_commitment_object
        # @param [Boolean] enforce_single_admin_project_per_org
        #   If true, fail the request if another project in the organization has a
        #   capacity commitment.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::CapacityCommitment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::CapacityCommitment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_capacity_commitment(parent, capacity_commitment_object = nil, enforce_single_admin_project_per_org: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/capacityCommitments', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
          command.request_object = capacity_commitment_object
          command.response_representation = Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::CapacityCommitment
          command.params['parent'] = parent unless parent.nil?
          command.query['enforceSingleAdminProjectPerOrg'] = enforce_single_admin_project_per_org unless enforce_single_admin_project_per_org.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a capacity commitment. Attempting to delete capacity commitment before
        # its commitment_end_time will fail with the error code `google.rpc.Code.
        # FAILED_PRECONDITION`.
        # @param [String] name
        #   Required. Resource name of the capacity commitment to delete. E.g., `projects/
        #   myproject/locations/US/capacityCommitments/123`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_capacity_commitment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::Empty::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about the capacity commitment.
        # @param [String] name
        #   Required. Resource name of the capacity commitment to retrieve. E.g., `
        #   projects/myproject/locations/US/capacityCommitments/123`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::CapacityCommitment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::CapacityCommitment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_capacity_commitment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::CapacityCommitment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the capacity commitments for the admin project.
        # @param [String] parent
        #   Required. Resource name of the parent reservation. E.g., `projects/myproject/
        #   locations/US`
        # @param [Fixnum] page_size
        #   The maximum number of items to return.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::ListCapacityCommitmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::ListCapacityCommitmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_capacity_commitments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/capacityCommitments', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::ListCapacityCommitmentsResponse::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::ListCapacityCommitmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Merges capacity commitments of the same plan into a single commitment. The
        # resulting capacity commitment has the greater commitment_end_time out of the
        # to-be-merged capacity commitments. Attempting to merge capacity commitments of
        # different plan will fail with the error code `google.rpc.Code.
        # FAILED_PRECONDITION`.
        # @param [String] parent
        #   Parent resource that identifies admin project and location e.g., `projects/
        #   myproject/locations/us`
        # @param [Google::Apis::BigqueryreservationV1::MergeCapacityCommitmentsRequest] merge_capacity_commitments_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::CapacityCommitment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::CapacityCommitment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def merge_capacity_commitments(parent, merge_capacity_commitments_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/capacityCommitments:merge', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::MergeCapacityCommitmentsRequest::Representation
          command.request_object = merge_capacity_commitments_request_object
          command.response_representation = Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::CapacityCommitment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing capacity commitment. Only `plan` and `renewal_plan` fields
        # can be updated. Plan can only be changed to a plan of a longer commitment
        # period. Attempting to change to a plan with shorter commitment period will
        # fail with the error code `google.rpc.Code.FAILED_PRECONDITION`.
        # @param [String] name
        #   Output only. The resource name of the capacity commitment, e.g., `projects/
        #   myproject/locations/US/capacityCommitments/123`
        # @param [Google::Apis::BigqueryreservationV1::CapacityCommitment] capacity_commitment_object
        # @param [String] update_mask
        #   Standard field mask for the set of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::CapacityCommitment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::CapacityCommitment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_capacity_commitment(name, capacity_commitment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
          command.request_object = capacity_commitment_object
          command.response_representation = Google::Apis::BigqueryreservationV1::CapacityCommitment::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::CapacityCommitment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Splits capacity commitment to two commitments of the same plan and `
        # commitment_end_time`. A common use case is to enable downgrading commitments.
        # For example, in order to downgrade from 10000 slots to 8000, you might split a
        # 10000 capacity commitment into commitments of 2000 and 8000. Then, you would
        # change the plan of the first one to `FLEX` and then delete it.
        # @param [String] name
        #   Required. The resource name e.g.,: `projects/myproject/locations/US/
        #   capacityCommitments/123`
        # @param [Google::Apis::BigqueryreservationV1::SplitCapacityCommitmentRequest] split_capacity_commitment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::SplitCapacityCommitmentResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::SplitCapacityCommitmentResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def split_capacity_commitment(name, split_capacity_commitment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:split', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::SplitCapacityCommitmentRequest::Representation
          command.request_object = split_capacity_commitment_request_object
          command.response_representation = Google::Apis::BigqueryreservationV1::SplitCapacityCommitmentResponse::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::SplitCapacityCommitmentResponse
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates a new reservation resource.
        # @param [String] parent
        #   Required. Project, location. E.g., `projects/myproject/locations/US`
        # @param [Google::Apis::BigqueryreservationV1::Reservation] reservation_object
        # @param [String] reservation_id
        #   The reservation ID. This field must only contain lower case alphanumeric
        #   characters or dash. Max length is 64 characters.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Reservation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Reservation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_reservation(parent, reservation_object = nil, reservation_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/reservations', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::Reservation::Representation
          command.request_object = reservation_object
          command.response_representation = Google::Apis::BigqueryreservationV1::Reservation::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Reservation
          command.params['parent'] = parent unless parent.nil?
          command.query['reservationId'] = reservation_id unless reservation_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a reservation. Returns `google.rpc.Code.FAILED_PRECONDITION` when
        # reservation has assignments.
        # @param [String] name
        #   Required. Resource name of the reservation to retrieve. E.g., `projects/
        #   myproject/locations/US/reservations/team1-prod`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_reservation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::Empty::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Returns information about the reservation.
        # @param [String] name
        #   Required. Resource name of the reservation to retrieve. E.g., `projects/
        #   myproject/locations/US/reservations/team1-prod`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Reservation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Reservation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_reservation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::Reservation::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Reservation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists all the reservations for the project in the specified location.
        # @param [String] parent
        #   Required. The parent resource name containing project and location, e.g.: `
        #   projects/myproject/locations/US`
        # @param [Fixnum] page_size
        #   The maximum number of items to return per page.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::ListReservationsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::ListReservationsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_reservations(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reservations', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::ListReservationsResponse::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::ListReservationsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Updates an existing reservation resource.
        # @param [String] name
        #   The resource name of the reservation, e.g., `projects/*/locations/*/
        #   reservations/team1-prod`.
        # @param [Google::Apis::BigqueryreservationV1::Reservation] reservation_object
        # @param [String] update_mask
        #   Standard field mask for the set of fields to be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Reservation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Reservation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_reservation(name, reservation_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::Reservation::Representation
          command.request_object = reservation_object
          command.response_representation = Google::Apis::BigqueryreservationV1::Reservation::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Reservation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Creates an assignment object which allows the given project to submit jobs of
        # a certain type using slots from the specified reservation. Currently a
        # resource (project, folder, organization) can only have one assignment per each
        # (job_type, location) combination, and that reservation will be used for all
        # jobs of the matching type. Different assignments can be created on different
        # levels of the projects, folders or organization hierarchy. During query
        # execution, the assignment is looked up at the project, folder and organization
        # levels in that order. The first assignment found is applied to the query. When
        # creating assignments, it does not matter if other assignments exist at higher
        # levels. Example: * The organization `organizationA` contains two projects, `
        # project1` and `project2`. * Assignments for all three entities (`organizationA`
        # , `project1`, and `project2`) could all be created and mapped to the same or
        # different reservations. Returns `google.rpc.Code.PERMISSION_DENIED` if user
        # does not have 'bigquery.admin' permissions on the project using the
        # reservation and the project that owns this reservation. Returns `google.rpc.
        # Code.INVALID_ARGUMENT` when location of the assignment does not match location
        # of the reservation.
        # @param [String] parent
        #   Required. The parent resource name of the assignment E.g. `projects/myproject/
        #   locations/US/reservations/team1-prod`
        # @param [Google::Apis::BigqueryreservationV1::Assignment] assignment_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Assignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Assignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_reservation_assignment(parent, assignment_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/assignments', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::Assignment::Representation
          command.request_object = assignment_object
          command.response_representation = Google::Apis::BigqueryreservationV1::Assignment::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Assignment
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Deletes a assignment. No expansion will happen. Example: * Organization `
        # organizationA` contains two projects, `project1` and `project2`. * Reservation
        # `res1` exists and was created previously. * CreateAssignment was used
        # previously to define the following associations between entities and
        # reservations: `` and `` In this example, deletion of the `` assignment won't
        # affect the other assignment ``. After said deletion, queries from `project1`
        # will still use `res1` while queries from `project2` will switch to use on-
        # demand mode.
        # @param [String] name
        #   Required. Name of the resource, e.g. `projects/myproject/locations/US/
        #   reservations/team1-prod/assignments/123`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_reservation_assignment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::Empty::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Lists assignments. Only explicitly created assignments will be returned.
        # Example: * Organization `organizationA` contains two projects, `project1` and `
        # project2`. * Reservation `res1` exists and was created previously. *
        # CreateAssignment was used previously to define the following associations
        # between entities and reservations: `` and `` In this example, ListAssignments
        # will just return the above two assignments for reservation `res1`, and no
        # expansion/merge will happen. The wildcard "-" can be used for reservations in
        # the request. In that case all assignments belongs to the specified project and
        # location will be listed. **Note** "-" cannot be used for projects nor
        # locations.
        # @param [String] parent
        #   Required. The parent resource name e.g.: `projects/myproject/locations/US/
        #   reservations/team1-prod` Or: `projects/myproject/locations/US/reservations/-`
        # @param [Fixnum] page_size
        #   The maximum number of items to return per page.
        # @param [String] page_token
        #   The next_page_token value returned from a previous List request, if any.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::ListAssignmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::ListAssignmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_reservation_assignments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/assignments', options)
          command.response_representation = Google::Apis::BigqueryreservationV1::ListAssignmentsResponse::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::ListAssignmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Moves an assignment under a new reservation. This differs from removing an
        # existing assignment and recreating a new one by providing a transactional
        # change that ensures an assignee always has an associated reservation.
        # @param [String] name
        #   Required. The resource name of the assignment, e.g. `projects/myproject/
        #   locations/US/reservations/team1-prod/assignments/123`
        # @param [Google::Apis::BigqueryreservationV1::MoveAssignmentRequest] move_assignment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::BigqueryreservationV1::Assignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::BigqueryreservationV1::Assignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def move_assignment(name, move_assignment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:move', options)
          command.request_representation = Google::Apis::BigqueryreservationV1::MoveAssignmentRequest::Representation
          command.request_object = move_assignment_request_object
          command.response_representation = Google::Apis::BigqueryreservationV1::Assignment::Representation
          command.response_class = Google::Apis::BigqueryreservationV1::Assignment
          command.params['name'] = name unless name.nil?
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
