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
    module OsconfigV1
      # OS Config API
      #
      # OS management tools that can be used for patch management, patch compliance,
      #  and configuration management on VM instances.
      #
      # @example
      #    require 'google/apis/osconfig_v1'
      #
      #    Osconfig = Google::Apis::OsconfigV1 # Alias the module
      #    service = Osconfig::OSConfigService.new
      #
      # @see https://cloud.google.com/compute/docs/osconfig/rest
      class OSConfigService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key. Your API key identifies your project and provides you with API access,
        #  quota, and reports. Required unless you provide an OAuth 2.0 token.
        attr_accessor :key

        # @return [String]
        #  Available to use for quota purposes for server-side applications. Can be any
        #  arbitrary string assigned to a user, but should not exceed 40 characters.
        attr_accessor :quota_user

        def initialize
          super('https://osconfig.googleapis.com/', '',
                client_name: 'google-apis-osconfig_v1',
                client_version: Google::Apis::OsconfigV1::GEM_VERSION)
          @batch_path = 'batch'
        end
        
        # Get inventory data for the specified VM instance. If the VM has no associated
        # inventory, the message `NOT_FOUND` is returned.
        # @param [String] name
        #   Required. API resource name for inventory resource. Format: `projects/`project`
        #   /locations/`location`/instances/`instance`/inventory` For ``project``, either `
        #   project-number` or `project-id` can be provided. For ``instance``, either
        #   Compute Engine `instance-id` or `instance-name` can be provided.
        # @param [String] view
        #   Inventory view indicating what information should be included in the inventory
        #   resource. If unspecified, the default view is BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::Inventory] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::Inventory]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance_inventory(name, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::Inventory::Representation
          command.response_class = Google::Apis::OsconfigV1::Inventory
          command.params['name'] = name unless name.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List inventory data for all VM instances in the specified zone.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/instances/-` For ``project``, either `project-number` or `project-id`
        #   can be provided.
        # @param [String] filter
        #   If provided, this field specifies the criteria that must be met by a `
        #   Inventory` API resource to be included in the response.
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call to `ListInventories` that
        #   indicates where this listing should continue from.
        # @param [String] view
        #   Inventory view indicating what information should be included in the inventory
        #   resource. If unspecified, the default view is BASIC.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListInventoriesResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListInventoriesResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instance_inventories(parent, filter: nil, page_size: nil, page_token: nil, view: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/inventories', options)
          command.response_representation = Google::Apis::OsconfigV1::ListInventoriesResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListInventoriesResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['view'] = view unless view.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the OS policy assignment report for the specified Compute Engine VM
        # instance.
        # @param [String] name
        #   Required. API resource name for OS policy assignment report. Format: `/
        #   projects/`project`/locations/`location`/instances/`instance`/
        #   osPolicyAssignments/`assignment`/report` For ``project``, either `project-
        #   number` or `project-id` can be provided. For ``instance_id``, either Compute
        #   Engine `instance-id` or `instance-name` can be provided. For ``assignment_id``,
        #   the OSPolicyAssignment id must be provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::OsPolicyAssignmentReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::OsPolicyAssignmentReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance_os_policy_assignment_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::OsPolicyAssignmentReport::Representation
          command.response_class = Google::Apis::OsconfigV1::OsPolicyAssignmentReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List OS policy assignment reports for all Compute Engine VM instances in the
        # specified zone.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/instances/`instance`/osPolicyAssignments/`assignment`/reports` For ``
        #   project``, either `project-number` or `project-id` can be provided. For ``
        #   instance``, either `instance-name`, `instance-id`, or `-` can be provided. If '
        #   -' is provided, the response will include OSPolicyAssignmentReports for all
        #   instances in the project/location. For ``assignment``, either `assignment-id`
        #   or `-` can be provided. If '-' is provided, the response will include
        #   OSPolicyAssignmentReports for all OSPolicyAssignments in the project/location.
        #   Either `instance` or `assignment` must be `-`. For example: `projects/`project`
        #   /locations/`location`/instances/`instance`/osPolicyAssignments/-/reports`
        #   returns all reports for the instance `projects/`project`/locations/`location`/
        #   instances/-/osPolicyAssignments/`assignment-id`/reports` returns all the
        #   reports for the given assignment across all instances. `projects/`project`/
        #   locations/`location`/instances/-/osPolicyAssignments/-/reports` returns all
        #   the reports for all assignments across all instances.
        # @param [String] filter
        #   If provided, this field specifies the criteria that must be met by the `
        #   OSPolicyAssignmentReport` API resource that is included in the response.
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call to the `
        #   ListOSPolicyAssignmentReports` method that indicates where this listing should
        #   continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListOsPolicyAssignmentReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListOsPolicyAssignmentReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instance_os_policy_assignment_reports(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/reports', options)
          command.response_representation = Google::Apis::OsconfigV1::ListOsPolicyAssignmentReportsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListOsPolicyAssignmentReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Gets the vulnerability report for the specified VM instance. Only VMs with
        # inventory data have vulnerability reports associated with them.
        # @param [String] name
        #   Required. API resource name for vulnerability resource. Format: `projects/`
        #   project`/locations/`location`/instances/`instance`/vulnerabilityReport` For ``
        #   project``, either `project-number` or `project-id` can be provided. For ``
        #   instance``, either Compute Engine `instance-id` or `instance-name` can be
        #   provided.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::VulnerabilityReport] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::VulnerabilityReport]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_instance_vulnerability_report(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::VulnerabilityReport::Representation
          command.response_class = Google::Apis::OsconfigV1::VulnerabilityReport
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List vulnerability reports for all VM instances in the specified zone.
        # @param [String] parent
        #   Required. The parent resource name. Format: `projects/`project`/locations/`
        #   location`/instances/-` For ``project``, either `project-number` or `project-id`
        #   can be provided.
        # @param [String] filter
        #   This field supports filtering by the severity level for the vulnerability. For
        #   a list of severity levels, see [Severity levels for vulnerabilities](https://
        #   cloud.google.com/container-analysis/docs/container-scanning-overview#
        #   severity_levels_for_vulnerabilities). The filter field follows the rules
        #   described in the [AIP-160](https://google.aip.dev/160) guidelines as follows: +
        #   **Filter for a specific severity type**: you can list reports that contain
        #   vulnerabilities that are classified as medium by specifying `vulnerabilities.
        #   details.severity:MEDIUM`. + **Filter for a range of severities** : you can
        #   list reports that have vulnerabilities that are classified as critical or high
        #   by specifying `vulnerabilities.details.severity:HIGH OR vulnerabilities.
        #   details.severity:CRITICAL`
        # @param [Fixnum] page_size
        #   The maximum number of results to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call to `ListVulnerabilityReports`
        #   that indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListVulnerabilityReportsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListVulnerabilityReportsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_instance_vulnerability_reports(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/vulnerabilityReports', options)
          command.response_representation = Google::Apis::OsconfigV1::ListVulnerabilityReportsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListVulnerabilityReportsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an OS policy assignment. This method also creates the first revision of
        # the OS policy assignment. This method returns a long running operation (LRO)
        # that contains the rollout details. The rollout can be cancelled by cancelling
        # the LRO. For more information, see [Method: projects.locations.
        # osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/
        # osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
        # @param [String] parent
        #   Required. The parent resource name in the form: projects/`project`/locations/`
        #   location`. Note: Specify the zone of your VMs as the location.
        # @param [Google::Apis::OsconfigV1::OsPolicyAssignment] os_policy_assignment_object
        # @param [String] os_policy_assignment_id
        #   Required. The logical name of the OS policy assignment in the project with the
        #   following restrictions: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_location_os_policy_assignment(parent, os_policy_assignment_object = nil, os_policy_assignment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/osPolicyAssignments', options)
          command.request_representation = Google::Apis::OsconfigV1::OsPolicyAssignment::Representation
          command.request_object = os_policy_assignment_object
          command.response_representation = Google::Apis::OsconfigV1::Operation::Representation
          command.response_class = Google::Apis::OsconfigV1::Operation
          command.params['parent'] = parent unless parent.nil?
          command.query['osPolicyAssignmentId'] = os_policy_assignment_id unless os_policy_assignment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete the OS policy assignment. This method creates a new revision of the OS
        # policy assignment. This method returns a long running operation (LRO) that
        # contains the rollout details. The rollout can be cancelled by cancelling the
        # LRO. If the LRO completes and is not cancelled, all revisions associated with
        # the OS policy assignment are deleted. For more information, see [Method:
        # projects.locations.osPolicyAssignments.operations.cancel](https://cloud.google.
        # com/compute/docs/osconfig/rest/v1/projects.locations.osPolicyAssignments.
        # operations/cancel).
        # @param [String] name
        #   Required. The name of the OS policy assignment to be deleted
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_location_os_policy_assignment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::Operation::Representation
          command.response_class = Google::Apis::OsconfigV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Retrieve an existing OS policy assignment. This method always returns the
        # latest revision. In order to retrieve a previous revision of the assignment,
        # also provide the revision ID in the `name` parameter.
        # @param [String] name
        #   Required. The resource name of OS policy assignment. Format: `projects/`
        #   project`/locations/`location`/osPolicyAssignments/`os_policy_assignment`@`
        #   revisionId``
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::OsPolicyAssignment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::OsPolicyAssignment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_os_policy_assignment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::OsPolicyAssignment::Representation
          command.response_class = Google::Apis::OsconfigV1::OsPolicyAssignment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the OS policy assignments under the parent resource. For each OS policy
        # assignment, the latest revision is returned.
        # @param [String] parent
        #   Required. The parent resource name.
        # @param [Fixnum] page_size
        #   The maximum number of assignments to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call to `ListOSPolicyAssignments`
        #   that indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListOsPolicyAssignmentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListOsPolicyAssignmentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_os_policy_assignments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/osPolicyAssignments', options)
          command.response_representation = Google::Apis::OsconfigV1::ListOsPolicyAssignmentsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListOsPolicyAssignmentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # List the OS policy assignment revisions for a given OS policy assignment.
        # @param [String] name
        #   Required. The name of the OS policy assignment to list revisions for.
        # @param [Fixnum] page_size
        #   The maximum number of revisions to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call to `
        #   ListOSPolicyAssignmentRevisions` that indicates where this listing should
        #   continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListOsPolicyAssignmentRevisionsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListOsPolicyAssignmentRevisionsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_location_os_policy_assignment_revisions(name, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}:listRevisions', options)
          command.response_representation = Google::Apis::OsconfigV1::ListOsPolicyAssignmentRevisionsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListOsPolicyAssignmentRevisionsResponse
          command.params['name'] = name unless name.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an existing OS policy assignment. This method creates a new revision of
        # the OS policy assignment. This method returns a long running operation (LRO)
        # that contains the rollout details. The rollout can be cancelled by cancelling
        # the LRO. For more information, see [Method: projects.locations.
        # osPolicyAssignments.operations.cancel](https://cloud.google.com/compute/docs/
        # osconfig/rest/v1/projects.locations.osPolicyAssignments.operations/cancel).
        # @param [String] name
        #   Resource name. Format: `projects/`project_number`/locations/`location`/
        #   osPolicyAssignments/`os_policy_assignment_id`` This field is ignored when you
        #   create an OS policy assignment.
        # @param [Google::Apis::OsconfigV1::OsPolicyAssignment] os_policy_assignment_object
        # @param [String] update_mask
        #   Optional. Field mask that controls which fields of the assignment should be
        #   updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_location_os_policy_assignment(name, os_policy_assignment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::OsconfigV1::OsPolicyAssignment::Representation
          command.request_object = os_policy_assignment_object
          command.response_representation = Google::Apis::OsconfigV1::Operation::Representation
          command.response_class = Google::Apis::OsconfigV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
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
        # @param [Google::Apis::OsconfigV1::CancelOperationRequest] cancel_operation_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_operation(name, cancel_operation_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::OsconfigV1::CancelOperationRequest::Representation
          command.request_object = cancel_operation_request_object
          command.response_representation = Google::Apis::OsconfigV1::Empty::Representation
          command.response_class = Google::Apis::OsconfigV1::Empty
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
        # @yieldparam result [Google::Apis::OsconfigV1::Operation] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::Operation]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_location_os_policy_assignment_operation(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::Operation::Representation
          command.response_class = Google::Apis::OsconfigV1::Operation
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Create an OS Config patch deployment.
        # @param [String] parent
        #   Required. The project to apply this patch deployment to in the form `projects/*
        #   `.
        # @param [Google::Apis::OsconfigV1::PatchDeployment] patch_deployment_object
        # @param [String] patch_deployment_id
        #   Required. A name for the patch deployment in the project. When creating a name
        #   the following rules apply: * Must contain only lowercase letters, numbers, and
        #   hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must
        #   end with a number or a letter. * Must be unique within the project.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def create_project_patch_deployment(parent, patch_deployment_object = nil, patch_deployment_id: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/patchDeployments', options)
          command.request_representation = Google::Apis::OsconfigV1::PatchDeployment::Representation
          command.request_object = patch_deployment_object
          command.response_representation = Google::Apis::OsconfigV1::PatchDeployment::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchDeployment
          command.params['parent'] = parent unless parent.nil?
          command.query['patchDeploymentId'] = patch_deployment_id unless patch_deployment_id.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Delete an OS Config patch deployment.
        # @param [String] name
        #   Required. The resource name of the patch deployment in the form `projects/*/
        #   patchDeployments/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::Empty] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::Empty]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def delete_project_patch_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:delete, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::Empty::Representation
          command.response_class = Google::Apis::OsconfigV1::Empty
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get an OS Config patch deployment.
        # @param [String] name
        #   Required. The resource name of the patch deployment in the form `projects/*/
        #   patchDeployments/*`.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_patch_deployment(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::PatchDeployment::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a page of OS Config patch deployments.
        # @param [String] parent
        #   Required. The resource name of the parent in the form `projects/*`.
        # @param [Fixnum] page_size
        #   Optional. The maximum number of patch deployments to return. Default is 100.
        # @param [String] page_token
        #   Optional. A pagination token returned from a previous call to
        #   ListPatchDeployments that indicates where this listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListPatchDeploymentsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListPatchDeploymentsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_patch_deployments(parent, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/patchDeployments', options)
          command.response_representation = Google::Apis::OsconfigV1::ListPatchDeploymentsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListPatchDeploymentsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Update an OS Config patch deployment.
        # @param [String] name
        #   Unique name for the patch deployment resource in a project. The patch
        #   deployment name is in the form: `projects/`project_id`/patchDeployments/`
        #   patch_deployment_id``. This field is ignored when you create a new patch
        #   deployment.
        # @param [Google::Apis::OsconfigV1::PatchDeployment] patch_deployment_object
        # @param [String] update_mask
        #   Optional. Field mask that controls which fields of the patch deployment should
        #   be updated.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def patch_project_patch_deployment(name, patch_deployment_object = nil, update_mask: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:patch, 'v1/{+name}', options)
          command.request_representation = Google::Apis::OsconfigV1::PatchDeployment::Representation
          command.request_object = patch_deployment_object
          command.response_representation = Google::Apis::OsconfigV1::PatchDeployment::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchDeployment
          command.params['name'] = name unless name.nil?
          command.query['updateMask'] = update_mask unless update_mask.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Change state of patch deployment to "PAUSED". Patch deployment in paused state
        # doesn't generate patch jobs.
        # @param [String] name
        #   Required. The resource name of the patch deployment in the form `projects/*/
        #   patchDeployments/*`.
        # @param [Google::Apis::OsconfigV1::PausePatchDeploymentRequest] pause_patch_deployment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def pause_patch_deployment(name, pause_patch_deployment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:pause', options)
          command.request_representation = Google::Apis::OsconfigV1::PausePatchDeploymentRequest::Representation
          command.request_object = pause_patch_deployment_request_object
          command.response_representation = Google::Apis::OsconfigV1::PatchDeployment::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Change state of patch deployment back to "ACTIVE". Patch deployment in active
        # state continues to generate patch jobs.
        # @param [String] name
        #   Required. The resource name of the patch deployment in the form `projects/*/
        #   patchDeployments/*`.
        # @param [Google::Apis::OsconfigV1::ResumePatchDeploymentRequest] resume_patch_deployment_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchDeployment] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchDeployment]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def resume_patch_deployment(name, resume_patch_deployment_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:resume', options)
          command.request_representation = Google::Apis::OsconfigV1::ResumePatchDeploymentRequest::Representation
          command.request_object = resume_patch_deployment_request_object
          command.response_representation = Google::Apis::OsconfigV1::PatchDeployment::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchDeployment
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Cancel a patch job. The patch job must be active. Canceled patch jobs cannot
        # be restarted.
        # @param [String] name
        #   Required. Name of the patch in the form `projects/*/patchJobs/*`
        # @param [Google::Apis::OsconfigV1::CancelPatchJobRequest] cancel_patch_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def cancel_patch_job(name, cancel_patch_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+name}:cancel', options)
          command.request_representation = Google::Apis::OsconfigV1::CancelPatchJobRequest::Representation
          command.request_object = cancel_patch_job_request_object
          command.response_representation = Google::Apis::OsconfigV1::PatchJob::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Patch VM instances by creating and running a patch job.
        # @param [String] parent
        #   Required. The project in which to run this patch in the form `projects/*`
        # @param [Google::Apis::OsconfigV1::ExecutePatchJobRequest] execute_patch_job_request_object
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def execute_patch_job(parent, execute_patch_job_request_object = nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:post, 'v1/{+parent}/patchJobs:execute', options)
          command.request_representation = Google::Apis::OsconfigV1::ExecutePatchJobRequest::Representation
          command.request_object = execute_patch_job_request_object
          command.response_representation = Google::Apis::OsconfigV1::PatchJob::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchJob
          command.params['parent'] = parent unless parent.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get the patch job. This can be used to track the progress of an ongoing patch
        # job or review the details of completed jobs.
        # @param [String] name
        #   Required. Name of the patch in the form `projects/*/patchJobs/*`
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::PatchJob] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::PatchJob]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def get_project_patch_job(name, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+name}', options)
          command.response_representation = Google::Apis::OsconfigV1::PatchJob::Representation
          command.response_class = Google::Apis::OsconfigV1::PatchJob
          command.params['name'] = name unless name.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of patch jobs.
        # @param [String] parent
        #   Required. In the form of `projects/*`
        # @param [String] filter
        #   If provided, this field specifies the criteria that must be met by patch jobs
        #   to be included in the response. Currently, filtering is only available on the
        #   patch_deployment field.
        # @param [Fixnum] page_size
        #   The maximum number of instance status to return.
        # @param [String] page_token
        #   A pagination token returned from a previous call that indicates where this
        #   listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListPatchJobsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListPatchJobsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_patch_jobs(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/patchJobs', options)
          command.response_representation = Google::Apis::OsconfigV1::ListPatchJobsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListPatchJobsResponse
          command.params['parent'] = parent unless parent.nil?
          command.query['filter'] = filter unless filter.nil?
          command.query['pageSize'] = page_size unless page_size.nil?
          command.query['pageToken'] = page_token unless page_token.nil?
          command.query['fields'] = fields unless fields.nil?
          command.query['quotaUser'] = quota_user unless quota_user.nil?
          execute_or_queue_command(command, &block)
        end
        
        # Get a list of instance details for a given patch job.
        # @param [String] parent
        #   Required. The parent for the instances are in the form of `projects/*/
        #   patchJobs/*`.
        # @param [String] filter
        #   A filter expression that filters results listed in the response. This field
        #   supports filtering results by instance zone, name, state, or `failure_reason`.
        # @param [Fixnum] page_size
        #   The maximum number of instance details records to return. Default is 100.
        # @param [String] page_token
        #   A pagination token returned from a previous call that indicates where this
        #   listing should continue from.
        # @param [String] fields
        #   Selector specifying which fields to include in a partial response.
        # @param [String] quota_user
        #   Available to use for quota purposes for server-side applications. Can be any
        #   arbitrary string assigned to a user, but should not exceed 40 characters.
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::OsconfigV1::ListPatchJobInstanceDetailsResponse] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::OsconfigV1::ListPatchJobInstanceDetailsResponse]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def list_project_patch_job_instance_details(parent, filter: nil, page_size: nil, page_token: nil, fields: nil, quota_user: nil, options: nil, &block)
          command = make_simple_command(:get, 'v1/{+parent}/instanceDetails', options)
          command.response_representation = Google::Apis::OsconfigV1::ListPatchJobInstanceDetailsResponse::Representation
          command.response_class = Google::Apis::OsconfigV1::ListPatchJobInstanceDetailsResponse
          command.params['parent'] = parent unless parent.nil?
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
