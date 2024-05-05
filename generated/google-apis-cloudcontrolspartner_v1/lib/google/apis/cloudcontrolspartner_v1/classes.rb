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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module CloudcontrolspartnerV1
      
      # Details about the Access request.
      class AccessApprovalRequest
        include Google::Apis::Core::Hashable
      
        # Identifier. Format: `organizations/`organization`/locations/`location`/
        # customers/`customer`/workloads/`workload`/accessApprovalRequests/`
        # access_approval_request``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The time at which approval was requested.
        # Corresponds to the JSON property `requestTime`
        # @return [String]
        attr_accessor :request_time
      
        # The requested expiration for the approval. If the request is approved, access
        # will be granted from the time of approval until the expiration time.
        # Corresponds to the JSON property `requestedExpirationTime`
        # @return [String]
        attr_accessor :requested_expiration_time
      
        # Reason for the access.
        # Corresponds to the JSON property `requestedReason`
        # @return [Google::Apis::CloudcontrolspartnerV1::AccessReason]
        attr_accessor :requested_reason
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @request_time = args[:request_time] if args.key?(:request_time)
          @requested_expiration_time = args[:requested_expiration_time] if args.key?(:requested_expiration_time)
          @requested_reason = args[:requested_reason] if args.key?(:requested_reason)
        end
      end
      
      # Reason for the access.
      class AccessReason
        include Google::Apis::Core::Hashable
      
        # More detail about certain reason types. See comments for each type above.
        # Corresponds to the JSON property `detail`
        # @return [String]
        attr_accessor :detail
      
        # Type of access justification.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @detail = args[:detail] if args.key?(:detail)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Information around the error that occurred if the connection state is anything
      # other than available or unspecified
      class ConnectionError
        include Google::Apis::Core::Hashable
      
        # The error domain for the error
        # Corresponds to the JSON property `errorDomain`
        # @return [String]
        attr_accessor :error_domain
      
        # The error message for the error
        # Corresponds to the JSON property `errorMessage`
        # @return [String]
        attr_accessor :error_message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_domain = args[:error_domain] if args.key?(:error_domain)
          @error_message = args[:error_message] if args.key?(:error_message)
        end
      end
      
      # Remediation instructions to resolve violation via cloud console
      class Console
        include Google::Apis::Core::Hashable
      
        # Additional urls for more information about steps
        # Corresponds to the JSON property `additionalLinks`
        # @return [Array<String>]
        attr_accessor :additional_links
      
        # Link to console page where violations can be resolved
        # Corresponds to the JSON property `consoleUris`
        # @return [Array<String>]
        attr_accessor :console_uris
      
        # Steps to resolve violation via cloud console
        # Corresponds to the JSON property `steps`
        # @return [Array<String>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_links = args[:additional_links] if args.key?(:additional_links)
          @console_uris = args[:console_uris] if args.key?(:console_uris)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # Contains metadata around a Cloud Controls Partner Customer
      class Customer
        include Google::Apis::Core::Hashable
      
        # Container for customer onboarding steps
        # Corresponds to the JSON property `customerOnboardingState`
        # @return [Google::Apis::CloudcontrolspartnerV1::CustomerOnboardingState]
        attr_accessor :customer_onboarding_state
      
        # The customer organization's display name. E.g. "google.com".
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Indicates whether a customer is fully onboarded
        # Corresponds to the JSON property `isOnboarded`
        # @return [Boolean]
        attr_accessor :is_onboarded
        alias_method :is_onboarded?, :is_onboarded
      
        # Identifier. Format: `organizations/`organization`/locations/`location`/
        # customers/`customer``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customer_onboarding_state = args[:customer_onboarding_state] if args.key?(:customer_onboarding_state)
          @display_name = args[:display_name] if args.key?(:display_name)
          @is_onboarded = args[:is_onboarded] if args.key?(:is_onboarded)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Container for customer onboarding steps
      class CustomerOnboardingState
        include Google::Apis::Core::Hashable
      
        # List of customer onboarding steps
        # Corresponds to the JSON property `onboardingSteps`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::CustomerOnboardingStep>]
        attr_accessor :onboarding_steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @onboarding_steps = args[:onboarding_steps] if args.key?(:onboarding_steps)
        end
      end
      
      # Container for customer onboarding information
      class CustomerOnboardingStep
        include Google::Apis::Core::Hashable
      
        # Output only. Current state of the step
        # Corresponds to the JSON property `completionState`
        # @return [String]
        attr_accessor :completion_state
      
        # The completion time of the onboarding step
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # The starting time of the onboarding step
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The onboarding step
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_state = args[:completion_state] if args.key?(:completion_state)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @step = args[:step] if args.key?(:step)
        end
      end
      
      # Details about the EKM connection
      class EkmConnection
        include Google::Apis::Core::Hashable
      
        # Information around the error that occurred if the connection state is anything
        # other than available or unspecified
        # Corresponds to the JSON property `connectionError`
        # @return [Google::Apis::CloudcontrolspartnerV1::ConnectionError]
        attr_accessor :connection_error
      
        # Resource name of the EKM connection in the format: projects/`project`/
        # locations/`location`/ekmConnections/`ekm_connection`
        # Corresponds to the JSON property `connectionName`
        # @return [String]
        attr_accessor :connection_name
      
        # Output only. The connection state
        # Corresponds to the JSON property `connectionState`
        # @return [String]
        attr_accessor :connection_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @connection_error = args[:connection_error] if args.key?(:connection_error)
          @connection_name = args[:connection_name] if args.key?(:connection_name)
          @connection_state = args[:connection_state] if args.key?(:connection_state)
        end
      end
      
      # The EKM connections associated with a workload
      class EkmConnections
        include Google::Apis::Core::Hashable
      
        # The EKM connections associated with the workload
        # Corresponds to the JSON property `ekmConnections`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::EkmConnection>]
        attr_accessor :ekm_connections
      
        # Identifier. Format: `organizations/`organization`/locations/`location`/
        # customers/`customer`/workloads/`workload`/ekmConnections`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ekm_connections = args[:ekm_connections] if args.key?(:ekm_connections)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Holds information needed by Mudbray to use partner EKMs for workloads.
      class EkmMetadata
        include Google::Apis::Core::Hashable
      
        # Endpoint for sending requests to the EKM for key provisioning during Assured
        # Workload creation.
        # Corresponds to the JSON property `ekmEndpointUri`
        # @return [String]
        attr_accessor :ekm_endpoint_uri
      
        # The Cloud EKM partner.
        # Corresponds to the JSON property `ekmSolution`
        # @return [String]
        attr_accessor :ekm_solution
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ekm_endpoint_uri = args[:ekm_endpoint_uri] if args.key?(:ekm_endpoint_uri)
          @ekm_solution = args[:ekm_solution] if args.key?(:ekm_solution)
        end
      end
      
      # Remediation instructions to resolve violation via gcloud cli
      class Gcloud
        include Google::Apis::Core::Hashable
      
        # Additional urls for more information about steps
        # Corresponds to the JSON property `additionalLinks`
        # @return [Array<String>]
        attr_accessor :additional_links
      
        # Gcloud command to resolve violation
        # Corresponds to the JSON property `gcloudCommands`
        # @return [Array<String>]
        attr_accessor :gcloud_commands
      
        # Steps to resolve violation via gcloud cli
        # Corresponds to the JSON property `steps`
        # @return [Array<String>]
        attr_accessor :steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @additional_links = args[:additional_links] if args.key?(:additional_links)
          @gcloud_commands = args[:gcloud_commands] if args.key?(:gcloud_commands)
          @steps = args[:steps] if args.key?(:steps)
        end
      end
      
      # Instructions to remediate violation
      class Instructions
        include Google::Apis::Core::Hashable
      
        # Remediation instructions to resolve violation via cloud console
        # Corresponds to the JSON property `consoleInstructions`
        # @return [Google::Apis::CloudcontrolspartnerV1::Console]
        attr_accessor :console_instructions
      
        # Remediation instructions to resolve violation via gcloud cli
        # Corresponds to the JSON property `gcloudInstructions`
        # @return [Google::Apis::CloudcontrolspartnerV1::Gcloud]
        attr_accessor :gcloud_instructions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @console_instructions = args[:console_instructions] if args.key?(:console_instructions)
          @gcloud_instructions = args[:gcloud_instructions] if args.key?(:gcloud_instructions)
        end
      end
      
      # Response message for list access requests.
      class ListAccessApprovalRequestsResponse
        include Google::Apis::Core::Hashable
      
        # List of access approval requests
        # Corresponds to the JSON property `accessApprovalRequests`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::AccessApprovalRequest>]
        attr_accessor :access_approval_requests
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @access_approval_requests = args[:access_approval_requests] if args.key?(:access_approval_requests)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for list customer Customers requests
      class ListCustomersResponse
        include Google::Apis::Core::Hashable
      
        # List of customers
        # Corresponds to the JSON property `customers`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::Customer>]
        attr_accessor :customers
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @customers = args[:customers] if args.key?(:customers)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
        end
      end
      
      # Response message for list customer violation requests
      class ListViolationsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Workloads that could not be reached due to permission errors or any other
        # error. Ref: https://google.aip.dev/217
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of violation
        # Corresponds to the JSON property `violations`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::Violation>]
        attr_accessor :violations
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @violations = args[:violations] if args.key?(:violations)
        end
      end
      
      # Response message for list customer workloads requests.
      class ListWorkloadsResponse
        include Google::Apis::Core::Hashable
      
        # A token that can be sent as `page_token` to retrieve the next page. If this
        # field is omitted, there are no subsequent pages.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # Locations that could not be reached.
        # Corresponds to the JSON property `unreachable`
        # @return [Array<String>]
        attr_accessor :unreachable
      
        # List of customer workloads
        # Corresponds to the JSON property `workloads`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::Workload>]
        attr_accessor :workloads
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @unreachable = args[:unreachable] if args.key?(:unreachable)
          @workloads = args[:workloads] if args.key?(:workloads)
        end
      end
      
      # Represents the metadata of the long-running operation.
      class OperationMetadata
        include Google::Apis::Core::Hashable
      
        # Output only. API version used to start the operation.
        # Corresponds to the JSON property `apiVersion`
        # @return [String]
        attr_accessor :api_version
      
        # Output only. The time the operation was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the operation finished running.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. Identifies whether the user has requested cancellation of the
        # operation. Operations that have been cancelled successfully have Operation.
        # error value with a google.rpc.Status.code of 1, corresponding to `Code.
        # CANCELLED`.
        # Corresponds to the JSON property `requestedCancellation`
        # @return [Boolean]
        attr_accessor :requested_cancellation
        alias_method :requested_cancellation?, :requested_cancellation
      
        # Output only. Human-readable status of the operation, if any.
        # Corresponds to the JSON property `statusMessage`
        # @return [String]
        attr_accessor :status_message
      
        # Output only. Server-defined resource path for the target of the operation.
        # Corresponds to the JSON property `target`
        # @return [String]
        attr_accessor :target
      
        # Output only. Name of the verb executed by the operation.
        # Corresponds to the JSON property `verb`
        # @return [String]
        attr_accessor :verb
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @api_version = args[:api_version] if args.key?(:api_version)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @requested_cancellation = args[:requested_cancellation] if args.key?(:requested_cancellation)
          @status_message = args[:status_message] if args.key?(:status_message)
          @target = args[:target] if args.key?(:target)
          @verb = args[:verb] if args.key?(:verb)
        end
      end
      
      # Message describing Partner resource
      class Partner
        include Google::Apis::Core::Hashable
      
        # Output only. Time the resource was created
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # List of Google Cloud supported EKM partners supported by the partner
        # Corresponds to the JSON property `ekmSolutions`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::EkmMetadata>]
        attr_accessor :ekm_solutions
      
        # Identifier. The resource name of the partner. Format: `organizations/`
        # organization`/locations/`location`/partner` Example: "organizations/123456/
        # locations/us-central1/partner"
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # List of Google Cloud regions that the partner sells services to customers.
        # Valid Google Cloud regions found here: https://cloud.google.com/compute/docs/
        # regions-zones
        # Corresponds to the JSON property `operatedCloudRegions`
        # @return [Array<String>]
        attr_accessor :operated_cloud_regions
      
        # Google Cloud project ID in the partner's Google Cloud organization for
        # receiving enhanced Logs for Partners.
        # Corresponds to the JSON property `partnerProjectId`
        # @return [String]
        attr_accessor :partner_project_id
      
        # List of SKUs the partner is offering
        # Corresponds to the JSON property `skus`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::Sku>]
        attr_accessor :skus
      
        # Output only. The last time the resource was updated
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @ekm_solutions = args[:ekm_solutions] if args.key?(:ekm_solutions)
          @name = args[:name] if args.key?(:name)
          @operated_cloud_regions = args[:operated_cloud_regions] if args.key?(:operated_cloud_regions)
          @partner_project_id = args[:partner_project_id] if args.key?(:partner_project_id)
          @skus = args[:skus] if args.key?(:skus)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The permissions granted to the partner for a workload
      class PartnerPermissions
        include Google::Apis::Core::Hashable
      
        # Identifier. Format: `organizations/`organization`/locations/`location`/
        # customers/`customer`/workloads/`workload`/partnerPermissions`
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The partner permissions granted for the workload
        # Corresponds to the JSON property `partnerPermissions`
        # @return [Array<String>]
        attr_accessor :partner_permissions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @name = args[:name] if args.key?(:name)
          @partner_permissions = args[:partner_permissions] if args.key?(:partner_permissions)
        end
      end
      
      # Represents remediation guidance to resolve compliance violation for
      # AssuredWorkload
      class Remediation
        include Google::Apis::Core::Hashable
      
        # Values that can resolve the violation For example: for list org policy
        # violations, this will either be the list of allowed or denied values
        # Corresponds to the JSON property `compliantValues`
        # @return [Array<String>]
        attr_accessor :compliant_values
      
        # Instructions to remediate violation
        # Corresponds to the JSON property `instructions`
        # @return [Google::Apis::CloudcontrolspartnerV1::Instructions]
        attr_accessor :instructions
      
        # Output only. Remediation type based on the type of org policy values violated
        # Corresponds to the JSON property `remediationType`
        # @return [String]
        attr_accessor :remediation_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @compliant_values = args[:compliant_values] if args.key?(:compliant_values)
          @instructions = args[:instructions] if args.key?(:instructions)
          @remediation_type = args[:remediation_type] if args.key?(:remediation_type)
        end
      end
      
      # Represents the SKU a partner owns inside Google Cloud to sell to customers.
      class Sku
        include Google::Apis::Core::Hashable
      
        # Display name of the product identified by the SKU. A partner may want to show
        # partner branded names for their offerings such as local sovereign cloud
        # solutions.
        # Corresponds to the JSON property `displayName`
        # @return [String]
        attr_accessor :display_name
      
        # Argentum product SKU, that is associated with the partner offerings to
        # customers used by Syntro for billing purposes. SKUs can represent resold
        # Google products or support services.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @display_name = args[:display_name] if args.key?(:display_name)
          @id = args[:id] if args.key?(:id)
        end
      end
      
      # Details of resource Violation
      class Violation
        include Google::Apis::Core::Hashable
      
        # Output only. Time of the event which triggered the Violation.
        # Corresponds to the JSON property `beginTime`
        # @return [String]
        attr_accessor :begin_time
      
        # Output only. Category under which this violation is mapped. e.g. Location,
        # Service Usage, Access, Encryption, etc.
        # Corresponds to the JSON property `category`
        # @return [String]
        attr_accessor :category
      
        # Output only. Description for the Violation. e.g. OrgPolicy gcp.
        # resourceLocations has non compliant value.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        # The folder_id of the violation
        # Corresponds to the JSON property `folderId`
        # @return [Fixnum]
        attr_accessor :folder_id
      
        # Identifier. Format: `organizations/`organization`/locations/`location`/
        # customers/`customer`/workloads/`workload`/violations/`violation``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. Immutable. Name of the OrgPolicy which was modified with non-
        # compliant change and resulted this violation. Format: `projects/`
        # project_number`/policies/`constraint_name`` `folders/`folder_id`/policies/`
        # constraint_name`` `organizations/`organization_id`/policies/`constraint_name``
        # Corresponds to the JSON property `nonCompliantOrgPolicy`
        # @return [String]
        attr_accessor :non_compliant_org_policy
      
        # Represents remediation guidance to resolve compliance violation for
        # AssuredWorkload
        # Corresponds to the JSON property `remediation`
        # @return [Google::Apis::CloudcontrolspartnerV1::Remediation]
        attr_accessor :remediation
      
        # Output only. Time of the event which fixed the Violation. If the violation is
        # ACTIVE this will be empty.
        # Corresponds to the JSON property `resolveTime`
        # @return [String]
        attr_accessor :resolve_time
      
        # Output only. State of the violation
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Output only. The last time when the Violation record was updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @begin_time = args[:begin_time] if args.key?(:begin_time)
          @category = args[:category] if args.key?(:category)
          @description = args[:description] if args.key?(:description)
          @folder_id = args[:folder_id] if args.key?(:folder_id)
          @name = args[:name] if args.key?(:name)
          @non_compliant_org_policy = args[:non_compliant_org_policy] if args.key?(:non_compliant_org_policy)
          @remediation = args[:remediation] if args.key?(:remediation)
          @resolve_time = args[:resolve_time] if args.key?(:resolve_time)
          @state = args[:state] if args.key?(:state)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # Contains metadata around the [Workload resource](https://cloud.google.com/
      # assured-workloads/docs/reference/rest/Shared.Types/Workload) in the Assured
      # Workloads API.
      class Workload
        include Google::Apis::Core::Hashable
      
        # Output only. Time the resource was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The name of container folder of the assured workload
        # Corresponds to the JSON property `folder`
        # @return [String]
        attr_accessor :folder
      
        # Output only. Folder id this workload is associated with
        # Corresponds to the JSON property `folderId`
        # @return [Fixnum]
        attr_accessor :folder_id
      
        # Indicates whether a workload is fully onboarded.
        # Corresponds to the JSON property `isOnboarded`
        # @return [Boolean]
        attr_accessor :is_onboarded
        alias_method :is_onboarded?, :is_onboarded
      
        # The project id of the key management project for the workload
        # Corresponds to the JSON property `keyManagementProjectId`
        # @return [String]
        attr_accessor :key_management_project_id
      
        # The Google Cloud location of the workload
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # Identifier. Format: `organizations/`organization`/locations/`location`/
        # customers/`customer`/workloads/`workload``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Partner associated with this workload.
        # Corresponds to the JSON property `partner`
        # @return [String]
        attr_accessor :partner
      
        # Container for workload onboarding steps.
        # Corresponds to the JSON property `workloadOnboardingState`
        # @return [Google::Apis::CloudcontrolspartnerV1::WorkloadOnboardingState]
        attr_accessor :workload_onboarding_state
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @folder = args[:folder] if args.key?(:folder)
          @folder_id = args[:folder_id] if args.key?(:folder_id)
          @is_onboarded = args[:is_onboarded] if args.key?(:is_onboarded)
          @key_management_project_id = args[:key_management_project_id] if args.key?(:key_management_project_id)
          @location = args[:location] if args.key?(:location)
          @name = args[:name] if args.key?(:name)
          @partner = args[:partner] if args.key?(:partner)
          @workload_onboarding_state = args[:workload_onboarding_state] if args.key?(:workload_onboarding_state)
        end
      end
      
      # Container for workload onboarding steps.
      class WorkloadOnboardingState
        include Google::Apis::Core::Hashable
      
        # List of workload onboarding steps.
        # Corresponds to the JSON property `onboardingSteps`
        # @return [Array<Google::Apis::CloudcontrolspartnerV1::WorkloadOnboardingStep>]
        attr_accessor :onboarding_steps
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @onboarding_steps = args[:onboarding_steps] if args.key?(:onboarding_steps)
        end
      end
      
      # Container for workload onboarding information.
      class WorkloadOnboardingStep
        include Google::Apis::Core::Hashable
      
        # Output only. The completion state of the onboarding step.
        # Corresponds to the JSON property `completionState`
        # @return [String]
        attr_accessor :completion_state
      
        # The completion time of the onboarding step.
        # Corresponds to the JSON property `completionTime`
        # @return [String]
        attr_accessor :completion_time
      
        # The starting time of the onboarding step.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # The onboarding step.
        # Corresponds to the JSON property `step`
        # @return [String]
        attr_accessor :step
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @completion_state = args[:completion_state] if args.key?(:completion_state)
          @completion_time = args[:completion_time] if args.key?(:completion_time)
          @start_time = args[:start_time] if args.key?(:start_time)
          @step = args[:step] if args.key?(:step)
        end
      end
    end
  end
end
